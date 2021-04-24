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
-- Module      : Network.AWS.Lightsail.GetLoadBalancers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all load balancers in an account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetLoadBalancers
  ( -- * Creating a Request
    getLoadBalancers,
    GetLoadBalancers,

    -- * Request Lenses
    glbPageToken,

    -- * Destructuring the Response
    getLoadBalancersResponse,
    GetLoadBalancersResponse,

    -- * Response Lenses
    glbrlrsNextPageToken,
    glbrlrsLoadBalancers,
    glbrlrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLoadBalancers' smart constructor.
newtype GetLoadBalancers = GetLoadBalancers'
  { _glbPageToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetLoadBalancers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glbPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetLoadBalancers@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getLoadBalancers ::
  GetLoadBalancers
getLoadBalancers =
  GetLoadBalancers' {_glbPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetLoadBalancers@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
glbPageToken :: Lens' GetLoadBalancers (Maybe Text)
glbPageToken = lens _glbPageToken (\s a -> s {_glbPageToken = a})

instance AWSPager GetLoadBalancers where
  page rq rs
    | stop (rs ^. glbrlrsNextPageToken) = Nothing
    | stop (rs ^. glbrlrsLoadBalancers) = Nothing
    | otherwise =
      Just $
        rq
          & glbPageToken .~ rs ^. glbrlrsNextPageToken

instance AWSRequest GetLoadBalancers where
  type Rs GetLoadBalancers = GetLoadBalancersResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetLoadBalancersResponse'
            <$> (x .?> "nextPageToken")
            <*> (x .?> "loadBalancers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetLoadBalancers

instance NFData GetLoadBalancers

instance ToHeaders GetLoadBalancers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetLoadBalancers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetLoadBalancers where
  toJSON GetLoadBalancers' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _glbPageToken])

instance ToPath GetLoadBalancers where
  toPath = const "/"

instance ToQuery GetLoadBalancers where
  toQuery = const mempty

-- | /See:/ 'getLoadBalancersResponse' smart constructor.
data GetLoadBalancersResponse = GetLoadBalancersResponse'
  { _glbrlrsNextPageToken ::
      !(Maybe Text),
    _glbrlrsLoadBalancers ::
      !( Maybe
           [LoadBalancer]
       ),
    _glbrlrsResponseStatus ::
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

-- | Creates a value of 'GetLoadBalancersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glbrlrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetLoadBalancers@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'glbrlrsLoadBalancers' - An array of LoadBalancer objects describing your load balancers.
--
-- * 'glbrlrsResponseStatus' - -- | The response status code.
getLoadBalancersResponse ::
  -- | 'glbrlrsResponseStatus'
  Int ->
  GetLoadBalancersResponse
getLoadBalancersResponse pResponseStatus_ =
  GetLoadBalancersResponse'
    { _glbrlrsNextPageToken =
        Nothing,
      _glbrlrsLoadBalancers = Nothing,
      _glbrlrsResponseStatus = pResponseStatus_
    }

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetLoadBalancers@ request and specify the next page token using the @pageToken@ parameter.
glbrlrsNextPageToken :: Lens' GetLoadBalancersResponse (Maybe Text)
glbrlrsNextPageToken = lens _glbrlrsNextPageToken (\s a -> s {_glbrlrsNextPageToken = a})

-- | An array of LoadBalancer objects describing your load balancers.
glbrlrsLoadBalancers :: Lens' GetLoadBalancersResponse [LoadBalancer]
glbrlrsLoadBalancers = lens _glbrlrsLoadBalancers (\s a -> s {_glbrlrsLoadBalancers = a}) . _Default . _Coerce

-- | -- | The response status code.
glbrlrsResponseStatus :: Lens' GetLoadBalancersResponse Int
glbrlrsResponseStatus = lens _glbrlrsResponseStatus (\s a -> s {_glbrlrsResponseStatus = a})

instance NFData GetLoadBalancersResponse
