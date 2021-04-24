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
-- Module      : Network.AWS.Lightsail.GetDiskSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all block storage disk snapshots in your AWS account and region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetDiskSnapshots
  ( -- * Creating a Request
    getDiskSnapshots,
    GetDiskSnapshots,

    -- * Request Lenses
    gdsPageToken,

    -- * Destructuring the Response
    getDiskSnapshotsResponse,
    GetDiskSnapshotsResponse,

    -- * Response Lenses
    gdsrdrsNextPageToken,
    gdsrdrsDiskSnapshots,
    gdsrdrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDiskSnapshots' smart constructor.
newtype GetDiskSnapshots = GetDiskSnapshots'
  { _gdsPageToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDiskSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetDiskSnapshots@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getDiskSnapshots ::
  GetDiskSnapshots
getDiskSnapshots =
  GetDiskSnapshots' {_gdsPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetDiskSnapshots@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
gdsPageToken :: Lens' GetDiskSnapshots (Maybe Text)
gdsPageToken = lens _gdsPageToken (\s a -> s {_gdsPageToken = a})

instance AWSPager GetDiskSnapshots where
  page rq rs
    | stop (rs ^. gdsrdrsNextPageToken) = Nothing
    | stop (rs ^. gdsrdrsDiskSnapshots) = Nothing
    | otherwise =
      Just $
        rq
          & gdsPageToken .~ rs ^. gdsrdrsNextPageToken

instance AWSRequest GetDiskSnapshots where
  type Rs GetDiskSnapshots = GetDiskSnapshotsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetDiskSnapshotsResponse'
            <$> (x .?> "nextPageToken")
            <*> (x .?> "diskSnapshots" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDiskSnapshots

instance NFData GetDiskSnapshots

instance ToHeaders GetDiskSnapshots where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetDiskSnapshots" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDiskSnapshots where
  toJSON GetDiskSnapshots' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _gdsPageToken])

instance ToPath GetDiskSnapshots where
  toPath = const "/"

instance ToQuery GetDiskSnapshots where
  toQuery = const mempty

-- | /See:/ 'getDiskSnapshotsResponse' smart constructor.
data GetDiskSnapshotsResponse = GetDiskSnapshotsResponse'
  { _gdsrdrsNextPageToken ::
      !(Maybe Text),
    _gdsrdrsDiskSnapshots ::
      !( Maybe
           [DiskSnapshot]
       ),
    _gdsrdrsResponseStatus ::
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

-- | Creates a value of 'GetDiskSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsrdrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetDiskSnapshots@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'gdsrdrsDiskSnapshots' - An array of objects containing information about all block storage disk snapshots.
--
-- * 'gdsrdrsResponseStatus' - -- | The response status code.
getDiskSnapshotsResponse ::
  -- | 'gdsrdrsResponseStatus'
  Int ->
  GetDiskSnapshotsResponse
getDiskSnapshotsResponse pResponseStatus_ =
  GetDiskSnapshotsResponse'
    { _gdsrdrsNextPageToken =
        Nothing,
      _gdsrdrsDiskSnapshots = Nothing,
      _gdsrdrsResponseStatus = pResponseStatus_
    }

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetDiskSnapshots@ request and specify the next page token using the @pageToken@ parameter.
gdsrdrsNextPageToken :: Lens' GetDiskSnapshotsResponse (Maybe Text)
gdsrdrsNextPageToken = lens _gdsrdrsNextPageToken (\s a -> s {_gdsrdrsNextPageToken = a})

-- | An array of objects containing information about all block storage disk snapshots.
gdsrdrsDiskSnapshots :: Lens' GetDiskSnapshotsResponse [DiskSnapshot]
gdsrdrsDiskSnapshots = lens _gdsrdrsDiskSnapshots (\s a -> s {_gdsrdrsDiskSnapshots = a}) . _Default . _Coerce

-- | -- | The response status code.
gdsrdrsResponseStatus :: Lens' GetDiskSnapshotsResponse Int
gdsrdrsResponseStatus = lens _gdsrdrsResponseStatus (\s a -> s {_gdsrdrsResponseStatus = a})

instance NFData GetDiskSnapshotsResponse
