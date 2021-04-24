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
-- Module      : Network.AWS.CodePipeline.GetJobDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a job. Used for custom actions only.
--
--
-- /Important:/ When this API is called, AWS CodePipeline returns temporary credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. This API also returns any secret values defined for the action.
module Network.AWS.CodePipeline.GetJobDetails
  ( -- * Creating a Request
    getJobDetails,
    GetJobDetails,

    -- * Request Lenses
    gjdJobId,

    -- * Destructuring the Response
    getJobDetailsResponse,
    GetJobDetailsResponse,

    -- * Response Lenses
    gjdrrsJobDetails,
    gjdrrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @GetJobDetails@ action.
--
--
--
-- /See:/ 'getJobDetails' smart constructor.
newtype GetJobDetails = GetJobDetails'
  { _gjdJobId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJobDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjdJobId' - The unique system-generated ID for the job.
getJobDetails ::
  -- | 'gjdJobId'
  Text ->
  GetJobDetails
getJobDetails pJobId_ =
  GetJobDetails' {_gjdJobId = pJobId_}

-- | The unique system-generated ID for the job.
gjdJobId :: Lens' GetJobDetails Text
gjdJobId = lens _gjdJobId (\s a -> s {_gjdJobId = a})

instance AWSRequest GetJobDetails where
  type Rs GetJobDetails = GetJobDetailsResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          GetJobDetailsResponse'
            <$> (x .?> "jobDetails") <*> (pure (fromEnum s))
      )

instance Hashable GetJobDetails

instance NFData GetJobDetails

instance ToHeaders GetJobDetails where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.GetJobDetails" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetJobDetails where
  toJSON GetJobDetails' {..} =
    object (catMaybes [Just ("jobId" .= _gjdJobId)])

instance ToPath GetJobDetails where
  toPath = const "/"

instance ToQuery GetJobDetails where
  toQuery = const mempty

-- | Represents the output of a @GetJobDetails@ action.
--
--
--
-- /See:/ 'getJobDetailsResponse' smart constructor.
data GetJobDetailsResponse = GetJobDetailsResponse'
  { _gjdrrsJobDetails ::
      !(Maybe JobDetails),
    _gjdrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJobDetailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjdrrsJobDetails' - The details of the job.
--
-- * 'gjdrrsResponseStatus' - -- | The response status code.
getJobDetailsResponse ::
  -- | 'gjdrrsResponseStatus'
  Int ->
  GetJobDetailsResponse
getJobDetailsResponse pResponseStatus_ =
  GetJobDetailsResponse'
    { _gjdrrsJobDetails = Nothing,
      _gjdrrsResponseStatus = pResponseStatus_
    }

-- | The details of the job.
gjdrrsJobDetails :: Lens' GetJobDetailsResponse (Maybe JobDetails)
gjdrrsJobDetails = lens _gjdrrsJobDetails (\s a -> s {_gjdrrsJobDetails = a})

-- | -- | The response status code.
gjdrrsResponseStatus :: Lens' GetJobDetailsResponse Int
gjdrrsResponseStatus = lens _gjdrrsResponseStatus (\s a -> s {_gjdrrsResponseStatus = a})

instance NFData GetJobDetailsResponse
