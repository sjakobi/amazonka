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
-- Module      : Network.AWS.SageMaker.DescribeEdgePackagingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A description of edge packaging jobs.
module Network.AWS.SageMaker.DescribeEdgePackagingJob
  ( -- * Creating a Request
    describeEdgePackagingJob,
    DescribeEdgePackagingJob,

    -- * Request Lenses
    depjEdgePackagingJobName,

    -- * Destructuring the Response
    describeEdgePackagingJobResponse,
    DescribeEdgePackagingJobResponse,

    -- * Response Lenses
    depjrrsEdgePackagingJobStatusMessage,
    depjrrsCreationTime,
    depjrrsRoleARN,
    depjrrsCompilationJobName,
    depjrrsModelSignature,
    depjrrsResourceKey,
    depjrrsModelVersion,
    depjrrsOutputConfig,
    depjrrsModelArtifact,
    depjrrsLastModifiedTime,
    depjrrsModelName,
    depjrrsResponseStatus,
    depjrrsEdgePackagingJobARN,
    depjrrsEdgePackagingJobName,
    depjrrsEdgePackagingJobStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeEdgePackagingJob' smart constructor.
newtype DescribeEdgePackagingJob = DescribeEdgePackagingJob'
  { _depjEdgePackagingJobName ::
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

-- | Creates a value of 'DescribeEdgePackagingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'depjEdgePackagingJobName' - The name of the edge packaging job.
describeEdgePackagingJob ::
  -- | 'depjEdgePackagingJobName'
  Text ->
  DescribeEdgePackagingJob
describeEdgePackagingJob pEdgePackagingJobName_ =
  DescribeEdgePackagingJob'
    { _depjEdgePackagingJobName =
        pEdgePackagingJobName_
    }

-- | The name of the edge packaging job.
depjEdgePackagingJobName :: Lens' DescribeEdgePackagingJob Text
depjEdgePackagingJobName = lens _depjEdgePackagingJobName (\s a -> s {_depjEdgePackagingJobName = a})

instance AWSRequest DescribeEdgePackagingJob where
  type
    Rs DescribeEdgePackagingJob =
      DescribeEdgePackagingJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeEdgePackagingJobResponse'
            <$> (x .?> "EdgePackagingJobStatusMessage")
            <*> (x .?> "CreationTime")
            <*> (x .?> "RoleArn")
            <*> (x .?> "CompilationJobName")
            <*> (x .?> "ModelSignature")
            <*> (x .?> "ResourceKey")
            <*> (x .?> "ModelVersion")
            <*> (x .?> "OutputConfig")
            <*> (x .?> "ModelArtifact")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "ModelName")
            <*> (pure (fromEnum s))
            <*> (x .:> "EdgePackagingJobArn")
            <*> (x .:> "EdgePackagingJobName")
            <*> (x .:> "EdgePackagingJobStatus")
      )

instance Hashable DescribeEdgePackagingJob

instance NFData DescribeEdgePackagingJob

instance ToHeaders DescribeEdgePackagingJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeEdgePackagingJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEdgePackagingJob where
  toJSON DescribeEdgePackagingJob' {..} =
    object
      ( catMaybes
          [ Just
              ( "EdgePackagingJobName"
                  .= _depjEdgePackagingJobName
              )
          ]
      )

instance ToPath DescribeEdgePackagingJob where
  toPath = const "/"

instance ToQuery DescribeEdgePackagingJob where
  toQuery = const mempty

-- | /See:/ 'describeEdgePackagingJobResponse' smart constructor.
data DescribeEdgePackagingJobResponse = DescribeEdgePackagingJobResponse'
  { _depjrrsEdgePackagingJobStatusMessage ::
      !( Maybe
           Text
       ),
    _depjrrsCreationTime ::
      !( Maybe
           POSIX
       ),
    _depjrrsRoleARN ::
      !( Maybe
           Text
       ),
    _depjrrsCompilationJobName ::
      !( Maybe
           Text
       ),
    _depjrrsModelSignature ::
      !( Maybe
           Text
       ),
    _depjrrsResourceKey ::
      !( Maybe
           Text
       ),
    _depjrrsModelVersion ::
      !( Maybe
           Text
       ),
    _depjrrsOutputConfig ::
      !( Maybe
           EdgeOutputConfig
       ),
    _depjrrsModelArtifact ::
      !( Maybe
           Text
       ),
    _depjrrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _depjrrsModelName ::
      !( Maybe
           Text
       ),
    _depjrrsResponseStatus ::
      !Int,
    _depjrrsEdgePackagingJobARN ::
      !Text,
    _depjrrsEdgePackagingJobName ::
      !Text,
    _depjrrsEdgePackagingJobStatus ::
      !EdgePackagingJobStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEdgePackagingJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'depjrrsEdgePackagingJobStatusMessage' - Returns a message describing the job status and error messages.
--
-- * 'depjrrsCreationTime' - The timestamp of when the packaging job was created.
--
-- * 'depjrrsRoleARN' - The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker to download and upload the model, and to contact Neo.
--
-- * 'depjrrsCompilationJobName' - The name of the SageMaker Neo compilation job that is used to locate model artifacts that are being packaged.
--
-- * 'depjrrsModelSignature' - The signature document of files in the model artifact.
--
-- * 'depjrrsResourceKey' - The CMK to use when encrypting the EBS volume the job run on.
--
-- * 'depjrrsModelVersion' - The version of the model.
--
-- * 'depjrrsOutputConfig' - The output configuration for the edge packaging job.
--
-- * 'depjrrsModelArtifact' - The Amazon Simple Storage (S3) URI where model artifacts ares stored.
--
-- * 'depjrrsLastModifiedTime' - The timestamp of when the job was last updated.
--
-- * 'depjrrsModelName' - The name of the model.
--
-- * 'depjrrsResponseStatus' - -- | The response status code.
--
-- * 'depjrrsEdgePackagingJobARN' - The Amazon Resource Name (ARN) of the edge packaging job.
--
-- * 'depjrrsEdgePackagingJobName' - The name of the edge packaging job.
--
-- * 'depjrrsEdgePackagingJobStatus' - The current status of the packaging job.
describeEdgePackagingJobResponse ::
  -- | 'depjrrsResponseStatus'
  Int ->
  -- | 'depjrrsEdgePackagingJobARN'
  Text ->
  -- | 'depjrrsEdgePackagingJobName'
  Text ->
  -- | 'depjrrsEdgePackagingJobStatus'
  EdgePackagingJobStatus ->
  DescribeEdgePackagingJobResponse
describeEdgePackagingJobResponse
  pResponseStatus_
  pEdgePackagingJobARN_
  pEdgePackagingJobName_
  pEdgePackagingJobStatus_ =
    DescribeEdgePackagingJobResponse'
      { _depjrrsEdgePackagingJobStatusMessage =
          Nothing,
        _depjrrsCreationTime = Nothing,
        _depjrrsRoleARN = Nothing,
        _depjrrsCompilationJobName = Nothing,
        _depjrrsModelSignature = Nothing,
        _depjrrsResourceKey = Nothing,
        _depjrrsModelVersion = Nothing,
        _depjrrsOutputConfig = Nothing,
        _depjrrsModelArtifact = Nothing,
        _depjrrsLastModifiedTime = Nothing,
        _depjrrsModelName = Nothing,
        _depjrrsResponseStatus = pResponseStatus_,
        _depjrrsEdgePackagingJobARN =
          pEdgePackagingJobARN_,
        _depjrrsEdgePackagingJobName =
          pEdgePackagingJobName_,
        _depjrrsEdgePackagingJobStatus =
          pEdgePackagingJobStatus_
      }

-- | Returns a message describing the job status and error messages.
depjrrsEdgePackagingJobStatusMessage :: Lens' DescribeEdgePackagingJobResponse (Maybe Text)
depjrrsEdgePackagingJobStatusMessage = lens _depjrrsEdgePackagingJobStatusMessage (\s a -> s {_depjrrsEdgePackagingJobStatusMessage = a})

-- | The timestamp of when the packaging job was created.
depjrrsCreationTime :: Lens' DescribeEdgePackagingJobResponse (Maybe UTCTime)
depjrrsCreationTime = lens _depjrrsCreationTime (\s a -> s {_depjrrsCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker to download and upload the model, and to contact Neo.
depjrrsRoleARN :: Lens' DescribeEdgePackagingJobResponse (Maybe Text)
depjrrsRoleARN = lens _depjrrsRoleARN (\s a -> s {_depjrrsRoleARN = a})

-- | The name of the SageMaker Neo compilation job that is used to locate model artifacts that are being packaged.
depjrrsCompilationJobName :: Lens' DescribeEdgePackagingJobResponse (Maybe Text)
depjrrsCompilationJobName = lens _depjrrsCompilationJobName (\s a -> s {_depjrrsCompilationJobName = a})

-- | The signature document of files in the model artifact.
depjrrsModelSignature :: Lens' DescribeEdgePackagingJobResponse (Maybe Text)
depjrrsModelSignature = lens _depjrrsModelSignature (\s a -> s {_depjrrsModelSignature = a})

-- | The CMK to use when encrypting the EBS volume the job run on.
depjrrsResourceKey :: Lens' DescribeEdgePackagingJobResponse (Maybe Text)
depjrrsResourceKey = lens _depjrrsResourceKey (\s a -> s {_depjrrsResourceKey = a})

-- | The version of the model.
depjrrsModelVersion :: Lens' DescribeEdgePackagingJobResponse (Maybe Text)
depjrrsModelVersion = lens _depjrrsModelVersion (\s a -> s {_depjrrsModelVersion = a})

-- | The output configuration for the edge packaging job.
depjrrsOutputConfig :: Lens' DescribeEdgePackagingJobResponse (Maybe EdgeOutputConfig)
depjrrsOutputConfig = lens _depjrrsOutputConfig (\s a -> s {_depjrrsOutputConfig = a})

-- | The Amazon Simple Storage (S3) URI where model artifacts ares stored.
depjrrsModelArtifact :: Lens' DescribeEdgePackagingJobResponse (Maybe Text)
depjrrsModelArtifact = lens _depjrrsModelArtifact (\s a -> s {_depjrrsModelArtifact = a})

-- | The timestamp of when the job was last updated.
depjrrsLastModifiedTime :: Lens' DescribeEdgePackagingJobResponse (Maybe UTCTime)
depjrrsLastModifiedTime = lens _depjrrsLastModifiedTime (\s a -> s {_depjrrsLastModifiedTime = a}) . mapping _Time

-- | The name of the model.
depjrrsModelName :: Lens' DescribeEdgePackagingJobResponse (Maybe Text)
depjrrsModelName = lens _depjrrsModelName (\s a -> s {_depjrrsModelName = a})

-- | -- | The response status code.
depjrrsResponseStatus :: Lens' DescribeEdgePackagingJobResponse Int
depjrrsResponseStatus = lens _depjrrsResponseStatus (\s a -> s {_depjrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the edge packaging job.
depjrrsEdgePackagingJobARN :: Lens' DescribeEdgePackagingJobResponse Text
depjrrsEdgePackagingJobARN = lens _depjrrsEdgePackagingJobARN (\s a -> s {_depjrrsEdgePackagingJobARN = a})

-- | The name of the edge packaging job.
depjrrsEdgePackagingJobName :: Lens' DescribeEdgePackagingJobResponse Text
depjrrsEdgePackagingJobName = lens _depjrrsEdgePackagingJobName (\s a -> s {_depjrrsEdgePackagingJobName = a})

-- | The current status of the packaging job.
depjrrsEdgePackagingJobStatus :: Lens' DescribeEdgePackagingJobResponse EdgePackagingJobStatus
depjrrsEdgePackagingJobStatus = lens _depjrrsEdgePackagingJobStatus (\s a -> s {_depjrrsEdgePackagingJobStatus = a})

instance NFData DescribeEdgePackagingJobResponse
