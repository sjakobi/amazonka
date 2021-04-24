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
-- Module      : Network.AWS.DeviceFarm.ListOfferings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a @NotEligible@ error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact <mailto:aws-devicefarm-support@amazon.com aws-devicefarm-support@amazon.com> .
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListOfferings
  ( -- * Creating a Request
    listOfferings,
    ListOfferings,

    -- * Request Lenses
    loNextToken,

    -- * Destructuring the Response
    listOfferingsResponse,
    ListOfferingsResponse,

    -- * Response Lenses
    lorrsNextToken,
    lorrsOfferings,
    lorrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to list all offerings.
--
--
--
-- /See:/ 'listOfferings' smart constructor.
newtype ListOfferings = ListOfferings'
  { _loNextToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListOfferings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
listOfferings ::
  ListOfferings
listOfferings =
  ListOfferings' {_loNextToken = Nothing}

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
loNextToken :: Lens' ListOfferings (Maybe Text)
loNextToken = lens _loNextToken (\s a -> s {_loNextToken = a})

instance AWSPager ListOfferings where
  page rq rs
    | stop (rs ^. lorrsNextToken) = Nothing
    | stop (rs ^. lorrsOfferings) = Nothing
    | otherwise =
      Just $ rq & loNextToken .~ rs ^. lorrsNextToken

instance AWSRequest ListOfferings where
  type Rs ListOfferings = ListOfferingsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListOfferingsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "offerings" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListOfferings

instance NFData ListOfferings

instance ToHeaders ListOfferings where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.ListOfferings" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListOfferings where
  toJSON ListOfferings' {..} =
    object
      (catMaybes [("nextToken" .=) <$> _loNextToken])

instance ToPath ListOfferings where
  toPath = const "/"

instance ToQuery ListOfferings where
  toQuery = const mempty

-- | Represents the return values of the list of offerings.
--
--
--
-- /See:/ 'listOfferingsResponse' smart constructor.
data ListOfferingsResponse = ListOfferingsResponse'
  { _lorrsNextToken ::
      !(Maybe Text),
    _lorrsOfferings ::
      !(Maybe [Offering]),
    _lorrsResponseStatus ::
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

-- | Creates a value of 'ListOfferingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorrsNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lorrsOfferings' - A value that represents the list offering results.
--
-- * 'lorrsResponseStatus' - -- | The response status code.
listOfferingsResponse ::
  -- | 'lorrsResponseStatus'
  Int ->
  ListOfferingsResponse
listOfferingsResponse pResponseStatus_ =
  ListOfferingsResponse'
    { _lorrsNextToken = Nothing,
      _lorrsOfferings = Nothing,
      _lorrsResponseStatus = pResponseStatus_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lorrsNextToken :: Lens' ListOfferingsResponse (Maybe Text)
lorrsNextToken = lens _lorrsNextToken (\s a -> s {_lorrsNextToken = a})

-- | A value that represents the list offering results.
lorrsOfferings :: Lens' ListOfferingsResponse [Offering]
lorrsOfferings = lens _lorrsOfferings (\s a -> s {_lorrsOfferings = a}) . _Default . _Coerce

-- | -- | The response status code.
lorrsResponseStatus :: Lens' ListOfferingsResponse Int
lorrsResponseStatus = lens _lorrsResponseStatus (\s a -> s {_lorrsResponseStatus = a})

instance NFData ListOfferingsResponse
