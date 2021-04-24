{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingJob where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.AppSpecification
import Network.AWS.SageMaker.Types.ExperimentConfig
import Network.AWS.SageMaker.Types.NetworkConfig
import Network.AWS.SageMaker.Types.ProcessingInput
import Network.AWS.SageMaker.Types.ProcessingJobStatus
import Network.AWS.SageMaker.Types.ProcessingOutputConfig
import Network.AWS.SageMaker.Types.ProcessingResources
import Network.AWS.SageMaker.Types.ProcessingStoppingCondition
import Network.AWS.SageMaker.Types.Tag

-- | An Amazon SageMaker processing job that is used to analyze data and evaluate models. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/processing-job.html Process Data and Evaluate Models> .
--
--
--
-- /See:/ 'processingJob' smart constructor.
data ProcessingJob = ProcessingJob'
  { _pjNetworkConfig ::
      !(Maybe NetworkConfig),
    _pjCreationTime :: !(Maybe POSIX),
    _pjAppSpecification ::
      !(Maybe AppSpecification),
    _pjProcessingEndTime :: !(Maybe POSIX),
    _pjRoleARN :: !(Maybe Text),
    _pjProcessingOutputConfig ::
      !(Maybe ProcessingOutputConfig),
    _pjExitMessage :: !(Maybe Text),
    _pjExperimentConfig ::
      !(Maybe ExperimentConfig),
    _pjProcessingJobStatus ::
      !(Maybe ProcessingJobStatus),
    _pjEnvironment :: !(Maybe (Map Text Text)),
    _pjAutoMLJobARN :: !(Maybe Text),
    _pjFailureReason :: !(Maybe Text),
    _pjMonitoringScheduleARN :: !(Maybe Text),
    _pjProcessingJobARN :: !(Maybe Text),
    _pjTags :: !(Maybe [Tag]),
    _pjLastModifiedTime :: !(Maybe POSIX),
    _pjProcessingInputs ::
      !(Maybe [ProcessingInput]),
    _pjProcessingStartTime :: !(Maybe POSIX),
    _pjStoppingCondition ::
      !(Maybe ProcessingStoppingCondition),
    _pjProcessingJobName :: !(Maybe Text),
    _pjProcessingResources ::
      !(Maybe ProcessingResources),
    _pjTrainingJobARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProcessingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjNetworkConfig' - Undocumented member.
--
-- * 'pjCreationTime' - The time the processing job was created.
--
-- * 'pjAppSpecification' - Undocumented member.
--
-- * 'pjProcessingEndTime' - The time that the processing job ended.
--
-- * 'pjRoleARN' - The ARN of the role used to create the processing job.
--
-- * 'pjProcessingOutputConfig' - Undocumented member.
--
-- * 'pjExitMessage' - A string, up to one KB in size, that contains metadata from the processing container when the processing job exits.
--
-- * 'pjExperimentConfig' - Undocumented member.
--
-- * 'pjProcessingJobStatus' - The status of the processing job.
--
-- * 'pjEnvironment' - Sets the environment variables in the Docker container.
--
-- * 'pjAutoMLJobARN' - The Amazon Resource Name (ARN) of the AutoML job associated with this processing job.
--
-- * 'pjFailureReason' - A string, up to one KB in size, that contains the reason a processing job failed, if it failed.
--
-- * 'pjMonitoringScheduleARN' - The ARN of a monitoring schedule for an endpoint associated with this processing job.
--
-- * 'pjProcessingJobARN' - The ARN of the processing job.
--
-- * 'pjTags' - An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
--
-- * 'pjLastModifiedTime' - The time the processing job was last modified.
--
-- * 'pjProcessingInputs' - List of input configurations for the processing job.
--
-- * 'pjProcessingStartTime' - The time that the processing job started.
--
-- * 'pjStoppingCondition' - Undocumented member.
--
-- * 'pjProcessingJobName' - The name of the processing job.
--
-- * 'pjProcessingResources' - Undocumented member.
--
-- * 'pjTrainingJobARN' - The ARN of the training job associated with this processing job.
processingJob ::
  ProcessingJob
processingJob =
  ProcessingJob'
    { _pjNetworkConfig = Nothing,
      _pjCreationTime = Nothing,
      _pjAppSpecification = Nothing,
      _pjProcessingEndTime = Nothing,
      _pjRoleARN = Nothing,
      _pjProcessingOutputConfig = Nothing,
      _pjExitMessage = Nothing,
      _pjExperimentConfig = Nothing,
      _pjProcessingJobStatus = Nothing,
      _pjEnvironment = Nothing,
      _pjAutoMLJobARN = Nothing,
      _pjFailureReason = Nothing,
      _pjMonitoringScheduleARN = Nothing,
      _pjProcessingJobARN = Nothing,
      _pjTags = Nothing,
      _pjLastModifiedTime = Nothing,
      _pjProcessingInputs = Nothing,
      _pjProcessingStartTime = Nothing,
      _pjStoppingCondition = Nothing,
      _pjProcessingJobName = Nothing,
      _pjProcessingResources = Nothing,
      _pjTrainingJobARN = Nothing
    }

-- | Undocumented member.
pjNetworkConfig :: Lens' ProcessingJob (Maybe NetworkConfig)
pjNetworkConfig = lens _pjNetworkConfig (\s a -> s {_pjNetworkConfig = a})

-- | The time the processing job was created.
pjCreationTime :: Lens' ProcessingJob (Maybe UTCTime)
pjCreationTime = lens _pjCreationTime (\s a -> s {_pjCreationTime = a}) . mapping _Time

-- | Undocumented member.
pjAppSpecification :: Lens' ProcessingJob (Maybe AppSpecification)
pjAppSpecification = lens _pjAppSpecification (\s a -> s {_pjAppSpecification = a})

-- | The time that the processing job ended.
pjProcessingEndTime :: Lens' ProcessingJob (Maybe UTCTime)
pjProcessingEndTime = lens _pjProcessingEndTime (\s a -> s {_pjProcessingEndTime = a}) . mapping _Time

-- | The ARN of the role used to create the processing job.
pjRoleARN :: Lens' ProcessingJob (Maybe Text)
pjRoleARN = lens _pjRoleARN (\s a -> s {_pjRoleARN = a})

-- | Undocumented member.
pjProcessingOutputConfig :: Lens' ProcessingJob (Maybe ProcessingOutputConfig)
pjProcessingOutputConfig = lens _pjProcessingOutputConfig (\s a -> s {_pjProcessingOutputConfig = a})

-- | A string, up to one KB in size, that contains metadata from the processing container when the processing job exits.
pjExitMessage :: Lens' ProcessingJob (Maybe Text)
pjExitMessage = lens _pjExitMessage (\s a -> s {_pjExitMessage = a})

-- | Undocumented member.
pjExperimentConfig :: Lens' ProcessingJob (Maybe ExperimentConfig)
pjExperimentConfig = lens _pjExperimentConfig (\s a -> s {_pjExperimentConfig = a})

-- | The status of the processing job.
pjProcessingJobStatus :: Lens' ProcessingJob (Maybe ProcessingJobStatus)
pjProcessingJobStatus = lens _pjProcessingJobStatus (\s a -> s {_pjProcessingJobStatus = a})

-- | Sets the environment variables in the Docker container.
pjEnvironment :: Lens' ProcessingJob (HashMap Text Text)
pjEnvironment = lens _pjEnvironment (\s a -> s {_pjEnvironment = a}) . _Default . _Map

-- | The Amazon Resource Name (ARN) of the AutoML job associated with this processing job.
pjAutoMLJobARN :: Lens' ProcessingJob (Maybe Text)
pjAutoMLJobARN = lens _pjAutoMLJobARN (\s a -> s {_pjAutoMLJobARN = a})

-- | A string, up to one KB in size, that contains the reason a processing job failed, if it failed.
pjFailureReason :: Lens' ProcessingJob (Maybe Text)
pjFailureReason = lens _pjFailureReason (\s a -> s {_pjFailureReason = a})

-- | The ARN of a monitoring schedule for an endpoint associated with this processing job.
pjMonitoringScheduleARN :: Lens' ProcessingJob (Maybe Text)
pjMonitoringScheduleARN = lens _pjMonitoringScheduleARN (\s a -> s {_pjMonitoringScheduleARN = a})

-- | The ARN of the processing job.
pjProcessingJobARN :: Lens' ProcessingJob (Maybe Text)
pjProcessingJobARN = lens _pjProcessingJobARN (\s a -> s {_pjProcessingJobARN = a})

-- | An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
pjTags :: Lens' ProcessingJob [Tag]
pjTags = lens _pjTags (\s a -> s {_pjTags = a}) . _Default . _Coerce

-- | The time the processing job was last modified.
pjLastModifiedTime :: Lens' ProcessingJob (Maybe UTCTime)
pjLastModifiedTime = lens _pjLastModifiedTime (\s a -> s {_pjLastModifiedTime = a}) . mapping _Time

-- | List of input configurations for the processing job.
pjProcessingInputs :: Lens' ProcessingJob [ProcessingInput]
pjProcessingInputs = lens _pjProcessingInputs (\s a -> s {_pjProcessingInputs = a}) . _Default . _Coerce

-- | The time that the processing job started.
pjProcessingStartTime :: Lens' ProcessingJob (Maybe UTCTime)
pjProcessingStartTime = lens _pjProcessingStartTime (\s a -> s {_pjProcessingStartTime = a}) . mapping _Time

-- | Undocumented member.
pjStoppingCondition :: Lens' ProcessingJob (Maybe ProcessingStoppingCondition)
pjStoppingCondition = lens _pjStoppingCondition (\s a -> s {_pjStoppingCondition = a})

-- | The name of the processing job.
pjProcessingJobName :: Lens' ProcessingJob (Maybe Text)
pjProcessingJobName = lens _pjProcessingJobName (\s a -> s {_pjProcessingJobName = a})

-- | Undocumented member.
pjProcessingResources :: Lens' ProcessingJob (Maybe ProcessingResources)
pjProcessingResources = lens _pjProcessingResources (\s a -> s {_pjProcessingResources = a})

-- | The ARN of the training job associated with this processing job.
pjTrainingJobARN :: Lens' ProcessingJob (Maybe Text)
pjTrainingJobARN = lens _pjTrainingJobARN (\s a -> s {_pjTrainingJobARN = a})

instance FromJSON ProcessingJob where
  parseJSON =
    withObject
      "ProcessingJob"
      ( \x ->
          ProcessingJob'
            <$> (x .:? "NetworkConfig")
            <*> (x .:? "CreationTime")
            <*> (x .:? "AppSpecification")
            <*> (x .:? "ProcessingEndTime")
            <*> (x .:? "RoleArn")
            <*> (x .:? "ProcessingOutputConfig")
            <*> (x .:? "ExitMessage")
            <*> (x .:? "ExperimentConfig")
            <*> (x .:? "ProcessingJobStatus")
            <*> (x .:? "Environment" .!= mempty)
            <*> (x .:? "AutoMLJobArn")
            <*> (x .:? "FailureReason")
            <*> (x .:? "MonitoringScheduleArn")
            <*> (x .:? "ProcessingJobArn")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "ProcessingInputs" .!= mempty)
            <*> (x .:? "ProcessingStartTime")
            <*> (x .:? "StoppingCondition")
            <*> (x .:? "ProcessingJobName")
            <*> (x .:? "ProcessingResources")
            <*> (x .:? "TrainingJobArn")
      )

instance Hashable ProcessingJob

instance NFData ProcessingJob
