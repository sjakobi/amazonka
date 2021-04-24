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
-- Module      : Network.AWS.SageMaker.DescribeTransformJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a transform job.
module Network.AWS.SageMaker.DescribeTransformJob
  ( -- * Creating a Request
    describeTransformJob,
    DescribeTransformJob,

    -- * Request Lenses
    dtjTransformJobName,

    -- * Destructuring the Response
    describeTransformJobResponse,
    DescribeTransformJobResponse,

    -- * Response Lenses
    dtjrtrsLabelingJobARN,
    dtjrtrsTransformStartTime,
    dtjrtrsTransformOutput,
    dtjrtrsExperimentConfig,
    dtjrtrsMaxConcurrentTransforms,
    dtjrtrsEnvironment,
    dtjrtrsMaxPayloadInMB,
    dtjrtrsBatchStrategy,
    dtjrtrsAutoMLJobARN,
    dtjrtrsFailureReason,
    dtjrtrsModelClientConfig,
    dtjrtrsTransformEndTime,
    dtjrtrsDataProcessing,
    dtjrtrsResponseStatus,
    dtjrtrsTransformJobName,
    dtjrtrsTransformJobARN,
    dtjrtrsTransformJobStatus,
    dtjrtrsModelName,
    dtjrtrsTransformInput,
    dtjrtrsTransformResources,
    dtjrtrsCreationTime,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeTransformJob' smart constructor.
newtype DescribeTransformJob = DescribeTransformJob'
  { _dtjTransformJobName ::
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

-- | Creates a value of 'DescribeTransformJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtjTransformJobName' - The name of the transform job that you want to view details of.
describeTransformJob ::
  -- | 'dtjTransformJobName'
  Text ->
  DescribeTransformJob
describeTransformJob pTransformJobName_ =
  DescribeTransformJob'
    { _dtjTransformJobName =
        pTransformJobName_
    }

-- | The name of the transform job that you want to view details of.
dtjTransformJobName :: Lens' DescribeTransformJob Text
dtjTransformJobName = lens _dtjTransformJobName (\s a -> s {_dtjTransformJobName = a})

instance AWSRequest DescribeTransformJob where
  type
    Rs DescribeTransformJob =
      DescribeTransformJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeTransformJobResponse'
            <$> (x .?> "LabelingJobArn")
            <*> (x .?> "TransformStartTime")
            <*> (x .?> "TransformOutput")
            <*> (x .?> "ExperimentConfig")
            <*> (x .?> "MaxConcurrentTransforms")
            <*> (x .?> "Environment" .!@ mempty)
            <*> (x .?> "MaxPayloadInMB")
            <*> (x .?> "BatchStrategy")
            <*> (x .?> "AutoMLJobArn")
            <*> (x .?> "FailureReason")
            <*> (x .?> "ModelClientConfig")
            <*> (x .?> "TransformEndTime")
            <*> (x .?> "DataProcessing")
            <*> (pure (fromEnum s))
            <*> (x .:> "TransformJobName")
            <*> (x .:> "TransformJobArn")
            <*> (x .:> "TransformJobStatus")
            <*> (x .:> "ModelName")
            <*> (x .:> "TransformInput")
            <*> (x .:> "TransformResources")
            <*> (x .:> "CreationTime")
      )

instance Hashable DescribeTransformJob

instance NFData DescribeTransformJob

instance ToHeaders DescribeTransformJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeTransformJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTransformJob where
  toJSON DescribeTransformJob' {..} =
    object
      ( catMaybes
          [Just ("TransformJobName" .= _dtjTransformJobName)]
      )

instance ToPath DescribeTransformJob where
  toPath = const "/"

instance ToQuery DescribeTransformJob where
  toQuery = const mempty

-- | /See:/ 'describeTransformJobResponse' smart constructor.
data DescribeTransformJobResponse = DescribeTransformJobResponse'
  { _dtjrtrsLabelingJobARN ::
      !(Maybe Text),
    _dtjrtrsTransformStartTime ::
      !( Maybe
           POSIX
       ),
    _dtjrtrsTransformOutput ::
      !( Maybe
           TransformOutput
       ),
    _dtjrtrsExperimentConfig ::
      !( Maybe
           ExperimentConfig
       ),
    _dtjrtrsMaxConcurrentTransforms ::
      !(Maybe Nat),
    _dtjrtrsEnvironment ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _dtjrtrsMaxPayloadInMB ::
      !(Maybe Nat),
    _dtjrtrsBatchStrategy ::
      !( Maybe
           BatchStrategy
       ),
    _dtjrtrsAutoMLJobARN ::
      !(Maybe Text),
    _dtjrtrsFailureReason ::
      !(Maybe Text),
    _dtjrtrsModelClientConfig ::
      !( Maybe
           ModelClientConfig
       ),
    _dtjrtrsTransformEndTime ::
      !( Maybe
           POSIX
       ),
    _dtjrtrsDataProcessing ::
      !( Maybe
           DataProcessing
       ),
    _dtjrtrsResponseStatus ::
      !Int,
    _dtjrtrsTransformJobName ::
      !Text,
    _dtjrtrsTransformJobARN ::
      !Text,
    _dtjrtrsTransformJobStatus ::
      !TransformJobStatus,
    _dtjrtrsModelName ::
      !Text,
    _dtjrtrsTransformInput ::
      !TransformInput,
    _dtjrtrsTransformResources ::
      !TransformResources,
    _dtjrtrsCreationTime ::
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

-- | Creates a value of 'DescribeTransformJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtjrtrsLabelingJobARN' - The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth labeling job that created the transform or training job.
--
-- * 'dtjrtrsTransformStartTime' - Indicates when the transform job starts on ML instances. You are billed for the time interval between this time and the value of @TransformEndTime@ .
--
-- * 'dtjrtrsTransformOutput' - Identifies the Amazon S3 location where you want Amazon SageMaker to save the results from the transform job.
--
-- * 'dtjrtrsExperimentConfig' - Undocumented member.
--
-- * 'dtjrtrsMaxConcurrentTransforms' - The maximum number of parallel requests on each instance node that can be launched in a transform job. The default value is 1.
--
-- * 'dtjrtrsEnvironment' - The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.
--
-- * 'dtjrtrsMaxPayloadInMB' - The maximum payload size, in MB, used in the transform job.
--
-- * 'dtjrtrsBatchStrategy' - Specifies the number of records to include in a mini-batch for an HTTP inference request. A /record/ // is a single unit of input data that inference can be made on. For example, a single line in a CSV file is a record.  To enable the batch strategy, you must set @SplitType@ to @Line@ , @RecordIO@ , or @TFRecord@ .
--
-- * 'dtjrtrsAutoMLJobARN' - The Amazon Resource Name (ARN) of the AutoML transform job.
--
-- * 'dtjrtrsFailureReason' - If the transform job failed, @FailureReason@ describes why it failed. A transform job creates a log file, which includes error messages, and stores it as an Amazon S3 object. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/logging-cloudwatch.html Log Amazon SageMaker Events with Amazon CloudWatch> .
--
-- * 'dtjrtrsModelClientConfig' - The timeout and maximum number of retries for processing a transform job invocation.
--
-- * 'dtjrtrsTransformEndTime' - Indicates when the transform job has been completed, or has stopped or failed. You are billed for the time interval between this time and the value of @TransformStartTime@ .
--
-- * 'dtjrtrsDataProcessing' - Undocumented member.
--
-- * 'dtjrtrsResponseStatus' - -- | The response status code.
--
-- * 'dtjrtrsTransformJobName' - The name of the transform job.
--
-- * 'dtjrtrsTransformJobARN' - The Amazon Resource Name (ARN) of the transform job.
--
-- * 'dtjrtrsTransformJobStatus' - The status of the transform job. If the transform job failed, the reason is returned in the @FailureReason@ field.
--
-- * 'dtjrtrsModelName' - The name of the model used in the transform job.
--
-- * 'dtjrtrsTransformInput' - Describes the dataset to be transformed and the Amazon S3 location where it is stored.
--
-- * 'dtjrtrsTransformResources' - Describes the resources, including ML instance types and ML instance count, to use for the transform job.
--
-- * 'dtjrtrsCreationTime' - A timestamp that shows when the transform Job was created.
describeTransformJobResponse ::
  -- | 'dtjrtrsResponseStatus'
  Int ->
  -- | 'dtjrtrsTransformJobName'
  Text ->
  -- | 'dtjrtrsTransformJobARN'
  Text ->
  -- | 'dtjrtrsTransformJobStatus'
  TransformJobStatus ->
  -- | 'dtjrtrsModelName'
  Text ->
  -- | 'dtjrtrsTransformInput'
  TransformInput ->
  -- | 'dtjrtrsTransformResources'
  TransformResources ->
  -- | 'dtjrtrsCreationTime'
  UTCTime ->
  DescribeTransformJobResponse
describeTransformJobResponse
  pResponseStatus_
  pTransformJobName_
  pTransformJobARN_
  pTransformJobStatus_
  pModelName_
  pTransformInput_
  pTransformResources_
  pCreationTime_ =
    DescribeTransformJobResponse'
      { _dtjrtrsLabelingJobARN =
          Nothing,
        _dtjrtrsTransformStartTime = Nothing,
        _dtjrtrsTransformOutput = Nothing,
        _dtjrtrsExperimentConfig = Nothing,
        _dtjrtrsMaxConcurrentTransforms = Nothing,
        _dtjrtrsEnvironment = Nothing,
        _dtjrtrsMaxPayloadInMB = Nothing,
        _dtjrtrsBatchStrategy = Nothing,
        _dtjrtrsAutoMLJobARN = Nothing,
        _dtjrtrsFailureReason = Nothing,
        _dtjrtrsModelClientConfig = Nothing,
        _dtjrtrsTransformEndTime = Nothing,
        _dtjrtrsDataProcessing = Nothing,
        _dtjrtrsResponseStatus = pResponseStatus_,
        _dtjrtrsTransformJobName = pTransformJobName_,
        _dtjrtrsTransformJobARN = pTransformJobARN_,
        _dtjrtrsTransformJobStatus =
          pTransformJobStatus_,
        _dtjrtrsModelName = pModelName_,
        _dtjrtrsTransformInput = pTransformInput_,
        _dtjrtrsTransformResources =
          pTransformResources_,
        _dtjrtrsCreationTime = _Time # pCreationTime_
      }

-- | The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth labeling job that created the transform or training job.
dtjrtrsLabelingJobARN :: Lens' DescribeTransformJobResponse (Maybe Text)
dtjrtrsLabelingJobARN = lens _dtjrtrsLabelingJobARN (\s a -> s {_dtjrtrsLabelingJobARN = a})

-- | Indicates when the transform job starts on ML instances. You are billed for the time interval between this time and the value of @TransformEndTime@ .
dtjrtrsTransformStartTime :: Lens' DescribeTransformJobResponse (Maybe UTCTime)
dtjrtrsTransformStartTime = lens _dtjrtrsTransformStartTime (\s a -> s {_dtjrtrsTransformStartTime = a}) . mapping _Time

-- | Identifies the Amazon S3 location where you want Amazon SageMaker to save the results from the transform job.
dtjrtrsTransformOutput :: Lens' DescribeTransformJobResponse (Maybe TransformOutput)
dtjrtrsTransformOutput = lens _dtjrtrsTransformOutput (\s a -> s {_dtjrtrsTransformOutput = a})

-- | Undocumented member.
dtjrtrsExperimentConfig :: Lens' DescribeTransformJobResponse (Maybe ExperimentConfig)
dtjrtrsExperimentConfig = lens _dtjrtrsExperimentConfig (\s a -> s {_dtjrtrsExperimentConfig = a})

-- | The maximum number of parallel requests on each instance node that can be launched in a transform job. The default value is 1.
dtjrtrsMaxConcurrentTransforms :: Lens' DescribeTransformJobResponse (Maybe Natural)
dtjrtrsMaxConcurrentTransforms = lens _dtjrtrsMaxConcurrentTransforms (\s a -> s {_dtjrtrsMaxConcurrentTransforms = a}) . mapping _Nat

-- | The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.
dtjrtrsEnvironment :: Lens' DescribeTransformJobResponse (HashMap Text Text)
dtjrtrsEnvironment = lens _dtjrtrsEnvironment (\s a -> s {_dtjrtrsEnvironment = a}) . _Default . _Map

-- | The maximum payload size, in MB, used in the transform job.
dtjrtrsMaxPayloadInMB :: Lens' DescribeTransformJobResponse (Maybe Natural)
dtjrtrsMaxPayloadInMB = lens _dtjrtrsMaxPayloadInMB (\s a -> s {_dtjrtrsMaxPayloadInMB = a}) . mapping _Nat

-- | Specifies the number of records to include in a mini-batch for an HTTP inference request. A /record/ // is a single unit of input data that inference can be made on. For example, a single line in a CSV file is a record.  To enable the batch strategy, you must set @SplitType@ to @Line@ , @RecordIO@ , or @TFRecord@ .
dtjrtrsBatchStrategy :: Lens' DescribeTransformJobResponse (Maybe BatchStrategy)
dtjrtrsBatchStrategy = lens _dtjrtrsBatchStrategy (\s a -> s {_dtjrtrsBatchStrategy = a})

-- | The Amazon Resource Name (ARN) of the AutoML transform job.
dtjrtrsAutoMLJobARN :: Lens' DescribeTransformJobResponse (Maybe Text)
dtjrtrsAutoMLJobARN = lens _dtjrtrsAutoMLJobARN (\s a -> s {_dtjrtrsAutoMLJobARN = a})

-- | If the transform job failed, @FailureReason@ describes why it failed. A transform job creates a log file, which includes error messages, and stores it as an Amazon S3 object. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/logging-cloudwatch.html Log Amazon SageMaker Events with Amazon CloudWatch> .
dtjrtrsFailureReason :: Lens' DescribeTransformJobResponse (Maybe Text)
dtjrtrsFailureReason = lens _dtjrtrsFailureReason (\s a -> s {_dtjrtrsFailureReason = a})

-- | The timeout and maximum number of retries for processing a transform job invocation.
dtjrtrsModelClientConfig :: Lens' DescribeTransformJobResponse (Maybe ModelClientConfig)
dtjrtrsModelClientConfig = lens _dtjrtrsModelClientConfig (\s a -> s {_dtjrtrsModelClientConfig = a})

-- | Indicates when the transform job has been completed, or has stopped or failed. You are billed for the time interval between this time and the value of @TransformStartTime@ .
dtjrtrsTransformEndTime :: Lens' DescribeTransformJobResponse (Maybe UTCTime)
dtjrtrsTransformEndTime = lens _dtjrtrsTransformEndTime (\s a -> s {_dtjrtrsTransformEndTime = a}) . mapping _Time

-- | Undocumented member.
dtjrtrsDataProcessing :: Lens' DescribeTransformJobResponse (Maybe DataProcessing)
dtjrtrsDataProcessing = lens _dtjrtrsDataProcessing (\s a -> s {_dtjrtrsDataProcessing = a})

-- | -- | The response status code.
dtjrtrsResponseStatus :: Lens' DescribeTransformJobResponse Int
dtjrtrsResponseStatus = lens _dtjrtrsResponseStatus (\s a -> s {_dtjrtrsResponseStatus = a})

-- | The name of the transform job.
dtjrtrsTransformJobName :: Lens' DescribeTransformJobResponse Text
dtjrtrsTransformJobName = lens _dtjrtrsTransformJobName (\s a -> s {_dtjrtrsTransformJobName = a})

-- | The Amazon Resource Name (ARN) of the transform job.
dtjrtrsTransformJobARN :: Lens' DescribeTransformJobResponse Text
dtjrtrsTransformJobARN = lens _dtjrtrsTransformJobARN (\s a -> s {_dtjrtrsTransformJobARN = a})

-- | The status of the transform job. If the transform job failed, the reason is returned in the @FailureReason@ field.
dtjrtrsTransformJobStatus :: Lens' DescribeTransformJobResponse TransformJobStatus
dtjrtrsTransformJobStatus = lens _dtjrtrsTransformJobStatus (\s a -> s {_dtjrtrsTransformJobStatus = a})

-- | The name of the model used in the transform job.
dtjrtrsModelName :: Lens' DescribeTransformJobResponse Text
dtjrtrsModelName = lens _dtjrtrsModelName (\s a -> s {_dtjrtrsModelName = a})

-- | Describes the dataset to be transformed and the Amazon S3 location where it is stored.
dtjrtrsTransformInput :: Lens' DescribeTransformJobResponse TransformInput
dtjrtrsTransformInput = lens _dtjrtrsTransformInput (\s a -> s {_dtjrtrsTransformInput = a})

-- | Describes the resources, including ML instance types and ML instance count, to use for the transform job.
dtjrtrsTransformResources :: Lens' DescribeTransformJobResponse TransformResources
dtjrtrsTransformResources = lens _dtjrtrsTransformResources (\s a -> s {_dtjrtrsTransformResources = a})

-- | A timestamp that shows when the transform Job was created.
dtjrtrsCreationTime :: Lens' DescribeTransformJobResponse UTCTime
dtjrtrsCreationTime = lens _dtjrtrsCreationTime (\s a -> s {_dtjrtrsCreationTime = a}) . _Time

instance NFData DescribeTransformJobResponse
