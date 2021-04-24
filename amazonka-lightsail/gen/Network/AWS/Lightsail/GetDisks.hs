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
-- Module      : Network.AWS.Lightsail.GetDisks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all block storage disks in your AWS account and region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetDisks
  ( -- * Creating a Request
    getDisks,
    GetDisks,

    -- * Request Lenses
    getPageToken,

    -- * Destructuring the Response
    getDisksResponse,
    GetDisksResponse,

    -- * Response Lenses
    ggrsNextPageToken,
    ggrsDisks,
    ggrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDisks' smart constructor.
newtype GetDisks = GetDisks'
  { _getPageToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDisks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetDisks@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getDisks ::
  GetDisks
getDisks = GetDisks' {_getPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetDisks@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getPageToken :: Lens' GetDisks (Maybe Text)
getPageToken = lens _getPageToken (\s a -> s {_getPageToken = a})

instance AWSPager GetDisks where
  page rq rs
    | stop (rs ^. ggrsNextPageToken) = Nothing
    | stop (rs ^. ggrsDisks) = Nothing
    | otherwise =
      Just $ rq & getPageToken .~ rs ^. ggrsNextPageToken

instance AWSRequest GetDisks where
  type Rs GetDisks = GetDisksResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetDisksResponse'
            <$> (x .?> "nextPageToken")
            <*> (x .?> "disks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDisks

instance NFData GetDisks

instance ToHeaders GetDisks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.GetDisks" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDisks where
  toJSON GetDisks' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _getPageToken])

instance ToPath GetDisks where
  toPath = const "/"

instance ToQuery GetDisks where
  toQuery = const mempty

-- | /See:/ 'getDisksResponse' smart constructor.
data GetDisksResponse = GetDisksResponse'
  { _ggrsNextPageToken ::
      !(Maybe Text),
    _ggrsDisks :: !(Maybe [Disk]),
    _ggrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDisksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetDisks@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'ggrsDisks' - An array of objects containing information about all block storage disks.
--
-- * 'ggrsResponseStatus' - -- | The response status code.
getDisksResponse ::
  -- | 'ggrsResponseStatus'
  Int ->
  GetDisksResponse
getDisksResponse pResponseStatus_ =
  GetDisksResponse'
    { _ggrsNextPageToken = Nothing,
      _ggrsDisks = Nothing,
      _ggrsResponseStatus = pResponseStatus_
    }

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetDisks@ request and specify the next page token using the @pageToken@ parameter.
ggrsNextPageToken :: Lens' GetDisksResponse (Maybe Text)
ggrsNextPageToken = lens _ggrsNextPageToken (\s a -> s {_ggrsNextPageToken = a})

-- | An array of objects containing information about all block storage disks.
ggrsDisks :: Lens' GetDisksResponse [Disk]
ggrsDisks = lens _ggrsDisks (\s a -> s {_ggrsDisks = a}) . _Default . _Coerce

-- | -- | The response status code.
ggrsResponseStatus :: Lens' GetDisksResponse Int
ggrsResponseStatus = lens _ggrsResponseStatus (\s a -> s {_ggrsResponseStatus = a})

instance NFData GetDisksResponse
