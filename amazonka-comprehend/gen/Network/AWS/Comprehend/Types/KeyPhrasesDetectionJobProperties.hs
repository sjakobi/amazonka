{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobProperties where

import Network.AWS.Comprehend.Types.InputDataConfig
import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Comprehend.Types.LanguageCode
import Network.AWS.Comprehend.Types.OutputDataConfig
import Network.AWS.Comprehend.Types.VPCConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about a key phrases detection job.
--
--
--
-- /See:/ 'keyPhrasesDetectionJobProperties' smart constructor.
data KeyPhrasesDetectionJobProperties = KeyPhrasesDetectionJobProperties'
  { _kpdjpVPCConfig ::
      !( Maybe
           VPCConfig
       ),
    _kpdjpLanguageCode ::
      !( Maybe
           LanguageCode
       ),
    _kpdjpInputDataConfig ::
      !( Maybe
           InputDataConfig
       ),
    _kpdjpMessage ::
      !( Maybe
           Text
       ),
    _kpdjpJobStatus ::
      !( Maybe
           JobStatus
       ),
    _kpdjpOutputDataConfig ::
      !( Maybe
           OutputDataConfig
       ),
    _kpdjpEndTime ::
      !( Maybe
           POSIX
       ),
    _kpdjpVolumeKMSKeyId ::
      !( Maybe
           Text
       ),
    _kpdjpSubmitTime ::
      !( Maybe
           POSIX
       ),
    _kpdjpJobName ::
      !( Maybe
           Text
       ),
    _kpdjpDataAccessRoleARN ::
      !( Maybe
           Text
       ),
    _kpdjpJobId ::
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

-- | Creates a value of 'KeyPhrasesDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kpdjpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your key phrases detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'kpdjpLanguageCode' - The language code of the input documents.
--
-- * 'kpdjpInputDataConfig' - The input data configuration that you supplied when you created the key phrases detection job.
--
-- * 'kpdjpMessage' - A description of the status of a job.
--
-- * 'kpdjpJobStatus' - The current status of the key phrases detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
--
-- * 'kpdjpOutputDataConfig' - The output data configuration that you supplied when you created the key phrases detection job.
--
-- * 'kpdjpEndTime' - The time that the key phrases detection job completed.
--
-- * 'kpdjpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'kpdjpSubmitTime' - The time that the key phrases detection job was submitted for processing.
--
-- * 'kpdjpJobName' - The name that you assigned the key phrases detection job.
--
-- * 'kpdjpDataAccessRoleARN' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
--
-- * 'kpdjpJobId' - The identifier assigned to the key phrases detection job.
keyPhrasesDetectionJobProperties ::
  KeyPhrasesDetectionJobProperties
keyPhrasesDetectionJobProperties =
  KeyPhrasesDetectionJobProperties'
    { _kpdjpVPCConfig =
        Nothing,
      _kpdjpLanguageCode = Nothing,
      _kpdjpInputDataConfig = Nothing,
      _kpdjpMessage = Nothing,
      _kpdjpJobStatus = Nothing,
      _kpdjpOutputDataConfig = Nothing,
      _kpdjpEndTime = Nothing,
      _kpdjpVolumeKMSKeyId = Nothing,
      _kpdjpSubmitTime = Nothing,
      _kpdjpJobName = Nothing,
      _kpdjpDataAccessRoleARN = Nothing,
      _kpdjpJobId = Nothing
    }

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your key phrases detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
kpdjpVPCConfig :: Lens' KeyPhrasesDetectionJobProperties (Maybe VPCConfig)
kpdjpVPCConfig = lens _kpdjpVPCConfig (\s a -> s {_kpdjpVPCConfig = a})

-- | The language code of the input documents.
kpdjpLanguageCode :: Lens' KeyPhrasesDetectionJobProperties (Maybe LanguageCode)
kpdjpLanguageCode = lens _kpdjpLanguageCode (\s a -> s {_kpdjpLanguageCode = a})

-- | The input data configuration that you supplied when you created the key phrases detection job.
kpdjpInputDataConfig :: Lens' KeyPhrasesDetectionJobProperties (Maybe InputDataConfig)
kpdjpInputDataConfig = lens _kpdjpInputDataConfig (\s a -> s {_kpdjpInputDataConfig = a})

-- | A description of the status of a job.
kpdjpMessage :: Lens' KeyPhrasesDetectionJobProperties (Maybe Text)
kpdjpMessage = lens _kpdjpMessage (\s a -> s {_kpdjpMessage = a})

-- | The current status of the key phrases detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
kpdjpJobStatus :: Lens' KeyPhrasesDetectionJobProperties (Maybe JobStatus)
kpdjpJobStatus = lens _kpdjpJobStatus (\s a -> s {_kpdjpJobStatus = a})

-- | The output data configuration that you supplied when you created the key phrases detection job.
kpdjpOutputDataConfig :: Lens' KeyPhrasesDetectionJobProperties (Maybe OutputDataConfig)
kpdjpOutputDataConfig = lens _kpdjpOutputDataConfig (\s a -> s {_kpdjpOutputDataConfig = a})

-- | The time that the key phrases detection job completed.
kpdjpEndTime :: Lens' KeyPhrasesDetectionJobProperties (Maybe UTCTime)
kpdjpEndTime = lens _kpdjpEndTime (\s a -> s {_kpdjpEndTime = a}) . mapping _Time

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
kpdjpVolumeKMSKeyId :: Lens' KeyPhrasesDetectionJobProperties (Maybe Text)
kpdjpVolumeKMSKeyId = lens _kpdjpVolumeKMSKeyId (\s a -> s {_kpdjpVolumeKMSKeyId = a})

-- | The time that the key phrases detection job was submitted for processing.
kpdjpSubmitTime :: Lens' KeyPhrasesDetectionJobProperties (Maybe UTCTime)
kpdjpSubmitTime = lens _kpdjpSubmitTime (\s a -> s {_kpdjpSubmitTime = a}) . mapping _Time

-- | The name that you assigned the key phrases detection job.
kpdjpJobName :: Lens' KeyPhrasesDetectionJobProperties (Maybe Text)
kpdjpJobName = lens _kpdjpJobName (\s a -> s {_kpdjpJobName = a})

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
kpdjpDataAccessRoleARN :: Lens' KeyPhrasesDetectionJobProperties (Maybe Text)
kpdjpDataAccessRoleARN = lens _kpdjpDataAccessRoleARN (\s a -> s {_kpdjpDataAccessRoleARN = a})

-- | The identifier assigned to the key phrases detection job.
kpdjpJobId :: Lens' KeyPhrasesDetectionJobProperties (Maybe Text)
kpdjpJobId = lens _kpdjpJobId (\s a -> s {_kpdjpJobId = a})

instance FromJSON KeyPhrasesDetectionJobProperties where
  parseJSON =
    withObject
      "KeyPhrasesDetectionJobProperties"
      ( \x ->
          KeyPhrasesDetectionJobProperties'
            <$> (x .:? "VpcConfig")
            <*> (x .:? "LanguageCode")
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

instance Hashable KeyPhrasesDetectionJobProperties

instance NFData KeyPhrasesDetectionJobProperties
