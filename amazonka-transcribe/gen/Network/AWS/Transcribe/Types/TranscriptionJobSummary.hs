{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.TranscriptionJobSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.TranscriptionJobSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Transcribe.Types.ContentRedaction
import Network.AWS.Transcribe.Types.LanguageCode
import Network.AWS.Transcribe.Types.ModelSettings
import Network.AWS.Transcribe.Types.OutputLocationType
import Network.AWS.Transcribe.Types.TranscriptionJobStatus

-- | Provides a summary of information about a transcription job.
--
--
--
-- /See:/ 'transcriptionJobSummary' smart constructor.
data TranscriptionJobSummary = TranscriptionJobSummary'
  { _tjsLanguageCode ::
      !(Maybe LanguageCode),
    _tjsContentRedaction ::
      !( Maybe
           ContentRedaction
       ),
    _tjsCreationTime ::
      !(Maybe POSIX),
    _tjsCompletionTime ::
      !(Maybe POSIX),
    _tjsTranscriptionJobName ::
      !(Maybe Text),
    _tjsIdentifyLanguage ::
      !(Maybe Bool),
    _tjsStartTime ::
      !(Maybe POSIX),
    _tjsTranscriptionJobStatus ::
      !( Maybe
           TranscriptionJobStatus
       ),
    _tjsModelSettings ::
      !(Maybe ModelSettings),
    _tjsOutputLocationType ::
      !( Maybe
           OutputLocationType
       ),
    _tjsIdentifiedLanguageScore ::
      !(Maybe Double),
    _tjsFailureReason ::
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

-- | Creates a value of 'TranscriptionJobSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjsLanguageCode' - The language code for the input speech.
--
-- * 'tjsContentRedaction' - The content redaction settings of the transcription job.
--
-- * 'tjsCreationTime' - A timestamp that shows when the job was created.
--
-- * 'tjsCompletionTime' - A timestamp that shows when the job was completed.
--
-- * 'tjsTranscriptionJobName' - The name of the transcription job.
--
-- * 'tjsIdentifyLanguage' - Whether automatic language identification was enabled for a transcription job.
--
-- * 'tjsStartTime' - A timestamp that shows when the job started processing.
--
-- * 'tjsTranscriptionJobStatus' - The status of the transcription job. When the status is @COMPLETED@ , use the @GetTranscriptionJob@ operation to get the results of the transcription.
--
-- * 'tjsModelSettings' - Undocumented member.
--
-- * 'tjsOutputLocationType' - Indicates the location of the output of the transcription job. If the value is @CUSTOMER_BUCKET@ then the location is the S3 bucket specified in the @outputBucketName@ field when the transcription job was started with the @StartTranscriptionJob@ operation. If the value is @SERVICE_BUCKET@ then the output is stored by Amazon Transcribe and can be retrieved using the URI in the @GetTranscriptionJob@ response's @TranscriptFileUri@ field.
--
-- * 'tjsIdentifiedLanguageScore' - A value between zero and one that Amazon Transcribe assigned to the language it identified in the source audio. A higher score indicates that Amazon Transcribe is more confident in the language it identified.
--
-- * 'tjsFailureReason' - If the @TranscriptionJobStatus@ field is @FAILED@ , a description of the error.
transcriptionJobSummary ::
  TranscriptionJobSummary
transcriptionJobSummary =
  TranscriptionJobSummary'
    { _tjsLanguageCode =
        Nothing,
      _tjsContentRedaction = Nothing,
      _tjsCreationTime = Nothing,
      _tjsCompletionTime = Nothing,
      _tjsTranscriptionJobName = Nothing,
      _tjsIdentifyLanguage = Nothing,
      _tjsStartTime = Nothing,
      _tjsTranscriptionJobStatus = Nothing,
      _tjsModelSettings = Nothing,
      _tjsOutputLocationType = Nothing,
      _tjsIdentifiedLanguageScore = Nothing,
      _tjsFailureReason = Nothing
    }

-- | The language code for the input speech.
tjsLanguageCode :: Lens' TranscriptionJobSummary (Maybe LanguageCode)
tjsLanguageCode = lens _tjsLanguageCode (\s a -> s {_tjsLanguageCode = a})

-- | The content redaction settings of the transcription job.
tjsContentRedaction :: Lens' TranscriptionJobSummary (Maybe ContentRedaction)
tjsContentRedaction = lens _tjsContentRedaction (\s a -> s {_tjsContentRedaction = a})

-- | A timestamp that shows when the job was created.
tjsCreationTime :: Lens' TranscriptionJobSummary (Maybe UTCTime)
tjsCreationTime = lens _tjsCreationTime (\s a -> s {_tjsCreationTime = a}) . mapping _Time

-- | A timestamp that shows when the job was completed.
tjsCompletionTime :: Lens' TranscriptionJobSummary (Maybe UTCTime)
tjsCompletionTime = lens _tjsCompletionTime (\s a -> s {_tjsCompletionTime = a}) . mapping _Time

-- | The name of the transcription job.
tjsTranscriptionJobName :: Lens' TranscriptionJobSummary (Maybe Text)
tjsTranscriptionJobName = lens _tjsTranscriptionJobName (\s a -> s {_tjsTranscriptionJobName = a})

-- | Whether automatic language identification was enabled for a transcription job.
tjsIdentifyLanguage :: Lens' TranscriptionJobSummary (Maybe Bool)
tjsIdentifyLanguage = lens _tjsIdentifyLanguage (\s a -> s {_tjsIdentifyLanguage = a})

-- | A timestamp that shows when the job started processing.
tjsStartTime :: Lens' TranscriptionJobSummary (Maybe UTCTime)
tjsStartTime = lens _tjsStartTime (\s a -> s {_tjsStartTime = a}) . mapping _Time

-- | The status of the transcription job. When the status is @COMPLETED@ , use the @GetTranscriptionJob@ operation to get the results of the transcription.
tjsTranscriptionJobStatus :: Lens' TranscriptionJobSummary (Maybe TranscriptionJobStatus)
tjsTranscriptionJobStatus = lens _tjsTranscriptionJobStatus (\s a -> s {_tjsTranscriptionJobStatus = a})

-- | Undocumented member.
tjsModelSettings :: Lens' TranscriptionJobSummary (Maybe ModelSettings)
tjsModelSettings = lens _tjsModelSettings (\s a -> s {_tjsModelSettings = a})

-- | Indicates the location of the output of the transcription job. If the value is @CUSTOMER_BUCKET@ then the location is the S3 bucket specified in the @outputBucketName@ field when the transcription job was started with the @StartTranscriptionJob@ operation. If the value is @SERVICE_BUCKET@ then the output is stored by Amazon Transcribe and can be retrieved using the URI in the @GetTranscriptionJob@ response's @TranscriptFileUri@ field.
tjsOutputLocationType :: Lens' TranscriptionJobSummary (Maybe OutputLocationType)
tjsOutputLocationType = lens _tjsOutputLocationType (\s a -> s {_tjsOutputLocationType = a})

-- | A value between zero and one that Amazon Transcribe assigned to the language it identified in the source audio. A higher score indicates that Amazon Transcribe is more confident in the language it identified.
tjsIdentifiedLanguageScore :: Lens' TranscriptionJobSummary (Maybe Double)
tjsIdentifiedLanguageScore = lens _tjsIdentifiedLanguageScore (\s a -> s {_tjsIdentifiedLanguageScore = a})

-- | If the @TranscriptionJobStatus@ field is @FAILED@ , a description of the error.
tjsFailureReason :: Lens' TranscriptionJobSummary (Maybe Text)
tjsFailureReason = lens _tjsFailureReason (\s a -> s {_tjsFailureReason = a})

instance FromJSON TranscriptionJobSummary where
  parseJSON =
    withObject
      "TranscriptionJobSummary"
      ( \x ->
          TranscriptionJobSummary'
            <$> (x .:? "LanguageCode")
            <*> (x .:? "ContentRedaction")
            <*> (x .:? "CreationTime")
            <*> (x .:? "CompletionTime")
            <*> (x .:? "TranscriptionJobName")
            <*> (x .:? "IdentifyLanguage")
            <*> (x .:? "StartTime")
            <*> (x .:? "TranscriptionJobStatus")
            <*> (x .:? "ModelSettings")
            <*> (x .:? "OutputLocationType")
            <*> (x .:? "IdentifiedLanguageScore")
            <*> (x .:? "FailureReason")
      )

instance Hashable TranscriptionJobSummary

instance NFData TranscriptionJobSummary
