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
-- Module      : Network.AWS.Lightsail.GetExportSnapshotRecords
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the export snapshot record created as a result of the @export snapshot@ operation.
--
--
-- An export snapshot record can be used to create a new Amazon EC2 instance and its related resources with the @create cloud formation stack@ operation.
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetExportSnapshotRecords
  ( -- * Creating a Request
    getExportSnapshotRecords,
    GetExportSnapshotRecords,

    -- * Request Lenses
    gesrPageToken,

    -- * Destructuring the Response
    getExportSnapshotRecordsResponse,
    GetExportSnapshotRecordsResponse,

    -- * Response Lenses
    gesrrrsExportSnapshotRecords,
    gesrrrsNextPageToken,
    gesrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getExportSnapshotRecords' smart constructor.
newtype GetExportSnapshotRecords = GetExportSnapshotRecords'
  { _gesrPageToken ::
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

-- | Creates a value of 'GetExportSnapshotRecords' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gesrPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetExportSnapshotRecords@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getExportSnapshotRecords ::
  GetExportSnapshotRecords
getExportSnapshotRecords =
  GetExportSnapshotRecords' {_gesrPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetExportSnapshotRecords@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
gesrPageToken :: Lens' GetExportSnapshotRecords (Maybe Text)
gesrPageToken = lens _gesrPageToken (\s a -> s {_gesrPageToken = a})

instance AWSPager GetExportSnapshotRecords where
  page rq rs
    | stop (rs ^. gesrrrsNextPageToken) = Nothing
    | stop (rs ^. gesrrrsExportSnapshotRecords) = Nothing
    | otherwise =
      Just $
        rq
          & gesrPageToken .~ rs ^. gesrrrsNextPageToken

instance AWSRequest GetExportSnapshotRecords where
  type
    Rs GetExportSnapshotRecords =
      GetExportSnapshotRecordsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetExportSnapshotRecordsResponse'
            <$> (x .?> "exportSnapshotRecords" .!@ mempty)
            <*> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetExportSnapshotRecords

instance NFData GetExportSnapshotRecords

instance ToHeaders GetExportSnapshotRecords where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetExportSnapshotRecords" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetExportSnapshotRecords where
  toJSON GetExportSnapshotRecords' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _gesrPageToken])

instance ToPath GetExportSnapshotRecords where
  toPath = const "/"

instance ToQuery GetExportSnapshotRecords where
  toQuery = const mempty

-- | /See:/ 'getExportSnapshotRecordsResponse' smart constructor.
data GetExportSnapshotRecordsResponse = GetExportSnapshotRecordsResponse'
  { _gesrrrsExportSnapshotRecords ::
      !( Maybe
           [ExportSnapshotRecord]
       ),
    _gesrrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _gesrrrsResponseStatus ::
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

-- | Creates a value of 'GetExportSnapshotRecordsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gesrrrsExportSnapshotRecords' - A list of objects describing the export snapshot records.
--
-- * 'gesrrrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetExportSnapshotRecords@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'gesrrrsResponseStatus' - -- | The response status code.
getExportSnapshotRecordsResponse ::
  -- | 'gesrrrsResponseStatus'
  Int ->
  GetExportSnapshotRecordsResponse
getExportSnapshotRecordsResponse pResponseStatus_ =
  GetExportSnapshotRecordsResponse'
    { _gesrrrsExportSnapshotRecords =
        Nothing,
      _gesrrrsNextPageToken = Nothing,
      _gesrrrsResponseStatus = pResponseStatus_
    }

-- | A list of objects describing the export snapshot records.
gesrrrsExportSnapshotRecords :: Lens' GetExportSnapshotRecordsResponse [ExportSnapshotRecord]
gesrrrsExportSnapshotRecords = lens _gesrrrsExportSnapshotRecords (\s a -> s {_gesrrrsExportSnapshotRecords = a}) . _Default . _Coerce

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetExportSnapshotRecords@ request and specify the next page token using the @pageToken@ parameter.
gesrrrsNextPageToken :: Lens' GetExportSnapshotRecordsResponse (Maybe Text)
gesrrrsNextPageToken = lens _gesrrrsNextPageToken (\s a -> s {_gesrrrsNextPageToken = a})

-- | -- | The response status code.
gesrrrsResponseStatus :: Lens' GetExportSnapshotRecordsResponse Int
gesrrrsResponseStatus = lens _gesrrrsResponseStatus (\s a -> s {_gesrrrsResponseStatus = a})

instance NFData GetExportSnapshotRecordsResponse
