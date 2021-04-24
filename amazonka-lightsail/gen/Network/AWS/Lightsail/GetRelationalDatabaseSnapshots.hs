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
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all of your database snapshots in Amazon Lightsail.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetRelationalDatabaseSnapshots
  ( -- * Creating a Request
    getRelationalDatabaseSnapshots,
    GetRelationalDatabaseSnapshots,

    -- * Request Lenses
    grdsPageToken,

    -- * Destructuring the Response
    getRelationalDatabaseSnapshotsResponse,
    GetRelationalDatabaseSnapshotsResponse,

    -- * Response Lenses
    grsRelationalDatabaseSnapshots,
    grsNextPageToken,
    grsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRelationalDatabaseSnapshots' smart constructor.
newtype GetRelationalDatabaseSnapshots = GetRelationalDatabaseSnapshots'
  { _grdsPageToken ::
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

-- | Creates a value of 'GetRelationalDatabaseSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdsPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseSnapshots@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getRelationalDatabaseSnapshots ::
  GetRelationalDatabaseSnapshots
getRelationalDatabaseSnapshots =
  GetRelationalDatabaseSnapshots'
    { _grdsPageToken =
        Nothing
    }

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseSnapshots@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
grdsPageToken :: Lens' GetRelationalDatabaseSnapshots (Maybe Text)
grdsPageToken = lens _grdsPageToken (\s a -> s {_grdsPageToken = a})

instance AWSPager GetRelationalDatabaseSnapshots where
  page rq rs
    | stop (rs ^. grsNextPageToken) = Nothing
    | stop (rs ^. grsRelationalDatabaseSnapshots) =
      Nothing
    | otherwise =
      Just $ rq & grdsPageToken .~ rs ^. grsNextPageToken

instance AWSRequest GetRelationalDatabaseSnapshots where
  type
    Rs GetRelationalDatabaseSnapshots =
      GetRelationalDatabaseSnapshotsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetRelationalDatabaseSnapshotsResponse'
            <$> (x .?> "relationalDatabaseSnapshots" .!@ mempty)
            <*> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRelationalDatabaseSnapshots

instance NFData GetRelationalDatabaseSnapshots

instance ToHeaders GetRelationalDatabaseSnapshots where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetRelationalDatabaseSnapshots" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRelationalDatabaseSnapshots where
  toJSON GetRelationalDatabaseSnapshots' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _grdsPageToken])

instance ToPath GetRelationalDatabaseSnapshots where
  toPath = const "/"

instance ToQuery GetRelationalDatabaseSnapshots where
  toQuery = const mempty

-- | /See:/ 'getRelationalDatabaseSnapshotsResponse' smart constructor.
data GetRelationalDatabaseSnapshotsResponse = GetRelationalDatabaseSnapshotsResponse'
  { _grsRelationalDatabaseSnapshots ::
      !( Maybe
           [RelationalDatabaseSnapshot]
       ),
    _grsNextPageToken ::
      !( Maybe
           Text
       ),
    _grsResponseStatus ::
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

-- | Creates a value of 'GetRelationalDatabaseSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsRelationalDatabaseSnapshots' - An object describing the result of your get relational database snapshots request.
--
-- * 'grsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabaseSnapshots@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'grsResponseStatus' - -- | The response status code.
getRelationalDatabaseSnapshotsResponse ::
  -- | 'grsResponseStatus'
  Int ->
  GetRelationalDatabaseSnapshotsResponse
getRelationalDatabaseSnapshotsResponse
  pResponseStatus_ =
    GetRelationalDatabaseSnapshotsResponse'
      { _grsRelationalDatabaseSnapshots =
          Nothing,
        _grsNextPageToken = Nothing,
        _grsResponseStatus =
          pResponseStatus_
      }

-- | An object describing the result of your get relational database snapshots request.
grsRelationalDatabaseSnapshots :: Lens' GetRelationalDatabaseSnapshotsResponse [RelationalDatabaseSnapshot]
grsRelationalDatabaseSnapshots = lens _grsRelationalDatabaseSnapshots (\s a -> s {_grsRelationalDatabaseSnapshots = a}) . _Default . _Coerce

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabaseSnapshots@ request and specify the next page token using the @pageToken@ parameter.
grsNextPageToken :: Lens' GetRelationalDatabaseSnapshotsResponse (Maybe Text)
grsNextPageToken = lens _grsNextPageToken (\s a -> s {_grsNextPageToken = a})

-- | -- | The response status code.
grsResponseStatus :: Lens' GetRelationalDatabaseSnapshotsResponse Int
grsResponseStatus = lens _grsResponseStatus (\s a -> s {_grsResponseStatus = a})

instance
  NFData
    GetRelationalDatabaseSnapshotsResponse
