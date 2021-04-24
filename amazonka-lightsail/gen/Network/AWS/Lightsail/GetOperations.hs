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
-- Module      : Network.AWS.Lightsail.GetOperations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all operations.
--
--
-- Results are returned from oldest to newest, up to a maximum of 200. Results can be paged by making each subsequent call to @GetOperations@ use the maximum (last) @statusChangedAt@ value from the previous request.
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetOperations
  ( -- * Creating a Request
    getOperations,
    GetOperations,

    -- * Request Lenses
    goPageToken,

    -- * Destructuring the Response
    getOperationsResponse,
    GetOperationsResponse,

    -- * Response Lenses
    gorrsOperations,
    gorrsNextPageToken,
    gorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getOperations' smart constructor.
newtype GetOperations = GetOperations'
  { _goPageToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetOperations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetOperations@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getOperations ::
  GetOperations
getOperations =
  GetOperations' {_goPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetOperations@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
goPageToken :: Lens' GetOperations (Maybe Text)
goPageToken = lens _goPageToken (\s a -> s {_goPageToken = a})

instance AWSPager GetOperations where
  page rq rs
    | stop (rs ^. gorrsNextPageToken) = Nothing
    | stop (rs ^. gorrsOperations) = Nothing
    | otherwise =
      Just $ rq & goPageToken .~ rs ^. gorrsNextPageToken

instance AWSRequest GetOperations where
  type Rs GetOperations = GetOperationsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetOperationsResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetOperations

instance NFData GetOperations

instance ToHeaders GetOperations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.GetOperations" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetOperations where
  toJSON GetOperations' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _goPageToken])

instance ToPath GetOperations where
  toPath = const "/"

instance ToQuery GetOperations where
  toQuery = const mempty

-- | /See:/ 'getOperationsResponse' smart constructor.
data GetOperationsResponse = GetOperationsResponse'
  { _gorrsOperations ::
      !(Maybe [Operation]),
    _gorrsNextPageToken ::
      !(Maybe Text),
    _gorrsResponseStatus ::
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

-- | Creates a value of 'GetOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gorrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'gorrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetOperations@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'gorrsResponseStatus' - -- | The response status code.
getOperationsResponse ::
  -- | 'gorrsResponseStatus'
  Int ->
  GetOperationsResponse
getOperationsResponse pResponseStatus_ =
  GetOperationsResponse'
    { _gorrsOperations = Nothing,
      _gorrsNextPageToken = Nothing,
      _gorrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
gorrsOperations :: Lens' GetOperationsResponse [Operation]
gorrsOperations = lens _gorrsOperations (\s a -> s {_gorrsOperations = a}) . _Default . _Coerce

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetOperations@ request and specify the next page token using the @pageToken@ parameter.
gorrsNextPageToken :: Lens' GetOperationsResponse (Maybe Text)
gorrsNextPageToken = lens _gorrsNextPageToken (\s a -> s {_gorrsNextPageToken = a})

-- | -- | The response status code.
gorrsResponseStatus :: Lens' GetOperationsResponse Int
gorrsResponseStatus = lens _gorrsResponseStatus (\s a -> s {_gorrsResponseStatus = a})

instance NFData GetOperationsResponse
