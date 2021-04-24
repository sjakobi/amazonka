{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.DominantLanguageDetectionJobProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.DominantLanguageDetectionJobProperties where

import Network.AWS.Comprehend.Types.InputDataConfig
import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Comprehend.Types.OutputDataConfig
import Network.AWS.Comprehend.Types.VPCConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about a dominant language detection job.
--
--
--
-- /See:/ 'dominantLanguageDetectionJobProperties' smart constructor.
data DominantLanguageDetectionJobProperties = DominantLanguageDetectionJobProperties'
  { _dldjpVPCConfig ::
      !( Maybe
           VPCConfig
       ),
    _dldjpInputDataConfig ::
      !( Maybe
           InputDataConfig
       ),
    _dldjpMessage ::
      !( Maybe
           Text
       ),
    _dldjpJobStatus ::
      !( Maybe
           JobStatus
       ),
    _dldjpOutputDataConfig ::
      !( Maybe
           OutputDataConfig
       ),
    _dldjpEndTime ::
      !( Maybe
           POSIX
       ),
    _dldjpVolumeKMSKeyId ::
      !( Maybe
           Text
       ),
    _dldjpSubmitTime ::
      !( Maybe
           POSIX
       ),
    _dldjpJobName ::
      !( Maybe
           Text
       ),
    _dldjpDataAccessRoleARN ::
      !( Maybe
           Text
       ),
    _dldjpJobId ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DominantLanguageDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dldjpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your dominant language detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'dldjpInputDataConfig' - The input data configuration that you supplied when you created the dominant language detection job.
--
-- * 'dldjpMessage' - A description for the status of a job.
--
-- * 'dldjpJobStatus' - The current status of the dominant language detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
--
-- * 'dldjpOutputDataConfig' - The output data configuration that you supplied when you created the dominant language detection job.
--
-- * 'dldjpEndTime' - The time that the dominant language detection job completed.
--
-- * 'dldjpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'dldjpSubmitTime' - The time that the dominant language detection job was submitted for processing.
--
-- * 'dldjpJobName' - The name that you assigned to the dominant language detection job.
--
-- * 'dldjpDataAccessRoleARN' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
--
-- * 'dldjpJobId' - The identifier assigned to the dominant language detection job.
dominantLanguageDetectionJobProperties ::
  DominantLanguageDetectionJobProperties
dominantLanguageDetectionJobProperties =
  DominantLanguageDetectionJobProperties'
    { _dldjpVPCConfig =
        Nothing,
      _dldjpInputDataConfig = Nothing,
      _dldjpMessage = Nothing,
      _dldjpJobStatus = Nothing,
      _dldjpOutputDataConfig = Nothing,
      _dldjpEndTime = Nothing,
      _dldjpVolumeKMSKeyId = Nothing,
      _dldjpSubmitTime = Nothing,
      _dldjpJobName = Nothing,
      _dldjpDataAccessRoleARN = Nothing,
      _dldjpJobId = Nothing
    }

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your dominant language detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
dldjpVPCConfig :: Lens' DominantLanguageDetectionJobProperties (Maybe VPCConfig)
dldjpVPCConfig = lens _dldjpVPCConfig (\s a -> s {_dldjpVPCConfig = a})

-- | The input data configuration that you supplied when you created the dominant language detection job.
dldjpInputDataConfig :: Lens' DominantLanguageDetectionJobProperties (Maybe InputDataConfig)
dldjpInputDataConfig = lens _dldjpInputDataConfig (\s a -> s {_dldjpInputDataConfig = a})

-- | A description for the status of a job.
dldjpMessage :: Lens' DominantLanguageDetectionJobProperties (Maybe Text)
dldjpMessage = lens _dldjpMessage (\s a -> s {_dldjpMessage = a})

-- | The current status of the dominant language detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
dldjpJobStatus :: Lens' DominantLanguageDetectionJobProperties (Maybe JobStatus)
dldjpJobStatus = lens _dldjpJobStatus (\s a -> s {_dldjpJobStatus = a})

-- | The output data configuration that you supplied when you created the dominant language detection job.
dldjpOutputDataConfig :: Lens' DominantLanguageDetectionJobProperties (Maybe OutputDataConfig)
dldjpOutputDataConfig = lens _dldjpOutputDataConfig (\s a -> s {_dldjpOutputDataConfig = a})

-- | The time that the dominant language detection job completed.
dldjpEndTime :: Lens' DominantLanguageDetectionJobProperties (Maybe UTCTime)
dldjpEndTime = lens _dldjpEndTime (\s a -> s {_dldjpEndTime = a}) . mapping _Time

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
dldjpVolumeKMSKeyId :: Lens' DominantLanguageDetectionJobProperties (Maybe Text)
dldjpVolumeKMSKeyId = lens _dldjpVolumeKMSKeyId (\s a -> s {_dldjpVolumeKMSKeyId = a})

-- | The time that the dominant language detection job was submitted for processing.
dldjpSubmitTime :: Lens' DominantLanguageDetectionJobProperties (Maybe UTCTime)
dldjpSubmitTime = lens _dldjpSubmitTime (\s a -> s {_dldjpSubmitTime = a}) . mapping _Time

-- | The name that you assigned to the dominant language detection job.
dldjpJobName :: Lens' DominantLanguageDetectionJobProperties (Maybe Text)
dldjpJobName = lens _dldjpJobName (\s a -> s {_dldjpJobName = a})

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
dldjpDataAccessRoleARN :: Lens' DominantLanguageDetectionJobProperties (Maybe Text)
dldjpDataAccessRoleARN = lens _dldjpDataAccessRoleARN (\s a -> s {_dldjpDataAccessRoleARN = a})

-- | The identifier assigned to the dominant language detection job.
dldjpJobId :: Lens' DominantLanguageDetectionJobProperties (Maybe Text)
dldjpJobId = lens _dldjpJobId (\s a -> s {_dldjpJobId = a})

instance
  FromJSON
    DominantLanguageDetectionJobProperties
  where
  parseJSON =
    withObject
      "DominantLanguageDetectionJobProperties"
      ( \x ->
          DominantLanguageDetectionJobProperties'
            <$> (x .:? "VpcConfig")
            <*> (x .:? "InputDataConfig")
            <*> (x .:? "Message")
            <*> (x .:? "JobStatus")
            <*> (x .:? "OutputDataConfig")
            <*> (x .:? "EndTime")
            <*> (x .:? "VolumeKmsKeyId")
            <*> (x .:? "SubmitTime")
            <*> (x .:? "JobName")
            <*> (x .:? "DataAccessRoleArn")
            <*> (x .:? "JobId")
      )

instance
  Hashable
    DominantLanguageDetectionJobProperties

instance
  NFData
    DominantLanguageDetectionJobProperties
