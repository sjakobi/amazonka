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
-- Module      : Network.AWS.Pinpoint.GetSegmentExportJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of the export jobs for a segment.
module Network.AWS.Pinpoint.GetSegmentExportJobs
  ( -- * Creating a Request
    getSegmentExportJobs,
    GetSegmentExportJobs,

    -- * Request Lenses
    gsejPageSize,
    gsejToken,
    gsejSegmentId,
    gsejApplicationId,

    -- * Destructuring the Response
    getSegmentExportJobsResponse,
    GetSegmentExportJobsResponse,

    -- * Response Lenses
    gsejrrsResponseStatus,
    gsejrrsExportJobsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSegmentExportJobs' smart constructor.
data GetSegmentExportJobs = GetSegmentExportJobs'
  { _gsejPageSize ::
      !(Maybe Text),
    _gsejToken :: !(Maybe Text),
    _gsejSegmentId :: !Text,
    _gsejApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSegmentExportJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsejPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gsejToken' - The NextToken string that specifies which page of results to return in a paginated response.
--
-- * 'gsejSegmentId' - The unique identifier for the segment.
--
-- * 'gsejApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getSegmentExportJobs ::
  -- | 'gsejSegmentId'
  Text ->
  -- | 'gsejApplicationId'
  Text ->
  GetSegmentExportJobs
getSegmentExportJobs pSegmentId_ pApplicationId_ =
  GetSegmentExportJobs'
    { _gsejPageSize = Nothing,
      _gsejToken = Nothing,
      _gsejSegmentId = pSegmentId_,
      _gsejApplicationId = pApplicationId_
    }

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gsejPageSize :: Lens' GetSegmentExportJobs (Maybe Text)
gsejPageSize = lens _gsejPageSize (\s a -> s {_gsejPageSize = a})

-- | The NextToken string that specifies which page of results to return in a paginated response.
gsejToken :: Lens' GetSegmentExportJobs (Maybe Text)
gsejToken = lens _gsejToken (\s a -> s {_gsejToken = a})

-- | The unique identifier for the segment.
gsejSegmentId :: Lens' GetSegmentExportJobs Text
gsejSegmentId = lens _gsejSegmentId (\s a -> s {_gsejSegmentId = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gsejApplicationId :: Lens' GetSegmentExportJobs Text
gsejApplicationId = lens _gsejApplicationId (\s a -> s {_gsejApplicationId = a})

instance AWSRequest GetSegmentExportJobs where
  type
    Rs GetSegmentExportJobs =
      GetSegmentExportJobsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetSegmentExportJobsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetSegmentExportJobs

instance NFData GetSegmentExportJobs

instance ToHeaders GetSegmentExportJobs where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSegmentExportJobs where
  toPath GetSegmentExportJobs' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gsejApplicationId,
        "/segments/",
        toBS _gsejSegmentId,
        "/jobs/export"
      ]

instance ToQuery GetSegmentExportJobs where
  toQuery GetSegmentExportJobs' {..} =
    mconcat
      ["page-size" =: _gsejPageSize, "token" =: _gsejToken]

-- | /See:/ 'getSegmentExportJobsResponse' smart constructor.
data GetSegmentExportJobsResponse = GetSegmentExportJobsResponse'
  { _gsejrrsResponseStatus ::
      !Int,
    _gsejrrsExportJobsResponse ::
      !ExportJobsResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSegmentExportJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsejrrsResponseStatus' - -- | The response status code.
--
-- * 'gsejrrsExportJobsResponse' - Undocumented member.
getSegmentExportJobsResponse ::
  -- | 'gsejrrsResponseStatus'
  Int ->
  -- | 'gsejrrsExportJobsResponse'
  ExportJobsResponse ->
  GetSegmentExportJobsResponse
getSegmentExportJobsResponse
  pResponseStatus_
  pExportJobsResponse_ =
    GetSegmentExportJobsResponse'
      { _gsejrrsResponseStatus =
          pResponseStatus_,
        _gsejrrsExportJobsResponse =
          pExportJobsResponse_
      }

-- | -- | The response status code.
gsejrrsResponseStatus :: Lens' GetSegmentExportJobsResponse Int
gsejrrsResponseStatus = lens _gsejrrsResponseStatus (\s a -> s {_gsejrrsResponseStatus = a})

-- | Undocumented member.
gsejrrsExportJobsResponse :: Lens' GetSegmentExportJobsResponse ExportJobsResponse
gsejrrsExportJobsResponse = lens _gsejrrsExportJobsResponse (\s a -> s {_gsejrrsExportJobsResponse = a})

instance NFData GetSegmentExportJobsResponse
