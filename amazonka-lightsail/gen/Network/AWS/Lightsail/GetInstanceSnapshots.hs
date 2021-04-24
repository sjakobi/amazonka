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
-- Module      : Network.AWS.Lightsail.GetInstanceSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all instance snapshots for the user's account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetInstanceSnapshots
  ( -- * Creating a Request
    getInstanceSnapshots,
    GetInstanceSnapshots,

    -- * Request Lenses
    gisPageToken,

    -- * Destructuring the Response
    getInstanceSnapshotsResponse,
    GetInstanceSnapshotsResponse,

    -- * Response Lenses
    gisrrsInstanceSnapshots,
    gisrrsNextPageToken,
    gisrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getInstanceSnapshots' smart constructor.
newtype GetInstanceSnapshots = GetInstanceSnapshots'
  { _gisPageToken ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetInstanceSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetInstanceSnapshots@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getInstanceSnapshots ::
  GetInstanceSnapshots
getInstanceSnapshots =
  GetInstanceSnapshots' {_gisPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetInstanceSnapshots@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
gisPageToken :: Lens' GetInstanceSnapshots (Maybe Text)
gisPageToken = lens _gisPageToken (\s a -> s {_gisPageToken = a})

instance AWSPager GetInstanceSnapshots where
  page rq rs
    | stop (rs ^. gisrrsNextPageToken) = Nothing
    | stop (rs ^. gisrrsInstanceSnapshots) = Nothing
    | otherwise =
      Just $ rq & gisPageToken .~ rs ^. gisrrsNextPageToken

instance AWSRequest GetInstanceSnapshots where
  type
    Rs GetInstanceSnapshots =
      GetInstanceSnapshotsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetInstanceSnapshotsResponse'
            <$> (x .?> "instanceSnapshots" .!@ mempty)
            <*> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetInstanceSnapshots

instance NFData GetInstanceSnapshots

instance ToHeaders GetInstanceSnapshots where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetInstanceSnapshots" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetInstanceSnapshots where
  toJSON GetInstanceSnapshots' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _gisPageToken])

instance ToPath GetInstanceSnapshots where
  toPath = const "/"

instance ToQuery GetInstanceSnapshots where
  toQuery = const mempty

-- | /See:/ 'getInstanceSnapshotsResponse' smart constructor.
data GetInstanceSnapshotsResponse = GetInstanceSnapshotsResponse'
  { _gisrrsInstanceSnapshots ::
      !( Maybe
           [InstanceSnapshot]
       ),
    _gisrrsNextPageToken ::
      !(Maybe Text),
    _gisrrsResponseStatus ::
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

-- | Creates a value of 'GetInstanceSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisrrsInstanceSnapshots' - An array of key-value pairs containing information about the results of your get instance snapshots request.
--
-- * 'gisrrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetInstanceSnapshots@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'gisrrsResponseStatus' - -- | The response status code.
getInstanceSnapshotsResponse ::
  -- | 'gisrrsResponseStatus'
  Int ->
  GetInstanceSnapshotsResponse
getInstanceSnapshotsResponse pResponseStatus_ =
  GetInstanceSnapshotsResponse'
    { _gisrrsInstanceSnapshots =
        Nothing,
      _gisrrsNextPageToken = Nothing,
      _gisrrsResponseStatus = pResponseStatus_
    }

-- | An array of key-value pairs containing information about the results of your get instance snapshots request.
gisrrsInstanceSnapshots :: Lens' GetInstanceSnapshotsResponse [InstanceSnapshot]
gisrrsInstanceSnapshots = lens _gisrrsInstanceSnapshots (\s a -> s {_gisrrsInstanceSnapshots = a}) . _Default . _Coerce

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetInstanceSnapshots@ request and specify the next page token using the @pageToken@ parameter.
gisrrsNextPageToken :: Lens' GetInstanceSnapshotsResponse (Maybe Text)
gisrrsNextPageToken = lens _gisrrsNextPageToken (\s a -> s {_gisrrsNextPageToken = a})

-- | -- | The response status code.
gisrrsResponseStatus :: Lens' GetInstanceSnapshotsResponse Int
gisrrsResponseStatus = lens _gisrrsResponseStatus (\s a -> s {_gisrrsResponseStatus = a})

instance NFData GetInstanceSnapshotsResponse
