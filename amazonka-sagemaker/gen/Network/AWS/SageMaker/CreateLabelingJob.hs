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
-- Module      : Network.AWS.SageMaker.CreateLabelingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job that uses workers to label the data objects in your input dataset. You can use the labeled data to train machine learning models.
--
--
-- You can select your workforce from one of three providers:
--
--     * A private workforce that you create. It can include employees, contractors, and outside experts. Use a private workforce when want the data to stay within your organization or when a specific set of skills is required.
--
--     * One or more vendors that you select from the AWS Marketplace. Vendors provide expertise in specific areas.
--
--     * The Amazon Mechanical Turk workforce. This is the largest workforce, but it should only be used for public data or data that has been stripped of any personally identifiable information.
--
--
--
-- You can also use /automated data labeling/ to reduce the number of data objects that need to be labeled by a human. Automated data labeling uses /active learning/ to determine if a data object can be labeled by machine or if it needs to be sent to a human worker. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-automated-labeling.html Using Automated Data Labeling> .
--
-- The data objects to be labeled are contained in an Amazon S3 bucket. You create a /manifest file/ that describes the location of each object. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-data.html Using Input and Output Data> .
--
-- The output can be used as the manifest file for another labeling job or as training data for your machine learning models.
--
-- You can use this operation to create a static labeling job or a streaming labeling job. A static labeling job stops if all data objects in the input manifest file identified in @ManifestS3Uri@ have been labeled. A streaming labeling job runs perpetually until it is manually stopped, or remains idle for 10 days. You can send new data objects to an active (@InProgress@ ) streaming labeling job in real time. To learn how to create a static labeling job, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-create-labeling-job-api.html Create a Labeling Job (API) > in the Amazon SageMaker Developer Guide. To learn how to create a streaming labeling job, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-streaming-create-job.html Create a Streaming Labeling Job> .
module Network.AWS.SageMaker.CreateLabelingJob
  ( -- * Creating a Request
    createLabelingJob,
    CreateLabelingJob,

    -- * Request Lenses
    cljStoppingConditions,
    cljLabelCategoryConfigS3URI,
    cljLabelingJobAlgorithmsConfig,
    cljTags,
    cljLabelingJobName,
    cljLabelAttributeName,
    cljInputConfig,
    cljOutputConfig,
    cljRoleARN,
    cljHumanTaskConfig,

    -- * Destructuring the Response
    createLabelingJobResponse,
    CreateLabelingJobResponse,

    -- * Response Lenses
    cljrrsResponseStatus,
    cljrrsLabelingJobARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createLabelingJob' smart constructor.
data CreateLabelingJob = CreateLabelingJob'
  { _cljStoppingConditions ::
      !( Maybe
           LabelingJobStoppingConditions
       ),
    _cljLabelCategoryConfigS3URI ::
      !(Maybe Text),
    _cljLabelingJobAlgorithmsConfig ::
      !( Maybe
           LabelingJobAlgorithmsConfig
       ),
    _cljTags :: !(Maybe [Tag]),
    _cljLabelingJobName :: !Text,
    _cljLabelAttributeName :: !Text,
    _cljInputConfig ::
      !LabelingJobInputConfig,
    _cljOutputConfig ::
      !LabelingJobOutputConfig,
    _cljRoleARN :: !Text,
    _cljHumanTaskConfig ::
      !HumanTaskConfig
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateLabelingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cljStoppingConditions' - A set of conditions for stopping the labeling job. If any of the conditions are met, the job is automatically stopped. You can use these conditions to control the cost of data labeling.
--
-- * 'cljLabelCategoryConfigS3URI' - The S3 URI of the file, referred to as a /label category configuration file/ , that defines the categories used to label the data objects. For 3D point cloud and video frame task types, you can add label category attributes and frame attributes to your label category configuration file. To learn how, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-point-cloud-label-category-config.html Create a Labeling Category Configuration File for 3D Point Cloud Labeling Jobs> .  For all other <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html built-in task types> and <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-custom-templates.html custom tasks> , your label category configuration file must be a JSON file in the following format. Identify the labels you want to use by replacing @label_1@ , @label_2@ ,@...@ ,@label_n@ with your label categories. @{ @  @"document-version": "2018-11-28",@  @"labels": [{"label": "label_1"},{"label": "label_2"},...{"label": "label_n"}]@  @}@  Note the following about the label category configuration file:     * For image classification and text classification (single and multi-label) you must specify at least two label categories. For all other task types, the minimum number of label categories required is one.      * Each label category must be unique, you cannot specify duplicate label categories.     * If you create a 3D point cloud or video frame adjustment or verification labeling job, you must include @auditLabelAttributeName@ in the label category configuration. Use this parameter to enter the <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateLabelingJob.html#sagemaker-CreateLabelingJob-request-LabelAttributeName @LabelAttributeName@ > of the labeling job you want to adjust or verify annotations of.
--
-- * 'cljLabelingJobAlgorithmsConfig' - Configures the information required to perform automated data labeling.
--
-- * 'cljTags' - An array of key/value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
--
-- * 'cljLabelingJobName' - The name of the labeling job. This name is used to identify the job in a list of labeling jobs. Labeling job names must be unique within an AWS account and region. @LabelingJobName@ is not case sensitive. For example, Example-job and example-job are considered the same labeling job name by Ground Truth.
--
-- * 'cljLabelAttributeName' - The attribute name to use for the label in the output manifest file. This is the key for the key/value pair formed with the label that a worker assigns to the object. The @LabelAttributeName@ must meet the following requirements.     * The name can't end with "-metadata".      * If you are using one of the following <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html built-in task types> , the attribute name /must/ end with "-ref". If the task type you are using is not listed below, the attribute name /must not/ end with "-ref".     * Image semantic segmentation (@SemanticSegmentation)@ , and adjustment (@AdjustmentSemanticSegmentation@ ) and verification (@VerificationSemanticSegmentation@ ) labeling jobs for this task type.     * Video frame object detection (@VideoObjectDetection@ ), and adjustment and verification (@AdjustmentVideoObjectDetection@ ) labeling jobs for this task type.     * Video frame object tracking (@VideoObjectTracking@ ), and adjustment and verification (@AdjustmentVideoObjectTracking@ ) labeling jobs for this task type.     * 3D point cloud semantic segmentation (@3DPointCloudSemanticSegmentation@ ), and adjustment and verification (@Adjustment3DPointCloudSemanticSegmentation@ ) labeling jobs for this task type.      * 3D point cloud object tracking (@3DPointCloudObjectTracking@ ), and adjustment and verification (@Adjustment3DPointCloudObjectTracking@ ) labeling jobs for this task type.  /Important:/ If you are creating an adjustment or verification labeling job, you must use a /different/ @LabelAttributeName@ than the one used in the original labeling job. The original labeling job is the Ground Truth labeling job that produced the labels that you want verified or adjusted. To learn more about adjustment and verification labeling jobs, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-verification-data.html Verify and Adjust Labels> .
--
-- * 'cljInputConfig' - Input data for the labeling job, such as the Amazon S3 location of the data objects and the location of the manifest file that describes the data objects. You must specify at least one of the following: @S3DataSource@ or @SnsDataSource@ .      * Use @SnsDataSource@ to specify an SNS input topic for a streaming labeling job. If you do not specify and SNS input topic ARN, Ground Truth will create a one-time labeling job that stops after all data objects in the input manifest file have been labeled.     * Use @S3DataSource@ to specify an input manifest file for both streaming and one-time labeling jobs. Adding an @S3DataSource@ is optional if you use @SnsDataSource@ to create a streaming labeling job. If you use the Amazon Mechanical Turk workforce, your input data should not include confidential information, personal information or protected health information. Use @ContentClassifiers@ to specify that your data is free of personally identifiable information and adult content.
--
-- * 'cljOutputConfig' - The location of the output data and the AWS Key Management Service key ID for the key used to encrypt the output data, if any.
--
-- * 'cljRoleARN' - The Amazon Resource Number (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during data labeling. You must grant this role the necessary permissions so that Amazon SageMaker can successfully complete data labeling.
--
-- * 'cljHumanTaskConfig' - Configures the labeling task and how it is presented to workers; including, but not limited to price, keywords, and batch size (task count).
createLabelingJob ::
  -- | 'cljLabelingJobName'
  Text ->
  -- | 'cljLabelAttributeName'
  Text ->
  -- | 'cljInputConfig'
  LabelingJobInputConfig ->
  -- | 'cljOutputConfig'
  LabelingJobOutputConfig ->
  -- | 'cljRoleARN'
  Text ->
  -- | 'cljHumanTaskConfig'
  HumanTaskConfig ->
  CreateLabelingJob
createLabelingJob
  pLabelingJobName_
  pLabelAttributeName_
  pInputConfig_
  pOutputConfig_
  pRoleARN_
  pHumanTaskConfig_ =
    CreateLabelingJob'
      { _cljStoppingConditions =
          Nothing,
        _cljLabelCategoryConfigS3URI = Nothing,
        _cljLabelingJobAlgorithmsConfig = Nothing,
        _cljTags = Nothing,
        _cljLabelingJobName = pLabelingJobName_,
        _cljLabelAttributeName = pLabelAttributeName_,
        _cljInputConfig = pInputConfig_,
        _cljOutputConfig = pOutputConfig_,
        _cljRoleARN = pRoleARN_,
        _cljHumanTaskConfig = pHumanTaskConfig_
      }

-- | A set of conditions for stopping the labeling job. If any of the conditions are met, the job is automatically stopped. You can use these conditions to control the cost of data labeling.
cljStoppingConditions :: Lens' CreateLabelingJob (Maybe LabelingJobStoppingConditions)
cljStoppingConditions = lens _cljStoppingConditions (\s a -> s {_cljStoppingConditions = a})

-- | The S3 URI of the file, referred to as a /label category configuration file/ , that defines the categories used to label the data objects. For 3D point cloud and video frame task types, you can add label category attributes and frame attributes to your label category configuration file. To learn how, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-point-cloud-label-category-config.html Create a Labeling Category Configuration File for 3D Point Cloud Labeling Jobs> .  For all other <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html built-in task types> and <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-custom-templates.html custom tasks> , your label category configuration file must be a JSON file in the following format. Identify the labels you want to use by replacing @label_1@ , @label_2@ ,@...@ ,@label_n@ with your label categories. @{ @  @"document-version": "2018-11-28",@  @"labels": [{"label": "label_1"},{"label": "label_2"},...{"label": "label_n"}]@  @}@  Note the following about the label category configuration file:     * For image classification and text classification (single and multi-label) you must specify at least two label categories. For all other task types, the minimum number of label categories required is one.      * Each label category must be unique, you cannot specify duplicate label categories.     * If you create a 3D point cloud or video frame adjustment or verification labeling job, you must include @auditLabelAttributeName@ in the label category configuration. Use this parameter to enter the <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateLabelingJob.html#sagemaker-CreateLabelingJob-request-LabelAttributeName @LabelAttributeName@ > of the labeling job you want to adjust or verify annotations of.
cljLabelCategoryConfigS3URI :: Lens' CreateLabelingJob (Maybe Text)
cljLabelCategoryConfigS3URI = lens _cljLabelCategoryConfigS3URI (\s a -> s {_cljLabelCategoryConfigS3URI = a})

-- | Configures the information required to perform automated data labeling.
cljLabelingJobAlgorithmsConfig :: Lens' CreateLabelingJob (Maybe LabelingJobAlgorithmsConfig)
cljLabelingJobAlgorithmsConfig = lens _cljLabelingJobAlgorithmsConfig (\s a -> s {_cljLabelingJobAlgorithmsConfig = a})

-- | An array of key/value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
cljTags :: Lens' CreateLabelingJob [Tag]
cljTags = lens _cljTags (\s a -> s {_cljTags = a}) . _Default . _Coerce

-- | The name of the labeling job. This name is used to identify the job in a list of labeling jobs. Labeling job names must be unique within an AWS account and region. @LabelingJobName@ is not case sensitive. For example, Example-job and example-job are considered the same labeling job name by Ground Truth.
cljLabelingJobName :: Lens' CreateLabelingJob Text
cljLabelingJobName = lens _cljLabelingJobName (\s a -> s {_cljLabelingJobName = a})

-- | The attribute name to use for the label in the output manifest file. This is the key for the key/value pair formed with the label that a worker assigns to the object. The @LabelAttributeName@ must meet the following requirements.     * The name can't end with "-metadata".      * If you are using one of the following <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html built-in task types> , the attribute name /must/ end with "-ref". If the task type you are using is not listed below, the attribute name /must not/ end with "-ref".     * Image semantic segmentation (@SemanticSegmentation)@ , and adjustment (@AdjustmentSemanticSegmentation@ ) and verification (@VerificationSemanticSegmentation@ ) labeling jobs for this task type.     * Video frame object detection (@VideoObjectDetection@ ), and adjustment and verification (@AdjustmentVideoObjectDetection@ ) labeling jobs for this task type.     * Video frame object tracking (@VideoObjectTracking@ ), and adjustment and verification (@AdjustmentVideoObjectTracking@ ) labeling jobs for this task type.     * 3D point cloud semantic segmentation (@3DPointCloudSemanticSegmentation@ ), and adjustment and verification (@Adjustment3DPointCloudSemanticSegmentation@ ) labeling jobs for this task type.      * 3D point cloud object tracking (@3DPointCloudObjectTracking@ ), and adjustment and verification (@Adjustment3DPointCloudObjectTracking@ ) labeling jobs for this task type.  /Important:/ If you are creating an adjustment or verification labeling job, you must use a /different/ @LabelAttributeName@ than the one used in the original labeling job. The original labeling job is the Ground Truth labeling job that produced the labels that you want verified or adjusted. To learn more about adjustment and verification labeling jobs, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-verification-data.html Verify and Adjust Labels> .
cljLabelAttributeName :: Lens' CreateLabelingJob Text
cljLabelAttributeName = lens _cljLabelAttributeName (\s a -> s {_cljLabelAttributeName = a})

-- | Input data for the labeling job, such as the Amazon S3 location of the data objects and the location of the manifest file that describes the data objects. You must specify at least one of the following: @S3DataSource@ or @SnsDataSource@ .      * Use @SnsDataSource@ to specify an SNS input topic for a streaming labeling job. If you do not specify and SNS input topic ARN, Ground Truth will create a one-time labeling job that stops after all data objects in the input manifest file have been labeled.     * Use @S3DataSource@ to specify an input manifest file for both streaming and one-time labeling jobs. Adding an @S3DataSource@ is optional if you use @SnsDataSource@ to create a streaming labeling job. If you use the Amazon Mechanical Turk workforce, your input data should not include confidential information, personal information or protected health information. Use @ContentClassifiers@ to specify that your data is free of personally identifiable information and adult content.
cljInputConfig :: Lens' CreateLabelingJob LabelingJobInputConfig
cljInputConfig = lens _cljInputConfig (\s a -> s {_cljInputConfig = a})

-- | The location of the output data and the AWS Key Management Service key ID for the key used to encrypt the output data, if any.
cljOutputConfig :: Lens' CreateLabelingJob LabelingJobOutputConfig
cljOutputConfig = lens _cljOutputConfig (\s a -> s {_cljOutputConfig = a})

-- | The Amazon Resource Number (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during data labeling. You must grant this role the necessary permissions so that Amazon SageMaker can successfully complete data labeling.
cljRoleARN :: Lens' CreateLabelingJob Text
cljRoleARN = lens _cljRoleARN (\s a -> s {_cljRoleARN = a})

-- | Configures the labeling task and how it is presented to workers; including, but not limited to price, keywords, and batch size (task count).
cljHumanTaskConfig :: Lens' CreateLabelingJob HumanTaskConfig
cljHumanTaskConfig = lens _cljHumanTaskConfig (\s a -> s {_cljHumanTaskConfig = a})

instance AWSRequest CreateLabelingJob where
  type Rs CreateLabelingJob = CreateLabelingJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateLabelingJobResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "LabelingJobArn")
      )

instance Hashable CreateLabelingJob

instance NFData CreateLabelingJob

instance ToHeaders CreateLabelingJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateLabelingJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateLabelingJob where
  toJSON CreateLabelingJob' {..} =
    object
      ( catMaybes
          [ ("StoppingConditions" .=)
              <$> _cljStoppingConditions,
            ("LabelCategoryConfigS3Uri" .=)
              <$> _cljLabelCategoryConfigS3URI,
            ("LabelingJobAlgorithmsConfig" .=)
              <$> _cljLabelingJobAlgorithmsConfig,
            ("Tags" .=) <$> _cljTags,
            Just ("LabelingJobName" .= _cljLabelingJobName),
            Just
              ("LabelAttributeName" .= _cljLabelAttributeName),
            Just ("InputConfig" .= _cljInputConfig),
            Just ("OutputConfig" .= _cljOutputConfig),
            Just ("RoleArn" .= _cljRoleARN),
            Just ("HumanTaskConfig" .= _cljHumanTaskConfig)
          ]
      )

instance ToPath CreateLabelingJob where
  toPath = const "/"

instance ToQuery CreateLabelingJob where
  toQuery = const mempty

-- | /See:/ 'createLabelingJobResponse' smart constructor.
data CreateLabelingJobResponse = CreateLabelingJobResponse'
  { _cljrrsResponseStatus ::
      !Int,
    _cljrrsLabelingJobARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateLabelingJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cljrrsResponseStatus' - -- | The response status code.
--
-- * 'cljrrsLabelingJobARN' - The Amazon Resource Name (ARN) of the labeling job. You use this ARN to identify the labeling job.
createLabelingJobResponse ::
  -- | 'cljrrsResponseStatus'
  Int ->
  -- | 'cljrrsLabelingJobARN'
  Text ->
  CreateLabelingJobResponse
createLabelingJobResponse
  pResponseStatus_
  pLabelingJobARN_ =
    CreateLabelingJobResponse'
      { _cljrrsResponseStatus =
          pResponseStatus_,
        _cljrrsLabelingJobARN = pLabelingJobARN_
      }

-- | -- | The response status code.
cljrrsResponseStatus :: Lens' CreateLabelingJobResponse Int
cljrrsResponseStatus = lens _cljrrsResponseStatus (\s a -> s {_cljrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the labeling job. You use this ARN to identify the labeling job.
cljrrsLabelingJobARN :: Lens' CreateLabelingJobResponse Text
cljrrsLabelingJobARN = lens _cljrrsLabelingJobARN (\s a -> s {_cljrrsLabelingJobARN = a})

instance NFData CreateLabelingJobResponse
