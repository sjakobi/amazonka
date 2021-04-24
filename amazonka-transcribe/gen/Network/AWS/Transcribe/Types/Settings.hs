{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.Settings where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Transcribe.Types.VocabularyFilterMethod

-- | Provides optional settings for the @StartTranscriptionJob@ operation.
--
--
--
-- /See:/ 'settings' smart constructor.
data Settings = Settings'
  { _sVocabularyFilterMethod ::
      !(Maybe VocabularyFilterMethod),
    _sVocabularyFilterName :: !(Maybe Text),
    _sShowAlternatives :: !(Maybe Bool),
    _sChannelIdentification :: !(Maybe Bool),
    _sMaxAlternatives :: !(Maybe Nat),
    _sShowSpeakerLabels :: !(Maybe Bool),
    _sVocabularyName :: !(Maybe Text),
    _sMaxSpeakerLabels :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sVocabularyFilterMethod' - Set to @mask@ to remove filtered text from the transcript and replace it with three asterisks ("***") as placeholder text. Set to @remove@ to remove filtered text from the transcript without using placeholder text.
--
-- * 'sVocabularyFilterName' - The name of the vocabulary filter to use when transcribing the audio. The filter that you specify must have the same language code as the transcription job.
--
-- * 'sShowAlternatives' - Determines whether the transcription contains alternative transcriptions. If you set the @ShowAlternatives@ field to true, you must also set the maximum number of alternatives to return in the @MaxAlternatives@ field.
--
-- * 'sChannelIdentification' - Instructs Amazon Transcribe to process each audio channel separately and then merge the transcription output of each channel into a single transcription.  Amazon Transcribe also produces a transcription of each item detected on an audio channel, including the start time and end time of the item and alternative transcriptions of the item including the confidence that Amazon Transcribe has in the transcription. You can't set both @ShowSpeakerLabels@ and @ChannelIdentification@ in the same request. If you set both, your request returns a @BadRequestException@ .
--
-- * 'sMaxAlternatives' - The number of alternative transcriptions that the service should return. If you specify the @MaxAlternatives@ field, you must set the @ShowAlternatives@ field to true.
--
-- * 'sShowSpeakerLabels' - Determines whether the transcription job uses speaker recognition to identify different speakers in the input audio. Speaker recognition labels individual speakers in the audio file. If you set the @ShowSpeakerLabels@ field to true, you must also set the maximum number of speaker labels @MaxSpeakerLabels@ field. You can't set both @ShowSpeakerLabels@ and @ChannelIdentification@ in the same request. If you set both, your request returns a @BadRequestException@ .
--
-- * 'sVocabularyName' - The name of a vocabulary to use when processing the transcription job.
--
-- * 'sMaxSpeakerLabels' - The maximum number of speakers to identify in the input audio. If there are more speakers in the audio than this number, multiple speakers are identified as a single speaker. If you specify the @MaxSpeakerLabels@ field, you must set the @ShowSpeakerLabels@ field to true.
settings ::
  Settings
settings =
  Settings'
    { _sVocabularyFilterMethod = Nothing,
      _sVocabularyFilterName = Nothing,
      _sShowAlternatives = Nothing,
      _sChannelIdentification = Nothing,
      _sMaxAlternatives = Nothing,
      _sShowSpeakerLabels = Nothing,
      _sVocabularyName = Nothing,
      _sMaxSpeakerLabels = Nothing
    }

-- | Set to @mask@ to remove filtered text from the transcript and replace it with three asterisks ("***") as placeholder text. Set to @remove@ to remove filtered text from the transcript without using placeholder text.
sVocabularyFilterMethod :: Lens' Settings (Maybe VocabularyFilterMethod)
sVocabularyFilterMethod = lens _sVocabularyFilterMethod (\s a -> s {_sVocabularyFilterMethod = a})

-- | The name of the vocabulary filter to use when transcribing the audio. The filter that you specify must have the same language code as the transcription job.
sVocabularyFilterName :: Lens' Settings (Maybe Text)
sVocabularyFilterName = lens _sVocabularyFilterName (\s a -> s {_sVocabularyFilterName = a})

-- | Determines whether the transcription contains alternative transcriptions. If you set the @ShowAlternatives@ field to true, you must also set the maximum number of alternatives to return in the @MaxAlternatives@ field.
sShowAlternatives :: Lens' Settings (Maybe Bool)
sShowAlternatives = lens _sShowAlternatives (\s a -> s {_sShowAlternatives = a})

-- | Instructs Amazon Transcribe to process each audio channel separately and then merge the transcription output of each channel into a single transcription.  Amazon Transcribe also produces a transcription of each item detected on an audio channel, including the start time and end time of the item and alternative transcriptions of the item including the confidence that Amazon Transcribe has in the transcription. You can't set both @ShowSpeakerLabels@ and @ChannelIdentification@ in the same request. If you set both, your request returns a @BadRequestException@ .
sChannelIdentification :: Lens' Settings (Maybe Bool)
sChannelIdentification = lens _sChannelIdentification (\s a -> s {_sChannelIdentification = a})

-- | The number of alternative transcriptions that the service should return. If you specify the @MaxAlternatives@ field, you must set the @ShowAlternatives@ field to true.
sMaxAlternatives :: Lens' Settings (Maybe Natural)
sMaxAlternatives = lens _sMaxAlternatives (\s a -> s {_sMaxAlternatives = a}) . mapping _Nat

-- | Determines whether the transcription job uses speaker recognition to identify different speakers in the input audio. Speaker recognition labels individual speakers in the audio file. If you set the @ShowSpeakerLabels@ field to true, you must also set the maximum number of speaker labels @MaxSpeakerLabels@ field. You can't set both @ShowSpeakerLabels@ and @ChannelIdentification@ in the same request. If you set both, your request returns a @BadRequestException@ .
sShowSpeakerLabels :: Lens' Settings (Maybe Bool)
sShowSpeakerLabels = lens _sShowSpeakerLabels (\s a -> s {_sShowSpeakerLabels = a})

-- | The name of a vocabulary to use when processing the transcription job.
sVocabularyName :: Lens' Settings (Maybe Text)
sVocabularyName = lens _sVocabularyName (\s a -> s {_sVocabularyName = a})

-- | The maximum number of speakers to identify in the input audio. If there are more speakers in the audio than this number, multiple speakers are identified as a single speaker. If you specify the @MaxSpeakerLabels@ field, you must set the @ShowSpeakerLabels@ field to true.
sMaxSpeakerLabels :: Lens' Settings (Maybe Natural)
sMaxSpeakerLabels = lens _sMaxSpeakerLabels (\s a -> s {_sMaxSpeakerLabels = a}) . mapping _Nat

instance FromJSON Settings where
  parseJSON =
    withObject
      "Settings"
      ( \x ->
          Settings'
            <$> (x .:? "VocabularyFilterMethod")
            <*> (x .:? "VocabularyFilterName")
            <*> (x .:? "ShowAlternatives")
            <*> (x .:? "ChannelIdentification")
            <*> (x .:? "MaxAlternatives")
            <*> (x .:? "ShowSpeakerLabels")
            <*> (x .:? "VocabularyName")
            <*> (x .:? "MaxSpeakerLabels")
      )

instance Hashable Settings

instance NFData Settings

instance ToJSON Settings where
  toJSON Settings' {..} =
    object
      ( catMaybes
          [ ("VocabularyFilterMethod" .=)
              <$> _sVocabularyFilterMethod,
            ("VocabularyFilterName" .=)
              <$> _sVocabularyFilterName,
            ("ShowAlternatives" .=) <$> _sShowAlternatives,
            ("ChannelIdentification" .=)
              <$> _sChannelIdentification,
            ("MaxAlternatives" .=) <$> _sMaxAlternatives,
            ("ShowSpeakerLabels" .=) <$> _sShowSpeakerLabels,
            ("VocabularyName" .=) <$> _sVocabularyName,
            ("MaxSpeakerLabels" .=) <$> _sMaxSpeakerLabels
          ]
      )
