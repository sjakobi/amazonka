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
-- Module      : Network.AWS.Pinpoint.GetImportJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of all the import jobs for an application.
module Network.AWS.Pinpoint.GetImportJobs
  ( -- * Creating a Request
    getImportJobs,
    GetImportJobs,

    -- * Request Lenses
    gijPageSize,
    gijToken,
    gijApplicationId,

    -- * Destructuring the Response
    getImportJobsResponse,
    GetImportJobsResponse,

    -- * Response Lenses
    grsResponseStatus,
    grsImportJobsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getImportJobs' smart constructor.
data GetImportJobs = GetImportJobs'
  { _gijPageSize ::
      !(Maybe Text),
    _gijToken :: !(Maybe Text),
    _gijApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetImportJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gijPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gijToken' - The NextToken string that specifies which page of results to return in a paginated response.
--
-- * 'gijApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getImportJobs ::
  -- | 'gijApplicationId'
  Text ->
  GetImportJobs
getImportJobs pApplicationId_ =
  GetImportJobs'
    { _gijPageSize = Nothing,
      _gijToken = Nothing,
      _gijApplicationId = pApplicationId_
    }

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gijPageSize :: Lens' GetImportJobs (Maybe Text)
gijPageSize = lens _gijPageSize (\s a -> s {_gijPageSize = a})

-- | The NextToken string that specifies which page of results to return in a paginated response.
gijToken :: Lens' GetImportJobs (Maybe Text)
gijToken = lens _gijToken (\s a -> s {_gijToken = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gijApplicationId :: Lens' GetImportJobs Text
gijApplicationId = lens _gijApplicationId (\s a -> s {_gijApplicationId = a})

instance AWSRequest GetImportJobs where
  type Rs GetImportJobs = GetImportJobsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetImportJobsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetImportJobs

instance NFData GetImportJobs

instance ToHeaders GetImportJobs where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetImportJobs where
  toPath GetImportJobs' {..} =
    mconcat
      ["/v1/apps/", toBS _gijApplicationId, "/jobs/import"]

instance ToQuery GetImportJobs where
  toQuery GetImportJobs' {..} =
    mconcat
      ["page-size" =: _gijPageSize, "token" =: _gijToken]

-- | /See:/ 'getImportJobsResponse' smart constructor.
data GetImportJobsResponse = GetImportJobsResponse'
  { _grsResponseStatus ::
      !Int,
    _grsImportJobsResponse ::
      !ImportJobsResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetImportJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsResponseStatus' - -- | The response status code.
--
-- * 'grsImportJobsResponse' - Undocumented member.
getImportJobsResponse ::
  -- | 'grsResponseStatus'
  Int ->
  -- | 'grsImportJobsResponse'
  ImportJobsResponse ->
  GetImportJobsResponse
getImportJobsResponse
  pResponseStatus_
  pImportJobsResponse_ =
    GetImportJobsResponse'
      { _grsResponseStatus =
          pResponseStatus_,
        _grsImportJobsResponse = pImportJobsResponse_
      }

-- | -- | The response status code.
grsResponseStatus :: Lens' GetImportJobsResponse Int
grsResponseStatus = lens _grsResponseStatus (\s a -> s {_grsResponseStatus = a})

-- | Undocumented member.
grsImportJobsResponse :: Lens' GetImportJobsResponse ImportJobsResponse
grsImportJobsResponse = lens _grsImportJobsResponse (\s a -> s {_grsImportJobsResponse = a})

instance NFData GetImportJobsResponse
