{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TransformJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TransformJob where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.BatchStrategy
import Network.AWS.SageMaker.Types.DataProcessing
import Network.AWS.SageMaker.Types.ExperimentConfig
import Network.AWS.SageMaker.Types.ModelClientConfig
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.TransformInput
import Network.AWS.SageMaker.Types.TransformJobStatus
import Network.AWS.SageMaker.Types.TransformOutput
import Network.AWS.SageMaker.Types.TransformResources

-- | A batch transform job. For information about SageMaker batch transform, see <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html Use Batch Transform> .
--
--
--
-- /See:/ 'transformJob' smart constructor.
data TransformJob = TransformJob'
  { _tCreationTime ::
      !(Maybe POSIX),
    _tLabelingJobARN :: !(Maybe Text),
    _tTransformJobName :: !(Maybe Text),
    _tTransformStartTime :: !(Maybe POSIX),
    _tTransformOutput :: !(Maybe TransformOutput),
    _tExperimentConfig ::
      !(Maybe ExperimentConfig),
    _tMaxConcurrentTransforms :: !(Maybe Nat),
    _tEnvironment :: !(Maybe (Map Text Text)),
    _tMaxPayloadInMB :: !(Maybe Nat),
    _tBatchStrategy :: !(Maybe BatchStrategy),
    _tTransformJobStatus ::
      !(Maybe TransformJobStatus),
    _tAutoMLJobARN :: !(Maybe Text),
    _tFailureReason :: !(Maybe Text),
    _tModelClientConfig ::
      !(Maybe ModelClientConfig),
    _tTags :: !(Maybe [Tag]),
    _tTransformEndTime :: !(Maybe POSIX),
    _tTransformJobARN :: !(Maybe Text),
    _tDataProcessing :: !(Maybe DataProcessing),
    _tModelName :: !(Maybe Text),
    _tTransformResources ::
      !(Maybe TransformResources),
    _tTransformInput :: !(Maybe TransformInput)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TransformJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tCreationTime' - A timestamp that shows when the transform Job was created.
--
-- * 'tLabelingJobARN' - The Amazon Resource Name (ARN) of the labeling job that created the transform job.
--
-- * 'tTransformJobName' - The name of the transform job.
--
-- * 'tTransformStartTime' - Indicates when the transform job starts on ML instances. You are billed for the time interval between this time and the value of @TransformEndTime@ .
--
-- * 'tTransformOutput' - Undocumented member.
--
-- * 'tExperimentConfig' - Undocumented member.
--
-- * 'tMaxConcurrentTransforms' - The maximum number of parallel requests that can be sent to each instance in a transform job. If @MaxConcurrentTransforms@ is set to 0 or left unset, SageMaker checks the optional execution-parameters to determine the settings for your chosen algorithm. If the execution-parameters endpoint is not enabled, the default value is 1. For built-in algorithms, you don't need to set a value for @MaxConcurrentTransforms@ .
--
-- * 'tEnvironment' - The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.
--
-- * 'tMaxPayloadInMB' - The maximum allowed size of the payload, in MB. A payload is the data portion of a record (without metadata). The value in @MaxPayloadInMB@ must be greater than, or equal to, the size of a single record. To estimate the size of a record in MB, divide the size of your dataset by the number of records. To ensure that the records fit within the maximum payload size, we recommend using a slightly larger value. The default value is 6 MB. For cases where the payload might be arbitrarily large and is transmitted using HTTP chunked encoding, set the value to 0. This feature works only in supported algorithms. Currently, SageMaker built-in algorithms do not support HTTP chunked encoding.
--
-- * 'tBatchStrategy' - Specifies the number of records to include in a mini-batch for an HTTP inference request. A record is a single unit of input data that inference can be made on. For example, a single line in a CSV file is a record.
--
-- * 'tTransformJobStatus' - The status of the transform job. Transform job statuses are:     * @InProgress@ - The job is in progress.     * @Completed@ - The job has completed.     * @Failed@ - The transform job has failed. To see the reason for the failure, see the @FailureReason@ field in the response to a @DescribeTransformJob@ call.     * @Stopping@ - The transform job is stopping.     * @Stopped@ - The transform job has stopped.
--
-- * 'tAutoMLJobARN' - The Amazon Resource Name (ARN) of the AutoML job that created the transform job.
--
-- * 'tFailureReason' - If the transform job failed, the reason it failed.
--
-- * 'tModelClientConfig' - Undocumented member.
--
-- * 'tTags' - A list of tags associated with the transform job.
--
-- * 'tTransformEndTime' - Indicates when the transform job has been completed, or has stopped or failed. You are billed for the time interval between this time and the value of @TransformStartTime@ .
--
-- * 'tTransformJobARN' - The Amazon Resource Name (ARN) of the transform job.
--
-- * 'tDataProcessing' - Undocumented member.
--
-- * 'tModelName' - The name of the model associated with the transform job.
--
-- * 'tTransformResources' - Undocumented member.
--
-- * 'tTransformInput' - Undocumented member.
transformJob ::
  TransformJob
transformJob =
  TransformJob'
    { _tCreationTime = Nothing,
      _tLabelingJobARN = Nothing,
      _tTransformJobName = Nothing,
      _tTransformStartTime = Nothing,
      _tTransformOutput = Nothing,
      _tExperimentConfig = Nothing,
      _tMaxConcurrentTransforms = Nothing,
      _tEnvironment = Nothing,
      _tMaxPayloadInMB = Nothing,
      _tBatchStrategy = Nothing,
      _tTransformJobStatus = Nothing,
      _tAutoMLJobARN = Nothing,
      _tFailureReason = Nothing,
      _tModelClientConfig = Nothing,
      _tTags = Nothing,
      _tTransformEndTime = Nothing,
      _tTransformJobARN = Nothing,
      _tDataProcessing = Nothing,
      _tModelName = Nothing,
      _tTransformResources = Nothing,
      _tTransformInput = Nothing
    }

-- | A timestamp that shows when the transform Job was created.
tCreationTime :: Lens' TransformJob (Maybe UTCTime)
tCreationTime = lens _tCreationTime (\s a -> s {_tCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the labeling job that created the transform job.
tLabelingJobARN :: Lens' TransformJob (Maybe Text)
tLabelingJobARN = lens _tLabelingJobARN (\s a -> s {_tLabelingJobARN = a})

-- | The name of the transform job.
tTransformJobName :: Lens' TransformJob (Maybe Text)
tTransformJobName = lens _tTransformJobName (\s a -> s {_tTransformJobName = a})

-- | Indicates when the transform job starts on ML instances. You are billed for the time interval between this time and the value of @TransformEndTime@ .
tTransformStartTime :: Lens' TransformJob (Maybe UTCTime)
tTransformStartTime = lens _tTransformStartTime (\s a -> s {_tTransformStartTime = a}) . mapping _Time

-- | Undocumented member.
tTransformOutput :: Lens' TransformJob (Maybe TransformOutput)
tTransformOutput = lens _tTransformOutput (\s a -> s {_tTransformOutput = a})

-- | Undocumented member.
tExperimentConfig :: Lens' TransformJob (Maybe ExperimentConfig)
tExperimentConfig = lens _tExperimentConfig (\s a -> s {_tExperimentConfig = a})

-- | The maximum number of parallel requests that can be sent to each instance in a transform job. If @MaxConcurrentTransforms@ is set to 0 or left unset, SageMaker checks the optional execution-parameters to determine the settings for your chosen algorithm. If the execution-parameters endpoint is not enabled, the default value is 1. For built-in algorithms, you don't need to set a value for @MaxConcurrentTransforms@ .
tMaxConcurrentTransforms :: Lens' TransformJob (Maybe Natural)
tMaxConcurrentTransforms = lens _tMaxConcurrentTransforms (\s a -> s {_tMaxConcurrentTransforms = a}) . mapping _Nat

-- | The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.
tEnvironment :: Lens' TransformJob (HashMap Text Text)
tEnvironment = lens _tEnvironment (\s a -> s {_tEnvironment = a}) . _Default . _Map

-- | The maximum allowed size of the payload, in MB. A payload is the data portion of a record (without metadata). The value in @MaxPayloadInMB@ must be greater than, or equal to, the size of a single record. To estimate the size of a record in MB, divide the size of your dataset by the number of records. To ensure that the records fit within the maximum payload size, we recommend using a slightly larger value. The default value is 6 MB. For cases where the payload might be arbitrarily large and is transmitted using HTTP chunked encoding, set the value to 0. This feature works only in supported algorithms. Currently, SageMaker built-in algorithms do not support HTTP chunked encoding.
tMaxPayloadInMB :: Lens' TransformJob (Maybe Natural)
tMaxPayloadInMB = lens _tMaxPayloadInMB (\s a -> s {_tMaxPayloadInMB = a}) . mapping _Nat

-- | Specifies the number of records to include in a mini-batch for an HTTP inference request. A record is a single unit of input data that inference can be made on. For example, a single line in a CSV file is a record.
tBatchStrategy :: Lens' TransformJob (Maybe BatchStrategy)
tBatchStrategy = lens _tBatchStrategy (\s a -> s {_tBatchStrategy = a})

-- | The status of the transform job. Transform job statuses are:     * @InProgress@ - The job is in progress.     * @Completed@ - The job has completed.     * @Failed@ - The transform job has failed. To see the reason for the failure, see the @FailureReason@ field in the response to a @DescribeTransformJob@ call.     * @Stopping@ - The transform job is stopping.     * @Stopped@ - The transform job has stopped.
tTransformJobStatus :: Lens' TransformJob (Maybe TransformJobStatus)
tTransformJobStatus = lens _tTransformJobStatus (\s a -> s {_tTransformJobStatus = a})

-- | The Amazon Resource Name (ARN) of the AutoML job that created the transform job.
tAutoMLJobARN :: Lens' TransformJob (Maybe Text)
tAutoMLJobARN = lens _tAutoMLJobARN (\s a -> s {_tAutoMLJobARN = a})

-- | If the transform job failed, the reason it failed.
tFailureReason :: Lens' TransformJob (Maybe Text)
tFailureReason = lens _tFailureReason (\s a -> s {_tFailureReason = a})

-- | Undocumented member.
tModelClientConfig :: Lens' TransformJob (Maybe ModelClientConfig)
tModelClientConfig = lens _tModelClientConfig (\s a -> s {_tModelClientConfig = a})

-- | A list of tags associated with the transform job.
tTags :: Lens' TransformJob [Tag]
tTags = lens _tTags (\s a -> s {_tTags = a}) . _Default . _Coerce

-- | Indicates when the transform job has been completed, or has stopped or failed. You are billed for the time interval between this time and the value of @TransformStartTime@ .
tTransformEndTime :: Lens' TransformJob (Maybe UTCTime)
tTransformEndTime = lens _tTransformEndTime (\s a -> s {_tTransformEndTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the transform job.
tTransformJobARN :: Lens' TransformJob (Maybe Text)
tTransformJobARN = lens _tTransformJobARN (\s a -> s {_tTransformJobARN = a})

-- | Undocumented member.
tDataProcessing :: Lens' TransformJob (Maybe DataProcessing)
tDataProcessing = lens _tDataProcessing (\s a -> s {_tDataProcessing = a})

-- | The name of the model associated with the transform job.
tModelName :: Lens' TransformJob (Maybe Text)
tModelName = lens _tModelName (\s a -> s {_tModelName = a})

-- | Undocumented member.
tTransformResources :: Lens' TransformJob (Maybe TransformResources)
tTransformResources = lens _tTransformResources (\s a -> s {_tTransformResources = a})

-- | Undocumented member.
tTransformInput :: Lens' TransformJob (Maybe TransformInput)
tTransformInput = lens _tTransformInput (\s a -> s {_tTransformInput = a})

instance FromJSON TransformJob where
  parseJSON =
    withObject
      "TransformJob"
      ( \x ->
          TransformJob'
            <$> (x .:? "CreationTime")
            <*> (x .:? "LabelingJobArn")
            <*> (x .:? "TransformJobName")
            <*> (x .:? "TransformStartTime")
            <*> (x .:? "TransformOutput")
            <*> (x .:? "ExperimentConfig")
            <*> (x .:? "MaxConcurrentTransforms")
            <*> (x .:? "Environment" .!= mempty)
            <*> (x .:? "MaxPayloadInMB")
            <*> (x .:? "BatchStrategy")
            <*> (x .:? "TransformJobStatus")
            <*> (x .:? "AutoMLJobArn")
            <*> (x .:? "FailureReason")
            <*> (x .:? "ModelClientConfig")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "TransformEndTime")
            <*> (x .:? "TransformJobArn")
            <*> (x .:? "DataProcessing")
            <*> (x .:? "ModelName")
            <*> (x .:? "TransformResources")
            <*> (x .:? "TransformInput")
      )

instance Hashable TransformJob

instance NFData TransformJob
