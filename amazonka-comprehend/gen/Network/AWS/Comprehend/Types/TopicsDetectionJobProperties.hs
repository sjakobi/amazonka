{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.TopicsDetectionJobProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.TopicsDetectionJobProperties where

import Network.AWS.Comprehend.Types.InputDataConfig
import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Comprehend.Types.OutputDataConfig
import Network.AWS.Comprehend.Types.VPCConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about a topic detection job.
--
--
--
-- /See:/ 'topicsDetectionJobProperties' smart constructor.
data TopicsDetectionJobProperties = TopicsDetectionJobProperties'
  { _tdjpVPCConfig ::
      !( Maybe
           VPCConfig
       ),
    _tdjpInputDataConfig ::
      !( Maybe
           InputDataConfig
       ),
    _tdjpMessage ::
      !(Maybe Text),
    _tdjpJobStatus ::
      !( Maybe
           JobStatus
       ),
    _tdjpOutputDataConfig ::
      !( Maybe
           OutputDataConfig
       ),
    _tdjpEndTime ::
      !( Maybe
           POSIX
       ),
    _tdjpVolumeKMSKeyId ::
      !(Maybe Text),
    _tdjpSubmitTime ::
      !( Maybe
           POSIX
       ),
    _tdjpNumberOfTopics ::
      !(Maybe Int),
    _tdjpJobName ::
      !(Maybe Text),
    _tdjpDataAccessRoleARN ::
      !(Maybe Text),
    _tdjpJobId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TopicsDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdjpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your topic detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'tdjpInputDataConfig' - The input data configuration supplied when you created the topic detection job.
--
-- * 'tdjpMessage' - A description for the status of a job.
--
-- * 'tdjpJobStatus' - The current status of the topic detection job. If the status is @Failed@ , the reason for the failure is shown in the @Message@ field.
--
-- * 'tdjpOutputDataConfig' - The output data configuration supplied when you created the topic detection job.
--
-- * 'tdjpEndTime' - The time that the topic detection job was completed.
--
-- * 'tdjpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'tdjpSubmitTime' - The time that the topic detection job was submitted for processing.
--
-- * 'tdjpNumberOfTopics' - The number of topics to detect supplied when you created the topic detection job. The default is 10.
--
-- * 'tdjpJobName' - The name of the topic detection job.
--
-- * 'tdjpDataAccessRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants Amazon Comprehend read access to your job data.
--
-- * 'tdjpJobId' - The identifier assigned to the topic detection job.
topicsDetectionJobProperties ::
  TopicsDetectionJobProperties
topicsDetectionJobProperties =
  TopicsDetectionJobProperties'
    { _tdjpVPCConfig =
        Nothing,
      _tdjpInputDataConfig = Nothing,
      _tdjpMessage = Nothing,
      _tdjpJobStatus = Nothing,
      _tdjpOutputDataConfig = Nothing,
      _tdjpEndTime = Nothing,
      _tdjpVolumeKMSKeyId = Nothing,
      _tdjpSubmitTime = Nothing,
      _tdjpNumberOfTopics = Nothing,
      _tdjpJobName = Nothing,
      _tdjpDataAccessRoleARN = Nothing,
      _tdjpJobId = Nothing
    }

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your topic detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
tdjpVPCConfig :: Lens' TopicsDetectionJobProperties (Maybe VPCConfig)
tdjpVPCConfig = lens _tdjpVPCConfig (\s a -> s {_tdjpVPCConfig = a})

-- | The input data configuration supplied when you created the topic detection job.
tdjpInputDataConfig :: Lens' TopicsDetectionJobProperties (Maybe InputDataConfig)
tdjpInputDataConfig = lens _tdjpInputDataConfig (\s a -> s {_tdjpInputDataConfig = a})

-- | A description for the status of a job.
tdjpMessage :: Lens' TopicsDetectionJobProperties (Maybe Text)
tdjpMessage = lens _tdjpMessage (\s a -> s {_tdjpMessage = a})

-- | The current status of the topic detection job. If the status is @Failed@ , the reason for the failure is shown in the @Message@ field.
tdjpJobStatus :: Lens' TopicsDetectionJobProperties (Maybe JobStatus)
tdjpJobStatus = lens _tdjpJobStatus (\s a -> s {_tdjpJobStatus = a})

-- | The output data configuration supplied when you created the topic detection job.
tdjpOutputDataConfig :: Lens' TopicsDetectionJobProperties (Maybe OutputDataConfig)
tdjpOutputDataConfig = lens _tdjpOutputDataConfig (\s a -> s {_tdjpOutputDataConfig = a})

-- | The time that the topic detection job was completed.
tdjpEndTime :: Lens' TopicsDetectionJobProperties (Maybe UTCTime)
tdjpEndTime = lens _tdjpEndTime (\s a -> s {_tdjpEndTime = a}) . mapping _Time

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
tdjpVolumeKMSKeyId :: Lens' TopicsDetectionJobProperties (Maybe Text)
tdjpVolumeKMSKeyId = lens _tdjpVolumeKMSKeyId (\s a -> s {_tdjpVolumeKMSKeyId = a})

-- | The time that the topic detection job was submitted for processing.
tdjpSubmitTime :: Lens' TopicsDetectionJobProperties (Maybe UTCTime)
tdjpSubmitTime = lens _tdjpSubmitTime (\s a -> s {_tdjpSubmitTime = a}) . mapping _Time

-- | The number of topics to detect supplied when you created the topic detection job. The default is 10.
tdjpNumberOfTopics :: Lens' TopicsDetectionJobProperties (Maybe Int)
tdjpNumberOfTopics = lens _tdjpNumberOfTopics (\s a -> s {_tdjpNumberOfTopics = a})

-- | The name of the topic detection job.
tdjpJobName :: Lens' TopicsDetectionJobProperties (Maybe Text)
tdjpJobName = lens _tdjpJobName (\s a -> s {_tdjpJobName = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants Amazon Comprehend read access to your job data.
tdjpDataAccessRoleARN :: Lens' TopicsDetectionJobProperties (Maybe Text)
tdjpDataAccessRoleARN = lens _tdjpDataAccessRoleARN (\s a -> s {_tdjpDataAccessRoleARN = a})

-- | The identifier assigned to the topic detection job.
tdjpJobId :: Lens' TopicsDetectionJobProperties (Maybe Text)
tdjpJobId = lens _tdjpJobId (\s a -> s {_tdjpJobId = a})

instance FromJSON TopicsDetectionJobProperties where
  parseJSON =
    withObject
      "TopicsDetectionJobProperties"
      ( \x ->
          TopicsDetectionJobProperties'
            <$> (x .:? "VpcConfig")
            <*> (x .:? "InputDataConfig")
            <*> (x .:? "Message")
            <*> (x .:? "JobStatus")
            <*> (x .:? "OutputDataConfig")
            <*> (x .:? "EndTime")
            <*> (x .:? "VolumeKmsKeyId")
            <*> (x .:? "SubmitTime")
            <*> (x .:? "NumberOfTopics")
            <*> (x .:? "JobName")
            <*> (x .:? "DataAccessRoleArn")
            <*> (x .:? "JobId")
      )

instance Hashable TopicsDetectionJobProperties

instance NFData TopicsDetectionJobProperties
