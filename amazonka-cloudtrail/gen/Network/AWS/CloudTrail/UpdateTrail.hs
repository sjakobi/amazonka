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
-- Module      : Network.AWS.CloudTrail.UpdateTrail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. @UpdateTrail@ must be called from the region in which the trail was created; otherwise, an @InvalidHomeRegionException@ is thrown.
module Network.AWS.CloudTrail.UpdateTrail
  ( -- * Creating a Request
    updateTrail,
    UpdateTrail,

    -- * Request Lenses
    utIsOrganizationTrail,
    utSNSTopicName,
    utIncludeGlobalServiceEvents,
    utKMSKeyId,
    utS3KeyPrefix,
    utCloudWatchLogsLogGroupARN,
    utIsMultiRegionTrail,
    utS3BucketName,
    utCloudWatchLogsRoleARN,
    utEnableLogFileValidation,
    utName,

    -- * Destructuring the Response
    updateTrailResponse,
    UpdateTrailResponse,

    -- * Response Lenses
    utrrsTrailARN,
    utrrsLogFileValidationEnabled,
    utrrsIsOrganizationTrail,
    utrrsSNSTopicName,
    utrrsIncludeGlobalServiceEvents,
    utrrsKMSKeyId,
    utrrsS3KeyPrefix,
    utrrsName,
    utrrsCloudWatchLogsLogGroupARN,
    utrrsIsMultiRegionTrail,
    utrrsS3BucketName,
    utrrsCloudWatchLogsRoleARN,
    utrrsSNSTopicARN,
    utrrsResponseStatus,
  )
where

import Network.AWS.CloudTrail.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Specifies settings to update for the trail.
--
--
--
-- /See:/ 'updateTrail' smart constructor.
data UpdateTrail = UpdateTrail'
  { _utIsOrganizationTrail ::
      !(Maybe Bool),
    _utSNSTopicName :: !(Maybe Text),
    _utIncludeGlobalServiceEvents :: !(Maybe Bool),
    _utKMSKeyId :: !(Maybe Text),
    _utS3KeyPrefix :: !(Maybe Text),
    _utCloudWatchLogsLogGroupARN :: !(Maybe Text),
    _utIsMultiRegionTrail :: !(Maybe Bool),
    _utS3BucketName :: !(Maybe Text),
    _utCloudWatchLogsRoleARN :: !(Maybe Text),
    _utEnableLogFileValidation :: !(Maybe Bool),
    _utName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTrail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utIsOrganizationTrail' - Specifies whether the trail is applied to all accounts in an organization in AWS Organizations, or only for the current AWS account. The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in AWS Organizations. If the trail is not an organization trail and this is set to true, the trail will be created in all AWS accounts that belong to the organization. If the trail is an organization trail and this is set to false, the trail will remain in the current AWS account but be deleted from all member accounts in the organization.
--
-- * 'utSNSTopicName' - Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.
--
-- * 'utIncludeGlobalServiceEvents' - Specifies whether the trail is publishing events from global services such as IAM to the log files.
--
-- * 'utKMSKeyId' - Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier. Examples:     * alias/MyAliasName     * arn:aws:kms:us-east-2:123456789012:alias/MyAliasName     * arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012     * 12345678-1234-1234-1234-123456789012
--
-- * 'utS3KeyPrefix' - Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files> . The maximum length is 200 characters.
--
-- * 'utCloudWatchLogsLogGroupARN' - Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.
--
-- * 'utIsMultiRegionTrail' - Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region where it was created, and its shadow trails in other regions will be deleted. As a best practice, consider using trails that log events in all regions.
--
-- * 'utS3BucketName' - Specifies the name of the Amazon S3 bucket designated for publishing log files. See <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html Amazon S3 Bucket Naming Requirements> .
--
-- * 'utCloudWatchLogsRoleARN' - Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
--
-- * 'utEnableLogFileValidation' - Specifies whether log file validation is enabled. The default is false.
--
-- * 'utName' - Specifies the name of the trail or trail ARN. If @Name@ is a trail name, the string must meet the following requirements:     * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)     * Start with a letter or number, and end with a letter or number     * Be between 3 and 128 characters     * Have no adjacent periods, underscores or dashes. Names like @my-_namespace@ and @my--namespace@ are invalid.     * Not be in IP address format (for example, 192.168.5.4) If @Name@ is a trail ARN, it must be in the format: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
updateTrail ::
  -- | 'utName'
  Text ->
  UpdateTrail
updateTrail pName_ =
  UpdateTrail'
    { _utIsOrganizationTrail = Nothing,
      _utSNSTopicName = Nothing,
      _utIncludeGlobalServiceEvents = Nothing,
      _utKMSKeyId = Nothing,
      _utS3KeyPrefix = Nothing,
      _utCloudWatchLogsLogGroupARN = Nothing,
      _utIsMultiRegionTrail = Nothing,
      _utS3BucketName = Nothing,
      _utCloudWatchLogsRoleARN = Nothing,
      _utEnableLogFileValidation = Nothing,
      _utName = pName_
    }

-- | Specifies whether the trail is applied to all accounts in an organization in AWS Organizations, or only for the current AWS account. The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in AWS Organizations. If the trail is not an organization trail and this is set to true, the trail will be created in all AWS accounts that belong to the organization. If the trail is an organization trail and this is set to false, the trail will remain in the current AWS account but be deleted from all member accounts in the organization.
utIsOrganizationTrail :: Lens' UpdateTrail (Maybe Bool)
utIsOrganizationTrail = lens _utIsOrganizationTrail (\s a -> s {_utIsOrganizationTrail = a})

-- | Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.
utSNSTopicName :: Lens' UpdateTrail (Maybe Text)
utSNSTopicName = lens _utSNSTopicName (\s a -> s {_utSNSTopicName = a})

-- | Specifies whether the trail is publishing events from global services such as IAM to the log files.
utIncludeGlobalServiceEvents :: Lens' UpdateTrail (Maybe Bool)
utIncludeGlobalServiceEvents = lens _utIncludeGlobalServiceEvents (\s a -> s {_utIncludeGlobalServiceEvents = a})

-- | Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier. Examples:     * alias/MyAliasName     * arn:aws:kms:us-east-2:123456789012:alias/MyAliasName     * arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012     * 12345678-1234-1234-1234-123456789012
utKMSKeyId :: Lens' UpdateTrail (Maybe Text)
utKMSKeyId = lens _utKMSKeyId (\s a -> s {_utKMSKeyId = a})

-- | Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files> . The maximum length is 200 characters.
utS3KeyPrefix :: Lens' UpdateTrail (Maybe Text)
utS3KeyPrefix = lens _utS3KeyPrefix (\s a -> s {_utS3KeyPrefix = a})

-- | Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.
utCloudWatchLogsLogGroupARN :: Lens' UpdateTrail (Maybe Text)
utCloudWatchLogsLogGroupARN = lens _utCloudWatchLogsLogGroupARN (\s a -> s {_utCloudWatchLogsLogGroupARN = a})

-- | Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region where it was created, and its shadow trails in other regions will be deleted. As a best practice, consider using trails that log events in all regions.
utIsMultiRegionTrail :: Lens' UpdateTrail (Maybe Bool)
utIsMultiRegionTrail = lens _utIsMultiRegionTrail (\s a -> s {_utIsMultiRegionTrail = a})

-- | Specifies the name of the Amazon S3 bucket designated for publishing log files. See <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html Amazon S3 Bucket Naming Requirements> .
utS3BucketName :: Lens' UpdateTrail (Maybe Text)
utS3BucketName = lens _utS3BucketName (\s a -> s {_utS3BucketName = a})

-- | Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
utCloudWatchLogsRoleARN :: Lens' UpdateTrail (Maybe Text)
utCloudWatchLogsRoleARN = lens _utCloudWatchLogsRoleARN (\s a -> s {_utCloudWatchLogsRoleARN = a})

-- | Specifies whether log file validation is enabled. The default is false.
utEnableLogFileValidation :: Lens' UpdateTrail (Maybe Bool)
utEnableLogFileValidation = lens _utEnableLogFileValidation (\s a -> s {_utEnableLogFileValidation = a})

-- | Specifies the name of the trail or trail ARN. If @Name@ is a trail name, the string must meet the following requirements:     * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)     * Start with a letter or number, and end with a letter or number     * Be between 3 and 128 characters     * Have no adjacent periods, underscores or dashes. Names like @my-_namespace@ and @my--namespace@ are invalid.     * Not be in IP address format (for example, 192.168.5.4) If @Name@ is a trail ARN, it must be in the format: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
utName :: Lens' UpdateTrail Text
utName = lens _utName (\s a -> s {_utName = a})

instance AWSRequest UpdateTrail where
  type Rs UpdateTrail = UpdateTrailResponse
  request = postJSON cloudTrail
  response =
    receiveJSON
      ( \s h x ->
          UpdateTrailResponse'
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

instance Hashable UpdateTrail

instance NFData UpdateTrail

instance ToHeaders UpdateTrail where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.UpdateTrail" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateTrail where
  toJSON UpdateTrail' {..} =
    object
      ( catMaybes
          [ ("IsOrganizationTrail" .=)
              <$> _utIsOrganizationTrail,
            ("SnsTopicName" .=) <$> _utSNSTopicName,
            ("IncludeGlobalServiceEvents" .=)
              <$> _utIncludeGlobalServiceEvents,
            ("KmsKeyId" .=) <$> _utKMSKeyId,
            ("S3KeyPrefix" .=) <$> _utS3KeyPrefix,
            ("CloudWatchLogsLogGroupArn" .=)
              <$> _utCloudWatchLogsLogGroupARN,
            ("IsMultiRegionTrail" .=) <$> _utIsMultiRegionTrail,
            ("S3BucketName" .=) <$> _utS3BucketName,
            ("CloudWatchLogsRoleArn" .=)
              <$> _utCloudWatchLogsRoleARN,
            ("EnableLogFileValidation" .=)
              <$> _utEnableLogFileValidation,
            Just ("Name" .= _utName)
          ]
      )

instance ToPath UpdateTrail where
  toPath = const "/"

instance ToQuery UpdateTrail where
  toQuery = const mempty

-- | Returns the objects or data listed below if successful. Otherwise, returns an error.
--
--
--
-- /See:/ 'updateTrailResponse' smart constructor.
data UpdateTrailResponse = UpdateTrailResponse'
  { _utrrsTrailARN ::
      !(Maybe Text),
    _utrrsLogFileValidationEnabled ::
      !(Maybe Bool),
    _utrrsIsOrganizationTrail ::
      !(Maybe Bool),
    _utrrsSNSTopicName ::
      !(Maybe Text),
    _utrrsIncludeGlobalServiceEvents ::
      !(Maybe Bool),
    _utrrsKMSKeyId :: !(Maybe Text),
    _utrrsS3KeyPrefix ::
      !(Maybe Text),
    _utrrsName :: !(Maybe Text),
    _utrrsCloudWatchLogsLogGroupARN ::
      !(Maybe Text),
    _utrrsIsMultiRegionTrail ::
      !(Maybe Bool),
    _utrrsS3BucketName ::
      !(Maybe Text),
    _utrrsCloudWatchLogsRoleARN ::
      !(Maybe Text),
    _utrrsSNSTopicARN ::
      !(Maybe Text),
    _utrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTrailResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utrrsTrailARN' - Specifies the ARN of the trail that was updated. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
--
-- * 'utrrsLogFileValidationEnabled' - Specifies whether log file integrity validation is enabled.
--
-- * 'utrrsIsOrganizationTrail' - Specifies whether the trail is an organization trail.
--
-- * 'utrrsSNSTopicName' - This field is no longer in use. Use SnsTopicARN.
--
-- * 'utrrsIncludeGlobalServiceEvents' - Specifies whether the trail is publishing events from global services such as IAM to the log files.
--
-- * 'utrrsKMSKeyId' - Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format: @arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012@
--
-- * 'utrrsS3KeyPrefix' - Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files> .
--
-- * 'utrrsName' - Specifies the name of the trail.
--
-- * 'utrrsCloudWatchLogsLogGroupARN' - Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.
--
-- * 'utrrsIsMultiRegionTrail' - Specifies whether the trail exists in one region or in all regions.
--
-- * 'utrrsS3BucketName' - Specifies the name of the Amazon S3 bucket designated for publishing log files.
--
-- * 'utrrsCloudWatchLogsRoleARN' - Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
--
-- * 'utrrsSNSTopicARN' - Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is: @arn:aws:sns:us-east-2:123456789012:MyTopic@
--
-- * 'utrrsResponseStatus' - -- | The response status code.
updateTrailResponse ::
  -- | 'utrrsResponseStatus'
  Int ->
  UpdateTrailResponse
updateTrailResponse pResponseStatus_ =
  UpdateTrailResponse'
    { _utrrsTrailARN = Nothing,
      _utrrsLogFileValidationEnabled = Nothing,
      _utrrsIsOrganizationTrail = Nothing,
      _utrrsSNSTopicName = Nothing,
      _utrrsIncludeGlobalServiceEvents = Nothing,
      _utrrsKMSKeyId = Nothing,
      _utrrsS3KeyPrefix = Nothing,
      _utrrsName = Nothing,
      _utrrsCloudWatchLogsLogGroupARN = Nothing,
      _utrrsIsMultiRegionTrail = Nothing,
      _utrrsS3BucketName = Nothing,
      _utrrsCloudWatchLogsRoleARN = Nothing,
      _utrrsSNSTopicARN = Nothing,
      _utrrsResponseStatus = pResponseStatus_
    }

-- | Specifies the ARN of the trail that was updated. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
utrrsTrailARN :: Lens' UpdateTrailResponse (Maybe Text)
utrrsTrailARN = lens _utrrsTrailARN (\s a -> s {_utrrsTrailARN = a})

-- | Specifies whether log file integrity validation is enabled.
utrrsLogFileValidationEnabled :: Lens' UpdateTrailResponse (Maybe Bool)
utrrsLogFileValidationEnabled = lens _utrrsLogFileValidationEnabled (\s a -> s {_utrrsLogFileValidationEnabled = a})

-- | Specifies whether the trail is an organization trail.
utrrsIsOrganizationTrail :: Lens' UpdateTrailResponse (Maybe Bool)
utrrsIsOrganizationTrail = lens _utrrsIsOrganizationTrail (\s a -> s {_utrrsIsOrganizationTrail = a})

-- | This field is no longer in use. Use SnsTopicARN.
utrrsSNSTopicName :: Lens' UpdateTrailResponse (Maybe Text)
utrrsSNSTopicName = lens _utrrsSNSTopicName (\s a -> s {_utrrsSNSTopicName = a})

-- | Specifies whether the trail is publishing events from global services such as IAM to the log files.
utrrsIncludeGlobalServiceEvents :: Lens' UpdateTrailResponse (Maybe Bool)
utrrsIncludeGlobalServiceEvents = lens _utrrsIncludeGlobalServiceEvents (\s a -> s {_utrrsIncludeGlobalServiceEvents = a})

-- | Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format: @arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012@
utrrsKMSKeyId :: Lens' UpdateTrailResponse (Maybe Text)
utrrsKMSKeyId = lens _utrrsKMSKeyId (\s a -> s {_utrrsKMSKeyId = a})

-- | Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files> .
utrrsS3KeyPrefix :: Lens' UpdateTrailResponse (Maybe Text)
utrrsS3KeyPrefix = lens _utrrsS3KeyPrefix (\s a -> s {_utrrsS3KeyPrefix = a})

-- | Specifies the name of the trail.
utrrsName :: Lens' UpdateTrailResponse (Maybe Text)
utrrsName = lens _utrrsName (\s a -> s {_utrrsName = a})

-- | Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.
utrrsCloudWatchLogsLogGroupARN :: Lens' UpdateTrailResponse (Maybe Text)
utrrsCloudWatchLogsLogGroupARN = lens _utrrsCloudWatchLogsLogGroupARN (\s a -> s {_utrrsCloudWatchLogsLogGroupARN = a})

-- | Specifies whether the trail exists in one region or in all regions.
utrrsIsMultiRegionTrail :: Lens' UpdateTrailResponse (Maybe Bool)
utrrsIsMultiRegionTrail = lens _utrrsIsMultiRegionTrail (\s a -> s {_utrrsIsMultiRegionTrail = a})

-- | Specifies the name of the Amazon S3 bucket designated for publishing log files.
utrrsS3BucketName :: Lens' UpdateTrailResponse (Maybe Text)
utrrsS3BucketName = lens _utrrsS3BucketName (\s a -> s {_utrrsS3BucketName = a})

-- | Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
utrrsCloudWatchLogsRoleARN :: Lens' UpdateTrailResponse (Maybe Text)
utrrsCloudWatchLogsRoleARN = lens _utrrsCloudWatchLogsRoleARN (\s a -> s {_utrrsCloudWatchLogsRoleARN = a})

-- | Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is: @arn:aws:sns:us-east-2:123456789012:MyTopic@
utrrsSNSTopicARN :: Lens' UpdateTrailResponse (Maybe Text)
utrrsSNSTopicARN = lens _utrrsSNSTopicARN (\s a -> s {_utrrsSNSTopicARN = a})

-- | -- | The response status code.
utrrsResponseStatus :: Lens' UpdateTrailResponse Int
utrrsResponseStatus = lens _utrrsResponseStatus (\s a -> s {_utrrsResponseStatus = a})

instance NFData UpdateTrailResponse
