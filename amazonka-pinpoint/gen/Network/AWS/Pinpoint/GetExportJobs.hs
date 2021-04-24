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
-- Module      : Network.AWS.Pinpoint.GetExportJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of all the export jobs for an application.
module Network.AWS.Pinpoint.GetExportJobs
  ( -- * Creating a Request
    getExportJobs,
    GetExportJobs,

    -- * Request Lenses
    gejPageSize,
    gejToken,
    gejApplicationId,

    -- * Destructuring the Response
    getExportJobsResponse,
    GetExportJobsResponse,

    -- * Response Lenses
    gejrersResponseStatus,
    gejrersExportJobsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getExportJobs' smart constructor.
data GetExportJobs = GetExportJobs'
  { _gejPageSize ::
      !(Maybe Text),
    _gejToken :: !(Maybe Text),
    _gejApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetExportJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gejPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gejToken' - The NextToken string that specifies which page of results to return in a paginated response.
--
-- * 'gejApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getExportJobs ::
  -- | 'gejApplicationId'
  Text ->
  GetExportJobs
getExportJobs pApplicationId_ =
  GetExportJobs'
    { _gejPageSize = Nothing,
      _gejToken = Nothing,
      _gejApplicationId = pApplicationId_
    }

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gejPageSize :: Lens' GetExportJobs (Maybe Text)
gejPageSize = lens _gejPageSize (\s a -> s {_gejPageSize = a})

-- | The NextToken string that specifies which page of results to return in a paginated response.
gejToken :: Lens' GetExportJobs (Maybe Text)
gejToken = lens _gejToken (\s a -> s {_gejToken = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gejApplicationId :: Lens' GetExportJobs Text
gejApplicationId = lens _gejApplicationId (\s a -> s {_gejApplicationId = a})

instance AWSRequest GetExportJobs where
  type Rs GetExportJobs = GetExportJobsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetExportJobsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetExportJobs

instance NFData GetExportJobs

instance ToHeaders GetExportJobs where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetExportJobs where
  toPath GetExportJobs' {..} =
    mconcat
      ["/v1/apps/", toBS _gejApplicationId, "/jobs/export"]

instance ToQuery GetExportJobs where
  toQuery GetExportJobs' {..} =
    mconcat
      ["page-size" =: _gejPageSize, "token" =: _gejToken]

-- | /See:/ 'getExportJobsResponse' smart constructor.
data GetExportJobsResponse = GetExportJobsResponse'
  { _gejrersResponseStatus ::
      !Int,
    _gejrersExportJobsResponse ::
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

-- | Creates a value of 'GetExportJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gejrersResponseStatus' - -- | The response status code.
--
-- * 'gejrersExportJobsResponse' - Undocumented member.
getExportJobsResponse ::
  -- | 'gejrersResponseStatus'
  Int ->
  -- | 'gejrersExportJobsResponse'
  ExportJobsResponse ->
  GetExportJobsResponse
getExportJobsResponse
  pResponseStatus_
  pExportJobsResponse_ =
    GetExportJobsResponse'
      { _gejrersResponseStatus =
          pResponseStatus_,
        _gejrersExportJobsResponse = pExportJobsResponse_
      }

-- | -- | The response status code.
gejrersResponseStatus :: Lens' GetExportJobsResponse Int
gejrersResponseStatus = lens _gejrersResponseStatus (\s a -> s {_gejrersResponseStatus = a})

-- | Undocumented member.
gejrersExportJobsResponse :: Lens' GetExportJobsResponse ExportJobsResponse
gejrersExportJobsResponse = lens _gejrersExportJobsResponse (\s a -> s {_gejrersExportJobsResponse = a})

instance NFData GetExportJobsResponse
