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
-- Module      : Network.AWS.SageMaker.DescribeCompilationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a model compilation job.
--
--
-- To create a model compilation job, use 'CreateCompilationJob' . To get information about multiple model compilation jobs, use 'ListCompilationJobs' .
module Network.AWS.SageMaker.DescribeCompilationJob
  ( -- * Creating a Request
    describeCompilationJob,
    DescribeCompilationJob,

    -- * Request Lenses
    dcjCompilationJobName,

    -- * Destructuring the Response
    describeCompilationJobResponse,
    DescribeCompilationJobResponse,

    -- * Response Lenses
    dcjrrsModelDigests,
    dcjrrsCompilationStartTime,
    dcjrrsCompilationEndTime,
    dcjrrsResponseStatus,
    dcjrrsCompilationJobName,
    dcjrrsCompilationJobARN,
    dcjrrsCompilationJobStatus,
    dcjrrsStoppingCondition,
    dcjrrsCreationTime,
    dcjrrsLastModifiedTime,
    dcjrrsFailureReason,
    dcjrrsModelArtifacts,
    dcjrrsRoleARN,
    dcjrrsInputConfig,
    dcjrrsOutputConfig,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeCompilationJob' smart constructor.
newtype DescribeCompilationJob = DescribeCompilationJob'
  { _dcjCompilationJobName ::
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

-- | Creates a value of 'DescribeCompilationJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcjCompilationJobName' - The name of the model compilation job that you want information about.
describeCompilationJob ::
  -- | 'dcjCompilationJobName'
  Text ->
  DescribeCompilationJob
describeCompilationJob pCompilationJobName_ =
  DescribeCompilationJob'
    { _dcjCompilationJobName =
        pCompilationJobName_
    }

-- | The name of the model compilation job that you want information about.
dcjCompilationJobName :: Lens' DescribeCompilationJob Text
dcjCompilationJobName = lens _dcjCompilationJobName (\s a -> s {_dcjCompilationJobName = a})

instance AWSRequest DescribeCompilationJob where
  type
    Rs DescribeCompilationJob =
      DescribeCompilationJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeCompilationJobResponse'
            <$> (x .?> "ModelDigests")
            <*> (x .?> "CompilationStartTime")
            <*> (x .?> "CompilationEndTime")
            <*> (pure (fromEnum s))
            <*> (x .:> "CompilationJobName")
            <*> (x .:> "CompilationJobArn")
            <*> (x .:> "CompilationJobStatus")
            <*> (x .:> "StoppingCondition")
            <*> (x .:> "CreationTime")
            <*> (x .:> "LastModifiedTime")
            <*> (x .:> "FailureReason")
            <*> (x .:> "ModelArtifacts")
            <*> (x .:> "RoleArn")
            <*> (x .:> "InputConfig")
            <*> (x .:> "OutputConfig")
      )

instance Hashable DescribeCompilationJob

instance NFData DescribeCompilationJob

instance ToHeaders DescribeCompilationJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeCompilationJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCompilationJob where
  toJSON DescribeCompilationJob' {..} =
    object
      ( catMaybes
          [ Just
              ("CompilationJobName" .= _dcjCompilationJobName)
          ]
      )

instance ToPath DescribeCompilationJob where
  toPath = const "/"

instance ToQuery DescribeCompilationJob where
  toQuery = const mempty

-- | /See:/ 'describeCompilationJobResponse' smart constructor.
data DescribeCompilationJobResponse = DescribeCompilationJobResponse'
  { _dcjrrsModelDigests ::
      !( Maybe
           ModelDigests
       ),
    _dcjrrsCompilationStartTime ::
      !( Maybe
           POSIX
       ),
    _dcjrrsCompilationEndTime ::
      !( Maybe
           POSIX
       ),
    _dcjrrsResponseStatus ::
      !Int,
    _dcjrrsCompilationJobName ::
      !Text,
    _dcjrrsCompilationJobARN ::
      !Text,
    _dcjrrsCompilationJobStatus ::
      !CompilationJobStatus,
    _dcjrrsStoppingCondition ::
      !StoppingCondition,
    _dcjrrsCreationTime ::
      !POSIX,
    _dcjrrsLastModifiedTime ::
      !POSIX,
    _dcjrrsFailureReason ::
      !Text,
    _dcjrrsModelArtifacts ::
      !ModelArtifacts,
    _dcjrrsRoleARN ::
      !Text,
    _dcjrrsInputConfig ::
      !InputConfig,
    _dcjrrsOutputConfig ::
      !OutputConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCompilationJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcjrrsModelDigests' - Provides a BLAKE2 hash value that identifies the compiled model artifacts in Amazon S3.
--
-- * 'dcjrrsCompilationStartTime' - The time when the model compilation job started the @CompilationJob@ instances.  You are billed for the time between this timestamp and the timestamp in the 'DescribeCompilationJobResponse$CompilationEndTime' field. In Amazon CloudWatch Logs, the start time might be later than this time. That's because it takes time to download the compilation job, which depends on the size of the compilation job container.
--
-- * 'dcjrrsCompilationEndTime' - The time when the model compilation job on a compilation job instance ended. For a successful or stopped job, this is when the job's model artifacts have finished uploading. For a failed job, this is when Amazon SageMaker detected that the job failed.
--
-- * 'dcjrrsResponseStatus' - -- | The response status code.
--
-- * 'dcjrrsCompilationJobName' - The name of the model compilation job.
--
-- * 'dcjrrsCompilationJobARN' - The Amazon Resource Name (ARN) of the model compilation job.
--
-- * 'dcjrrsCompilationJobStatus' - The status of the model compilation job.
--
-- * 'dcjrrsStoppingCondition' - Specifies a limit to how long a model compilation job can run. When the job reaches the time limit, Amazon SageMaker ends the compilation job. Use this API to cap model training costs.
--
-- * 'dcjrrsCreationTime' - The time that the model compilation job was created.
--
-- * 'dcjrrsLastModifiedTime' - The time that the status of the model compilation job was last modified.
--
-- * 'dcjrrsFailureReason' - If a model compilation job failed, the reason it failed.
--
-- * 'dcjrrsModelArtifacts' - Information about the location in Amazon S3 that has been configured for storing the model artifacts used in the compilation job.
--
-- * 'dcjrrsRoleARN' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker assumes to perform the model compilation job.
--
-- * 'dcjrrsInputConfig' - Information about the location in Amazon S3 of the input model artifacts, the name and shape of the expected data inputs, and the framework in which the model was trained.
--
-- * 'dcjrrsOutputConfig' - Information about the output location for the compiled model and the target device that the model runs on.
describeCompilationJobResponse ::
  -- | 'dcjrrsResponseStatus'
  Int ->
  -- | 'dcjrrsCompilationJobName'
  Text ->
  -- | 'dcjrrsCompilationJobARN'
  Text ->
  -- | 'dcjrrsCompilationJobStatus'
  CompilationJobStatus ->
  -- | 'dcjrrsStoppingCondition'
  StoppingCondition ->
  -- | 'dcjrrsCreationTime'
  UTCTime ->
  -- | 'dcjrrsLastModifiedTime'
  UTCTime ->
  -- | 'dcjrrsFailureReason'
  Text ->
  -- | 'dcjrrsModelArtifacts'
  ModelArtifacts ->
  -- | 'dcjrrsRoleARN'
  Text ->
  -- | 'dcjrrsInputConfig'
  InputConfig ->
  -- | 'dcjrrsOutputConfig'
  OutputConfig ->
  DescribeCompilationJobResponse
describeCompilationJobResponse
  pResponseStatus_
  pCompilationJobName_
  pCompilationJobARN_
  pCompilationJobStatus_
  pStoppingCondition_
  pCreationTime_
  pLastModifiedTime_
  pFailureReason_
  pModelArtifacts_
  pRoleARN_
  pInputConfig_
  pOutputConfig_ =
    DescribeCompilationJobResponse'
      { _dcjrrsModelDigests =
          Nothing,
        _dcjrrsCompilationStartTime = Nothing,
        _dcjrrsCompilationEndTime = Nothing,
        _dcjrrsResponseStatus = pResponseStatus_,
        _dcjrrsCompilationJobName =
          pCompilationJobName_,
        _dcjrrsCompilationJobARN =
          pCompilationJobARN_,
        _dcjrrsCompilationJobStatus =
          pCompilationJobStatus_,
        _dcjrrsStoppingCondition =
          pStoppingCondition_,
        _dcjrrsCreationTime =
          _Time # pCreationTime_,
        _dcjrrsLastModifiedTime =
          _Time # pLastModifiedTime_,
        _dcjrrsFailureReason = pFailureReason_,
        _dcjrrsModelArtifacts = pModelArtifacts_,
        _dcjrrsRoleARN = pRoleARN_,
        _dcjrrsInputConfig = pInputConfig_,
        _dcjrrsOutputConfig = pOutputConfig_
      }

-- | Provides a BLAKE2 hash value that identifies the compiled model artifacts in Amazon S3.
dcjrrsModelDigests :: Lens' DescribeCompilationJobResponse (Maybe ModelDigests)
dcjrrsModelDigests = lens _dcjrrsModelDigests (\s a -> s {_dcjrrsModelDigests = a})

-- | The time when the model compilation job started the @CompilationJob@ instances.  You are billed for the time between this timestamp and the timestamp in the 'DescribeCompilationJobResponse$CompilationEndTime' field. In Amazon CloudWatch Logs, the start time might be later than this time. That's because it takes time to download the compilation job, which depends on the size of the compilation job container.
dcjrrsCompilationStartTime :: Lens' DescribeCompilationJobResponse (Maybe UTCTime)
dcjrrsCompilationStartTime = lens _dcjrrsCompilationStartTime (\s a -> s {_dcjrrsCompilationStartTime = a}) . mapping _Time

-- | The time when the model compilation job on a compilation job instance ended. For a successful or stopped job, this is when the job's model artifacts have finished uploading. For a failed job, this is when Amazon SageMaker detected that the job failed.
dcjrrsCompilationEndTime :: Lens' DescribeCompilationJobResponse (Maybe UTCTime)
dcjrrsCompilationEndTime = lens _dcjrrsCompilationEndTime (\s a -> s {_dcjrrsCompilationEndTime = a}) . mapping _Time

-- | -- | The response status code.
dcjrrsResponseStatus :: Lens' DescribeCompilationJobResponse Int
dcjrrsResponseStatus = lens _dcjrrsResponseStatus (\s a -> s {_dcjrrsResponseStatus = a})

-- | The name of the model compilation job.
dcjrrsCompilationJobName :: Lens' DescribeCompilationJobResponse Text
dcjrrsCompilationJobName = lens _dcjrrsCompilationJobName (\s a -> s {_dcjrrsCompilationJobName = a})

-- | The Amazon Resource Name (ARN) of the model compilation job.
dcjrrsCompilationJobARN :: Lens' DescribeCompilationJobResponse Text
dcjrrsCompilationJobARN = lens _dcjrrsCompilationJobARN (\s a -> s {_dcjrrsCompilationJobARN = a})

-- | The status of the model compilation job.
dcjrrsCompilationJobStatus :: Lens' DescribeCompilationJobResponse CompilationJobStatus
dcjrrsCompilationJobStatus = lens _dcjrrsCompilationJobStatus (\s a -> s {_dcjrrsCompilationJobStatus = a})

-- | Specifies a limit to how long a model compilation job can run. When the job reaches the time limit, Amazon SageMaker ends the compilation job. Use this API to cap model training costs.
dcjrrsStoppingCondition :: Lens' DescribeCompilationJobResponse StoppingCondition
dcjrrsStoppingCondition = lens _dcjrrsStoppingCondition (\s a -> s {_dcjrrsStoppingCondition = a})

-- | The time that the model compilation job was created.
dcjrrsCreationTime :: Lens' DescribeCompilationJobResponse UTCTime
dcjrrsCreationTime = lens _dcjrrsCreationTime (\s a -> s {_dcjrrsCreationTime = a}) . _Time

-- | The time that the status of the model compilation job was last modified.
dcjrrsLastModifiedTime :: Lens' DescribeCompilationJobResponse UTCTime
dcjrrsLastModifiedTime = lens _dcjrrsLastModifiedTime (\s a -> s {_dcjrrsLastModifiedTime = a}) . _Time

-- | If a model compilation job failed, the reason it failed.
dcjrrsFailureReason :: Lens' DescribeCompilationJobResponse Text
dcjrrsFailureReason = lens _dcjrrsFailureReason (\s a -> s {_dcjrrsFailureReason = a})

-- | Information about the location in Amazon S3 that has been configured for storing the model artifacts used in the compilation job.
dcjrrsModelArtifacts :: Lens' DescribeCompilationJobResponse ModelArtifacts
dcjrrsModelArtifacts = lens _dcjrrsModelArtifacts (\s a -> s {_dcjrrsModelArtifacts = a})

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker assumes to perform the model compilation job.
dcjrrsRoleARN :: Lens' DescribeCompilationJobResponse Text
dcjrrsRoleARN = lens _dcjrrsRoleARN (\s a -> s {_dcjrrsRoleARN = a})

-- | Information about the location in Amazon S3 of the input model artifacts, the name and shape of the expected data inputs, and the framework in which the model was trained.
dcjrrsInputConfig :: Lens' DescribeCompilationJobResponse InputConfig
dcjrrsInputConfig = lens _dcjrrsInputConfig (\s a -> s {_dcjrrsInputConfig = a})

-- | Information about the output location for the compiled model and the target device that the model runs on.
dcjrrsOutputConfig :: Lens' DescribeCompilationJobResponse OutputConfig
dcjrrsOutputConfig = lens _dcjrrsOutputConfig (\s a -> s {_dcjrrsOutputConfig = a})

instance NFData DescribeCompilationJobResponse
