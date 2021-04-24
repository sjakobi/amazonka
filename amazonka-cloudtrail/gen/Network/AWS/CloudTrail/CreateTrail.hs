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
-- Module      : Network.AWS.CloudTrail.CreateTrail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket.
module Network.AWS.CloudTrail.CreateTrail
  ( -- * Creating a Request
    createTrail,
    CreateTrail,

    -- * Request Lenses
    ctIsOrganizationTrail,
    ctSNSTopicName,
    ctIncludeGlobalServiceEvents,
    ctKMSKeyId,
    ctS3KeyPrefix,
    ctCloudWatchLogsLogGroupARN,
    ctIsMultiRegionTrail,
    ctCloudWatchLogsRoleARN,
    ctTagsList,
    ctEnableLogFileValidation,
    ctName,
    ctS3BucketName,

    -- * Destructuring the Response
    createTrailResponse,
    CreateTrailResponse,

    -- * Response Lenses
    ctrrsTrailARN,
    ctrrsLogFileValidationEnabled,
    ctrrsIsOrganizationTrail,
    ctrrsSNSTopicName,
    ctrrsIncludeGlobalServiceEvents,
    ctrrsKMSKeyId,
    ctrrsS3KeyPrefix,
    ctrrsName,
    ctrrsCloudWatchLogsLogGroupARN,
    ctrrsIsMultiRegionTrail,
    ctrrsS3BucketName,
    ctrrsCloudWatchLogsRoleARN,
    ctrrsSNSTopicARN,
    ctrrsResponseStatus,
  )
where

import Network.AWS.CloudTrail.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Specifies the settings for each trail.
--
--
--
-- /See:/ 'createTrail' smart constructor.
data CreateTrail = CreateTrail'
  { _ctIsOrganizationTrail ::
      !(Maybe Bool),
    _ctSNSTopicName :: !(Maybe Text),
    _ctIncludeGlobalServiceEvents :: !(Maybe Bool),
    _ctKMSKeyId :: !(Maybe Text),
    _ctS3KeyPrefix :: !(Maybe Text),
    _ctCloudWatchLogsLogGroupARN :: !(Maybe Text),
    _ctIsMultiRegionTrail :: !(Maybe Bool),
    _ctCloudWatchLogsRoleARN :: !(Maybe Text),
    _ctTagsList :: !(Maybe [Tag]),
    _ctEnableLogFileValidation :: !(Maybe Bool),
    _ctName :: !Text,
    _ctS3BucketName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTrail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctIsOrganizationTrail' - Specifies whether the trail is created for all accounts in an organization in AWS Organizations, or only for the current AWS account. The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in AWS Organizations.
--
-- * 'ctSNSTopicName' - Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.
--
-- * 'ctIncludeGlobalServiceEvents' - Specifies whether the trail is publishing events from global services such as IAM to the log files.
--
-- * 'ctKMSKeyId' - Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier. Examples:     * alias/MyAliasName     * arn:aws:kms:us-east-2:123456789012:alias/MyAliasName     * arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012     * 12345678-1234-1234-1234-123456789012
--
-- * 'ctS3KeyPrefix' - Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files> . The maximum length is 200 characters.
--
-- * 'ctCloudWatchLogsLogGroupARN' - Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.
--
-- * 'ctIsMultiRegionTrail' - Specifies whether the trail is created in the current region or in all regions. The default is false, which creates a trail only in the region where you are signed in. As a best practice, consider creating trails that log events in all regions.
--
-- * 'ctCloudWatchLogsRoleARN' - Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
--
-- * 'ctTagsList' - Undocumented member.
--
-- * 'ctEnableLogFileValidation' - Specifies whether log file integrity validation is enabled. The default is false.
--
-- * 'ctName' - Specifies the name of the trail. The name must meet the following requirements:     * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)     * Start with a letter or number, and end with a letter or number     * Be between 3 and 128 characters     * Have no adjacent periods, underscores or dashes. Names like @my-_namespace@ and @my--namespace@ are invalid.     * Not be in IP address format (for example, 192.168.5.4)
--
-- * 'ctS3BucketName' - Specifies the name of the Amazon S3 bucket designated for publishing log files. See <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html Amazon S3 Bucket Naming Requirements> .
createTrail ::
  -- | 'ctName'
  Text ->
  -- | 'ctS3BucketName'
  Text ->
  CreateTrail
createTrail pName_ pS3BucketName_ =
  CreateTrail'
    { _ctIsOrganizationTrail = Nothing,
      _ctSNSTopicName = Nothing,
      _ctIncludeGlobalServiceEvents = Nothing,
      _ctKMSKeyId = Nothing,
      _ctS3KeyPrefix = Nothing,
      _ctCloudWatchLogsLogGroupARN = Nothing,
      _ctIsMultiRegionTrail = Nothing,
      _ctCloudWatchLogsRoleARN = Nothing,
      _ctTagsList = Nothing,
      _ctEnableLogFileValidation = Nothing,
      _ctName = pName_,
      _ctS3BucketName = pS3BucketName_
    }

-- | Specifies whether the trail is created for all accounts in an organization in AWS Organizations, or only for the current AWS account. The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in AWS Organizations.
ctIsOrganizationTrail :: Lens' CreateTrail (Maybe Bool)
ctIsOrganizationTrail = lens _ctIsOrganizationTrail (\s a -> s {_ctIsOrganizationTrail = a})

-- | Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.
ctSNSTopicName :: Lens' CreateTrail (Maybe Text)
ctSNSTopicName = lens _ctSNSTopicName (\s a -> s {_ctSNSTopicName = a})

-- | Specifies whether the trail is publishing events from global services such as IAM to the log files.
ctIncludeGlobalServiceEvents :: Lens' CreateTrail (Maybe Bool)
ctIncludeGlobalServiceEvents = lens _ctIncludeGlobalServiceEvents (\s a -> s {_ctIncludeGlobalServiceEvents = a})

-- | Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier. Examples:     * alias/MyAliasName     * arn:aws:kms:us-east-2:123456789012:alias/MyAliasName     * arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012     * 12345678-1234-1234-1234-123456789012
ctKMSKeyId :: Lens' CreateTrail (Maybe Text)
ctKMSKeyId = lens _ctKMSKeyId (\s a -> s {_ctKMSKeyId = a})

-- | Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files> . The maximum length is 200 characters.
ctS3KeyPrefix :: Lens' CreateTrail (Maybe Text)
ctS3KeyPrefix = lens _ctS3KeyPrefix (\s a -> s {_ctS3KeyPrefix = a})

-- | Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.
ctCloudWatchLogsLogGroupARN :: Lens' CreateTrail (Maybe Text)
ctCloudWatchLogsLogGroupARN = lens _ctCloudWatchLogsLogGroupARN (\s a -> s {_ctCloudWatchLogsLogGroupARN = a})

-- | Specifies whether the trail is created in the current region or in all regions. The default is false, which creates a trail only in the region where you are signed in. As a best practice, consider creating trails that log events in all regions.
ctIsMultiRegionTrail :: Lens' CreateTrail (Maybe Bool)
ctIsMultiRegionTrail = lens _ctIsMultiRegionTrail (\s a -> s {_ctIsMultiRegionTrail = a})

-- | Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
ctCloudWatchLogsRoleARN :: Lens' CreateTrail (Maybe Text)
ctCloudWatchLogsRoleARN = lens _ctCloudWatchLogsRoleARN (\s a -> s {_ctCloudWatchLogsRoleARN = a})

-- | Undocumented member.
ctTagsList :: Lens' CreateTrail [Tag]
ctTagsList = lens _ctTagsList (\s a -> s {_ctTagsList = a}) . _Default . _Coerce

-- | Specifies whether log file integrity validation is enabled. The default is false.
ctEnableLogFileValidation :: Lens' CreateTrail (Maybe Bool)
ctEnableLogFileValidation = lens _ctEnableLogFileValidation (\s a -> s {_ctEnableLogFileValidation = a})

-- | Specifies the name of the trail. The name must meet the following requirements:     * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)     * Start with a letter or number, and end with a letter or number     * Be between 3 and 128 characters     * Have no adjacent periods, underscores or dashes. Names like @my-_namespace@ and @my--namespace@ are invalid.     * Not be in IP address format (for example, 192.168.5.4)
ctName :: Lens' CreateTrail Text
ctName = lens _ctName (\s a -> s {_ctName = a})

-- | Specifies the name of the Amazon S3 bucket designated for publishing log files. See <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html Amazon S3 Bucket Naming Requirements> .
ctS3BucketName :: Lens' CreateTrail Text
ctS3BucketName = lens _ctS3BucketName (\s a -> s {_ctS3BucketName = a})

instance AWSRequest CreateTrail where
  type Rs CreateTrail = CreateTrailResponse
  request = postJSON cloudTrail
  response =
    receiveJSON
      ( \s h x ->
          CreateTrailResponse'
            <$> (x .?> "TrailARN")
            <*> (x .?> "LogFileValidationEnabled")
            <*> (x .?> "IsOrganizationTrail")
            <*> (x .?> "SnsTopicName")
            <*> (x .?> "IncludeGlobalServiceEvents")
            <*> (x .?> "KmsKeyId")
            <*> (x .?> "S3KeyPrefix")
            <*> (x .?> "Name")
            <*> (x .?> "CloudWatchLogsLogGroupArn")
            <*> (x .?> "IsMultiRegionTrail")
            <*> (x .?> "S3BucketName")
            <*> (x .?> "CloudWatchLogsRoleArn")
            <*> (x .?> "SnsTopicARN")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateTrail

instance NFData CreateTrail

instance ToHeaders CreateTrail where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.CreateTrail" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateTrail where
  toJSON CreateTrail' {..} =
    object
      ( catMaybes
          [ ("IsOrganizationTrail" .=)
              <$> _ctIsOrganizationTrail,
            ("SnsTopicName" .=) <$> _ctSNSTopicName,
            ("IncludeGlobalServiceEvents" .=)
              <$> _ctIncludeGlobalServiceEvents,
            ("KmsKeyId" .=) <$> _ctKMSKeyId,
            ("S3KeyPrefix" .=) <$> _ctS3KeyPrefix,
            ("CloudWatchLogsLogGroupArn" .=)
              <$> _ctCloudWatchLogsLogGroupARN,
            ("IsMultiRegionTrail" .=) <$> _ctIsMultiRegionTrail,
            ("CloudWatchLogsRoleArn" .=)
              <$> _ctCloudWatchLogsRoleARN,
            ("TagsList" .=) <$> _ctTagsList,
            ("EnableLogFileValidation" .=)
              <$> _ctEnableLogFileValidation,
            Just ("Name" .= _ctName),
            Just ("S3BucketName" .= _ctS3BucketName)
          ]
      )

instance ToPath CreateTrail where
  toPath = const "/"

instance ToQuery CreateTrail where
  toQuery = const mempty

-- | Returns the objects or data listed below if successful. Otherwise, returns an error.
--
--
--
-- /See:/ 'createTrailResponse' smart constructor.
data CreateTrailResponse = CreateTrailResponse'
  { _ctrrsTrailARN ::
      !(Maybe Text),
    _ctrrsLogFileValidationEnabled ::
      !(Maybe Bool),
    _ctrrsIsOrganizationTrail ::
      !(Maybe Bool),
    _ctrrsSNSTopicName ::
      !(Maybe Text),
    _ctrrsIncludeGlobalServiceEvents ::
      !(Maybe Bool),
    _ctrrsKMSKeyId :: !(Maybe Text),
    _ctrrsS3KeyPrefix ::
      !(Maybe Text),
    _ctrrsName :: !(Maybe Text),
    _ctrrsCloudWatchLogsLogGroupARN ::
      !(Maybe Text),
    _ctrrsIsMultiRegionTrail ::
      !(Maybe Bool),
    _ctrrsS3BucketName ::
      !(Maybe Text),
    _ctrrsCloudWatchLogsRoleARN ::
      !(Maybe Text),
    _ctrrsSNSTopicARN ::
      !(Maybe Text),
    _ctrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTrailResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrrsTrailARN' - Specifies the ARN of the trail that was created. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
--
-- * 'ctrrsLogFileValidationEnabled' - Specifies whether log file integrity validation is enabled.
--
-- * 'ctrrsIsOrganizationTrail' - Specifies whether the trail is an organization trail.
--
-- * 'ctrrsSNSTopicName' - This field is no longer in use. Use SnsTopicARN.
--
-- * 'ctrrsIncludeGlobalServiceEvents' - Specifies whether the trail is publishing events from global services such as IAM to the log files.
--
-- * 'ctrrsKMSKeyId' - Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format: @arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012@
--
-- * 'ctrrsS3KeyPrefix' - Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files> .
--
-- * 'ctrrsName' - Specifies the name of the trail.
--
-- * 'ctrrsCloudWatchLogsLogGroupARN' - Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.
--
-- * 'ctrrsIsMultiRegionTrail' - Specifies whether the trail exists in one region or in all regions.
--
-- * 'ctrrsS3BucketName' - Specifies the name of the Amazon S3 bucket designated for publishing log files.
--
-- * 'ctrrsCloudWatchLogsRoleARN' - Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
--
-- * 'ctrrsSNSTopicARN' - Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is: @arn:aws:sns:us-east-2:123456789012:MyTopic@
--
-- * 'ctrrsResponseStatus' - -- | The response status code.
createTrailResponse ::
  -- | 'ctrrsResponseStatus'
  Int ->
  CreateTrailResponse
createTrailResponse pResponseStatus_ =
  CreateTrailResponse'
    { _ctrrsTrailARN = Nothing,
      _ctrrsLogFileValidationEnabled = Nothing,
      _ctrrsIsOrganizationTrail = Nothing,
      _ctrrsSNSTopicName = Nothing,
      _ctrrsIncludeGlobalServiceEvents = Nothing,
      _ctrrsKMSKeyId = Nothing,
      _ctrrsS3KeyPrefix = Nothing,
      _ctrrsName = Nothing,
      _ctrrsCloudWatchLogsLogGroupARN = Nothing,
      _ctrrsIsMultiRegionTrail = Nothing,
      _ctrrsS3BucketName = Nothing,
      _ctrrsCloudWatchLogsRoleARN = Nothing,
      _ctrrsSNSTopicARN = Nothing,
      _ctrrsResponseStatus = pResponseStatus_
    }

-- | Specifies the ARN of the trail that was created. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
ctrrsTrailARN :: Lens' CreateTrailResponse (Maybe Text)
ctrrsTrailARN = lens _ctrrsTrailARN (\s a -> s {_ctrrsTrailARN = a})

-- | Specifies whether log file integrity validation is enabled.
ctrrsLogFileValidationEnabled :: Lens' CreateTrailResponse (Maybe Bool)
ctrrsLogFileValidationEnabled = lens _ctrrsLogFileValidationEnabled (\s a -> s {_ctrrsLogFileValidationEnabled = a})

-- | Specifies whether the trail is an organization trail.
ctrrsIsOrganizationTrail :: Lens' CreateTrailResponse (Maybe Bool)
ctrrsIsOrganizationTrail = lens _ctrrsIsOrganizationTrail (\s a -> s {_ctrrsIsOrganizationTrail = a})

-- | This field is no longer in use. Use SnsTopicARN.
ctrrsSNSTopicName :: Lens' CreateTrailResponse (Maybe Text)
ctrrsSNSTopicName = lens _ctrrsSNSTopicName (\s a -> s {_ctrrsSNSTopicName = a})

-- | Specifies whether the trail is publishing events from global services such as IAM to the log files.
ctrrsIncludeGlobalServiceEvents :: Lens' CreateTrailResponse (Maybe Bool)
ctrrsIncludeGlobalServiceEvents = lens _ctrrsIncludeGlobalServiceEvents (\s a -> s {_ctrrsIncludeGlobalServiceEvents = a})

-- | Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format: @arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012@
ctrrsKMSKeyId :: Lens' CreateTrailResponse (Maybe Text)
ctrrsKMSKeyId = lens _ctrrsKMSKeyId (\s a -> s {_ctrrsKMSKeyId = a})

-- | Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files> .
ctrrsS3KeyPrefix :: Lens' CreateTrailResponse (Maybe Text)
ctrrsS3KeyPrefix = lens _ctrrsS3KeyPrefix (\s a -> s {_ctrrsS3KeyPrefix = a})

-- | Specifies the name of the trail.
ctrrsName :: Lens' CreateTrailResponse (Maybe Text)
ctrrsName = lens _ctrrsName (\s a -> s {_ctrrsName = a})

-- | Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.
ctrrsCloudWatchLogsLogGroupARN :: Lens' CreateTrailResponse (Maybe Text)
ctrrsCloudWatchLogsLogGroupARN = lens _ctrrsCloudWatchLogsLogGroupARN (\s a -> s {_ctrrsCloudWatchLogsLogGroupARN = a})

-- | Specifies whether the trail exists in one region or in all regions.
ctrrsIsMultiRegionTrail :: Lens' CreateTrailResponse (Maybe Bool)
ctrrsIsMultiRegionTrail = lens _ctrrsIsMultiRegionTrail (\s a -> s {_ctrrsIsMultiRegionTrail = a})

-- | Specifies the name of the Amazon S3 bucket designated for publishing log files.
ctrrsS3BucketName :: Lens' CreateTrailResponse (Maybe Text)
ctrrsS3BucketName = lens _ctrrsS3BucketName (\s a -> s {_ctrrsS3BucketName = a})

-- | Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
ctrrsCloudWatchLogsRoleARN :: Lens' CreateTrailResponse (Maybe Text)
ctrrsCloudWatchLogsRoleARN = lens _ctrrsCloudWatchLogsRoleARN (\s a -> s {_ctrrsCloudWatchLogsRoleARN = a})

-- | Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is: @arn:aws:sns:us-east-2:123456789012:MyTopic@
ctrrsSNSTopicARN :: Lens' CreateTrailResponse (Maybe Text)
ctrrsSNSTopicARN = lens _ctrrsSNSTopicARN (\s a -> s {_ctrrsSNSTopicARN = a})

-- | -- | The response status code.
ctrrsResponseStatus :: Lens' CreateTrailResponse Int
ctrrsResponseStatus = lens _ctrrsResponseStatus (\s a -> s {_ctrrsResponseStatus = a})

instance NFData CreateTrailResponse
