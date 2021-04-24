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
-- Module      : Network.AWS.Lightsail.GetActiveNames
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the names of all active (not deleted) resources.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetActiveNames
  ( -- * Creating a Request
    getActiveNames,
    GetActiveNames,

    -- * Request Lenses
    ganPageToken,

    -- * Destructuring the Response
    getActiveNamesResponse,
    GetActiveNamesResponse,

    -- * Response Lenses
    ganrrsNextPageToken,
    ganrrsActiveNames,
    ganrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getActiveNames' smart constructor.
newtype GetActiveNames = GetActiveNames'
  { _ganPageToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetActiveNames' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ganPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetActiveNames@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getActiveNames ::
  GetActiveNames
getActiveNames =
  GetActiveNames' {_ganPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetActiveNames@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
ganPageToken :: Lens' GetActiveNames (Maybe Text)
ganPageToken = lens _ganPageToken (\s a -> s {_ganPageToken = a})

instance AWSPager GetActiveNames where
  page rq rs
    | stop (rs ^. ganrrsNextPageToken) = Nothing
    | stop (rs ^. ganrrsActiveNames) = Nothing
    | otherwise =
      Just $ rq & ganPageToken .~ rs ^. ganrrsNextPageToken

instance AWSRequest GetActiveNames where
  type Rs GetActiveNames = GetActiveNamesResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetActiveNamesResponse'
            <$> (x .?> "nextPageToken")
            <*> (x .?> "activeNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetActiveNames

instance NFData GetActiveNames

instance ToHeaders GetActiveNames where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.GetActiveNames" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetActiveNames where
  toJSON GetActiveNames' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _ganPageToken])

instance ToPath GetActiveNames where
  toPath = const "/"

instance ToQuery GetActiveNames where
  toQuery = const mempty

-- | /See:/ 'getActiveNamesResponse' smart constructor.
data GetActiveNamesResponse = GetActiveNamesResponse'
  { _ganrrsNextPageToken ::
      !(Maybe Text),
    _ganrrsActiveNames ::
      !(Maybe [Text]),
    _ganrrsResponseStatus ::
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

-- | Creates a value of 'GetActiveNamesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ganrrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetActiveNames@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'ganrrsActiveNames' - The list of active names returned by the get active names request.
--
-- * 'ganrrsResponseStatus' - -- | The response status code.
getActiveNamesResponse ::
  -- | 'ganrrsResponseStatus'
  Int ->
  GetActiveNamesResponse
getActiveNamesResponse pResponseStatus_ =
  GetActiveNamesResponse'
    { _ganrrsNextPageToken =
        Nothing,
      _ganrrsActiveNames = Nothing,
      _ganrrsResponseStatus = pResponseStatus_
    }

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetActiveNames@ request and specify the next page token using the @pageToken@ parameter.
ganrrsNextPageToken :: Lens' GetActiveNamesResponse (Maybe Text)
ganrrsNextPageToken = lens _ganrrsNextPageToken (\s a -> s {_ganrrsNextPageToken = a})

-- | The list of active names returned by the get active names request.
ganrrsActiveNames :: Lens' GetActiveNamesResponse [Text]
ganrrsActiveNames = lens _ganrrsActiveNames (\s a -> s {_ganrrsActiveNames = a}) . _Default . _Coerce

-- | -- | The response status code.
ganrrsResponseStatus :: Lens' GetActiveNamesResponse Int
ganrrsResponseStatus = lens _ganrrsResponseStatus (\s a -> s {_ganrrsResponseStatus = a})

instance NFData GetActiveNamesResponse
