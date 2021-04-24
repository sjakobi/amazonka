{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.SynthesisTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.SynthesisTask where

import Network.AWS.Lens
import Network.AWS.Polly.Types.Engine
import Network.AWS.Polly.Types.LanguageCode
import Network.AWS.Polly.Types.OutputFormat
import Network.AWS.Polly.Types.SpeechMarkType
import Network.AWS.Polly.Types.TaskStatus
import Network.AWS.Polly.Types.TextType
import Network.AWS.Polly.Types.VoiceId
import Network.AWS.Prelude

-- | SynthesisTask object that provides information about a speech synthesis task.
--
--
--
-- /See:/ 'synthesisTask' smart constructor.
data SynthesisTask = SynthesisTask'
  { _stLanguageCode ::
      !(Maybe LanguageCode),
    _stCreationTime :: !(Maybe POSIX),
    _stOutputURI :: !(Maybe Text),
    _stSpeechMarkTypes ::
      !(Maybe [SpeechMarkType]),
    _stLexiconNames :: !(Maybe [Text]),
    _stVoiceId :: !(Maybe VoiceId),
    _stTaskId :: !(Maybe Text),
    _stTextType :: !(Maybe TextType),
    _stOutputFormat :: !(Maybe OutputFormat),
    _stSampleRate :: !(Maybe Text),
    _stTaskStatus :: !(Maybe TaskStatus),
    _stEngine :: !(Maybe Engine),
    _stRequestCharacters :: !(Maybe Int),
    _stTaskStatusReason :: !(Maybe Text),
    _stSNSTopicARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SynthesisTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stLanguageCode' - Optional language code for a synthesis task. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation for the @LanguageCode@ parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
--
-- * 'stCreationTime' - Timestamp for the time the synthesis task was started.
--
-- * 'stOutputURI' - Pathway for the output speech file.
--
-- * 'stSpeechMarkTypes' - The type of speech marks returned for the input text.
--
-- * 'stLexiconNames' - List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice.
--
-- * 'stVoiceId' - Voice ID to use for the synthesis.
--
-- * 'stTaskId' - The Amazon Polly generated identifier for a speech synthesis task.
--
-- * 'stTextType' - Specifies whether the input text is plain text or SSML. The default value is plain text.
--
-- * 'stOutputFormat' - The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.
--
-- * 'stSampleRate' - The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000". Valid values for pcm are "8000" and "16000" The default value is "16000".
--
-- * 'stTaskStatus' - Current status of the individual speech synthesis task.
--
-- * 'stEngine' - Specifies the engine (@standard@ or @neural@ ) for Amazon Polly to use when processing input text for speech synthesis. Using a voice that is not supported for the engine selected will result in an error.
--
-- * 'stRequestCharacters' - Number of billable characters synthesized.
--
-- * 'stTaskStatusReason' - Reason for the current status of a specific speech synthesis task, including errors if the task has failed.
--
-- * 'stSNSTopicARN' - ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
synthesisTask ::
  SynthesisTask
synthesisTask =
  SynthesisTask'
    { _stLanguageCode = Nothing,
      _stCreationTime = Nothing,
      _stOutputURI = Nothing,
      _stSpeechMarkTypes = Nothing,
      _stLexiconNames = Nothing,
      _stVoiceId = Nothing,
      _stTaskId = Nothing,
      _stTextType = Nothing,
      _stOutputFormat = Nothing,
      _stSampleRate = Nothing,
      _stTaskStatus = Nothing,
      _stEngine = Nothing,
      _stRequestCharacters = Nothing,
      _stTaskStatusReason = Nothing,
      _stSNSTopicARN = Nothing
    }

-- | Optional language code for a synthesis task. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation for the @LanguageCode@ parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
stLanguageCode :: Lens' SynthesisTask (Maybe LanguageCode)
stLanguageCode = lens _stLanguageCode (\s a -> s {_stLanguageCode = a})

-- | Timestamp for the time the synthesis task was started.
stCreationTime :: Lens' SynthesisTask (Maybe UTCTime)
stCreationTime = lens _stCreationTime (\s a -> s {_stCreationTime = a}) . mapping _Time

-- | Pathway for the output speech file.
stOutputURI :: Lens' SynthesisTask (Maybe Text)
stOutputURI = lens _stOutputURI (\s a -> s {_stOutputURI = a})

-- | The type of speech marks returned for the input text.
stSpeechMarkTypes :: Lens' SynthesisTask [SpeechMarkType]
stSpeechMarkTypes = lens _stSpeechMarkTypes (\s a -> s {_stSpeechMarkTypes = a}) . _Default . _Coerce

-- | List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice.
stLexiconNames :: Lens' SynthesisTask [Text]
stLexiconNames = lens _stLexiconNames (\s a -> s {_stLexiconNames = a}) . _Default . _Coerce

-- | Voice ID to use for the synthesis.
stVoiceId :: Lens' SynthesisTask (Maybe VoiceId)
stVoiceId = lens _stVoiceId (\s a -> s {_stVoiceId = a})

-- | The Amazon Polly generated identifier for a speech synthesis task.
stTaskId :: Lens' SynthesisTask (Maybe Text)
stTaskId = lens _stTaskId (\s a -> s {_stTaskId = a})

-- | Specifies whether the input text is plain text or SSML. The default value is plain text.
stTextType :: Lens' SynthesisTask (Maybe TextType)
stTextType = lens _stTextType (\s a -> s {_stTextType = a})

-- | The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.
stOutputFormat :: Lens' SynthesisTask (Maybe OutputFormat)
stOutputFormat = lens _stOutputFormat (\s a -> s {_stOutputFormat = a})

-- | The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000". Valid values for pcm are "8000" and "16000" The default value is "16000".
stSampleRate :: Lens' SynthesisTask (Maybe Text)
stSampleRate = lens _stSampleRate (\s a -> s {_stSampleRate = a})

-- | Current status of the individual speech synthesis task.
stTaskStatus :: Lens' SynthesisTask (Maybe TaskStatus)
stTaskStatus = lens _stTaskStatus (\s a -> s {_stTaskStatus = a})

-- | Specifies the engine (@standard@ or @neural@ ) for Amazon Polly to use when processing input text for speech synthesis. Using a voice that is not supported for the engine selected will result in an error.
stEngine :: Lens' SynthesisTask (Maybe Engine)
stEngine = lens _stEngine (\s a -> s {_stEngine = a})

-- | Number of billable characters synthesized.
stRequestCharacters :: Lens' SynthesisTask (Maybe Int)
stRequestCharacters = lens _stRequestCharacters (\s a -> s {_stRequestCharacters = a})

-- | Reason for the current status of a specific speech synthesis task, including errors if the task has failed.
stTaskStatusReason :: Lens' SynthesisTask (Maybe Text)
stTaskStatusReason = lens _stTaskStatusReason (\s a -> s {_stTaskStatusReason = a})

-- | ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
stSNSTopicARN :: Lens' SynthesisTask (Maybe Text)
stSNSTopicARN = lens _stSNSTopicARN (\s a -> s {_stSNSTopicARN = a})

instance FromJSON SynthesisTask where
  parseJSON =
    withObject
      "SynthesisTask"
      ( \x ->
          SynthesisTask'
            <$> (x .:? "LanguageCode")
            <*> (x .:? "CreationTime")
            <*> (x .:? "OutputUri")
            <*> (x .:? "SpeechMarkTypes" .!= mempty)
            <*> (x .:? "LexiconNames" .!= mempty)
            <*> (x .:? "VoiceId")
            <*> (x .:? "TaskId")
            <*> (x .:? "TextType")
            <*> (x .:? "OutputFormat")
            <*> (x .:? "SampleRate")
            <*> (x .:? "TaskStatus")
            <*> (x .:? "Engine")
            <*> (x .:? "RequestCharacters")
            <*> (x .:? "TaskStatusReason")
            <*> (x .:? "SnsTopicArn")
      )

instance Hashable SynthesisTask

instance NFData SynthesisTask
