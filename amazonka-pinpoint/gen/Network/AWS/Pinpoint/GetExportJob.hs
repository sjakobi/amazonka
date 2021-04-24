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
-- Module      : Network.AWS.Pinpoint.GetExportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of a specific export job for an application.
module Network.AWS.Pinpoint.GetExportJob
  ( -- * Creating a Request
    getExportJob,
    GetExportJob,

    -- * Request Lenses
    gejeApplicationId,
    gejeJobId,

    -- * Destructuring the Response
    getExportJobResponse,
    GetExportJobResponse,

    -- * Response Lenses
    gejrrsResponseStatus,
    gejrrsExportJobResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getExportJob' smart constructor.
data GetExportJob = GetExportJob'
  { _gejeApplicationId ::
      !Text,
    _gejeJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetExportJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gejeApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'gejeJobId' - The unique identifier for the job.
getExportJob ::
  -- | 'gejeApplicationId'
  Text ->
  -- | 'gejeJobId'
  Text ->
  GetExportJob
getExportJob pApplicationId_ pJobId_ =
  GetExportJob'
    { _gejeApplicationId = pApplicationId_,
      _gejeJobId = pJobId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gejeApplicationId :: Lens' GetExportJob Text
gejeApplicationId = lens _gejeApplicationId (\s a -> s {_gejeApplicationId = a})

-- | The unique identifier for the job.
gejeJobId :: Lens' GetExportJob Text
gejeJobId = lens _gejeJobId (\s a -> s {_gejeJobId = a})

instance AWSRequest GetExportJob where
  type Rs GetExportJob = GetExportJobResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetExportJobResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetExportJob

instance NFData GetExportJob

instance ToHeaders GetExportJob where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetExportJob where
  toPath GetExportJob' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gejeApplicationId,
        "/jobs/export/",
        toBS _gejeJobId
      ]

instance ToQuery GetExportJob where
  toQuery = const mempty

-- | /See:/ 'getExportJobResponse' smart constructor.
data GetExportJobResponse = GetExportJobResponse'
  { _gejrrsResponseStatus ::
      !Int,
    _gejrrsExportJobResponse ::
      !ExportJobResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetExportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gejrrsResponseStatus' - -- | The response status code.
--
-- * 'gejrrsExportJobResponse' - Undocumented member.
getExportJobResponse ::
  -- | 'gejrrsResponseStatus'
  Int ->
  -- | 'gejrrsExportJobResponse'
  ExportJobResponse ->
  GetExportJobResponse
getExportJobResponse
  pResponseStatus_
  pExportJobResponse_ =
    GetExportJobResponse'
      { _gejrrsResponseStatus =
          pResponseStatus_,
        _gejrrsExportJobResponse = pExportJobResponse_
      }

-- | -- | The response status code.
gejrrsResponseStatus :: Lens' GetExportJobResponse Int
gejrrsResponseStatus = lens _gejrrsResponseStatus (\s a -> s {_gejrrsResponseStatus = a})

-- | Undocumented member.
gejrrsExportJobResponse :: Lens' GetExportJobResponse ExportJobResponse
gejrrsExportJobResponse = lens _gejrrsExportJobResponse (\s a -> s {_gejrrsExportJobResponse = a})

instance NFData GetExportJobResponse
