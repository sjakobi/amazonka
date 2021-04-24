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
-- Module      : Network.AWS.SageMaker.DescribeTrainingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a training job.
--
--
-- Some of the attributes below only appear if the training job successfully starts. If the training job fails, @TrainingJobStatus@ is @Failed@ and, depending on the @FailureReason@ , attributes like @TrainingStartTime@ , @TrainingTimeInSeconds@ , @TrainingEndTime@ , and @BillableTimeInSeconds@ may not be present in the response.
module Network.AWS.SageMaker.DescribeTrainingJob
  ( -- * Creating a Request
    describeTrainingJob,
    DescribeTrainingJob,

    -- * Request Lenses
    dtjTrainingJobName,

    -- * Destructuring the Response
    describeTrainingJobResponse,
    DescribeTrainingJobResponse,

    -- * Response Lenses
    dtjrrsVPCConfig,
    dtjrrsDebugRuleConfigurations,
    dtjrrsInputDataConfig,
    dtjrrsHyperParameters,
    dtjrrsEnableManagedSpotTraining,
    dtjrrsLabelingJobARN,
    dtjrrsRoleARN,
    dtjrrsTrainingTimeInSeconds,
    dtjrrsProfilerConfig,
    dtjrrsExperimentConfig,
    dtjrrsProfilerRuleEvaluationStatuses,
    dtjrrsEnableNetworkIsolation,
    dtjrrsEnableInterContainerTrafficEncryption,
    dtjrrsCheckpointConfig,
    dtjrrsOutputDataConfig,
    dtjrrsTuningJobARN,
    dtjrrsSecondaryStatusTransitions,
    dtjrrsFinalMetricDataList,
    dtjrrsProfilingStatus,
    dtjrrsProfilerRuleConfigurations,
    dtjrrsAutoMLJobARN,
    dtjrrsFailureReason,
    dtjrrsLastModifiedTime,
    dtjrrsTensorBoardOutputConfig,
    dtjrrsDebugRuleEvaluationStatuses,
    dtjrrsDebugHookConfig,
    dtjrrsBillableTimeInSeconds,
    dtjrrsTrainingStartTime,
    dtjrrsTrainingEndTime,
    dtjrrsResponseStatus,
    dtjrrsTrainingJobName,
    dtjrrsTrainingJobARN,
    dtjrrsModelArtifacts,
    dtjrrsTrainingJobStatus,
    dtjrrsSecondaryStatus,
    dtjrrsAlgorithmSpecification,
    dtjrrsResourceConfig,
    dtjrrsStoppingCondition,
    dtjrrsCreationTime,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeTrainingJob' smart constructor.
newtype DescribeTrainingJob = DescribeTrainingJob'
  { _dtjTrainingJobName ::
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

-- | Creates a value of 'DescribeTrainingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtjTrainingJobName' - The name of the training job.
describeTrainingJob ::
  -- | 'dtjTrainingJobName'
  Text ->
  DescribeTrainingJob
describeTrainingJob pTrainingJobName_ =
  DescribeTrainingJob'
    { _dtjTrainingJobName =
        pTrainingJobName_
    }

-- | The name of the training job.
dtjTrainingJobName :: Lens' DescribeTrainingJob Text
dtjTrainingJobName = lens _dtjTrainingJobName (\s a -> s {_dtjTrainingJobName = a})

instance AWSRequest DescribeTrainingJob where
  type
    Rs DescribeTrainingJob =
      DescribeTrainingJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeTrainingJobResponse'
            <$> (x .?> "VpcConfig")
            <*> (x .?> "DebugRuleConfigurations" .!@ mempty)
            <*> (x .?> "InputDataConfig")
            <*> (x .?> "HyperParameters" .!@ mempty)
            <*> (x .?> "EnableManagedSpotTraining")
            <*> (x .?> "LabelingJobArn")
            <*> (x .?> "RoleArn")
            <*> (x .?> "TrainingTimeInSeconds")
            <*> (x .?> "ProfilerConfig")
            <*> (x .?> "ExperimentConfig")
            <*> (x .?> "ProfilerRuleEvaluationStatuses" .!@ mempty)
            <*> (x .?> "EnableNetworkIsolation")
            <*> (x .?> "EnableInterContainerTrafficEncryption")
            <*> (x .?> "CheckpointConfig")
            <*> (x .?> "OutputDataConfig")
            <*> (x .?> "TuningJobArn")
            <*> (x .?> "SecondaryStatusTransitions" .!@ mempty)
            <*> (x .?> "FinalMetricDataList" .!@ mempty)
            <*> (x .?> "ProfilingStatus")
            <*> (x .?> "ProfilerRuleConfigurations" .!@ mempty)
            <*> (x .?> "AutoMLJobArn")
            <*> (x .?> "FailureReason")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "TensorBoardOutputConfig")
            <*> (x .?> "DebugRuleEvaluationStatuses" .!@ mempty)
            <*> (x .?> "DebugHookConfig")
            <*> (x .?> "BillableTimeInSeconds")
            <*> (x .?> "TrainingStartTime")
            <*> (x .?> "TrainingEndTime")
            <*> (pure (fromEnum s))
            <*> (x .:> "TrainingJobName")
            <*> (x .:> "TrainingJobArn")
            <*> (x .:> "ModelArtifacts")
            <*> (x .:> "TrainingJobStatus")
            <*> (x .:> "SecondaryStatus")
            <*> (x .:> "AlgorithmSpecification")
            <*> (x .:> "ResourceConfig")
            <*> (x .:> "StoppingCondition")
            <*> (x .:> "CreationTime")
      )

instance Hashable DescribeTrainingJob

instance NFData DescribeTrainingJob

instance ToHeaders DescribeTrainingJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeTrainingJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTrainingJob where
  toJSON DescribeTrainingJob' {..} =
    object
      ( catMaybes
          [Just ("TrainingJobName" .= _dtjTrainingJobName)]
      )

instance ToPath DescribeTrainingJob where
  toPath = const "/"

instance ToQuery DescribeTrainingJob where
  toQuery = const mempty

-- | /See:/ 'describeTrainingJobResponse' smart constructor.
data DescribeTrainingJobResponse = DescribeTrainingJobResponse'
  { _dtjrrsVPCConfig ::
      !( Maybe
           VPCConfig
       ),
    _dtjrrsDebugRuleConfigurations ::
      !( Maybe
           [DebugRuleConfiguration]
       ),
    _dtjrrsInputDataConfig ::
      !( Maybe
           ( List1
               Channel
           )
       ),
    _dtjrrsHyperParameters ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _dtjrrsEnableManagedSpotTraining ::
      !(Maybe Bool),
    _dtjrrsLabelingJobARN ::
      !(Maybe Text),
    _dtjrrsRoleARN ::
      !(Maybe Text),
    _dtjrrsTrainingTimeInSeconds ::
      !(Maybe Nat),
    _dtjrrsProfilerConfig ::
      !( Maybe
           ProfilerConfig
       ),
    _dtjrrsExperimentConfig ::
      !( Maybe
           ExperimentConfig
       ),
    _dtjrrsProfilerRuleEvaluationStatuses ::
      !( Maybe
           [ProfilerRuleEvaluationStatus]
       ),
    _dtjrrsEnableNetworkIsolation ::
      !(Maybe Bool),
    _dtjrrsEnableInterContainerTrafficEncryption ::
      !(Maybe Bool),
    _dtjrrsCheckpointConfig ::
      !( Maybe
           CheckpointConfig
       ),
    _dtjrrsOutputDataConfig ::
      !( Maybe
           OutputDataConfig
       ),
    _dtjrrsTuningJobARN ::
      !(Maybe Text),
    _dtjrrsSecondaryStatusTransitions ::
      !( Maybe
           [SecondaryStatusTransition]
       ),
    _dtjrrsFinalMetricDataList ::
      !( Maybe
           [MetricData]
       ),
    _dtjrrsProfilingStatus ::
      !( Maybe
           ProfilingStatus
       ),
    _dtjrrsProfilerRuleConfigurations ::
      !( Maybe
           [ProfilerRuleConfiguration]
       ),
    _dtjrrsAutoMLJobARN ::
      !(Maybe Text),
    _dtjrrsFailureReason ::
      !(Maybe Text),
    _dtjrrsLastModifiedTime ::
      !(Maybe POSIX),
    _dtjrrsTensorBoardOutputConfig ::
      !( Maybe
           TensorBoardOutputConfig
       ),
    _dtjrrsDebugRuleEvaluationStatuses ::
      !( Maybe
           [DebugRuleEvaluationStatus]
       ),
    _dtjrrsDebugHookConfig ::
      !( Maybe
           DebugHookConfig
       ),
    _dtjrrsBillableTimeInSeconds ::
      !(Maybe Nat),
    _dtjrrsTrainingStartTime ::
      !(Maybe POSIX),
    _dtjrrsTrainingEndTime ::
      !(Maybe POSIX),
    _dtjrrsResponseStatus ::
      !Int,
    _dtjrrsTrainingJobName ::
      !Text,
    _dtjrrsTrainingJobARN ::
      !Text,
    _dtjrrsModelArtifacts ::
      !ModelArtifacts,
    _dtjrrsTrainingJobStatus ::
      !TrainingJobStatus,
    _dtjrrsSecondaryStatus ::
      !SecondaryStatus,
    _dtjrrsAlgorithmSpecification ::
      !AlgorithmSpecification,
    _dtjrrsResourceConfig ::
      !ResourceConfig,
    _dtjrrsStoppingCondition ::
      !StoppingCondition,
    _dtjrrsCreationTime ::
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

-- | Creates a value of 'DescribeTrainingJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtjrrsVPCConfig' - A 'VpcConfig' object that specifies the VPC that this training job has access to. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html Protect Training Jobs by Using an Amazon Virtual Private Cloud> .
--
-- * 'dtjrrsDebugRuleConfigurations' - Configuration information for Debugger rules for debugging output tensors.
--
-- * 'dtjrrsInputDataConfig' - An array of @Channel@ objects that describes each data input channel.
--
-- * 'dtjrrsHyperParameters' - Algorithm-specific parameters.
--
-- * 'dtjrrsEnableManagedSpotTraining' - A Boolean indicating whether managed spot training is enabled (@True@ ) or not (@False@ ).
--
-- * 'dtjrrsLabelingJobARN' - The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth labeling job that created the transform or training job.
--
-- * 'dtjrrsRoleARN' - The AWS Identity and Access Management (IAM) role configured for the training job.
--
-- * 'dtjrrsTrainingTimeInSeconds' - The training time in seconds.
--
-- * 'dtjrrsProfilerConfig' - Undocumented member.
--
-- * 'dtjrrsExperimentConfig' - Undocumented member.
--
-- * 'dtjrrsProfilerRuleEvaluationStatuses' - Evaluation status of Debugger rules for profiling on a training job.
--
-- * 'dtjrrsEnableNetworkIsolation' - If you want to allow inbound or outbound network calls, except for calls between peers within a training cluster for distributed training, choose @True@ . If you enable network isolation for training jobs that are configured to use a VPC, Amazon SageMaker downloads and uploads customer data and model artifacts through the specified VPC, but the training container does not have network access.
--
-- * 'dtjrrsEnableInterContainerTrafficEncryption' - To encrypt all communications between ML compute instances in distributed training, choose @True@ . Encryption provides greater security for distributed training, but training might take longer. How long it takes depends on the amount of communication between compute instances, especially if you use a deep learning algorithms in distributed training.
--
-- * 'dtjrrsCheckpointConfig' - Undocumented member.
--
-- * 'dtjrrsOutputDataConfig' - The S3 path where model artifacts that you configured when creating the job are stored. Amazon SageMaker creates subfolders for model artifacts.
--
-- * 'dtjrrsTuningJobARN' - The Amazon Resource Name (ARN) of the associated hyperparameter tuning job if the training job was launched by a hyperparameter tuning job.
--
-- * 'dtjrrsSecondaryStatusTransitions' - A history of all of the secondary statuses that the training job has transitioned through.
--
-- * 'dtjrrsFinalMetricDataList' - A collection of @MetricData@ objects that specify the names, values, and dates and times that the training algorithm emitted to Amazon CloudWatch.
--
-- * 'dtjrrsProfilingStatus' - Profiling status of a training job.
--
-- * 'dtjrrsProfilerRuleConfigurations' - Configuration information for Debugger rules for profiling system and framework metrics.
--
-- * 'dtjrrsAutoMLJobARN' - The Amazon Resource Name (ARN) of an AutoML job.
--
-- * 'dtjrrsFailureReason' - If the training job failed, the reason it failed.
--
-- * 'dtjrrsLastModifiedTime' - A timestamp that indicates when the status of the training job was last modified.
--
-- * 'dtjrrsTensorBoardOutputConfig' - Undocumented member.
--
-- * 'dtjrrsDebugRuleEvaluationStatuses' - Evaluation status of Debugger rules for debugging on a training job.
--
-- * 'dtjrrsDebugHookConfig' - Undocumented member.
--
-- * 'dtjrrsBillableTimeInSeconds' - The billable time in seconds. Billable time refers to the absolute wall-clock time. Multiply @BillableTimeInSeconds@ by the number of instances (@InstanceCount@ ) in your training cluster to get the total compute time Amazon SageMaker will bill you if you run distributed training. The formula is as follows: @BillableTimeInSeconds * InstanceCount@ . You can calculate the savings from using managed spot training using the formula @(1 - BillableTimeInSeconds / TrainingTimeInSeconds) * 100@ . For example, if @BillableTimeInSeconds@ is 100 and @TrainingTimeInSeconds@ is 500, the savings is 80%.
--
-- * 'dtjrrsTrainingStartTime' - Indicates the time when the training job starts on training instances. You are billed for the time interval between this time and the value of @TrainingEndTime@ . The start time in CloudWatch Logs might be later than this time. The difference is due to the time it takes to download the training data and to the size of the training container.
--
-- * 'dtjrrsTrainingEndTime' - Indicates the time when the training job ends on training instances. You are billed for the time interval between the value of @TrainingStartTime@ and this time. For successful jobs and stopped jobs, this is the time after model artifacts are uploaded. For failed jobs, this is the time when Amazon SageMaker detects a job failure.
--
-- * 'dtjrrsResponseStatus' - -- | The response status code.
--
-- * 'dtjrrsTrainingJobName' - Name of the model training job.
--
-- * 'dtjrrsTrainingJobARN' - The Amazon Resource Name (ARN) of the training job.
--
-- * 'dtjrrsModelArtifacts' - Information about the Amazon S3 location that is configured for storing model artifacts.
--
-- * 'dtjrrsTrainingJobStatus' - The status of the training job. Amazon SageMaker provides the following training job statuses:     * @InProgress@ - The training is in progress.     * @Completed@ - The training job has completed.     * @Failed@ - The training job has failed. To see the reason for the failure, see the @FailureReason@ field in the response to a @DescribeTrainingJobResponse@ call.     * @Stopping@ - The training job is stopping.     * @Stopped@ - The training job has stopped. For more detailed information, see @SecondaryStatus@ .
--
-- * 'dtjrrsSecondaryStatus' - Provides detailed information about the state of the training job. For detailed information on the secondary status of the training job, see @StatusMessage@ under 'SecondaryStatusTransition' . Amazon SageMaker provides primary statuses and secondary statuses that apply to each of them:     * InProgress    *     * @Starting@ - Starting the training job.     * @Downloading@ - An optional stage for algorithms that support @File@ training input mode. It indicates that data is being downloaded to the ML storage volumes.     * @Training@ - Training is in progress.     * @Interrupted@ - The job stopped because the managed spot training instances were interrupted.      * @Uploading@ - Training is complete and the model artifacts are being uploaded to the S3 location.     * Completed    *     * @Completed@ - The training job has completed.     * Failed    *     * @Failed@ - The training job has failed. The reason for the failure is returned in the @FailureReason@ field of @DescribeTrainingJobResponse@ .     * Stopped    *     * @MaxRuntimeExceeded@ - The job stopped because it exceeded the maximum allowed runtime.     * @MaxWaitTimeExceeded@ - The job stopped because it exceeded the maximum allowed wait time.     * @Stopped@ - The training job has stopped.     * Stopping    *     * @Stopping@ - Stopping the training job. /Important:/ Valid values for @SecondaryStatus@ are subject to change.  We no longer support the following secondary statuses:     * @LaunchingMLInstances@      * @PreparingTrainingStack@      * @DownloadingTrainingImage@
--
-- * 'dtjrrsAlgorithmSpecification' - Information about the algorithm used for training, and algorithm metadata.
--
-- * 'dtjrrsResourceConfig' - Resources, including ML compute instances and ML storage volumes, that are configured for model training.
--
-- * 'dtjrrsStoppingCondition' - Specifies a limit to how long a model training job can run. It also specifies the maximum time to wait for a spot instance. When the job reaches the time limit, Amazon SageMaker ends the training job. Use this API to cap model training costs. To stop a job, Amazon SageMaker sends the algorithm the @SIGTERM@ signal, which delays job termination for 120 seconds. Algorithms can use this 120-second window to save the model artifacts, so the results of training are not lost.
--
-- * 'dtjrrsCreationTime' - A timestamp that indicates when the training job was created.
describeTrainingJobResponse ::
  -- | 'dtjrrsResponseStatus'
  Int ->
  -- | 'dtjrrsTrainingJobName'
  Text ->
  -- | 'dtjrrsTrainingJobARN'
  Text ->
  -- | 'dtjrrsModelArtifacts'
  ModelArtifacts ->
  -- | 'dtjrrsTrainingJobStatus'
  TrainingJobStatus ->
  -- | 'dtjrrsSecondaryStatus'
  SecondaryStatus ->
  -- | 'dtjrrsAlgorithmSpecification'
  AlgorithmSpecification ->
  -- | 'dtjrrsResourceConfig'
  ResourceConfig ->
  -- | 'dtjrrsStoppingCondition'
  StoppingCondition ->
  -- | 'dtjrrsCreationTime'
  UTCTime ->
  DescribeTrainingJobResponse
describeTrainingJobResponse
  pResponseStatus_
  pTrainingJobName_
  pTrainingJobARN_
  pModelArtifacts_
  pTrainingJobStatus_
  pSecondaryStatus_
  pAlgorithmSpecification_
  pResourceConfig_
  pStoppingCondition_
  pCreationTime_ =
    DescribeTrainingJobResponse'
      { _dtjrrsVPCConfig =
          Nothing,
        _dtjrrsDebugRuleConfigurations = Nothing,
        _dtjrrsInputDataConfig = Nothing,
        _dtjrrsHyperParameters = Nothing,
        _dtjrrsEnableManagedSpotTraining = Nothing,
        _dtjrrsLabelingJobARN = Nothing,
        _dtjrrsRoleARN = Nothing,
        _dtjrrsTrainingTimeInSeconds = Nothing,
        _dtjrrsProfilerConfig = Nothing,
        _dtjrrsExperimentConfig = Nothing,
        _dtjrrsProfilerRuleEvaluationStatuses =
          Nothing,
        _dtjrrsEnableNetworkIsolation = Nothing,
        _dtjrrsEnableInterContainerTrafficEncryption =
          Nothing,
        _dtjrrsCheckpointConfig = Nothing,
        _dtjrrsOutputDataConfig = Nothing,
        _dtjrrsTuningJobARN = Nothing,
        _dtjrrsSecondaryStatusTransitions = Nothing,
        _dtjrrsFinalMetricDataList = Nothing,
        _dtjrrsProfilingStatus = Nothing,
        _dtjrrsProfilerRuleConfigurations = Nothing,
        _dtjrrsAutoMLJobARN = Nothing,
        _dtjrrsFailureReason = Nothing,
        _dtjrrsLastModifiedTime = Nothing,
        _dtjrrsTensorBoardOutputConfig = Nothing,
        _dtjrrsDebugRuleEvaluationStatuses = Nothing,
        _dtjrrsDebugHookConfig = Nothing,
        _dtjrrsBillableTimeInSeconds = Nothing,
        _dtjrrsTrainingStartTime = Nothing,
        _dtjrrsTrainingEndTime = Nothing,
        _dtjrrsResponseStatus = pResponseStatus_,
        _dtjrrsTrainingJobName = pTrainingJobName_,
        _dtjrrsTrainingJobARN = pTrainingJobARN_,
        _dtjrrsModelArtifacts = pModelArtifacts_,
        _dtjrrsTrainingJobStatus = pTrainingJobStatus_,
        _dtjrrsSecondaryStatus = pSecondaryStatus_,
        _dtjrrsAlgorithmSpecification =
          pAlgorithmSpecification_,
        _dtjrrsResourceConfig = pResourceConfig_,
        _dtjrrsStoppingCondition = pStoppingCondition_,
        _dtjrrsCreationTime = _Time # pCreationTime_
      }

-- | A 'VpcConfig' object that specifies the VPC that this training job has access to. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html Protect Training Jobs by Using an Amazon Virtual Private Cloud> .
dtjrrsVPCConfig :: Lens' DescribeTrainingJobResponse (Maybe VPCConfig)
dtjrrsVPCConfig = lens _dtjrrsVPCConfig (\s a -> s {_dtjrrsVPCConfig = a})

-- | Configuration information for Debugger rules for debugging output tensors.
dtjrrsDebugRuleConfigurations :: Lens' DescribeTrainingJobResponse [DebugRuleConfiguration]
dtjrrsDebugRuleConfigurations = lens _dtjrrsDebugRuleConfigurations (\s a -> s {_dtjrrsDebugRuleConfigurations = a}) . _Default . _Coerce

-- | An array of @Channel@ objects that describes each data input channel.
dtjrrsInputDataConfig :: Lens' DescribeTrainingJobResponse (Maybe (NonEmpty Channel))
dtjrrsInputDataConfig = lens _dtjrrsInputDataConfig (\s a -> s {_dtjrrsInputDataConfig = a}) . mapping _List1

-- | Algorithm-specific parameters.
dtjrrsHyperParameters :: Lens' DescribeTrainingJobResponse (HashMap Text Text)
dtjrrsHyperParameters = lens _dtjrrsHyperParameters (\s a -> s {_dtjrrsHyperParameters = a}) . _Default . _Map

-- | A Boolean indicating whether managed spot training is enabled (@True@ ) or not (@False@ ).
dtjrrsEnableManagedSpotTraining :: Lens' DescribeTrainingJobResponse (Maybe Bool)
dtjrrsEnableManagedSpotTraining = lens _dtjrrsEnableManagedSpotTraining (\s a -> s {_dtjrrsEnableManagedSpotTraining = a})

-- | The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth labeling job that created the transform or training job.
dtjrrsLabelingJobARN :: Lens' DescribeTrainingJobResponse (Maybe Text)
dtjrrsLabelingJobARN = lens _dtjrrsLabelingJobARN (\s a -> s {_dtjrrsLabelingJobARN = a})

-- | The AWS Identity and Access Management (IAM) role configured for the training job.
dtjrrsRoleARN :: Lens' DescribeTrainingJobResponse (Maybe Text)
dtjrrsRoleARN = lens _dtjrrsRoleARN (\s a -> s {_dtjrrsRoleARN = a})

-- | The training time in seconds.
dtjrrsTrainingTimeInSeconds :: Lens' DescribeTrainingJobResponse (Maybe Natural)
dtjrrsTrainingTimeInSeconds = lens _dtjrrsTrainingTimeInSeconds (\s a -> s {_dtjrrsTrainingTimeInSeconds = a}) . mapping _Nat

-- | Undocumented member.
dtjrrsProfilerConfig :: Lens' DescribeTrainingJobResponse (Maybe ProfilerConfig)
dtjrrsProfilerConfig = lens _dtjrrsProfilerConfig (\s a -> s {_dtjrrsProfilerConfig = a})

-- | Undocumented member.
dtjrrsExperimentConfig :: Lens' DescribeTrainingJobResponse (Maybe ExperimentConfig)
dtjrrsExperimentConfig = lens _dtjrrsExperimentConfig (\s a -> s {_dtjrrsExperimentConfig = a})

-- | Evaluation status of Debugger rules for profiling on a training job.
dtjrrsProfilerRuleEvaluationStatuses :: Lens' DescribeTrainingJobResponse [ProfilerRuleEvaluationStatus]
dtjrrsProfilerRuleEvaluationStatuses = lens _dtjrrsProfilerRuleEvaluationStatuses (\s a -> s {_dtjrrsProfilerRuleEvaluationStatuses = a}) . _Default . _Coerce

-- | If you want to allow inbound or outbound network calls, except for calls between peers within a training cluster for distributed training, choose @True@ . If you enable network isolation for training jobs that are configured to use a VPC, Amazon SageMaker downloads and uploads customer data and model artifacts through the specified VPC, but the training container does not have network access.
dtjrrsEnableNetworkIsolation :: Lens' DescribeTrainingJobResponse (Maybe Bool)
dtjrrsEnableNetworkIsolation = lens _dtjrrsEnableNetworkIsolation (\s a -> s {_dtjrrsEnableNetworkIsolation = a})

-- | To encrypt all communications between ML compute instances in distributed training, choose @True@ . Encryption provides greater security for distributed training, but training might take longer. How long it takes depends on the amount of communication between compute instances, especially if you use a deep learning algorithms in distributed training.
dtjrrsEnableInterContainerTrafficEncryption :: Lens' DescribeTrainingJobResponse (Maybe Bool)
dtjrrsEnableInterContainerTrafficEncryption = lens _dtjrrsEnableInterContainerTrafficEncryption (\s a -> s {_dtjrrsEnableInterContainerTrafficEncryption = a})

-- | Undocumented member.
dtjrrsCheckpointConfig :: Lens' DescribeTrainingJobResponse (Maybe CheckpointConfig)
dtjrrsCheckpointConfig = lens _dtjrrsCheckpointConfig (\s a -> s {_dtjrrsCheckpointConfig = a})

-- | The S3 path where model artifacts that you configured when creating the job are stored. Amazon SageMaker creates subfolders for model artifacts.
dtjrrsOutputDataConfig :: Lens' DescribeTrainingJobResponse (Maybe OutputDataConfig)
dtjrrsOutputDataConfig = lens _dtjrrsOutputDataConfig (\s a -> s {_dtjrrsOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) of the associated hyperparameter tuning job if the training job was launched by a hyperparameter tuning job.
dtjrrsTuningJobARN :: Lens' DescribeTrainingJobResponse (Maybe Text)
dtjrrsTuningJobARN = lens _dtjrrsTuningJobARN (\s a -> s {_dtjrrsTuningJobARN = a})

-- | A history of all of the secondary statuses that the training job has transitioned through.
dtjrrsSecondaryStatusTransitions :: Lens' DescribeTrainingJobResponse [SecondaryStatusTransition]
dtjrrsSecondaryStatusTransitions = lens _dtjrrsSecondaryStatusTransitions (\s a -> s {_dtjrrsSecondaryStatusTransitions = a}) . _Default . _Coerce

-- | A collection of @MetricData@ objects that specify the names, values, and dates and times that the training algorithm emitted to Amazon CloudWatch.
dtjrrsFinalMetricDataList :: Lens' DescribeTrainingJobResponse [MetricData]
dtjrrsFinalMetricDataList = lens _dtjrrsFinalMetricDataList (\s a -> s {_dtjrrsFinalMetricDataList = a}) . _Default . _Coerce

-- | Profiling status of a training job.
dtjrrsProfilingStatus :: Lens' DescribeTrainingJobResponse (Maybe ProfilingStatus)
dtjrrsProfilingStatus = lens _dtjrrsProfilingStatus (\s a -> s {_dtjrrsProfilingStatus = a})

-- | Configuration information for Debugger rules for profiling system and framework metrics.
dtjrrsProfilerRuleConfigurations :: Lens' DescribeTrainingJobResponse [ProfilerRuleConfiguration]
dtjrrsProfilerRuleConfigurations = lens _dtjrrsProfilerRuleConfigurations (\s a -> s {_dtjrrsProfilerRuleConfigurations = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of an AutoML job.
dtjrrsAutoMLJobARN :: Lens' DescribeTrainingJobResponse (Maybe Text)
dtjrrsAutoMLJobARN = lens _dtjrrsAutoMLJobARN (\s a -> s {_dtjrrsAutoMLJobARN = a})

-- | If the training job failed, the reason it failed.
dtjrrsFailureReason :: Lens' DescribeTrainingJobResponse (Maybe Text)
dtjrrsFailureReason = lens _dtjrrsFailureReason (\s a -> s {_dtjrrsFailureReason = a})

-- | A timestamp that indicates when the status of the training job was last modified.
dtjrrsLastModifiedTime :: Lens' DescribeTrainingJobResponse (Maybe UTCTime)
dtjrrsLastModifiedTime = lens _dtjrrsLastModifiedTime (\s a -> s {_dtjrrsLastModifiedTime = a}) . mapping _Time

-- | Undocumented member.
dtjrrsTensorBoardOutputConfig :: Lens' DescribeTrainingJobResponse (Maybe TensorBoardOutputConfig)
dtjrrsTensorBoardOutputConfig = lens _dtjrrsTensorBoardOutputConfig (\s a -> s {_dtjrrsTensorBoardOutputConfig = a})

-- | Evaluation status of Debugger rules for debugging on a training job.
dtjrrsDebugRuleEvaluationStatuses :: Lens' DescribeTrainingJobResponse [DebugRuleEvaluationStatus]
dtjrrsDebugRuleEvaluationStatuses = lens _dtjrrsDebugRuleEvaluationStatuses (\s a -> s {_dtjrrsDebugRuleEvaluationStatuses = a}) . _Default . _Coerce

-- | Undocumented member.
dtjrrsDebugHookConfig :: Lens' DescribeTrainingJobResponse (Maybe DebugHookConfig)
dtjrrsDebugHookConfig = lens _dtjrrsDebugHookConfig (\s a -> s {_dtjrrsDebugHookConfig = a})

-- | The billable time in seconds. Billable time refers to the absolute wall-clock time. Multiply @BillableTimeInSeconds@ by the number of instances (@InstanceCount@ ) in your training cluster to get the total compute time Amazon SageMaker will bill you if you run distributed training. The formula is as follows: @BillableTimeInSeconds * InstanceCount@ . You can calculate the savings from using managed spot training using the formula @(1 - BillableTimeInSeconds / TrainingTimeInSeconds) * 100@ . For example, if @BillableTimeInSeconds@ is 100 and @TrainingTimeInSeconds@ is 500, the savings is 80%.
dtjrrsBillableTimeInSeconds :: Lens' DescribeTrainingJobResponse (Maybe Natural)
dtjrrsBillableTimeInSeconds = lens _dtjrrsBillableTimeInSeconds (\s a -> s {_dtjrrsBillableTimeInSeconds = a}) . mapping _Nat

-- | Indicates the time when the training job starts on training instances. You are billed for the time interval between this time and the value of @TrainingEndTime@ . The start time in CloudWatch Logs might be later than this time. The difference is due to the time it takes to download the training data and to the size of the training container.
dtjrrsTrainingStartTime :: Lens' DescribeTrainingJobResponse (Maybe UTCTime)
dtjrrsTrainingStartTime = lens _dtjrrsTrainingStartTime (\s a -> s {_dtjrrsTrainingStartTime = a}) . mapping _Time

-- | Indicates the time when the training job ends on training instances. You are billed for the time interval between the value of @TrainingStartTime@ and this time. For successful jobs and stopped jobs, this is the time after model artifacts are uploaded. For failed jobs, this is the time when Amazon SageMaker detects a job failure.
dtjrrsTrainingEndTime :: Lens' DescribeTrainingJobResponse (Maybe UTCTime)
dtjrrsTrainingEndTime = lens _dtjrrsTrainingEndTime (\s a -> s {_dtjrrsTrainingEndTime = a}) . mapping _Time

-- | -- | The response status code.
dtjrrsResponseStatus :: Lens' DescribeTrainingJobResponse Int
dtjrrsResponseStatus = lens _dtjrrsResponseStatus (\s a -> s {_dtjrrsResponseStatus = a})

-- | Name of the model training job.
dtjrrsTrainingJobName :: Lens' DescribeTrainingJobResponse Text
dtjrrsTrainingJobName = lens _dtjrrsTrainingJobName (\s a -> s {_dtjrrsTrainingJobName = a})

-- | The Amazon Resource Name (ARN) of the training job.
dtjrrsTrainingJobARN :: Lens' DescribeTrainingJobResponse Text
dtjrrsTrainingJobARN = lens _dtjrrsTrainingJobARN (\s a -> s {_dtjrrsTrainingJobARN = a})

-- | Information about the Amazon S3 location that is configured for storing model artifacts.
dtjrrsModelArtifacts :: Lens' DescribeTrainingJobResponse ModelArtifacts
dtjrrsModelArtifacts = lens _dtjrrsModelArtifacts (\s a -> s {_dtjrrsModelArtifacts = a})

-- | The status of the training job. Amazon SageMaker provides the following training job statuses:     * @InProgress@ - The training is in progress.     * @Completed@ - The training job has completed.     * @Failed@ - The training job has failed. To see the reason for the failure, see the @FailureReason@ field in the response to a @DescribeTrainingJobResponse@ call.     * @Stopping@ - The training job is stopping.     * @Stopped@ - The training job has stopped. For more detailed information, see @SecondaryStatus@ .
dtjrrsTrainingJobStatus :: Lens' DescribeTrainingJobResponse TrainingJobStatus
dtjrrsTrainingJobStatus = lens _dtjrrsTrainingJobStatus (\s a -> s {_dtjrrsTrainingJobStatus = a})

-- | Provides detailed information about the state of the training job. For detailed information on the secondary status of the training job, see @StatusMessage@ under 'SecondaryStatusTransition' . Amazon SageMaker provides primary statuses and secondary statuses that apply to each of them:     * InProgress    *     * @Starting@ - Starting the training job.     * @Downloading@ - An optional stage for algorithms that support @File@ training input mode. It indicates that data is being downloaded to the ML storage volumes.     * @Training@ - Training is in progress.     * @Interrupted@ - The job stopped because the managed spot training instances were interrupted.      * @Uploading@ - Training is complete and the model artifacts are being uploaded to the S3 location.     * Completed    *     * @Completed@ - The training job has completed.     * Failed    *     * @Failed@ - The training job has failed. The reason for the failure is returned in the @FailureReason@ field of @DescribeTrainingJobResponse@ .     * Stopped    *     * @MaxRuntimeExceeded@ - The job stopped because it exceeded the maximum allowed runtime.     * @MaxWaitTimeExceeded@ - The job stopped because it exceeded the maximum allowed wait time.     * @Stopped@ - The training job has stopped.     * Stopping    *     * @Stopping@ - Stopping the training job. /Important:/ Valid values for @SecondaryStatus@ are subject to change.  We no longer support the following secondary statuses:     * @LaunchingMLInstances@      * @PreparingTrainingStack@      * @DownloadingTrainingImage@
dtjrrsSecondaryStatus :: Lens' DescribeTrainingJobResponse SecondaryStatus
dtjrrsSecondaryStatus = lens _dtjrrsSecondaryStatus (\s a -> s {_dtjrrsSecondaryStatus = a})

-- | Information about the algorithm used for training, and algorithm metadata.
dtjrrsAlgorithmSpecification :: Lens' DescribeTrainingJobResponse AlgorithmSpecification
dtjrrsAlgorithmSpecification = lens _dtjrrsAlgorithmSpecification (\s a -> s {_dtjrrsAlgorithmSpecification = a})

-- | Resources, including ML compute instances and ML storage volumes, that are configured for model training.
dtjrrsResourceConfig :: Lens' DescribeTrainingJobResponse ResourceConfig
dtjrrsResourceConfig = lens _dtjrrsResourceConfig (\s a -> s {_dtjrrsResourceConfig = a})

-- | Specifies a limit to how long a model training job can run. It also specifies the maximum time to wait for a spot instance. When the job reaches the time limit, Amazon SageMaker ends the training job. Use this API to cap model training costs. To stop a job, Amazon SageMaker sends the algorithm the @SIGTERM@ signal, which delays job termination for 120 seconds. Algorithms can use this 120-second window to save the model artifacts, so the results of training are not lost.
dtjrrsStoppingCondition :: Lens' DescribeTrainingJobResponse StoppingCondition
dtjrrsStoppingCondition = lens _dtjrrsStoppingCondition (\s a -> s {_dtjrrsStoppingCondition = a})

-- | A timestamp that indicates when the training job was created.
dtjrrsCreationTime :: Lens' DescribeTrainingJobResponse UTCTime
dtjrrsCreationTime = lens _dtjrrsCreationTime (\s a -> s {_dtjrrsCreationTime = a}) . _Time

instance NFData DescribeTrainingJobResponse
