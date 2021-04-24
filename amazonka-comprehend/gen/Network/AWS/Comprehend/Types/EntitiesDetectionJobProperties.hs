{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.EntitiesDetectionJobProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EntitiesDetectionJobProperties where

import Network.AWS.Comprehend.Types.InputDataConfig
import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Comprehend.Types.LanguageCode
import Network.AWS.Comprehend.Types.OutputDataConfig
import Network.AWS.Comprehend.Types.VPCConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about an entities detection job.
--
--
--
-- /See:/ 'entitiesDetectionJobProperties' smart constructor.
data EntitiesDetectionJobProperties = EntitiesDetectionJobProperties'
  { _edjpsVPCConfig ::
      !( Maybe
           VPCConfig
       ),
    _edjpsLanguageCode ::
      !( Maybe
           LanguageCode
       ),
    _edjpsInputDataConfig ::
      !( Maybe
           InputDataConfig
       ),
    _edjpsMessage ::
      !( Maybe
           Text
       ),
    _edjpsJobStatus ::
      !( Maybe
           JobStatus
       ),
    _edjpsOutputDataConfig ::
      !( Maybe
           OutputDataConfig
       ),
    _edjpsEndTime ::
      !( Maybe
           POSIX
       ),
    _edjpsVolumeKMSKeyId ::
      !( Maybe
           Text
       ),
    _edjpsSubmitTime ::
      !( Maybe
           POSIX
       ),
    _edjpsEntityRecognizerARN ::
      !( Maybe
           Text
       ),
    _edjpsJobName ::
      !( Maybe
           Text
       ),
    _edjpsDataAccessRoleARN ::
      !( Maybe
           Text
       ),
    _edjpsJobId ::
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

-- | Creates a value of 'EntitiesDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edjpsVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your entity detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'edjpsLanguageCode' - The language code of the input documents.
--
-- * 'edjpsInputDataConfig' - The input data configuration that you supplied when you created the entities detection job.
--
-- * 'edjpsMessage' - A description of the status of a job.
--
-- * 'edjpsJobStatus' - The current status of the entities detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
--
-- * 'edjpsOutputDataConfig' - The output data configuration that you supplied when you created the entities detection job.
--
-- * 'edjpsEndTime' - The time that the entities detection job completed
--
-- * 'edjpsVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'edjpsSubmitTime' - The time that the entities detection job was submitted for processing.
--
-- * 'edjpsEntityRecognizerARN' - The Amazon Resource Name (ARN) that identifies the entity recognizer.
--
-- * 'edjpsJobName' - The name that you assigned the entities detection job.
--
-- * 'edjpsDataAccessRoleARN' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
--
-- * 'edjpsJobId' - The identifier assigned to the entities detection job.
entitiesDetectionJobProperties ::
  EntitiesDetectionJobProperties
entitiesDetectionJobProperties =
  EntitiesDetectionJobProperties'
    { _edjpsVPCConfig =
        Nothing,
      _edjpsLanguageCode = Nothing,
      _edjpsInputDataConfig = Nothing,
      _edjpsMessage = Nothing,
      _edjpsJobStatus = Nothing,
      _edjpsOutputDataConfig = Nothing,
      _edjpsEndTime = Nothing,
      _edjpsVolumeKMSKeyId = Nothing,
      _edjpsSubmitTime = Nothing,
      _edjpsEntityRecognizerARN = Nothing,
      _edjpsJobName = Nothing,
      _edjpsDataAccessRoleARN = Nothing,
      _edjpsJobId = Nothing
    }

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your entity detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
edjpsVPCConfig :: Lens' EntitiesDetectionJobProperties (Maybe VPCConfig)
edjpsVPCConfig = lens _edjpsVPCConfig (\s a -> s {_edjpsVPCConfig = a})

-- | The language code of the input documents.
edjpsLanguageCode :: Lens' EntitiesDetectionJobProperties (Maybe LanguageCode)
edjpsLanguageCode = lens _edjpsLanguageCode (\s a -> s {_edjpsLanguageCode = a})

-- | The input data configuration that you supplied when you created the entities detection job.
edjpsInputDataConfig :: Lens' EntitiesDetectionJobProperties (Maybe InputDataConfig)
edjpsInputDataConfig = lens _edjpsInputDataConfig (\s a -> s {_edjpsInputDataConfig = a})

-- | A description of the status of a job.
edjpsMessage :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpsMessage = lens _edjpsMessage (\s a -> s {_edjpsMessage = a})

-- | The current status of the entities detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
edjpsJobStatus :: Lens' EntitiesDetectionJobProperties (Maybe JobStatus)
edjpsJobStatus = lens _edjpsJobStatus (\s a -> s {_edjpsJobStatus = a})

-- | The output data configuration that you supplied when you created the entities detection job.
edjpsOutputDataConfig :: Lens' EntitiesDetectionJobProperties (Maybe OutputDataConfig)
edjpsOutputDataConfig = lens _edjpsOutputDataConfig (\s a -> s {_edjpsOutputDataConfig = a})

-- | The time that the entities detection job completed
edjpsEndTime :: Lens' EntitiesDetectionJobProperties (Maybe UTCTime)
edjpsEndTime = lens _edjpsEndTime (\s a -> s {_edjpsEndTime = a}) . mapping _Time

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
edjpsVolumeKMSKeyId :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpsVolumeKMSKeyId = lens _edjpsVolumeKMSKeyId (\s a -> s {_edjpsVolumeKMSKeyId = a})

-- | The time that the entities detection job was submitted for processing.
edjpsSubmitTime :: Lens' EntitiesDetectionJobProperties (Maybe UTCTime)
edjpsSubmitTime = lens _edjpsSubmitTime (\s a -> s {_edjpsSubmitTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) that identifies the entity recognizer.
edjpsEntityRecognizerARN :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpsEntityRecognizerARN = lens _edjpsEntityRecognizerARN (\s a -> s {_edjpsEntityRecognizerARN = a})

-- | The name that you assigned the entities detection job.
edjpsJobName :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpsJobName = lens _edjpsJobName (\s a -> s {_edjpsJobName = a})

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
edjpsDataAccessRoleARN :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpsDataAccessRoleARN = lens _edjpsDataAccessRoleARN (\s a -> s {_edjpsDataAccessRoleARN = a})

-- | The identifier assigned to the entities detection job.
edjpsJobId :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpsJobId = lens _edjpsJobId (\s a -> s {_edjpsJobId = a})

instance FromJSON EntitiesDetectionJobProperties where
  parseJSON =
    withObject
      "EntitiesDetectionJobProperties"
      ( \x ->
          EntitiesDetectionJobProperties'
            <$> (x .:? "VpcConfig")
            <*> (x .:? "LanguageCode")
            <*> (x .:? "InputDataConfig")
            <*> (x .:? "Message")
            <*> (x .:? "JobStatus")
            <*> (x .:? "OutputDataConfig")
            <*> (x .:? "EndTime")
            <*> (x .:? "VolumeKmsKeyId")
            <*> (x .:? "SubmitTime")
            <*> (x .:? "EntityRecognizerArn")
            <*> (x .:? "JobName")
            <*> (x .:? "DataAccessRoleArn")
            <*> (x .:? "JobId")
      )

instance Hashable EntitiesDetectionJobProperties

instance NFData EntitiesDetectionJobProperties
