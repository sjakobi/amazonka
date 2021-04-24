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
-- Module      : Network.AWS.Lightsail.GetInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all Amazon Lightsail virtual private servers, or /instances/ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetInstances
  ( -- * Creating a Request
    getInstances,
    GetInstances,

    -- * Request Lenses
    giPageToken,

    -- * Destructuring the Response
    getInstancesResponse,
    GetInstancesResponse,

    -- * Response Lenses
    girrsInstances,
    girrsNextPageToken,
    girrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getInstances' smart constructor.
newtype GetInstances = GetInstances'
  { _giPageToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetInstances@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getInstances ::
  GetInstances
getInstances = GetInstances' {_giPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetInstances@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
giPageToken :: Lens' GetInstances (Maybe Text)
giPageToken = lens _giPageToken (\s a -> s {_giPageToken = a})

instance AWSPager GetInstances where
  page rq rs
    | stop (rs ^. girrsNextPageToken) = Nothing
    | stop (rs ^. girrsInstances) = Nothing
    | otherwise =
      Just $ rq & giPageToken .~ rs ^. girrsNextPageToken

instance AWSRequest GetInstances where
  type Rs GetInstances = GetInstancesResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetInstancesResponse'
            <$> (x .?> "instances" .!@ mempty)
            <*> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetInstances

instance NFData GetInstances

instance ToHeaders GetInstances where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.GetInstances" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetInstances where
  toJSON GetInstances' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _giPageToken])

instance ToPath GetInstances where
  toPath = const "/"

instance ToQuery GetInstances where
  toQuery = const mempty

-- | /See:/ 'getInstancesResponse' smart constructor.
data GetInstancesResponse = GetInstancesResponse'
  { _girrsInstances ::
      !(Maybe [Instance]),
    _girrsNextPageToken ::
      !(Maybe Text),
    _girrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'girrsInstances' - An array of key-value pairs containing information about your instances.
--
-- * 'girrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetInstances@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'girrsResponseStatus' - -- | The response status code.
getInstancesResponse ::
  -- | 'girrsResponseStatus'
  Int ->
  GetInstancesResponse
getInstancesResponse pResponseStatus_ =
  GetInstancesResponse'
    { _girrsInstances = Nothing,
      _girrsNextPageToken = Nothing,
      _girrsResponseStatus = pResponseStatus_
    }

-- | An array of key-value pairs containing information about your instances.
girrsInstances :: Lens' GetInstancesResponse [Instance]
girrsInstances = lens _girrsInstances (\s a -> s {_girrsInstances = a}) . _Default . _Coerce

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetInstances@ request and specify the next page token using the @pageToken@ parameter.
girrsNextPageToken :: Lens' GetInstancesResponse (Maybe Text)
girrsNextPageToken = lens _girrsNextPageToken (\s a -> s {_girrsNextPageToken = a})

-- | -- | The response status code.
girrsResponseStatus :: Lens' GetInstancesResponse Int
girrsResponseStatus = lens _girrsResponseStatus (\s a -> s {_girrsResponseStatus = a})

instance NFData GetInstancesResponse
