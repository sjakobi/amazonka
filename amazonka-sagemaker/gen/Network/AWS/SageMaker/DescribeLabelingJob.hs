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
-- Module      : Network.AWS.SageMaker.DescribeLabelingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a labeling job.
module Network.AWS.SageMaker.DescribeLabelingJob
  ( -- * Creating a Request
    describeLabelingJob,
    DescribeLabelingJob,

    -- * Request Lenses
    dljLabelingJobName,

    -- * Destructuring the Response
    describeLabelingJobResponse,
    DescribeLabelingJobResponse,

    -- * Response Lenses
    dljrrsStoppingConditions,
    dljrrsLabelAttributeName,
    dljrrsLabelCategoryConfigS3URI,
    dljrrsLabelingJobAlgorithmsConfig,
    dljrrsFailureReason,
    dljrrsTags,
    dljrrsLabelingJobOutput,
    dljrrsResponseStatus,
    dljrrsLabelingJobStatus,
    dljrrsLabelCounters,
    dljrrsCreationTime,
    dljrrsLastModifiedTime,
    dljrrsJobReferenceCode,
    dljrrsLabelingJobName,
    dljrrsLabelingJobARN,
    dljrrsInputConfig,
    dljrrsOutputConfig,
    dljrrsRoleARN,
    dljrrsHumanTaskConfig,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeLabelingJob' smart constructor.
newtype DescribeLabelingJob = DescribeLabelingJob'
  { _dljLabelingJobName ::
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

-- | Creates a value of 'DescribeLabelingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dljLabelingJobName' - The name of the labeling job to return information for.
describeLabelingJob ::
  -- | 'dljLabelingJobName'
  Text ->
  DescribeLabelingJob
describeLabelingJob pLabelingJobName_ =
  DescribeLabelingJob'
    { _dljLabelingJobName =
        pLabelingJobName_
    }

-- | The name of the labeling job to return information for.
dljLabelingJobName :: Lens' DescribeLabelingJob Text
dljLabelingJobName = lens _dljLabelingJobName (\s a -> s {_dljLabelingJobName = a})

instance AWSRequest DescribeLabelingJob where
  type
    Rs DescribeLabelingJob =
      DescribeLabelingJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeLabelingJobResponse'
            <$> (x .?> "StoppingConditions")
            <*> (x .?> "LabelAttributeName")
            <*> (x .?> "LabelCategoryConfigS3Uri")
            <*> (x .?> "LabelingJobAlgorithmsConfig")
            <*> (x .?> "FailureReason")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "LabelingJobOutput")
            <*> (pure (fromEnum s))
            <*> (x .:> "LabelingJobStatus")
            <*> (x .:> "LabelCounters")
            <*> (x .:> "CreationTime")
            <*> (x .:> "LastModifiedTime")
            <*> (x .:> "JobReferenceCode")
            <*> (x .:> "LabelingJobName")
            <*> (x .:> "LabelingJobArn")
            <*> (x .:> "InputConfig")
            <*> (x .:> "OutputConfig")
            <*> (x .:> "RoleArn")
            <*> (x .:> "HumanTaskConfig")
      )

instance Hashable DescribeLabelingJob

instance NFData DescribeLabelingJob

instance ToHeaders DescribeLabelingJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeLabelingJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeLabelingJob where
  toJSON DescribeLabelingJob' {..} =
    object
      ( catMaybes
          [Just ("LabelingJobName" .= _dljLabelingJobName)]
      )

instance ToPath DescribeLabelingJob where
  toPath = const "/"

instance ToQuery DescribeLabelingJob where
  toQuery = const mempty

-- | /See:/ 'describeLabelingJobResponse' smart constructor.
data DescribeLabelingJobResponse = DescribeLabelingJobResponse'
  { _dljrrsStoppingConditions ::
      !( Maybe
           LabelingJobStoppingConditions
       ),
    _dljrrsLabelAttributeName ::
      !(Maybe Text),
    _dljrrsLabelCategoryConfigS3URI ::
      !(Maybe Text),
    _dljrrsLabelingJobAlgorithmsConfig ::
      !( Maybe
           LabelingJobAlgorithmsConfig
       ),
    _dljrrsFailureReason ::
      !(Maybe Text),
    _dljrrsTags ::
      !(Maybe [Tag]),
    _dljrrsLabelingJobOutput ::
      !( Maybe
           LabelingJobOutput
       ),
    _dljrrsResponseStatus ::
      !Int,
    _dljrrsLabelingJobStatus ::
      !LabelingJobStatus,
    _dljrrsLabelCounters ::
      !LabelCounters,
    _dljrrsCreationTime ::
      !POSIX,
    _dljrrsLastModifiedTime ::
      !POSIX,
    _dljrrsJobReferenceCode ::
      !Text,
    _dljrrsLabelingJobName ::
      !Text,
    _dljrrsLabelingJobARN ::
      !Text,
    _dljrrsInputConfig ::
      !LabelingJobInputConfig,
    _dljrrsOutputConfig ::
      !LabelingJobOutputConfig,
    _dljrrsRoleARN ::
      !Text,
    _dljrrsHumanTaskConfig ::
      !HumanTaskConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeLabelingJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dljrrsStoppingConditions' - A set of conditions for stopping a labeling job. If any of the conditions are met, the job is automatically stopped.
--
-- * 'dljrrsLabelAttributeName' - The attribute used as the label in the output manifest file.
--
-- * 'dljrrsLabelCategoryConfigS3URI' - The S3 location of the JSON file that defines the categories used to label data objects. Please note the following label-category limits:     * Semantic segmentation labeling jobs using automated labeling: 20 labels     * Box bounding labeling jobs (all): 10 labels The file is a JSON structure in the following format: @{@  @"document-version": "2018-11-28"@  @"labels": [@  @{@  @"label": "/label 1/ "@  @},@  @{@  @"label": "/label 2/ "@  @},@  @...@  @{@  @"label": "/label n/ "@  @}@  @]@  @}@
--
-- * 'dljrrsLabelingJobAlgorithmsConfig' - Configuration information for automated data labeling.
--
-- * 'dljrrsFailureReason' - If the job failed, the reason that it failed.
--
-- * 'dljrrsTags' - An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
--
-- * 'dljrrsLabelingJobOutput' - The location of the output produced by the labeling job.
--
-- * 'dljrrsResponseStatus' - -- | The response status code.
--
-- * 'dljrrsLabelingJobStatus' - The processing status of the labeling job.
--
-- * 'dljrrsLabelCounters' - Provides a breakdown of the number of data objects labeled by humans, the number of objects labeled by machine, the number of objects than couldn't be labeled, and the total number of objects labeled.
--
-- * 'dljrrsCreationTime' - The date and time that the labeling job was created.
--
-- * 'dljrrsLastModifiedTime' - The date and time that the labeling job was last updated.
--
-- * 'dljrrsJobReferenceCode' - A unique identifier for work done as part of a labeling job.
--
-- * 'dljrrsLabelingJobName' - The name assigned to the labeling job when it was created.
--
-- * 'dljrrsLabelingJobARN' - The Amazon Resource Name (ARN) of the labeling job.
--
-- * 'dljrrsInputConfig' - Input configuration information for the labeling job, such as the Amazon S3 location of the data objects and the location of the manifest file that describes the data objects.
--
-- * 'dljrrsOutputConfig' - The location of the job's output data and the AWS Key Management Service key ID for the key used to encrypt the output data, if any.
--
-- * 'dljrrsRoleARN' - The Amazon Resource Name (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during data labeling.
--
-- * 'dljrrsHumanTaskConfig' - Configuration information required for human workers to complete a labeling task.
describeLabelingJobResponse ::
  -- | 'dljrrsResponseStatus'
  Int ->
  -- | 'dljrrsLabelingJobStatus'
  LabelingJobStatus ->
  -- | 'dljrrsLabelCounters'
  LabelCounters ->
  -- | 'dljrrsCreationTime'
  UTCTime ->
  -- | 'dljrrsLastModifiedTime'
  UTCTime ->
  -- | 'dljrrsJobReferenceCode'
  Text ->
  -- | 'dljrrsLabelingJobName'
  Text ->
  -- | 'dljrrsLabelingJobARN'
  Text ->
  -- | 'dljrrsInputConfig'
  LabelingJobInputConfig ->
  -- | 'dljrrsOutputConfig'
  LabelingJobOutputConfig ->
  -- | 'dljrrsRoleARN'
  Text ->
  -- | 'dljrrsHumanTaskConfig'
  HumanTaskConfig ->
  DescribeLabelingJobResponse
describeLabelingJobResponse
  pResponseStatus_
  pLabelingJobStatus_
  pLabelCounters_
  pCreationTime_
  pLastModifiedTime_
  pJobReferenceCode_
  pLabelingJobName_
  pLabelingJobARN_
  pInputConfig_
  pOutputConfig_
  pRoleARN_
  pHumanTaskConfig_ =
    DescribeLabelingJobResponse'
      { _dljrrsStoppingConditions =
          Nothing,
        _dljrrsLabelAttributeName = Nothing,
        _dljrrsLabelCategoryConfigS3URI = Nothing,
        _dljrrsLabelingJobAlgorithmsConfig = Nothing,
        _dljrrsFailureReason = Nothing,
        _dljrrsTags = Nothing,
        _dljrrsLabelingJobOutput = Nothing,
        _dljrrsResponseStatus = pResponseStatus_,
        _dljrrsLabelingJobStatus = pLabelingJobStatus_,
        _dljrrsLabelCounters = pLabelCounters_,
        _dljrrsCreationTime = _Time # pCreationTime_,
        _dljrrsLastModifiedTime =
          _Time # pLastModifiedTime_,
        _dljrrsJobReferenceCode = pJobReferenceCode_,
        _dljrrsLabelingJobName = pLabelingJobName_,
        _dljrrsLabelingJobARN = pLabelingJobARN_,
        _dljrrsInputConfig = pInputConfig_,
        _dljrrsOutputConfig = pOutputConfig_,
        _dljrrsRoleARN = pRoleARN_,
        _dljrrsHumanTaskConfig = pHumanTaskConfig_
      }

-- | A set of conditions for stopping a labeling job. If any of the conditions are met, the job is automatically stopped.
dljrrsStoppingConditions :: Lens' DescribeLabelingJobResponse (Maybe LabelingJobStoppingConditions)
dljrrsStoppingConditions = lens _dljrrsStoppingConditions (\s a -> s {_dljrrsStoppingConditions = a})

-- | The attribute used as the label in the output manifest file.
dljrrsLabelAttributeName :: Lens' DescribeLabelingJobResponse (Maybe Text)
dljrrsLabelAttributeName = lens _dljrrsLabelAttributeName (\s a -> s {_dljrrsLabelAttributeName = a})

-- | The S3 location of the JSON file that defines the categories used to label data objects. Please note the following label-category limits:     * Semantic segmentation labeling jobs using automated labeling: 20 labels     * Box bounding labeling jobs (all): 10 labels The file is a JSON structure in the following format: @{@  @"document-version": "2018-11-28"@  @"labels": [@  @{@  @"label": "/label 1/ "@  @},@  @{@  @"label": "/label 2/ "@  @},@  @...@  @{@  @"label": "/label n/ "@  @}@  @]@  @}@
dljrrsLabelCategoryConfigS3URI :: Lens' DescribeLabelingJobResponse (Maybe Text)
dljrrsLabelCategoryConfigS3URI = lens _dljrrsLabelCategoryConfigS3URI (\s a -> s {_dljrrsLabelCategoryConfigS3URI = a})

-- | Configuration information for automated data labeling.
dljrrsLabelingJobAlgorithmsConfig :: Lens' DescribeLabelingJobResponse (Maybe LabelingJobAlgorithmsConfig)
dljrrsLabelingJobAlgorithmsConfig = lens _dljrrsLabelingJobAlgorithmsConfig (\s a -> s {_dljrrsLabelingJobAlgorithmsConfig = a})

-- | If the job failed, the reason that it failed.
dljrrsFailureReason :: Lens' DescribeLabelingJobResponse (Maybe Text)
dljrrsFailureReason = lens _dljrrsFailureReason (\s a -> s {_dljrrsFailureReason = a})

-- | An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
dljrrsTags :: Lens' DescribeLabelingJobResponse [Tag]
dljrrsTags = lens _dljrrsTags (\s a -> s {_dljrrsTags = a}) . _Default . _Coerce

-- | The location of the output produced by the labeling job.
dljrrsLabelingJobOutput :: Lens' DescribeLabelingJobResponse (Maybe LabelingJobOutput)
dljrrsLabelingJobOutput = lens _dljrrsLabelingJobOutput (\s a -> s {_dljrrsLabelingJobOutput = a})

-- | -- | The response status code.
dljrrsResponseStatus :: Lens' DescribeLabelingJobResponse Int
dljrrsResponseStatus = lens _dljrrsResponseStatus (\s a -> s {_dljrrsResponseStatus = a})

-- | The processing status of the labeling job.
dljrrsLabelingJobStatus :: Lens' DescribeLabelingJobResponse LabelingJobStatus
dljrrsLabelingJobStatus = lens _dljrrsLabelingJobStatus (\s a -> s {_dljrrsLabelingJobStatus = a})

-- | Provides a breakdown of the number of data objects labeled by humans, the number of objects labeled by machine, the number of objects than couldn't be labeled, and the total number of objects labeled.
dljrrsLabelCounters :: Lens' DescribeLabelingJobResponse LabelCounters
dljrrsLabelCounters = lens _dljrrsLabelCounters (\s a -> s {_dljrrsLabelCounters = a})

-- | The date and time that the labeling job was created.
dljrrsCreationTime :: Lens' DescribeLabelingJobResponse UTCTime
dljrrsCreationTime = lens _dljrrsCreationTime (\s a -> s {_dljrrsCreationTime = a}) . _Time

-- | The date and time that the labeling job was last updated.
dljrrsLastModifiedTime :: Lens' DescribeLabelingJobResponse UTCTime
dljrrsLastModifiedTime = lens _dljrrsLastModifiedTime (\s a -> s {_dljrrsLastModifiedTime = a}) . _Time

-- | A unique identifier for work done as part of a labeling job.
dljrrsJobReferenceCode :: Lens' DescribeLabelingJobResponse Text
dljrrsJobReferenceCode = lens _dljrrsJobReferenceCode (\s a -> s {_dljrrsJobReferenceCode = a})

-- | The name assigned to the labeling job when it was created.
dljrrsLabelingJobName :: Lens' DescribeLabelingJobResponse Text
dljrrsLabelingJobName = lens _dljrrsLabelingJobName (\s a -> s {_dljrrsLabelingJobName = a})

-- | The Amazon Resource Name (ARN) of the labeling job.
dljrrsLabelingJobARN :: Lens' DescribeLabelingJobResponse Text
dljrrsLabelingJobARN = lens _dljrrsLabelingJobARN (\s a -> s {_dljrrsLabelingJobARN = a})

-- | Input configuration information for the labeling job, such as the Amazon S3 location of the data objects and the location of the manifest file that describes the data objects.
dljrrsInputConfig :: Lens' DescribeLabelingJobResponse LabelingJobInputConfig
dljrrsInputConfig = lens _dljrrsInputConfig (\s a -> s {_dljrrsInputConfig = a})

-- | The location of the job's output data and the AWS Key Management Service key ID for the key used to encrypt the output data, if any.
dljrrsOutputConfig :: Lens' DescribeLabelingJobResponse LabelingJobOutputConfig
dljrrsOutputConfig = lens _dljrrsOutputConfig (\s a -> s {_dljrrsOutputConfig = a})

-- | The Amazon Resource Name (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during data labeling.
dljrrsRoleARN :: Lens' DescribeLabelingJobResponse Text
dljrrsRoleARN = lens _dljrrsRoleARN (\s a -> s {_dljrrsRoleARN = a})

-- | Configuration information required for human workers to complete a labeling task.
dljrrsHumanTaskConfig :: Lens' DescribeLabelingJobResponse HumanTaskConfig
dljrrsHumanTaskConfig = lens _dljrrsHumanTaskConfig (\s a -> s {_dljrrsHumanTaskConfig = a})

instance NFData DescribeLabelingJobResponse
