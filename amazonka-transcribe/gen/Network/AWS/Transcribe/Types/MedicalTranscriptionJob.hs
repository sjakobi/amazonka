{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.MedicalTranscriptionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.MedicalTranscriptionJob where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Transcribe.Types.LanguageCode
import Network.AWS.Transcribe.Types.Media
import Network.AWS.Transcribe.Types.MediaFormat
import Network.AWS.Transcribe.Types.MedicalTranscript
import Network.AWS.Transcribe.Types.MedicalTranscriptionSetting
import Network.AWS.Transcribe.Types.Specialty
import Network.AWS.Transcribe.Types.TranscriptionJobStatus
import Network.AWS.Transcribe.Types.Type

-- | The data structure that contains the information for a medical transcription job.
--
--
--
-- /See:/ 'medicalTranscriptionJob' smart constructor.
data MedicalTranscriptionJob = MedicalTranscriptionJob'
  { _mtjLanguageCode ::
      !(Maybe LanguageCode),
    _mtjMediaFormat ::
      !(Maybe MediaFormat),
    _mtjMedia ::
      !(Maybe Media),
    _mtjCreationTime ::
      !(Maybe POSIX),
    _mtjCompletionTime ::
      !(Maybe POSIX),
    _mtjTranscript ::
      !( Maybe
           MedicalTranscript
       ),
    _mtjStartTime ::
      !(Maybe POSIX),
    _mtjTranscriptionJobStatus ::
      !( Maybe
           TranscriptionJobStatus
       ),
    _mtjSpecialty ::
      !(Maybe Specialty),
    _mtjFailureReason ::
      !(Maybe Text),
    _mtjMediaSampleRateHertz ::
      !(Maybe Nat),
    _mtjType ::
      !(Maybe Type),
    _mtjMedicalTranscriptionJobName ::
      !(Maybe Text),
    _mtjSettings ::
      !( Maybe
           MedicalTranscriptionSetting
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

-- | Creates a value of 'MedicalTranscriptionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtjLanguageCode' - The language code for the language spoken in the source audio file. US English (en-US) is the only supported language for medical transcriptions. Any other value you enter for language code results in a @BadRequestException@ error.
--
-- * 'mtjMediaFormat' - The format of the input media file.
--
-- * 'mtjMedia' - Undocumented member.
--
-- * 'mtjCreationTime' - A timestamp that shows when the job was created.
--
-- * 'mtjCompletionTime' - A timestamp that shows when the job was completed.
--
-- * 'mtjTranscript' - An object that contains the @MedicalTranscript@ . The @MedicalTranscript@ contains the @TranscriptFileUri@ .
--
-- * 'mtjStartTime' - A timestamp that shows when the job started processing.
--
-- * 'mtjTranscriptionJobStatus' - The completion status of a medical transcription job.
--
-- * 'mtjSpecialty' - The medical specialty of any clinicians providing a dictation or having a conversation. @PRIMARYCARE@ is the only available setting for this object. This specialty enables you to generate transcriptions for the following medical fields:     * Family Medicine
--
-- * 'mtjFailureReason' - If the @TranscriptionJobStatus@ field is @FAILED@ , this field contains information about why the job failed. The @FailureReason@ field contains one of the following values:     * @Unsupported media format@ - The media format specified in the @MediaFormat@ field of the request isn't valid. See the description of the @MediaFormat@ field for a list of valid values.     * @The media format provided does not match the detected media format@ - The media format of the audio file doesn't match the format specified in the @MediaFormat@ field in the request. Check the media format of your media file and make sure the two values match.     * @Invalid sample rate for audio file@ - The sample rate specified in the @MediaSampleRateHertz@ of the request isn't valid. The sample rate must be between 8000 and 48000 Hertz.     * @The sample rate provided does not match the detected sample rate@ - The sample rate in the audio file doesn't match the sample rate specified in the @MediaSampleRateHertz@ field in the request. Check the sample rate of your media file and make sure that the two values match.     * @Invalid file size: file size too large@ - The size of your audio file is larger than what Amazon Transcribe Medical can process. For more information, see <https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits Guidelines and Quotas> in the /Amazon Transcribe Medical Guide/      * @Invalid number of channels: number of channels too large@ - Your audio contains more channels than Amazon Transcribe Medical is configured to process. To request additional channels, see <https://docs.aws.amazon.com/general/latest/gr/transcribe-medical.html Amazon Transcribe Medical Endpoints and Quotas> in the /Amazon Web Services General Reference/
--
-- * 'mtjMediaSampleRateHertz' - The sample rate, in Hertz, of the source audio containing medical information. If you don't specify the sample rate, Amazon Transcribe Medical determines it for you. If you choose to specify the sample rate, it must match the rate detected by Amazon Transcribe Medical. In most cases, you should leave the @MediaSampleHertz@ blank and let Amazon Transcribe Medical determine the sample rate.
--
-- * 'mtjType' - The type of speech in the transcription job. @CONVERSATION@ is generally used for patient-physician dialogues. @DICTATION@ is the setting for physicians speaking their notes after seeing a patient. For more information, see 'how-it-works-med'
--
-- * 'mtjMedicalTranscriptionJobName' - The name for a given medical transcription job.
--
-- * 'mtjSettings' - Object that contains object.
medicalTranscriptionJob ::
  MedicalTranscriptionJob
medicalTranscriptionJob =
  MedicalTranscriptionJob'
    { _mtjLanguageCode =
        Nothing,
      _mtjMediaFormat = Nothing,
      _mtjMedia = Nothing,
      _mtjCreationTime = Nothing,
      _mtjCompletionTime = Nothing,
      _mtjTranscript = Nothing,
      _mtjStartTime = Nothing,
      _mtjTranscriptionJobStatus = Nothing,
      _mtjSpecialty = Nothing,
      _mtjFailureReason = Nothing,
      _mtjMediaSampleRateHertz = Nothing,
      _mtjType = Nothing,
      _mtjMedicalTranscriptionJobName = Nothing,
      _mtjSettings = Nothing
    }

-- | The language code for the language spoken in the source audio file. US English (en-US) is the only supported language for medical transcriptions. Any other value you enter for language code results in a @BadRequestException@ error.
mtjLanguageCode :: Lens' MedicalTranscriptionJob (Maybe LanguageCode)
mtjLanguageCode = lens _mtjLanguageCode (\s a -> s {_mtjLanguageCode = a})

-- | The format of the input media file.
mtjMediaFormat :: Lens' MedicalTranscriptionJob (Maybe MediaFormat)
mtjMediaFormat = lens _mtjMediaFormat (\s a -> s {_mtjMediaFormat = a})

-- | Undocumented member.
mtjMedia :: Lens' MedicalTranscriptionJob (Maybe Media)
mtjMedia = lens _mtjMedia (\s a -> s {_mtjMedia = a})

-- | A timestamp that shows when the job was created.
mtjCreationTime :: Lens' MedicalTranscriptionJob (Maybe UTCTime)
mtjCreationTime = lens _mtjCreationTime (\s a -> s {_mtjCreationTime = a}) . mapping _Time

-- | A timestamp that shows when the job was completed.
mtjCompletionTime :: Lens' MedicalTranscriptionJob (Maybe UTCTime)
mtjCompletionTime = lens _mtjCompletionTime (\s a -> s {_mtjCompletionTime = a}) . mapping _Time

-- | An object that contains the @MedicalTranscript@ . The @MedicalTranscript@ contains the @TranscriptFileUri@ .
mtjTranscript :: Lens' MedicalTranscriptionJob (Maybe MedicalTranscript)
mtjTranscript = lens _mtjTranscript (\s a -> s {_mtjTranscript = a})

-- | A timestamp that shows when the job started processing.
mtjStartTime :: Lens' MedicalTranscriptionJob (Maybe UTCTime)
mtjStartTime = lens _mtjStartTime (\s a -> s {_mtjStartTime = a}) . mapping _Time

-- | The completion status of a medical transcription job.
mtjTranscriptionJobStatus :: Lens' MedicalTranscriptionJob (Maybe TranscriptionJobStatus)
mtjTranscriptionJobStatus = lens _mtjTranscriptionJobStatus (\s a -> s {_mtjTranscriptionJobStatus = a})

-- | The medical specialty of any clinicians providing a dictation or having a conversation. @PRIMARYCARE@ is the only available setting for this object. This specialty enables you to generate transcriptions for the following medical fields:     * Family Medicine
mtjSpecialty :: Lens' MedicalTranscriptionJob (Maybe Specialty)
mtjSpecialty = lens _mtjSpecialty (\s a -> s {_mtjSpecialty = a})

-- | If the @TranscriptionJobStatus@ field is @FAILED@ , this field contains information about why the job failed. The @FailureReason@ field contains one of the following values:     * @Unsupported media format@ - The media format specified in the @MediaFormat@ field of the request isn't valid. See the description of the @MediaFormat@ field for a list of valid values.     * @The media format provided does not match the detected media format@ - The media format of the audio file doesn't match the format specified in the @MediaFormat@ field in the request. Check the media format of your media file and make sure the two values match.     * @Invalid sample rate for audio file@ - The sample rate specified in the @MediaSampleRateHertz@ of the request isn't valid. The sample rate must be between 8000 and 48000 Hertz.     * @The sample rate provided does not match the detected sample rate@ - The sample rate in the audio file doesn't match the sample rate specified in the @MediaSampleRateHertz@ field in the request. Check the sample rate of your media file and make sure that the two values match.     * @Invalid file size: file size too large@ - The size of your audio file is larger than what Amazon Transcribe Medical can process. For more information, see <https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits Guidelines and Quotas> in the /Amazon Transcribe Medical Guide/      * @Invalid number of channels: number of channels too large@ - Your audio contains more channels than Amazon Transcribe Medical is configured to process. To request additional channels, see <https://docs.aws.amazon.com/general/latest/gr/transcribe-medical.html Amazon Transcribe Medical Endpoints and Quotas> in the /Amazon Web Services General Reference/
mtjFailureReason :: Lens' MedicalTranscriptionJob (Maybe Text)
mtjFailureReason = lens _mtjFailureReason (\s a -> s {_mtjFailureReason = a})

-- | The sample rate, in Hertz, of the source audio containing medical information. If you don't specify the sample rate, Amazon Transcribe Medical determines it for you. If you choose to specify the sample rate, it must match the rate detected by Amazon Transcribe Medical. In most cases, you should leave the @MediaSampleHertz@ blank and let Amazon Transcribe Medical determine the sample rate.
mtjMediaSampleRateHertz :: Lens' MedicalTranscriptionJob (Maybe Natural)
mtjMediaSampleRateHertz = lens _mtjMediaSampleRateHertz (\s a -> s {_mtjMediaSampleRateHertz = a}) . mapping _Nat

-- | The type of speech in the transcription job. @CONVERSATION@ is generally used for patient-physician dialogues. @DICTATION@ is the setting for physicians speaking their notes after seeing a patient. For more information, see 'how-it-works-med'
mtjType :: Lens' MedicalTranscriptionJob (Maybe Type)
mtjType = lens _mtjType (\s a -> s {_mtjType = a})

-- | The name for a given medical transcription job.
mtjMedicalTranscriptionJobName :: Lens' MedicalTranscriptionJob (Maybe Text)
mtjMedicalTranscriptionJobName = lens _mtjMedicalTranscriptionJobName (\s a -> s {_mtjMedicalTranscriptionJobName = a})

-- | Object that contains object.
mtjSettings :: Lens' MedicalTranscriptionJob (Maybe MedicalTranscriptionSetting)
mtjSettings = lens _mtjSettings (\s a -> s {_mtjSettings = a})

instance FromJSON MedicalTranscriptionJob where
  parseJSON =
    withObject
      "MedicalTranscriptionJob"
      ( \x ->
          MedicalTranscriptionJob'
            <$> (x .:? "LanguageCode")
            <*> (x .:? "MediaFormat")
            <*> (x .:? "Media")
            <*> (x .:? "CreationTime")
            <*> (x .:? "CompletionTime")
            <*> (x .:? "Transcript")
            <*> (x .:? "StartTime")
            <*> (x .:? "TranscriptionJobStatus")
            <*> (x .:? "Specialty")
            <*> (x .:? "FailureReason")
            <*> (x .:? "MediaSampleRateHertz")
            <*> (x .:? "Type")
            <*> (x .:? "MedicalTranscriptionJobName")
            <*> (x .:? "Settings")
      )

instance Hashable MedicalTranscriptionJob

instance NFData MedicalTranscriptionJob
