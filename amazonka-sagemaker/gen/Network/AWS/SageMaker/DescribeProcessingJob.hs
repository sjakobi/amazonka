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
-- Module      : Network.AWS.SageMaker.DescribeProcessingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of a processing job.
module Network.AWS.SageMaker.DescribeProcessingJob
  ( -- * Creating a Request
    describeProcessingJob,
    DescribeProcessingJob,

    -- * Request Lenses
    dpjProcessingJobName,

    -- * Destructuring the Response
    describeProcessingJobResponse,
    DescribeProcessingJobResponse,

    -- * Response Lenses
    dpjrrsNetworkConfig,
    dpjrrsProcessingEndTime,
    dpjrrsRoleARN,
    dpjrrsProcessingOutputConfig,
    dpjrrsExitMessage,
    dpjrrsExperimentConfig,
    dpjrrsEnvironment,
    dpjrrsAutoMLJobARN,
    dpjrrsFailureReason,
    dpjrrsMonitoringScheduleARN,
    dpjrrsLastModifiedTime,
    dpjrrsProcessingInputs,
    dpjrrsProcessingStartTime,
    dpjrrsStoppingCondition,
    dpjrrsTrainingJobARN,
    dpjrrsResponseStatus,
    dpjrrsProcessingJobName,
    dpjrrsProcessingResources,
    dpjrrsAppSpecification,
    dpjrrsProcessingJobARN,
    dpjrrsProcessingJobStatus,
    dpjrrsCreationTime,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeProcessingJob' smart constructor.
newtype DescribeProcessingJob = DescribeProcessingJob'
  { _dpjProcessingJobName ::
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

-- | Creates a value of 'DescribeProcessingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpjProcessingJobName' - The name of the processing job. The name must be unique within an AWS Region in the AWS account.
describeProcessingJob ::
  -- | 'dpjProcessingJobName'
  Text ->
  DescribeProcessingJob
describeProcessingJob pProcessingJobName_ =
  DescribeProcessingJob'
    { _dpjProcessingJobName =
        pProcessingJobName_
    }

-- | The name of the processing job. The name must be unique within an AWS Region in the AWS account.
dpjProcessingJobName :: Lens' DescribeProcessingJob Text
dpjProcessingJobName = lens _dpjProcessingJobName (\s a -> s {_dpjProcessingJobName = a})

instance AWSRequest DescribeProcessingJob where
  type
    Rs DescribeProcessingJob =
      DescribeProcessingJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeProcessingJobResponse'
            <$> (x .?> "NetworkConfig")
            <*> (x .?> "ProcessingEndTime")
            <*> (x .?> "RoleArn")
            <*> (x .?> "ProcessingOutputConfig")
            <*> (x .?> "ExitMessage")
            <*> (x .?> "ExperimentConfig")
            <*> (x .?> "Environment" .!@ mempty)
            <*> (x .?> "AutoMLJobArn")
            <*> (x .?> "FailureReason")
            <*> (x .?> "MonitoringScheduleArn")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "ProcessingInputs" .!@ mempty)
            <*> (x .?> "ProcessingStartTime")
            <*> (x .?> "StoppingCondition")
            <*> (x .?> "TrainingJobArn")
            <*> (pure (fromEnum s))
            <*> (x .:> "ProcessingJobName")
            <*> (x .:> "ProcessingResources")
            <*> (x .:> "AppSpecification")
            <*> (x .:> "ProcessingJobArn")
            <*> (x .:> "ProcessingJobStatus")
            <*> (x .:> "CreationTime")
      )

instance Hashable DescribeProcessingJob

instance NFData DescribeProcessingJob

instance ToHeaders DescribeProcessingJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeProcessingJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeProcessingJob where
  toJSON DescribeProcessingJob' {..} =
    object
      ( catMaybes
          [ Just
              ("ProcessingJobName" .= _dpjProcessingJobName)
          ]
      )

instance ToPath DescribeProcessingJob where
  toPath = const "/"

instance ToQuery DescribeProcessingJob where
  toQuery = const mempty

-- | /See:/ 'describeProcessingJobResponse' smart constructor.
data DescribeProcessingJobResponse = DescribeProcessingJobResponse'
  { _dpjrrsNetworkConfig ::
      !( Maybe
           NetworkConfig
       ),
    _dpjrrsProcessingEndTime ::
      !( Maybe
           POSIX
       ),
    _dpjrrsRoleARN ::
      !( Maybe
           Text
       ),
    _dpjrrsProcessingOutputConfig ::
      !( Maybe
           ProcessingOutputConfig
       ),
    _dpjrrsExitMessage ::
      !( Maybe
           Text
       ),
    _dpjrrsExperimentConfig ::
      !( Maybe
           ExperimentConfig
       ),
    _dpjrrsEnvironment ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _dpjrrsAutoMLJobARN ::
      !( Maybe
           Text
       ),
    _dpjrrsFailureReason ::
      !( Maybe
           Text
       ),
    _dpjrrsMonitoringScheduleARN ::
      !( Maybe
           Text
       ),
    _dpjrrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _dpjrrsProcessingInputs ::
      !( Maybe
           [ProcessingInput]
       ),
    _dpjrrsProcessingStartTime ::
      !( Maybe
           POSIX
       ),
    _dpjrrsStoppingCondition ::
      !( Maybe
           ProcessingStoppingCondition
       ),
    _dpjrrsTrainingJobARN ::
      !( Maybe
           Text
       ),
    _dpjrrsResponseStatus ::
      !Int,
    _dpjrrsProcessingJobName ::
      !Text,
    _dpjrrsProcessingResources ::
      !ProcessingResources,
    _dpjrrsAppSpecification ::
      !AppSpecification,
    _dpjrrsProcessingJobARN ::
      !Text,
    _dpjrrsProcessingJobStatus ::
      !ProcessingJobStatus,
    _dpjrrsCreationTime ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeProcessingJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpjrrsNetworkConfig' - Networking options for a processing job.
--
-- * 'dpjrrsProcessingEndTime' - The time at which the processing job completed.
--
-- * 'dpjrrsRoleARN' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
--
-- * 'dpjrrsProcessingOutputConfig' - Output configuration for the processing job.
--
-- * 'dpjrrsExitMessage' - An optional string, up to one KB in size, that contains metadata from the processing container when the processing job exits.
--
-- * 'dpjrrsExperimentConfig' - The configuration information used to create an experiment.
--
-- * 'dpjrrsEnvironment' - The environment variables set in the Docker container.
--
-- * 'dpjrrsAutoMLJobARN' - The ARN of an AutoML job associated with this processing job.
--
-- * 'dpjrrsFailureReason' - A string, up to one KB in size, that contains the reason a processing job failed, if it failed.
--
-- * 'dpjrrsMonitoringScheduleARN' - The ARN of a monitoring schedule for an endpoint associated with this processing job.
--
-- * 'dpjrrsLastModifiedTime' - The time at which the processing job was last modified.
--
-- * 'dpjrrsProcessingInputs' - The inputs for a processing job.
--
-- * 'dpjrrsProcessingStartTime' - The time at which the processing job started.
--
-- * 'dpjrrsStoppingCondition' - The time limit for how long the processing job is allowed to run.
--
-- * 'dpjrrsTrainingJobARN' - The ARN of a training job associated with this processing job.
--
-- * 'dpjrrsResponseStatus' - -- | The response status code.
--
-- * 'dpjrrsProcessingJobName' - The name of the processing job. The name must be unique within an AWS Region in the AWS account.
--
-- * 'dpjrrsProcessingResources' - Identifies the resources, ML compute instances, and ML storage volumes to deploy for a processing job. In distributed training, you specify more than one instance.
--
-- * 'dpjrrsAppSpecification' - Configures the processing job to run a specified container image.
--
-- * 'dpjrrsProcessingJobARN' - The Amazon Resource Name (ARN) of the processing job.
--
-- * 'dpjrrsProcessingJobStatus' - Provides the status of a processing job.
--
-- * 'dpjrrsCreationTime' - The time at which the processing job was created.
describeProcessingJobResponse ::
  -- | 'dpjrrsResponseStatus'
  Int ->
  -- | 'dpjrrsProcessingJobName'
  Text ->
  -- | 'dpjrrsProcessingResources'
  ProcessingResources ->
  -- | 'dpjrrsAppSpecification'
  AppSpecification ->
  -- | 'dpjrrsProcessingJobARN'
  Text ->
  -- | 'dpjrrsProcessingJobStatus'
  ProcessingJobStatus ->
  -- | 'dpjrrsCreationTime'
  UTCTime ->
  DescribeProcessingJobResponse
describeProcessingJobResponse
  pResponseStatus_
  pProcessingJobName_
  pProcessingResources_
  pAppSpecification_
  pProcessingJobARN_
  pProcessingJobStatus_
  pCreationTime_ =
    DescribeProcessingJobResponse'
      { _dpjrrsNetworkConfig =
          Nothing,
        _dpjrrsProcessingEndTime = Nothing,
        _dpjrrsRoleARN = Nothing,
        _dpjrrsProcessingOutputConfig = Nothing,
        _dpjrrsExitMessage = Nothing,
        _dpjrrsExperimentConfig = Nothing,
        _dpjrrsEnvironment = Nothing,
        _dpjrrsAutoMLJobARN = Nothing,
        _dpjrrsFailureReason = Nothing,
        _dpjrrsMonitoringScheduleARN = Nothing,
        _dpjrrsLastModifiedTime = Nothing,
        _dpjrrsProcessingInputs = Nothing,
        _dpjrrsProcessingStartTime = Nothing,
        _dpjrrsStoppingCondition = Nothing,
        _dpjrrsTrainingJobARN = Nothing,
        _dpjrrsResponseStatus = pResponseStatus_,
        _dpjrrsProcessingJobName =
          pProcessingJobName_,
        _dpjrrsProcessingResources =
          pProcessingResources_,
        _dpjrrsAppSpecification = pAppSpecification_,
        _dpjrrsProcessingJobARN = pProcessingJobARN_,
        _dpjrrsProcessingJobStatus =
          pProcessingJobStatus_,
        _dpjrrsCreationTime = _Time # pCreationTime_
      }

-- | Networking options for a processing job.
dpjrrsNetworkConfig :: Lens' DescribeProcessingJobResponse (Maybe NetworkConfig)
dpjrrsNetworkConfig = lens _dpjrrsNetworkConfig (\s a -> s {_dpjrrsNetworkConfig = a})

-- | The time at which the processing job completed.
dpjrrsProcessingEndTime :: Lens' DescribeProcessingJobResponse (Maybe UTCTime)
dpjrrsProcessingEndTime = lens _dpjrrsProcessingEndTime (\s a -> s {_dpjrrsProcessingEndTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
dpjrrsRoleARN :: Lens' DescribeProcessingJobResponse (Maybe Text)
dpjrrsRoleARN = lens _dpjrrsRoleARN (\s a -> s {_dpjrrsRoleARN = a})

-- | Output configuration for the processing job.
dpjrrsProcessingOutputConfig :: Lens' DescribeProcessingJobResponse (Maybe ProcessingOutputConfig)
dpjrrsProcessingOutputConfig = lens _dpjrrsProcessingOutputConfig (\s a -> s {_dpjrrsProcessingOutputConfig = a})

-- | An optional string, up to one KB in size, that contains metadata from the processing container when the processing job exits.
dpjrrsExitMessage :: Lens' DescribeProcessingJobResponse (Maybe Text)
dpjrrsExitMessage = lens _dpjrrsExitMessage (\s a -> s {_dpjrrsExitMessage = a})

-- | The configuration information used to create an experiment.
dpjrrsExperimentConfig :: Lens' DescribeProcessingJobResponse (Maybe ExperimentConfig)
dpjrrsExperimentConfig = lens _dpjrrsExperimentConfig (\s a -> s {_dpjrrsExperimentConfig = a})

-- | The environment variables set in the Docker container.
dpjrrsEnvironment :: Lens' DescribeProcessingJobResponse (HashMap Text Text)
dpjrrsEnvironment = lens _dpjrrsEnvironment (\s a -> s {_dpjrrsEnvironment = a}) . _Default . _Map

-- | The ARN of an AutoML job associated with this processing job.
dpjrrsAutoMLJobARN :: Lens' DescribeProcessingJobResponse (Maybe Text)
dpjrrsAutoMLJobARN = lens _dpjrrsAutoMLJobARN (\s a -> s {_dpjrrsAutoMLJobARN = a})

-- | A string, up to one KB in size, that contains the reason a processing job failed, if it failed.
dpjrrsFailureReason :: Lens' DescribeProcessingJobResponse (Maybe Text)
dpjrrsFailureReason = lens _dpjrrsFailureReason (\s a -> s {_dpjrrsFailureReason = a})

-- | The ARN of a monitoring schedule for an endpoint associated with this processing job.
dpjrrsMonitoringScheduleARN :: Lens' DescribeProcessingJobResponse (Maybe Text)
dpjrrsMonitoringScheduleARN = lens _dpjrrsMonitoringScheduleARN (\s a -> s {_dpjrrsMonitoringScheduleARN = a})

-- | The time at which the processing job was last modified.
dpjrrsLastModifiedTime :: Lens' DescribeProcessingJobResponse (Maybe UTCTime)
dpjrrsLastModifiedTime = lens _dpjrrsLastModifiedTime (\s a -> s {_dpjrrsLastModifiedTime = a}) . mapping _Time

-- | The inputs for a processing job.
dpjrrsProcessingInputs :: Lens' DescribeProcessingJobResponse [ProcessingInput]
dpjrrsProcessingInputs = lens _dpjrrsProcessingInputs (\s a -> s {_dpjrrsProcessingInputs = a}) . _Default . _Coerce

-- | The time at which the processing job started.
dpjrrsProcessingStartTime :: Lens' DescribeProcessingJobResponse (Maybe UTCTime)
dpjrrsProcessingStartTime = lens _dpjrrsProcessingStartTime (\s a -> s {_dpjrrsProcessingStartTime = a}) . mapping _Time

-- | The time limit for how long the processing job is allowed to run.
dpjrrsStoppingCondition :: Lens' DescribeProcessingJobResponse (Maybe ProcessingStoppingCondition)
dpjrrsStoppingCondition = lens _dpjrrsStoppingCondition (\s a -> s {_dpjrrsStoppingCondition = a})

-- | The ARN of a training job associated with this processing job.
dpjrrsTrainingJobARN :: Lens' DescribeProcessingJobResponse (Maybe Text)
dpjrrsTrainingJobARN = lens _dpjrrsTrainingJobARN (\s a -> s {_dpjrrsTrainingJobARN = a})

-- | -- | The response status code.
dpjrrsResponseStatus :: Lens' DescribeProcessingJobResponse Int
dpjrrsResponseStatus = lens _dpjrrsResponseStatus (\s a -> s {_dpjrrsResponseStatus = a})

-- | The name of the processing job. The name must be unique within an AWS Region in the AWS account.
dpjrrsProcessingJobName :: Lens' DescribeProcessingJobResponse Text
dpjrrsProcessingJobName = lens _dpjrrsProcessingJobName (\s a -> s {_dpjrrsProcessingJobName = a})

-- | Identifies the resources, ML compute instances, and ML storage volumes to deploy for a processing job. In distributed training, you specify more than one instance.
dpjrrsProcessingResources :: Lens' DescribeProcessingJobResponse ProcessingResources
dpjrrsProcessingResources = lens _dpjrrsProcessingResources (\s a -> s {_dpjrrsProcessingResources = a})

-- | Configures the processing job to run a specified container image.
dpjrrsAppSpecification :: Lens' DescribeProcessingJobResponse AppSpecification
dpjrrsAppSpecification = lens _dpjrrsAppSpecification (\s a -> s {_dpjrrsAppSpecification = a})

-- | The Amazon Resource Name (ARN) of the processing job.
dpjrrsProcessingJobARN :: Lens' DescribeProcessingJobResponse Text
dpjrrsProcessingJobARN = lens _dpjrrsProcessingJobARN (\s a -> s {_dpjrrsProcessingJobARN = a})

-- | Provides the status of a processing job.
dpjrrsProcessingJobStatus :: Lens' DescribeProcessingJobResponse ProcessingJobStatus
dpjrrsProcessingJobStatus = lens _dpjrrsProcessingJobStatus (\s a -> s {_dpjrrsProcessingJobStatus = a})

-- | The time at which the processing job was created.
dpjrrsCreationTime :: Lens' DescribeProcessingJobResponse UTCTime
dpjrrsCreationTime = lens _dpjrrsCreationTime (\s a -> s {_dpjrrsCreationTime = a}) . _Time

instance NFData DescribeProcessingJobResponse
