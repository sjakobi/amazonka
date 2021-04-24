{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.SentimentDetectionJobProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.SentimentDetectionJobProperties where

import Network.AWS.Comprehend.Types.InputDataConfig
import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Comprehend.Types.LanguageCode
import Network.AWS.Comprehend.Types.OutputDataConfig
import Network.AWS.Comprehend.Types.VPCConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about a sentiment detection job.
--
--
--
-- /See:/ 'sentimentDetectionJobProperties' smart constructor.
data SentimentDetectionJobProperties = SentimentDetectionJobProperties'
  { _sdjpVPCConfig ::
      !( Maybe
           VPCConfig
       ),
    _sdjpLanguageCode ::
      !( Maybe
           LanguageCode
       ),
    _sdjpInputDataConfig ::
      !( Maybe
           InputDataConfig
       ),
    _sdjpMessage ::
      !( Maybe
           Text
       ),
    _sdjpJobStatus ::
      !( Maybe
           JobStatus
       ),
    _sdjpOutputDataConfig ::
      !( Maybe
           OutputDataConfig
       ),
    _sdjpEndTime ::
      !( Maybe
           POSIX
       ),
    _sdjpVolumeKMSKeyId ::
      !( Maybe
           Text
       ),
    _sdjpSubmitTime ::
      !( Maybe
           POSIX
       ),
    _sdjpJobName ::
      !( Maybe
           Text
       ),
    _sdjpDataAccessRoleARN ::
      !( Maybe
           Text
       ),
    _sdjpJobId ::
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

-- | Creates a value of 'SentimentDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdjpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your sentiment detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'sdjpLanguageCode' - The language code of the input documents.
--
-- * 'sdjpInputDataConfig' - The input data configuration that you supplied when you created the sentiment detection job.
--
-- * 'sdjpMessage' - A description of the status of a job.
--
-- * 'sdjpJobStatus' - The current status of the sentiment detection job. If the status is @FAILED@ , the @Messages@ field shows the reason for the failure.
--
-- * 'sdjpOutputDataConfig' - The output data configuration that you supplied when you created the sentiment detection job.
--
-- * 'sdjpEndTime' - The time that the sentiment detection job ended.
--
-- * 'sdjpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'sdjpSubmitTime' - The time that the sentiment detection job was submitted for processing.
--
-- * 'sdjpJobName' - The name that you assigned to the sentiment detection job
--
-- * 'sdjpDataAccessRoleARN' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
--
-- * 'sdjpJobId' - The identifier assigned to the sentiment detection job.
sentimentDetectionJobProperties ::
  SentimentDetectionJobProperties
sentimentDetectionJobProperties =
  SentimentDetectionJobProperties'
    { _sdjpVPCConfig =
        Nothing,
      _sdjpLanguageCode = Nothing,
      _sdjpInputDataConfig = Nothing,
      _sdjpMessage = Nothing,
      _sdjpJobStatus = Nothing,
      _sdjpOutputDataConfig = Nothing,
      _sdjpEndTime = Nothing,
      _sdjpVolumeKMSKeyId = Nothing,
      _sdjpSubmitTime = Nothing,
      _sdjpJobName = Nothing,
      _sdjpDataAccessRoleARN = Nothing,
      _sdjpJobId = Nothing
    }

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your sentiment detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
sdjpVPCConfig :: Lens' SentimentDetectionJobProperties (Maybe VPCConfig)
sdjpVPCConfig = lens _sdjpVPCConfig (\s a -> s {_sdjpVPCConfig = a})

-- | The language code of the input documents.
sdjpLanguageCode :: Lens' SentimentDetectionJobProperties (Maybe LanguageCode)
sdjpLanguageCode = lens _sdjpLanguageCode (\s a -> s {_sdjpLanguageCode = a})

-- | The input data configuration that you supplied when you created the sentiment detection job.
sdjpInputDataConfig :: Lens' SentimentDetectionJobProperties (Maybe InputDataConfig)
sdjpInputDataConfig = lens _sdjpInputDataConfig (\s a -> s {_sdjpInputDataConfig = a})

-- | A description of the status of a job.
sdjpMessage :: Lens' SentimentDetectionJobProperties (Maybe Text)
sdjpMessage = lens _sdjpMessage (\s a -> s {_sdjpMessage = a})

-- | The current status of the sentiment detection job. If the status is @FAILED@ , the @Messages@ field shows the reason for the failure.
sdjpJobStatus :: Lens' SentimentDetectionJobProperties (Maybe JobStatus)
sdjpJobStatus = lens _sdjpJobStatus (\s a -> s {_sdjpJobStatus = a})

-- | The output data configuration that you supplied when you created the sentiment detection job.
sdjpOutputDataConfig :: Lens' SentimentDetectionJobProperties (Maybe OutputDataConfig)
sdjpOutputDataConfig = lens _sdjpOutputDataConfig (\s a -> s {_sdjpOutputDataConfig = a})

-- | The time that the sentiment detection job ended.
sdjpEndTime :: Lens' SentimentDetectionJobProperties (Maybe UTCTime)
sdjpEndTime = lens _sdjpEndTime (\s a -> s {_sdjpEndTime = a}) . mapping _Time

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
sdjpVolumeKMSKeyId :: Lens' SentimentDetectionJobProperties (Maybe Text)
sdjpVolumeKMSKeyId = lens _sdjpVolumeKMSKeyId (\s a -> s {_sdjpVolumeKMSKeyId = a})

-- | The time that the sentiment detection job was submitted for processing.
sdjpSubmitTime :: Lens' SentimentDetectionJobProperties (Maybe UTCTime)
sdjpSubmitTime = lens _sdjpSubmitTime (\s a -> s {_sdjpSubmitTime = a}) . mapping _Time

-- | The name that you assigned to the sentiment detection job
sdjpJobName :: Lens' SentimentDetectionJobProperties (Maybe Text)
sdjpJobName = lens _sdjpJobName (\s a -> s {_sdjpJobName = a})

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
sdjpDataAccessRoleARN :: Lens' SentimentDetectionJobProperties (Maybe Text)
sdjpDataAccessRoleARN = lens _sdjpDataAccessRoleARN (\s a -> s {_sdjpDataAccessRoleARN = a})

-- | The identifier assigned to the sentiment detection job.
sdjpJobId :: Lens' SentimentDetectionJobProperties (Maybe Text)
sdjpJobId = lens _sdjpJobId (\s a -> s {_sdjpJobId = a})

instance FromJSON SentimentDetectionJobProperties where
  parseJSON =
    withObject
      "SentimentDetectionJobProperties"
      ( \x ->
          SentimentDetectionJobProperties'
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

instance Hashable SentimentDetectionJobProperties

instance NFData SentimentDetectionJobProperties
