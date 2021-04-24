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
-- Module      : Network.AWS.Lightsail.GetCloudFormationStackRecords
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the CloudFormation stack record created as a result of the @create cloud formation stack@ operation.
--
--
-- An AWS CloudFormation stack is used to create a new Amazon EC2 instance from an exported Lightsail snapshot.
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetCloudFormationStackRecords
  ( -- * Creating a Request
    getCloudFormationStackRecords,
    GetCloudFormationStackRecords,

    -- * Request Lenses
    gcfsrPageToken,

    -- * Destructuring the Response
    getCloudFormationStackRecordsResponse,
    GetCloudFormationStackRecordsResponse,

    -- * Response Lenses
    gcfsrrrsCloudFormationStackRecords,
    gcfsrrrsNextPageToken,
    gcfsrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCloudFormationStackRecords' smart constructor.
newtype GetCloudFormationStackRecords = GetCloudFormationStackRecords'
  { _gcfsrPageToken ::
      Maybe
        Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCloudFormationStackRecords' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfsrPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetClouFormationStackRecords@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getCloudFormationStackRecords ::
  GetCloudFormationStackRecords
getCloudFormationStackRecords =
  GetCloudFormationStackRecords'
    { _gcfsrPageToken =
        Nothing
    }

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetClouFormationStackRecords@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
gcfsrPageToken :: Lens' GetCloudFormationStackRecords (Maybe Text)
gcfsrPageToken = lens _gcfsrPageToken (\s a -> s {_gcfsrPageToken = a})

instance AWSPager GetCloudFormationStackRecords where
  page rq rs
    | stop (rs ^. gcfsrrrsNextPageToken) = Nothing
    | stop (rs ^. gcfsrrrsCloudFormationStackRecords) =
      Nothing
    | otherwise =
      Just $
        rq
          & gcfsrPageToken .~ rs ^. gcfsrrrsNextPageToken

instance AWSRequest GetCloudFormationStackRecords where
  type
    Rs GetCloudFormationStackRecords =
      GetCloudFormationStackRecordsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetCloudFormationStackRecordsResponse'
            <$> (x .?> "cloudFormationStackRecords" .!@ mempty)
            <*> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCloudFormationStackRecords

instance NFData GetCloudFormationStackRecords

instance ToHeaders GetCloudFormationStackRecords where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetCloudFormationStackRecords" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCloudFormationStackRecords where
  toJSON GetCloudFormationStackRecords' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _gcfsrPageToken])

instance ToPath GetCloudFormationStackRecords where
  toPath = const "/"

instance ToQuery GetCloudFormationStackRecords where
  toQuery = const mempty

-- | /See:/ 'getCloudFormationStackRecordsResponse' smart constructor.
data GetCloudFormationStackRecordsResponse = GetCloudFormationStackRecordsResponse'
  { _gcfsrrrsCloudFormationStackRecords ::
      !( Maybe
           [CloudFormationStackRecord]
       ),
    _gcfsrrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _gcfsrrrsResponseStatus ::
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

-- | Creates a value of 'GetCloudFormationStackRecordsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfsrrrsCloudFormationStackRecords' - A list of objects describing the CloudFormation stack records.
--
-- * 'gcfsrrrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetCloudFormationStackRecords@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'gcfsrrrsResponseStatus' - -- | The response status code.
getCloudFormationStackRecordsResponse ::
  -- | 'gcfsrrrsResponseStatus'
  Int ->
  GetCloudFormationStackRecordsResponse
getCloudFormationStackRecordsResponse
  pResponseStatus_ =
    GetCloudFormationStackRecordsResponse'
      { _gcfsrrrsCloudFormationStackRecords =
          Nothing,
        _gcfsrrrsNextPageToken = Nothing,
        _gcfsrrrsResponseStatus =
          pResponseStatus_
      }

-- | A list of objects describing the CloudFormation stack records.
gcfsrrrsCloudFormationStackRecords :: Lens' GetCloudFormationStackRecordsResponse [CloudFormationStackRecord]
gcfsrrrsCloudFormationStackRecords = lens _gcfsrrrsCloudFormationStackRecords (\s a -> s {_gcfsrrrsCloudFormationStackRecords = a}) . _Default . _Coerce

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetCloudFormationStackRecords@ request and specify the next page token using the @pageToken@ parameter.
gcfsrrrsNextPageToken :: Lens' GetCloudFormationStackRecordsResponse (Maybe Text)
gcfsrrrsNextPageToken = lens _gcfsrrrsNextPageToken (\s a -> s {_gcfsrrrsNextPageToken = a})

-- | -- | The response status code.
gcfsrrrsResponseStatus :: Lens' GetCloudFormationStackRecordsResponse Int
gcfsrrrsResponseStatus = lens _gcfsrrrsResponseStatus (\s a -> s {_gcfsrrrsResponseStatus = a})

instance NFData GetCloudFormationStackRecordsResponse
