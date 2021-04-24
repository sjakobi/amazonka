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
-- Module      : Network.AWS.Pinpoint.GetImportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of a specific import job for an application.
module Network.AWS.Pinpoint.GetImportJob
  ( -- * Creating a Request
    getImportJob,
    GetImportJob,

    -- * Request Lenses
    gApplicationId,
    gJobId,

    -- * Destructuring the Response
    getImportJobResponse,
    GetImportJobResponse,

    -- * Response Lenses
    gijrrsResponseStatus,
    gijrrsImportJobResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getImportJob' smart constructor.
data GetImportJob = GetImportJob'
  { _gApplicationId ::
      !Text,
    _gJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetImportJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'gJobId' - The unique identifier for the job.
getImportJob ::
  -- | 'gApplicationId'
  Text ->
  -- | 'gJobId'
  Text ->
  GetImportJob
getImportJob pApplicationId_ pJobId_ =
  GetImportJob'
    { _gApplicationId = pApplicationId_,
      _gJobId = pJobId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gApplicationId :: Lens' GetImportJob Text
gApplicationId = lens _gApplicationId (\s a -> s {_gApplicationId = a})

-- | The unique identifier for the job.
gJobId :: Lens' GetImportJob Text
gJobId = lens _gJobId (\s a -> s {_gJobId = a})

instance AWSRequest GetImportJob where
  type Rs GetImportJob = GetImportJobResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetImportJobResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetImportJob

instance NFData GetImportJob

instance ToHeaders GetImportJob where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetImportJob where
  toPath GetImportJob' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gApplicationId,
        "/jobs/import/",
        toBS _gJobId
      ]

instance ToQuery GetImportJob where
  toQuery = const mempty

-- | /See:/ 'getImportJobResponse' smart constructor.
data GetImportJobResponse = GetImportJobResponse'
  { _gijrrsResponseStatus ::
      !Int,
    _gijrrsImportJobResponse ::
      !ImportJobResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetImportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gijrrsResponseStatus' - -- | The response status code.
--
-- * 'gijrrsImportJobResponse' - Undocumented member.
getImportJobResponse ::
  -- | 'gijrrsResponseStatus'
  Int ->
  -- | 'gijrrsImportJobResponse'
  ImportJobResponse ->
  GetImportJobResponse
getImportJobResponse
  pResponseStatus_
  pImportJobResponse_ =
    GetImportJobResponse'
      { _gijrrsResponseStatus =
          pResponseStatus_,
        _gijrrsImportJobResponse = pImportJobResponse_
      }

-- | -- | The response status code.
gijrrsResponseStatus :: Lens' GetImportJobResponse Int
gijrrsResponseStatus = lens _gijrrsResponseStatus (\s a -> s {_gijrrsResponseStatus = a})

-- | Undocumented member.
gijrrsImportJobResponse :: Lens' GetImportJobResponse ImportJobResponse
gijrrsImportJobResponse = lens _gijrrsImportJobResponse (\s a -> s {_gijrrsImportJobResponse = a})

instance NFData GetImportJobResponse
