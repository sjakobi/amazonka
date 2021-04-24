{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrainingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrainingJob where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.AlgorithmSpecification
import Network.AWS.SageMaker.Types.Channel
import Network.AWS.SageMaker.Types.CheckpointConfig
import Network.AWS.SageMaker.Types.DebugHookConfig
import Network.AWS.SageMaker.Types.DebugRuleConfiguration
import Network.AWS.SageMaker.Types.DebugRuleEvaluationStatus
import Network.AWS.SageMaker.Types.ExperimentConfig
import Network.AWS.SageMaker.Types.MetricData
import Network.AWS.SageMaker.Types.ModelArtifacts
import Network.AWS.SageMaker.Types.OutputDataConfig
import Network.AWS.SageMaker.Types.ResourceConfig
import Network.AWS.SageMaker.Types.SecondaryStatus
import Network.AWS.SageMaker.Types.SecondaryStatusTransition
import Network.AWS.SageMaker.Types.StoppingCondition
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.TensorBoardOutputConfig
import Network.AWS.SageMaker.Types.TrainingJobStatus
import Network.AWS.SageMaker.Types.VPCConfig

-- | Contains information about a training job.
--
--
--
-- /See:/ 'trainingJob' smart constructor.
data TrainingJob = TrainingJob'
  { _tjVPCConfig ::
      !(Maybe VPCConfig),
    _tjDebugRuleConfigurations ::
      !(Maybe [DebugRuleConfiguration]),
    _tjInputDataConfig :: !(Maybe (List1 Channel)),
    _tjHyperParameters :: !(Maybe (Map Text Text)),
    _tjEnableManagedSpotTraining :: !(Maybe Bool),
    _tjCreationTime :: !(Maybe POSIX),
    _tjLabelingJobARN :: !(Maybe Text),
    _tjRoleARN :: !(Maybe Text),
    _tjTrainingTimeInSeconds :: !(Maybe Nat),
    _tjExperimentConfig ::
      !(Maybe ExperimentConfig),
    _tjEnableNetworkIsolation :: !(Maybe Bool),
    _tjEnableInterContainerTrafficEncryption ::
      !(Maybe Bool),
    _tjTrainingJobName :: !(Maybe Text),
    _tjCheckpointConfig ::
      !(Maybe CheckpointConfig),
    _tjOutputDataConfig ::
      !(Maybe OutputDataConfig),
    _tjTuningJobARN :: !(Maybe Text),
    _tjModelArtifacts :: !(Maybe ModelArtifacts),
    _tjSecondaryStatusTransitions ::
      !(Maybe [SecondaryStatusTransition]),
    _tjFinalMetricDataList :: !(Maybe [MetricData]),
    _tjAutoMLJobARN :: !(Maybe Text),
    _tjFailureReason :: !(Maybe Text),
    _tjTags :: !(Maybe [Tag]),
    _tjSecondaryStatus :: !(Maybe SecondaryStatus),
    _tjLastModifiedTime :: !(Maybe POSIX),
    _tjTensorBoardOutputConfig ::
      !(Maybe TensorBoardOutputConfig),
    _tjStoppingCondition ::
      !(Maybe StoppingCondition),
    _tjDebugRuleEvaluationStatuses ::
      !(Maybe [DebugRuleEvaluationStatus]),
    _tjTrainingJobStatus ::
      !(Maybe TrainingJobStatus),
    _tjDebugHookConfig :: !(Maybe DebugHookConfig),
    _tjBillableTimeInSeconds :: !(Maybe Nat),
    _tjResourceConfig :: !(Maybe ResourceConfig),
    _tjTrainingStartTime :: !(Maybe POSIX),
    _tjTrainingEndTime :: !(Maybe POSIX),
    _tjAlgorithmSpecification ::
      !(Maybe AlgorithmSpecification),
    _tjTrainingJobARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrainingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjVPCConfig' - A 'VpcConfig' object that specifies the VPC that this training job has access to. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html Protect Training Jobs by Using an Amazon Virtual Private Cloud> .
--
-- * 'tjDebugRuleConfigurations' - Information about the debug rule configuration.
--
-- * 'tjInputDataConfig' - An array of @Channel@ objects that describes each data input channel.
--
-- * 'tjHyperParameters' - Algorithm-specific parameters.
--
-- * 'tjEnableManagedSpotTraining' - When true, enables managed spot training using Amazon EC2 Spot instances to run training jobs instead of on-demand instances. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html Managed Spot Training> .
--
-- * 'tjCreationTime' - A timestamp that indicates when the training job was created.
--
-- * 'tjLabelingJobARN' - The Amazon Resource Name (ARN) of the labeling job.
--
-- * 'tjRoleARN' - The AWS Identity and Access Management (IAM) role configured for the training job.
--
-- * 'tjTrainingTimeInSeconds' - The training time in seconds.
--
-- * 'tjExperimentConfig' - Undocumented member.
--
-- * 'tjEnableNetworkIsolation' - If the @TrainingJob@ was created with network isolation, the value is set to @true@ . If network isolation is enabled, nodes can't communicate beyond the VPC they run in.
--
-- * 'tjEnableInterContainerTrafficEncryption' - To encrypt all communications between ML compute instances in distributed training, choose @True@ . Encryption provides greater security for distributed training, but training might take longer. How long it takes depends on the amount of communication between compute instances, especially if you use a deep learning algorithm in distributed training.
--
-- * 'tjTrainingJobName' - The name of the training job.
--
-- * 'tjCheckpointConfig' - Undocumented member.
--
-- * 'tjOutputDataConfig' - The S3 path where model artifacts that you configured when creating the job are stored. Amazon SageMaker creates subfolders for model artifacts.
--
-- * 'tjTuningJobARN' - The Amazon Resource Name (ARN) of the associated hyperparameter tuning job if the training job was launched by a hyperparameter tuning job.
--
-- * 'tjModelArtifacts' - Information about the Amazon S3 location that is configured for storing model artifacts.
--
-- * 'tjSecondaryStatusTransitions' - A history of all of the secondary statuses that the training job has transitioned through.
--
-- * 'tjFinalMetricDataList' - A list of final metric values that are set when the training job completes. Used only if the training job was configured to use metrics.
--
-- * 'tjAutoMLJobARN' - The Amazon Resource Name (ARN) of the job.
--
-- * 'tjFailureReason' - If the training job failed, the reason it failed.
--
-- * 'tjTags' - An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
--
-- * 'tjSecondaryStatus' - Provides detailed information about the state of the training job. For detailed information about the secondary status of the training job, see @StatusMessage@ under 'SecondaryStatusTransition' . Amazon SageMaker provides primary statuses and secondary statuses that apply to each of them:     * InProgress    *     * @Starting@ - Starting the training job.     * @Downloading@ - An optional stage for algorithms that support @File@ training input mode. It indicates that data is being downloaded to the ML storage volumes.     * @Training@ - Training is in progress.     * @Uploading@ - Training is complete and the model artifacts are being uploaded to the S3 location.     * Completed    *     * @Completed@ - The training job has completed.     * Failed    *     * @Failed@ - The training job has failed. The reason for the failure is returned in the @FailureReason@ field of @DescribeTrainingJobResponse@ .     * Stopped    *     * @MaxRuntimeExceeded@ - The job stopped because it exceeded the maximum allowed runtime.     * @Stopped@ - The training job has stopped.     * Stopping    *     * @Stopping@ - Stopping the training job. /Important:/ Valid values for @SecondaryStatus@ are subject to change.  We no longer support the following secondary statuses:     * @LaunchingMLInstances@      * @PreparingTrainingStack@      * @DownloadingTrainingImage@
--
-- * 'tjLastModifiedTime' - A timestamp that indicates when the status of the training job was last modified.
--
-- * 'tjTensorBoardOutputConfig' - Undocumented member.
--
-- * 'tjStoppingCondition' - Specifies a limit to how long a model training job can run. When the job reaches the time limit, Amazon SageMaker ends the training job. Use this API to cap model training costs. To stop a job, Amazon SageMaker sends the algorithm the @SIGTERM@ signal, which delays job termination for 120 seconds. Algorithms can use this 120-second window to save the model artifacts, so the results of training are not lost.
--
-- * 'tjDebugRuleEvaluationStatuses' - Information about the evaluation status of the rules for the training job.
--
-- * 'tjTrainingJobStatus' - The status of the training job. Training job statuses are:     * @InProgress@ - The training is in progress.     * @Completed@ - The training job has completed.     * @Failed@ - The training job has failed. To see the reason for the failure, see the @FailureReason@ field in the response to a @DescribeTrainingJobResponse@ call.     * @Stopping@ - The training job is stopping.     * @Stopped@ - The training job has stopped. For more detailed information, see @SecondaryStatus@ .
--
-- * 'tjDebugHookConfig' - Undocumented member.
--
-- * 'tjBillableTimeInSeconds' - The billable time in seconds.
--
-- * 'tjResourceConfig' - Resources, including ML compute instances and ML storage volumes, that are configured for model training.
--
-- * 'tjTrainingStartTime' - Indicates the time when the training job starts on training instances. You are billed for the time interval between this time and the value of @TrainingEndTime@ . The start time in CloudWatch Logs might be later than this time. The difference is due to the time it takes to download the training data and to the size of the training container.
--
-- * 'tjTrainingEndTime' - Indicates the time when the training job ends on training instances. You are billed for the time interval between the value of @TrainingStartTime@ and this time. For successful jobs and stopped jobs, this is the time after model artifacts are uploaded. For failed jobs, this is the time when Amazon SageMaker detects a job failure.
--
-- * 'tjAlgorithmSpecification' - Information about the algorithm used for training, and algorithm metadata.
--
-- * 'tjTrainingJobARN' - The Amazon Resource Name (ARN) of the training job.
trainingJob ::
  TrainingJob
trainingJob =
  TrainingJob'
    { _tjVPCConfig = Nothing,
      _tjDebugRuleConfigurations = Nothing,
      _tjInputDataConfig = Nothing,
      _tjHyperParameters = Nothing,
      _tjEnableManagedSpotTraining = Nothing,
      _tjCreationTime = Nothing,
      _tjLabelingJobARN = Nothing,
      _tjRoleARN = Nothing,
      _tjTrainingTimeInSeconds = Nothing,
      _tjExperimentConfig = Nothing,
      _tjEnableNetworkIsolation = Nothing,
      _tjEnableInterContainerTrafficEncryption = Nothing,
      _tjTrainingJobName = Nothing,
      _tjCheckpointConfig = Nothing,
      _tjOutputDataConfig = Nothing,
      _tjTuningJobARN = Nothing,
      _tjModelArtifacts = Nothing,
      _tjSecondaryStatusTransitions = Nothing,
      _tjFinalMetricDataList = Nothing,
      _tjAutoMLJobARN = Nothing,
      _tjFailureReason = Nothing,
      _tjTags = Nothing,
      _tjSecondaryStatus = Nothing,
      _tjLastModifiedTime = Nothing,
      _tjTensorBoardOutputConfig = Nothing,
      _tjStoppingCondition = Nothing,
      _tjDebugRuleEvaluationStatuses = Nothing,
      _tjTrainingJobStatus = Nothing,
      _tjDebugHookConfig = Nothing,
      _tjBillableTimeInSeconds = Nothing,
      _tjResourceConfig = Nothing,
      _tjTrainingStartTime = Nothing,
      _tjTrainingEndTime = Nothing,
      _tjAlgorithmSpecification = Nothing,
      _tjTrainingJobARN = Nothing
    }

-- | A 'VpcConfig' object that specifies the VPC that this training job has access to. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html Protect Training Jobs by Using an Amazon Virtual Private Cloud> .
tjVPCConfig :: Lens' TrainingJob (Maybe VPCConfig)
tjVPCConfig = lens _tjVPCConfig (\s a -> s {_tjVPCConfig = a})

-- | Information about the debug rule configuration.
tjDebugRuleConfigurations :: Lens' TrainingJob [DebugRuleConfiguration]
tjDebugRuleConfigurations = lens _tjDebugRuleConfigurations (\s a -> s {_tjDebugRuleConfigurations = a}) . _Default . _Coerce

-- | An array of @Channel@ objects that describes each data input channel.
tjInputDataConfig :: Lens' TrainingJob (Maybe (NonEmpty Channel))
tjInputDataConfig = lens _tjInputDataConfig (\s a -> s {_tjInputDataConfig = a}) . mapping _List1

-- | Algorithm-specific parameters.
tjHyperParameters :: Lens' TrainingJob (HashMap Text Text)
tjHyperParameters = lens _tjHyperParameters (\s a -> s {_tjHyperParameters = a}) . _Default . _Map

-- | When true, enables managed spot training using Amazon EC2 Spot instances to run training jobs instead of on-demand instances. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html Managed Spot Training> .
tjEnableManagedSpotTraining :: Lens' TrainingJob (Maybe Bool)
tjEnableManagedSpotTraining = lens _tjEnableManagedSpotTraining (\s a -> s {_tjEnableManagedSpotTraining = a})

-- | A timestamp that indicates when the training job was created.
tjCreationTime :: Lens' TrainingJob (Maybe UTCTime)
tjCreationTime = lens _tjCreationTime (\s a -> s {_tjCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the labeling job.
tjLabelingJobARN :: Lens' TrainingJob (Maybe Text)
tjLabelingJobARN = lens _tjLabelingJobARN (\s a -> s {_tjLabelingJobARN = a})

-- | The AWS Identity and Access Management (IAM) role configured for the training job.
tjRoleARN :: Lens' TrainingJob (Maybe Text)
tjRoleARN = lens _tjRoleARN (\s a -> s {_tjRoleARN = a})

-- | The training time in seconds.
tjTrainingTimeInSeconds :: Lens' TrainingJob (Maybe Natural)
tjTrainingTimeInSeconds = lens _tjTrainingTimeInSeconds (\s a -> s {_tjTrainingTimeInSeconds = a}) . mapping _Nat

-- | Undocumented member.
tjExperimentConfig :: Lens' TrainingJob (Maybe ExperimentConfig)
tjExperimentConfig = lens _tjExperimentConfig (\s a -> s {_tjExperimentConfig = a})

-- | If the @TrainingJob@ was created with network isolation, the value is set to @true@ . If network isolation is enabled, nodes can't communicate beyond the VPC they run in.
tjEnableNetworkIsolation :: Lens' TrainingJob (Maybe Bool)
tjEnableNetworkIsolation = lens _tjEnableNetworkIsolation (\s a -> s {_tjEnableNetworkIsolation = a})

-- | To encrypt all communications between ML compute instances in distributed training, choose @True@ . Encryption provides greater security for distributed training, but training might take longer. How long it takes depends on the amount of communication between compute instances, especially if you use a deep learning algorithm in distributed training.
tjEnableInterContainerTrafficEncryption :: Lens' TrainingJob (Maybe Bool)
tjEnableInterContainerTrafficEncryption = lens _tjEnableInterContainerTrafficEncryption (\s a -> s {_tjEnableInterContainerTrafficEncryption = a})

-- | The name of the training job.
tjTrainingJobName :: Lens' TrainingJob (Maybe Text)
tjTrainingJobName = lens _tjTrainingJobName (\s a -> s {_tjTrainingJobName = a})

-- | Undocumented member.
tjCheckpointConfig :: Lens' TrainingJob (Maybe CheckpointConfig)
tjCheckpointConfig = lens _tjCheckpointConfig (\s a -> s {_tjCheckpointConfig = a})

-- | The S3 path where model artifacts that you configured when creating the job are stored. Amazon SageMaker creates subfolders for model artifacts.
tjOutputDataConfig :: Lens' TrainingJob (Maybe OutputDataConfig)
tjOutputDataConfig = lens _tjOutputDataConfig (\s a -> s {_tjOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) of the associated hyperparameter tuning job if the training job was launched by a hyperparameter tuning job.
tjTuningJobARN :: Lens' TrainingJob (Maybe Text)
tjTuningJobARN = lens _tjTuningJobARN (\s a -> s {_tjTuningJobARN = a})

-- | Information about the Amazon S3 location that is configured for storing model artifacts.
tjModelArtifacts :: Lens' TrainingJob (Maybe ModelArtifacts)
tjModelArtifacts = lens _tjModelArtifacts (\s a -> s {_tjModelArtifacts = a})

-- | A history of all of the secondary statuses that the training job has transitioned through.
tjSecondaryStatusTransitions :: Lens' TrainingJob [SecondaryStatusTransition]
tjSecondaryStatusTransitions = lens _tjSecondaryStatusTransitions (\s a -> s {_tjSecondaryStatusTransitions = a}) . _Default . _Coerce

-- | A list of final metric values that are set when the training job completes. Used only if the training job was configured to use metrics.
tjFinalMetricDataList :: Lens' TrainingJob [MetricData]
tjFinalMetricDataList = lens _tjFinalMetricDataList (\s a -> s {_tjFinalMetricDataList = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the job.
tjAutoMLJobARN :: Lens' TrainingJob (Maybe Text)
tjAutoMLJobARN = lens _tjAutoMLJobARN (\s a -> s {_tjAutoMLJobARN = a})

-- | If the training job failed, the reason it failed.
tjFailureReason :: Lens' TrainingJob (Maybe Text)
tjFailureReason = lens _tjFailureReason (\s a -> s {_tjFailureReason = a})

-- | An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
tjTags :: Lens' TrainingJob [Tag]
tjTags = lens _tjTags (\s a -> s {_tjTags = a}) . _Default . _Coerce

-- | Provides detailed information about the state of the training job. For detailed information about the secondary status of the training job, see @StatusMessage@ under 'SecondaryStatusTransition' . Amazon SageMaker provides primary statuses and secondary statuses that apply to each of them:     * InProgress    *     * @Starting@ - Starting the training job.     * @Downloading@ - An optional stage for algorithms that support @File@ training input mode. It indicates that data is being downloaded to the ML storage volumes.     * @Training@ - Training is in progress.     * @Uploading@ - Training is complete and the model artifacts are being uploaded to the S3 location.     * Completed    *     * @Completed@ - The training job has completed.     * Failed    *     * @Failed@ - The training job has failed. The reason for the failure is returned in the @FailureReason@ field of @DescribeTrainingJobResponse@ .     * Stopped    *     * @MaxRuntimeExceeded@ - The job stopped because it exceeded the maximum allowed runtime.     * @Stopped@ - The training job has stopped.     * Stopping    *     * @Stopping@ - Stopping the training job. /Important:/ Valid values for @SecondaryStatus@ are subject to change.  We no longer support the following secondary statuses:     * @LaunchingMLInstances@      * @PreparingTrainingStack@      * @DownloadingTrainingImage@
tjSecondaryStatus :: Lens' TrainingJob (Maybe SecondaryStatus)
tjSecondaryStatus = lens _tjSecondaryStatus (\s a -> s {_tjSecondaryStatus = a})

-- | A timestamp that indicates when the status of the training job was last modified.
tjLastModifiedTime :: Lens' TrainingJob (Maybe UTCTime)
tjLastModifiedTime = lens _tjLastModifiedTime (\s a -> s {_tjLastModifiedTime = a}) . mapping _Time

-- | Undocumented member.
tjTensorBoardOutputConfig :: Lens' TrainingJob (Maybe TensorBoardOutputConfig)
tjTensorBoardOutputConfig = lens _tjTensorBoardOutputConfig (\s a -> s {_tjTensorBoardOutputConfig = a})

-- | Specifies a limit to how long a model training job can run. When the job reaches the time limit, Amazon SageMaker ends the training job. Use this API to cap model training costs. To stop a job, Amazon SageMaker sends the algorithm the @SIGTERM@ signal, which delays job termination for 120 seconds. Algorithms can use this 120-second window to save the model artifacts, so the results of training are not lost.
tjStoppingCondition :: Lens' TrainingJob (Maybe StoppingCondition)
tjStoppingCondition = lens _tjStoppingCondition (\s a -> s {_tjStoppingCondition = a})

-- | Information about the evaluation status of the rules for the training job.
tjDebugRuleEvaluationStatuses :: Lens' TrainingJob [DebugRuleEvaluationStatus]
tjDebugRuleEvaluationStatuses = lens _tjDebugRuleEvaluationStatuses (\s a -> s {_tjDebugRuleEvaluationStatuses = a}) . _Default . _Coerce

-- | The status of the training job. Training job statuses are:     * @InProgress@ - The training is in progress.     * @Completed@ - The training job has completed.     * @Failed@ - The training job has failed. To see the reason for the failure, see the @FailureReason@ field in the response to a @DescribeTrainingJobResponse@ call.     * @Stopping@ - The training job is stopping.     * @Stopped@ - The training job has stopped. For more detailed information, see @SecondaryStatus@ .
tjTrainingJobStatus :: Lens' TrainingJob (Maybe TrainingJobStatus)
tjTrainingJobStatus = lens _tjTrainingJobStatus (\s a -> s {_tjTrainingJobStatus = a})

-- | Undocumented member.
tjDebugHookConfig :: Lens' TrainingJob (Maybe DebugHookConfig)
tjDebugHookConfig = lens _tjDebugHookConfig (\s a -> s {_tjDebugHookConfig = a})

-- | The billable time in seconds.
tjBillableTimeInSeconds :: Lens' TrainingJob (Maybe Natural)
tjBillableTimeInSeconds = lens _tjBillableTimeInSeconds (\s a -> s {_tjBillableTimeInSeconds = a}) . mapping _Nat

-- | Resources, including ML compute instances and ML storage volumes, that are configured for model training.
tjResourceConfig :: Lens' TrainingJob (Maybe ResourceConfig)
tjResourceConfig = lens _tjResourceConfig (\s a -> s {_tjResourceConfig = a})

-- | Indicates the time when the training job starts on training instances. You are billed for the time interval between this time and the value of @TrainingEndTime@ . The start time in CloudWatch Logs might be later than this time. The difference is due to the time it takes to download the training data and to the size of the training container.
tjTrainingStartTime :: Lens' TrainingJob (Maybe UTCTime)
tjTrainingStartTime = lens _tjTrainingStartTime (\s a -> s {_tjTrainingStartTime = a}) . mapping _Time

-- | Indicates the time when the training job ends on training instances. You are billed for the time interval between the value of @TrainingStartTime@ and this time. For successful jobs and stopped jobs, this is the time after model artifacts are uploaded. For failed jobs, this is the time when Amazon SageMaker detects a job failure.
tjTrainingEndTime :: Lens' TrainingJob (Maybe UTCTime)
tjTrainingEndTime = lens _tjTrainingEndTime (\s a -> s {_tjTrainingEndTime = a}) . mapping _Time

-- | Information about the algorithm used for training, and algorithm metadata.
tjAlgorithmSpecification :: Lens' TrainingJob (Maybe AlgorithmSpecification)
tjAlgorithmSpecification = lens _tjAlgorithmSpecification (\s a -> s {_tjAlgorithmSpecification = a})

-- | The Amazon Resource Name (ARN) of the training job.
tjTrainingJobARN :: Lens' TrainingJob (Maybe Text)
tjTrainingJobARN = lens _tjTrainingJobARN (\s a -> s {_tjTrainingJobARN = a})

instance FromJSON TrainingJob where
  parseJSON =
    withObject
      "TrainingJob"
      ( \x ->
          TrainingJob'
            <$> (x .:? "VpcConfig")
            <*> (x .:? "DebugRuleConfigurations" .!= mempty)
            <*> (x .:? "InputDataConfig")
            <*> (x .:? "HyperParameters" .!= mempty)
            <*> (x .:? "EnableManagedSpotTraining")
            <*> (x .:? "CreationTime")
            <*> (x .:? "LabelingJobArn")
            <*> (x .:? "RoleArn")
            <*> (x .:? "TrainingTimeInSeconds")
            <*> (x .:? "ExperimentConfig")
            <*> (x .:? "EnableNetworkIsolation")
            <*> (x .:? "EnableInterContainerTrafficEncryption")
            <*> (x .:? "TrainingJobName")
            <*> (x .:? "CheckpointConfig")
            <*> (x .:? "OutputDataConfig")
            <*> (x .:? "TuningJobArn")
            <*> (x .:? "ModelArtifacts")
            <*> (x .:? "SecondaryStatusTransitions" .!= mempty)
            <*> (x .:? "FinalMetricDataList" .!= mempty)
            <*> (x .:? "AutoMLJobArn")
            <*> (x .:? "FailureReason")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "SecondaryStatus")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "TensorBoardOutputConfig")
            <*> (x .:? "StoppingCondition")
            <*> (x .:? "DebugRuleEvaluationStatuses" .!= mempty)
            <*> (x .:? "TrainingJobStatus")
            <*> (x .:? "DebugHookConfig")
            <*> (x .:? "BillableTimeInSeconds")
            <*> (x .:? "ResourceConfig")
            <*> (x .:? "TrainingStartTime")
            <*> (x .:? "TrainingEndTime")
            <*> (x .:? "AlgorithmSpecification")
            <*> (x .:? "TrainingJobArn")
      )

instance Hashable TrainingJob

instance NFData TrainingJob
