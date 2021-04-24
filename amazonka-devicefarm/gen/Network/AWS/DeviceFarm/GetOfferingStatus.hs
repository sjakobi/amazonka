{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.GetOfferingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a @NotEligible@ error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact <mailto:aws-devicefarm-support@amazon.com aws-devicefarm-support@amazon.com> .
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.GetOfferingStatus
  ( -- * Creating a Request
    getOfferingStatus,
    GetOfferingStatus,

    -- * Request Lenses
    gosNextToken,

    -- * Destructuring the Response
    getOfferingStatusResponse,
    GetOfferingStatusResponse,

    -- * Response Lenses
    gosrrsNextToken,
    gosrrsNextPeriod,
    gosrrsCurrent,
    gosrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to retrieve the offering status for the specified customer or account.
--
--
--
-- /See:/ 'getOfferingStatus' smart constructor.
newtype GetOfferingStatus = GetOfferingStatus'
  { _gosNextToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetOfferingStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gosNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
getOfferingStatus ::
  GetOfferingStatus
getOfferingStatus =
  GetOfferingStatus' {_gosNextToken = Nothing}

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
gosNextToken :: Lens' GetOfferingStatus (Maybe Text)
gosNextToken = lens _gosNextToken (\s a -> s {_gosNextToken = a})

instance AWSPager GetOfferingStatus where
  page rq rs
    | stop (rs ^. gosrrsNextToken) = Nothing
    | stop (rs ^. gosrrsCurrent) = Nothing
    | stop (rs ^. gosrrsNextPeriod) = Nothing
    | otherwise =
      Just $ rq & gosNextToken .~ rs ^. gosrrsNextToken

instance AWSRequest GetOfferingStatus where
  type Rs GetOfferingStatus = GetOfferingStatusResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          GetOfferingStatusResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "nextPeriod" .!@ mempty)
            <*> (x .?> "current" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetOfferingStatus

instance NFData GetOfferingStatus

instance ToHeaders GetOfferingStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.GetOfferingStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetOfferingStatus where
  toJSON GetOfferingStatus' {..} =
    object
      (catMaybes [("nextToken" .=) <$> _gosNextToken])

instance ToPath GetOfferingStatus where
  toPath = const "/"

instance ToQuery GetOfferingStatus where
  toQuery = const mempty

-- | Returns the status result for a device offering.
--
--
--
-- /See:/ 'getOfferingStatusResponse' smart constructor.
data GetOfferingStatusResponse = GetOfferingStatusResponse'
  { _gosrrsNextToken ::
      !(Maybe Text),
    _gosrrsNextPeriod ::
      !( Maybe
           ( Map
               Text
               OfferingStatus
           )
       ),
    _gosrrsCurrent ::
      !( Maybe
           ( Map
               Text
               OfferingStatus
           )
       ),
    _gosrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetOfferingStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gosrrsNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'gosrrsNextPeriod' - When specified, gets the offering status for the next period.
--
-- * 'gosrrsCurrent' - When specified, gets the offering status for the current period.
--
-- * 'gosrrsResponseStatus' - -- | The response status code.
getOfferingStatusResponse ::
  -- | 'gosrrsResponseStatus'
  Int ->
  GetOfferingStatusResponse
getOfferingStatusResponse pResponseStatus_ =
  GetOfferingStatusResponse'
    { _gosrrsNextToken =
        Nothing,
      _gosrrsNextPeriod = Nothing,
      _gosrrsCurrent = Nothing,
      _gosrrsResponseStatus = pResponseStatus_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
gosrrsNextToken :: Lens' GetOfferingStatusResponse (Maybe Text)
gosrrsNextToken = lens _gosrrsNextToken (\s a -> s {_gosrrsNextToken = a})

-- | When specified, gets the offering status for the next period.
gosrrsNextPeriod :: Lens' GetOfferingStatusResponse (HashMap Text OfferingStatus)
gosrrsNextPeriod = lens _gosrrsNextPeriod (\s a -> s {_gosrrsNextPeriod = a}) . _Default . _Map

-- | When specified, gets the offering status for the current period.
gosrrsCurrent :: Lens' GetOfferingStatusResponse (HashMap Text OfferingStatus)
gosrrsCurrent = lens _gosrrsCurrent (\s a -> s {_gosrrsCurrent = a}) . _Default . _Map

-- | -- | The response status code.
gosrrsResponseStatus :: Lens' GetOfferingStatusResponse Int
gosrrsResponseStatus = lens _gosrrsResponseStatus (\s a -> s {_gosrrsResponseStatus = a})

instance NFData GetOfferingStatusResponse
