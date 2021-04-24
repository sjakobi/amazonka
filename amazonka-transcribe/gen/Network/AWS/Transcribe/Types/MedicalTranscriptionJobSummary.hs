{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.MedicalTranscriptionJobSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.MedicalTranscriptionJobSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Transcribe.Types.LanguageCode
import Network.AWS.Transcribe.Types.OutputLocationType
import Network.AWS.Transcribe.Types.Specialty
import Network.AWS.Transcribe.Types.TranscriptionJobStatus
import Network.AWS.Transcribe.Types.Type

-- | Provides summary information about a transcription job.
--
--
--
-- /See:/ 'medicalTranscriptionJobSummary' smart constructor.
data MedicalTranscriptionJobSummary = MedicalTranscriptionJobSummary'
  { _mtjsLanguageCode ::
      !( Maybe
           LanguageCode
       ),
    _mtjsCreationTime ::
      !( Maybe
           POSIX
       ),
    _mtjsCompletionTime ::
      !( Maybe
           POSIX
       ),
    _mtjsStartTime ::
      !( Maybe
           POSIX
       ),
    _mtjsTranscriptionJobStatus ::
      !( Maybe
           TranscriptionJobStatus
       ),
    _mtjsOutputLocationType ::
      !( Maybe
           OutputLocationType
       ),
    _mtjsSpecialty ::
      !( Maybe
           Specialty
       ),
    _mtjsFailureReason ::
      !( Maybe
           Text
       ),
    _mtjsType ::
      !( Maybe
           Type
       ),
    _mtjsMedicalTranscriptionJobName ::
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

-- | Creates a value of 'MedicalTranscriptionJobSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtjsLanguageCode' - The language of the transcript in the source audio file.
--
-- * 'mtjsCreationTime' - A timestamp that shows when the medical transcription job was created.
--
-- * 'mtjsCompletionTime' - A timestamp that shows when the job was completed.
--
-- * 'mtjsStartTime' - A timestamp that shows when the job began processing.
--
-- * 'mtjsTranscriptionJobStatus' - The status of the medical transcription job.
--
-- * 'mtjsOutputLocationType' - Indicates the location of the transcription job's output. The @CUSTOMER_BUCKET@ is the S3 location provided in the @OutputBucketName@ field when the
--
-- * 'mtjsSpecialty' - The medical specialty of the transcription job. @Primary care@ is the only valid value.
--
-- * 'mtjsFailureReason' - If the @TranscriptionJobStatus@ field is @FAILED@ , a description of the error.
--
-- * 'mtjsType' - The speech of the clinician in the input audio.
--
-- * 'mtjsMedicalTranscriptionJobName' - The name of a medical transcription job.
medicalTranscriptionJobSummary ::
  MedicalTranscriptionJobSummary
medicalTranscriptionJobSummary =
  MedicalTranscriptionJobSummary'
    { _mtjsLanguageCode =
        Nothing,
      _mtjsCreationTime = Nothing,
      _mtjsCompletionTime = Nothing,
      _mtjsStartTime = Nothing,
      _mtjsTranscriptionJobStatus = Nothing,
      _mtjsOutputLocationType = Nothing,
      _mtjsSpecialty = Nothing,
      _mtjsFailureReason = Nothing,
      _mtjsType = Nothing,
      _mtjsMedicalTranscriptionJobName = Nothing
    }

-- | The language of the transcript in the source audio file.
mtjsLanguageCode :: Lens' MedicalTranscriptionJobSummary (Maybe LanguageCode)
mtjsLanguageCode = lens _mtjsLanguageCode (\s a -> s {_mtjsLanguageCode = a})

-- | A timestamp that shows when the medical transcription job was created.
mtjsCreationTime :: Lens' MedicalTranscriptionJobSummary (Maybe UTCTime)
mtjsCreationTime = lens _mtjsCreationTime (\s a -> s {_mtjsCreationTime = a}) . mapping _Time

-- | A timestamp that shows when the job was completed.
mtjsCompletionTime :: Lens' MedicalTranscriptionJobSummary (Maybe UTCTime)
mtjsCompletionTime = lens _mtjsCompletionTime (\s a -> s {_mtjsCompletionTime = a}) . mapping _Time

-- | A timestamp that shows when the job began processing.
mtjsStartTime :: Lens' MedicalTranscriptionJobSummary (Maybe UTCTime)
mtjsStartTime = lens _mtjsStartTime (\s a -> s {_mtjsStartTime = a}) . mapping _Time

-- | The status of the medical transcription job.
mtjsTranscriptionJobStatus :: Lens' MedicalTranscriptionJobSummary (Maybe TranscriptionJobStatus)
mtjsTranscriptionJobStatus = lens _mtjsTranscriptionJobStatus (\s a -> s {_mtjsTranscriptionJobStatus = a})

-- | Indicates the location of the transcription job's output. The @CUSTOMER_BUCKET@ is the S3 location provided in the @OutputBucketName@ field when the
mtjsOutputLocationType :: Lens' MedicalTranscriptionJobSummary (Maybe OutputLocationType)
mtjsOutputLocationType = lens _mtjsOutputLocationType (\s a -> s {_mtjsOutputLocationType = a})

-- | The medical specialty of the transcription job. @Primary care@ is the only valid value.
mtjsSpecialty :: Lens' MedicalTranscriptionJobSummary (Maybe Specialty)
mtjsSpecialty = lens _mtjsSpecialty (\s a -> s {_mtjsSpecialty = a})

-- | If the @TranscriptionJobStatus@ field is @FAILED@ , a description of the error.
mtjsFailureReason :: Lens' MedicalTranscriptionJobSummary (Maybe Text)
mtjsFailureReason = lens _mtjsFailureReason (\s a -> s {_mtjsFailureReason = a})

-- | The speech of the clinician in the input audio.
mtjsType :: Lens' MedicalTranscriptionJobSummary (Maybe Type)
mtjsType = lens _mtjsType (\s a -> s {_mtjsType = a})

-- | The name of a medical transcription job.
mtjsMedicalTranscriptionJobName :: Lens' MedicalTranscriptionJobSummary (Maybe Text)
mtjsMedicalTranscriptionJobName = lens _mtjsMedicalTranscriptionJobName (\s a -> s {_mtjsMedicalTranscriptionJobName = a})

instance FromJSON MedicalTranscriptionJobSummary where
  parseJSON =
    withObject
      "MedicalTranscriptionJobSummary"
      ( \x ->
          MedicalTranscriptionJobSummary'
            <$> (x .:? "LanguageCode")
            <*> (x .:? "CreationTime")
            <*> (x .:? "CompletionTime")
            <*> (x .:? "StartTime")
            <*> (x .:? "TranscriptionJobStatus")
            <*> (x .:? "OutputLocationType")
            <*> (x .:? "Specialty")
            <*> (x .:? "FailureReason")
            <*> (x .:? "Type")
            <*> (x .:? "MedicalTranscriptionJobName")
      )

instance Hashable MedicalTranscriptionJobSummary

instance NFData MedicalTranscriptionJobSummary
