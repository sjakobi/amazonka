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
-- Module      : Network.AWS.Lightsail.GetStaticIPs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all static IPs in the user's account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetStaticIPs
  ( -- * Creating a Request
    getStaticIPs,
    GetStaticIPs,

    -- * Request Lenses
    gsiPageToken,

    -- * Destructuring the Response
    getStaticIPsResponse,
    GetStaticIPsResponse,

    -- * Response Lenses
    gsiprrsNextPageToken,
    gsiprrsStaticIPs,
    gsiprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getStaticIPs' smart constructor.
newtype GetStaticIPs = GetStaticIPs'
  { _gsiPageToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetStaticIPs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsiPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetStaticIps@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getStaticIPs ::
  GetStaticIPs
getStaticIPs = GetStaticIPs' {_gsiPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetStaticIps@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
gsiPageToken :: Lens' GetStaticIPs (Maybe Text)
gsiPageToken = lens _gsiPageToken (\s a -> s {_gsiPageToken = a})

instance AWSPager GetStaticIPs where
  page rq rs
    | stop (rs ^. gsiprrsNextPageToken) = Nothing
    | stop (rs ^. gsiprrsStaticIPs) = Nothing
    | otherwise =
      Just $
        rq
          & gsiPageToken .~ rs ^. gsiprrsNextPageToken

instance AWSRequest GetStaticIPs where
  type Rs GetStaticIPs = GetStaticIPsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetStaticIPsResponse'
            <$> (x .?> "nextPageToken")
            <*> (x .?> "staticIps" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetStaticIPs

instance NFData GetStaticIPs

instance ToHeaders GetStaticIPs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.GetStaticIps" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetStaticIPs where
  toJSON GetStaticIPs' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _gsiPageToken])

instance ToPath GetStaticIPs where
  toPath = const "/"

instance ToQuery GetStaticIPs where
  toQuery = const mempty

-- | /See:/ 'getStaticIPsResponse' smart constructor.
data GetStaticIPsResponse = GetStaticIPsResponse'
  { _gsiprrsNextPageToken ::
      !(Maybe Text),
    _gsiprrsStaticIPs ::
      !(Maybe [StaticIP]),
    _gsiprrsResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetStaticIPsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsiprrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetStaticIps@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'gsiprrsStaticIPs' - An array of key-value pairs containing information about your get static IPs request.
--
-- * 'gsiprrsResponseStatus' - -- | The response status code.
getStaticIPsResponse ::
  -- | 'gsiprrsResponseStatus'
  Int ->
  GetStaticIPsResponse
getStaticIPsResponse pResponseStatus_ =
  GetStaticIPsResponse'
    { _gsiprrsNextPageToken =
        Nothing,
      _gsiprrsStaticIPs = Nothing,
      _gsiprrsResponseStatus = pResponseStatus_
    }

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetStaticIps@ request and specify the next page token using the @pageToken@ parameter.
gsiprrsNextPageToken :: Lens' GetStaticIPsResponse (Maybe Text)
gsiprrsNextPageToken = lens _gsiprrsNextPageToken (\s a -> s {_gsiprrsNextPageToken = a})

-- | An array of key-value pairs containing information about your get static IPs request.
gsiprrsStaticIPs :: Lens' GetStaticIPsResponse [StaticIP]
gsiprrsStaticIPs = lens _gsiprrsStaticIPs (\s a -> s {_gsiprrsStaticIPs = a}) . _Default . _Coerce

-- | -- | The response status code.
gsiprrsResponseStatus :: Lens' GetStaticIPsResponse Int
gsiprrsResponseStatus = lens _gsiprrsResponseStatus (\s a -> s {_gsiprrsResponseStatus = a})

instance NFData GetStaticIPsResponse
