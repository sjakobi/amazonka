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
-- Module      : Network.AWS.IoT.CreateJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job.
module Network.AWS.IoT.CreateJob
  ( -- * Creating a Request
    createJob,
    CreateJob,

    -- * Request Lenses
    creJobExecutionsRolloutConfig,
    creTargetSelection,
    creTimeoutConfig,
    creNamespaceId,
    creDocumentSource,
    creDocument,
    crePresignedURLConfig,
    creTags,
    creDescription,
    creAbortConfig,
    creJobId,
    creTargets,

    -- * Destructuring the Response
    createJobResponse,
    CreateJobResponse,

    -- * Response Lenses
    crsJobARN,
    crsDescription,
    crsJobId,
    crsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createJob' smart constructor.
data CreateJob = CreateJob'
  { _creJobExecutionsRolloutConfig ::
      !(Maybe JobExecutionsRolloutConfig),
    _creTargetSelection :: !(Maybe TargetSelection),
    _creTimeoutConfig :: !(Maybe TimeoutConfig),
    _creNamespaceId :: !(Maybe Text),
    _creDocumentSource :: !(Maybe Text),
    _creDocument :: !(Maybe Text),
    _crePresignedURLConfig ::
      !(Maybe PresignedURLConfig),
    _creTags :: !(Maybe [Tag]),
    _creDescription :: !(Maybe Text),
    _creAbortConfig :: !(Maybe AbortConfig),
    _creJobId :: !Text,
    _creTargets :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creJobExecutionsRolloutConfig' - Allows you to create a staged rollout of the job.
--
-- * 'creTargetSelection' - Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a thing when the thing is added to a target group, even after the job was completed by all things originally in the group.
--
-- * 'creTimeoutConfig' - Specifies the amount of time each device has to finish its execution of the job. The timer is started when the job execution status is set to @IN_PROGRESS@ . If the job execution status is not set to another terminal state before the time expires, it will be automatically set to @TIMED_OUT@ .
--
-- * 'creNamespaceId' - The namespace used to indicate that a job is a customer-managed job. When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format. @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
--
-- * 'creDocumentSource' - An S3 link to the job document.
--
-- * 'creDocument' - The job document.
--
-- * 'crePresignedURLConfig' - Configuration information for pre-signed S3 URLs.
--
-- * 'creTags' - Metadata which can be used to manage the job.
--
-- * 'creDescription' - A short text description of the job.
--
-- * 'creAbortConfig' - Allows you to create criteria to abort a job.
--
-- * 'creJobId' - A job identifier which must be unique for your AWS account. We recommend using a UUID. Alpha-numeric characters, "-" and "_" are valid for use here.
--
-- * 'creTargets' - A list of things and thing groups to which the job should be sent.
createJob ::
  -- | 'creJobId'
  Text ->
  -- | 'creTargets'
  NonEmpty Text ->
  CreateJob
createJob pJobId_ pTargets_ =
  CreateJob'
    { _creJobExecutionsRolloutConfig =
        Nothing,
      _creTargetSelection = Nothing,
      _creTimeoutConfig = Nothing,
      _creNamespaceId = Nothing,
      _creDocumentSource = Nothing,
      _creDocument = Nothing,
      _crePresignedURLConfig = Nothing,
      _creTags = Nothing,
      _creDescription = Nothing,
      _creAbortConfig = Nothing,
      _creJobId = pJobId_,
      _creTargets = _List1 # pTargets_
    }

-- | Allows you to create a staged rollout of the job.
creJobExecutionsRolloutConfig :: Lens' CreateJob (Maybe JobExecutionsRolloutConfig)
creJobExecutionsRolloutConfig = lens _creJobExecutionsRolloutConfig (\s a -> s {_creJobExecutionsRolloutConfig = a})

-- | Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a thing when the thing is added to a target group, even after the job was completed by all things originally in the group.
creTargetSelection :: Lens' CreateJob (Maybe TargetSelection)
creTargetSelection = lens _creTargetSelection (\s a -> s {_creTargetSelection = a})

-- | Specifies the amount of time each device has to finish its execution of the job. The timer is started when the job execution status is set to @IN_PROGRESS@ . If the job execution status is not set to another terminal state before the time expires, it will be automatically set to @TIMED_OUT@ .
creTimeoutConfig :: Lens' CreateJob (Maybe TimeoutConfig)
creTimeoutConfig = lens _creTimeoutConfig (\s a -> s {_creTimeoutConfig = a})

-- | The namespace used to indicate that a job is a customer-managed job. When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format. @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
creNamespaceId :: Lens' CreateJob (Maybe Text)
creNamespaceId = lens _creNamespaceId (\s a -> s {_creNamespaceId = a})

-- | An S3 link to the job document.
creDocumentSource :: Lens' CreateJob (Maybe Text)
creDocumentSource = lens _creDocumentSource (\s a -> s {_creDocumentSource = a})

-- | The job document.
creDocument :: Lens' CreateJob (Maybe Text)
creDocument = lens _creDocument (\s a -> s {_creDocument = a})

-- | Configuration information for pre-signed S3 URLs.
crePresignedURLConfig :: Lens' CreateJob (Maybe PresignedURLConfig)
crePresignedURLConfig = lens _crePresignedURLConfig (\s a -> s {_crePresignedURLConfig = a})

-- | Metadata which can be used to manage the job.
creTags :: Lens' CreateJob [Tag]
creTags = lens _creTags (\s a -> s {_creTags = a}) . _Default . _Coerce

-- | A short text description of the job.
creDescription :: Lens' CreateJob (Maybe Text)
creDescription = lens _creDescription (\s a -> s {_creDescription = a})

-- | Allows you to create criteria to abort a job.
creAbortConfig :: Lens' CreateJob (Maybe AbortConfig)
creAbortConfig = lens _creAbortConfig (\s a -> s {_creAbortConfig = a})

-- | A job identifier which must be unique for your AWS account. We recommend using a UUID. Alpha-numeric characters, "-" and "_" are valid for use here.
creJobId :: Lens' CreateJob Text
creJobId = lens _creJobId (\s a -> s {_creJobId = a})

-- | A list of things and thing groups to which the job should be sent.
creTargets :: Lens' CreateJob (NonEmpty Text)
creTargets = lens _creTargets (\s a -> s {_creTargets = a}) . _List1

instance AWSRequest CreateJob where
  type Rs CreateJob = CreateJobResponse
  request = putJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateJobResponse'
            <$> (x .?> "jobArn")
            <*> (x .?> "description")
            <*> (x .?> "jobId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateJob

instance NFData CreateJob

instance ToHeaders CreateJob where
  toHeaders = const mempty

instance ToJSON CreateJob where
  toJSON CreateJob' {..} =
    object
      ( catMaybes
          [ ("jobExecutionsRolloutConfig" .=)
              <$> _creJobExecutionsRolloutConfig,
            ("targetSelection" .=) <$> _creTargetSelection,
            ("timeoutConfig" .=) <$> _creTimeoutConfig,
            ("namespaceId" .=) <$> _creNamespaceId,
            ("documentSource" .=) <$> _creDocumentSource,
            ("document" .=) <$> _creDocument,
            ("presignedUrlConfig" .=) <$> _crePresignedURLConfig,
            ("tags" .=) <$> _creTags,
            ("description" .=) <$> _creDescription,
            ("abortConfig" .=) <$> _creAbortConfig,
            Just ("targets" .= _creTargets)
          ]
      )

instance ToPath CreateJob where
  toPath CreateJob' {..} =
    mconcat ["/jobs/", toBS _creJobId]

instance ToQuery CreateJob where
  toQuery = const mempty

-- | /See:/ 'createJobResponse' smart constructor.
data CreateJobResponse = CreateJobResponse'
  { _crsJobARN ::
      !(Maybe Text),
    _crsDescription :: !(Maybe Text),
    _crsJobId :: !(Maybe Text),
    _crsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsJobARN' - The job ARN.
--
-- * 'crsDescription' - The job description.
--
-- * 'crsJobId' - The unique identifier you assigned to this job.
--
-- * 'crsResponseStatus' - -- | The response status code.
createJobResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateJobResponse
createJobResponse pResponseStatus_ =
  CreateJobResponse'
    { _crsJobARN = Nothing,
      _crsDescription = Nothing,
      _crsJobId = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | The job ARN.
crsJobARN :: Lens' CreateJobResponse (Maybe Text)
crsJobARN = lens _crsJobARN (\s a -> s {_crsJobARN = a})

-- | The job description.
crsDescription :: Lens' CreateJobResponse (Maybe Text)
crsDescription = lens _crsDescription (\s a -> s {_crsDescription = a})

-- | The unique identifier you assigned to this job.
crsJobId :: Lens' CreateJobResponse (Maybe Text)
crsJobId = lens _crsJobId (\s a -> s {_crsJobId = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateJobResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateJobResponse
