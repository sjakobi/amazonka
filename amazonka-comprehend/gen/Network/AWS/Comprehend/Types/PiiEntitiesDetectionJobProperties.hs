{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.PiiEntitiesDetectionJobProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.PiiEntitiesDetectionJobProperties where

import Network.AWS.Comprehend.Types.InputDataConfig
import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Comprehend.Types.LanguageCode
import Network.AWS.Comprehend.Types.PiiEntitiesDetectionMode
import Network.AWS.Comprehend.Types.PiiOutputDataConfig
import Network.AWS.Comprehend.Types.RedactionConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about a PII entities detection job.
--
--
--
-- /See:/ 'piiEntitiesDetectionJobProperties' smart constructor.
data PiiEntitiesDetectionJobProperties = PiiEntitiesDetectionJobProperties'
  { _pedjpRedactionConfig ::
      !( Maybe
           RedactionConfig
       ),
    _pedjpLanguageCode ::
      !( Maybe
           LanguageCode
       ),
    _pedjpInputDataConfig ::
      !( Maybe
           InputDataConfig
       ),
    _pedjpMode ::
      !( Maybe
           PiiEntitiesDetectionMode
       ),
    _pedjpMessage ::
      !( Maybe
           Text
       ),
    _pedjpJobStatus ::
      !( Maybe
           JobStatus
       ),
    _pedjpOutputDataConfig ::
      !( Maybe
           PiiOutputDataConfig
       ),
    _pedjpEndTime ::
      !( Maybe
           POSIX
       ),
    _pedjpSubmitTime ::
      !( Maybe
           POSIX
       ),
    _pedjpJobName ::
      !( Maybe
           Text
       ),
    _pedjpDataAccessRoleARN ::
      !( Maybe
           Text
       ),
    _pedjpJobId ::
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

-- | Creates a value of 'PiiEntitiesDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pedjpRedactionConfig' - Provides configuration parameters for PII entity redaction. This parameter is required if you set the @Mode@ parameter to @ONLY_REDACTION@ . In that case, you must provide a @RedactionConfig@ definition that includes the @PiiEntityTypes@ parameter.
--
-- * 'pedjpLanguageCode' - The language code of the input documents
--
-- * 'pedjpInputDataConfig' - The input properties for a PII entities detection job.
--
-- * 'pedjpMode' - Specifies whether the output provides the locations (offsets) of PII entities or a file in which PII entities are redacted.
--
-- * 'pedjpMessage' - A description of the status of a job.
--
-- * 'pedjpJobStatus' - The current status of the PII entities detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
--
-- * 'pedjpOutputDataConfig' - The output data configuration that you supplied when you created the PII entities detection job.
--
-- * 'pedjpEndTime' - The time that the PII entities detection job completed.
--
-- * 'pedjpSubmitTime' - The time that the PII entities detection job was submitted for processing.
--
-- * 'pedjpJobName' - The name that you assigned the PII entities detection job.
--
-- * 'pedjpDataAccessRoleARN' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
--
-- * 'pedjpJobId' - The identifier assigned to the PII entities detection job.
piiEntitiesDetectionJobProperties ::
  PiiEntitiesDetectionJobProperties
piiEntitiesDetectionJobProperties =
  PiiEntitiesDetectionJobProperties'
    { _pedjpRedactionConfig =
        Nothing,
      _pedjpLanguageCode = Nothing,
      _pedjpInputDataConfig = Nothing,
      _pedjpMode = Nothing,
      _pedjpMessage = Nothing,
      _pedjpJobStatus = Nothing,
      _pedjpOutputDataConfig = Nothing,
      _pedjpEndTime = Nothing,
      _pedjpSubmitTime = Nothing,
      _pedjpJobName = Nothing,
      _pedjpDataAccessRoleARN = Nothing,
      _pedjpJobId = Nothing
    }

-- | Provides configuration parameters for PII entity redaction. This parameter is required if you set the @Mode@ parameter to @ONLY_REDACTION@ . In that case, you must provide a @RedactionConfig@ definition that includes the @PiiEntityTypes@ parameter.
pedjpRedactionConfig :: Lens' PiiEntitiesDetectionJobProperties (Maybe RedactionConfig)
pedjpRedactionConfig = lens _pedjpRedactionConfig (\s a -> s {_pedjpRedactionConfig = a})

-- | The language code of the input documents
pedjpLanguageCode :: Lens' PiiEntitiesDetectionJobProperties (Maybe LanguageCode)
pedjpLanguageCode = lens _pedjpLanguageCode (\s a -> s {_pedjpLanguageCode = a})

-- | The input properties for a PII entities detection job.
pedjpInputDataConfig :: Lens' PiiEntitiesDetectionJobProperties (Maybe InputDataConfig)
pedjpInputDataConfig = lens _pedjpInputDataConfig (\s a -> s {_pedjpInputDataConfig = a})

-- | Specifies whether the output provides the locations (offsets) of PII entities or a file in which PII entities are redacted.
pedjpMode :: Lens' PiiEntitiesDetectionJobProperties (Maybe PiiEntitiesDetectionMode)
pedjpMode = lens _pedjpMode (\s a -> s {_pedjpMode = a})

-- | A description of the status of a job.
pedjpMessage :: Lens' PiiEntitiesDetectionJobProperties (Maybe Text)
pedjpMessage = lens _pedjpMessage (\s a -> s {_pedjpMessage = a})

-- | The current status of the PII entities detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
pedjpJobStatus :: Lens' PiiEntitiesDetectionJobProperties (Maybe JobStatus)
pedjpJobStatus = lens _pedjpJobStatus (\s a -> s {_pedjpJobStatus = a})

-- | The output data configuration that you supplied when you created the PII entities detection job.
pedjpOutputDataConfig :: Lens' PiiEntitiesDetectionJobProperties (Maybe PiiOutputDataConfig)
pedjpOutputDataConfig = lens _pedjpOutputDataConfig (\s a -> s {_pedjpOutputDataConfig = a})

-- | The time that the PII entities detection job completed.
pedjpEndTime :: Lens' PiiEntitiesDetectionJobProperties (Maybe UTCTime)
pedjpEndTime = lens _pedjpEndTime (\s a -> s {_pedjpEndTime = a}) . mapping _Time

-- | The time that the PII entities detection job was submitted for processing.
pedjpSubmitTime :: Lens' PiiEntitiesDetectionJobProperties (Maybe UTCTime)
pedjpSubmitTime = lens _pedjpSubmitTime (\s a -> s {_pedjpSubmitTime = a}) . mapping _Time

-- | The name that you assigned the PII entities detection job.
pedjpJobName :: Lens' PiiEntitiesDetectionJobProperties (Maybe Text)
pedjpJobName = lens _pedjpJobName (\s a -> s {_pedjpJobName = a})

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
pedjpDataAccessRoleARN :: Lens' PiiEntitiesDetectionJobProperties (Maybe Text)
pedjpDataAccessRoleARN = lens _pedjpDataAccessRoleARN (\s a -> s {_pedjpDataAccessRoleARN = a})

-- | The identifier assigned to the PII entities detection job.
pedjpJobId :: Lens' PiiEntitiesDetectionJobProperties (Maybe Text)
pedjpJobId = lens _pedjpJobId (\s a -> s {_pedjpJobId = a})

instance FromJSON PiiEntitiesDetectionJobProperties where
  parseJSON =
    withObject
      "PiiEntitiesDetectionJobProperties"
      ( \x ->
          PiiEntitiesDetectionJobProperties'
            <$> (x .:? "RedactionConfig")
            <*> (x .:? "LanguageCode")
            <*> (x .:? "InputDataConfig")
            <*> (x .:? "Mode")
            <*> (x .:? "Message")
            <*> (x .:? "JobStatus")
            <*> (x .:? "OutputDataConfig")
            <*> (x .:? "EndTime")
            <*> (x .:? "SubmitTime")
            <*> (x .:? "JobName")
            <*> (x .:? "DataAccessRoleArn")
            <*> (x .:? "JobId")
      )

instance Hashable PiiEntitiesDetectionJobProperties

instance NFData PiiEntitiesDetectionJobProperties
