{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.SynthesizeSpeech
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input must be valid, well-formed SSML. Some alphabets might not be available with all the voices (for example, Cyrillic might not be read at all by English voices) unless phoneme mapping is used. For more information, see <https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html How it Works> .
module Network.AWS.Polly.SynthesizeSpeech
  ( -- * Creating a Request
    synthesizeSpeech,
    SynthesizeSpeech,

    -- * Request Lenses
    ssLanguageCode,
    ssSpeechMarkTypes,
    ssLexiconNames,
    ssTextType,
    ssSampleRate,
    ssEngine,
    ssOutputFormat,
    ssText,
    ssVoiceId,

    -- * Destructuring the Response
    synthesizeSpeechResponse,
    SynthesizeSpeechResponse,

    -- * Response Lenses
    ssrrsContentType,
    ssrrsRequestCharacters,
    ssrrsResponseStatus,
    ssrrsAudioStream,
  )
where

import Network.AWS.Lens
import Network.AWS.Polly.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'synthesizeSpeech' smart constructor.
data SynthesizeSpeech = SynthesizeSpeech'
  { _ssLanguageCode ::
      !(Maybe LanguageCode),
    _ssSpeechMarkTypes ::
      !(Maybe [SpeechMarkType]),
    _ssLexiconNames :: !(Maybe [Text]),
    _ssTextType :: !(Maybe TextType),
    _ssSampleRate :: !(Maybe Text),
    _ssEngine :: !(Maybe Engine),
    _ssOutputFormat :: !OutputFormat,
    _ssText :: !Text,
    _ssVoiceId :: !VoiceId
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SynthesizeSpeech' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssLanguageCode' - Optional language code for the Synthesize Speech request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation for the @LanguageCode@ parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
--
-- * 'ssSpeechMarkTypes' - The type of speech marks returned for the input text.
--
-- * 'ssLexiconNames' - List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see <https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html PutLexicon> .
--
-- * 'ssTextType' - Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see <https://docs.aws.amazon.com/polly/latest/dg/ssml.html Using SSML> .
--
-- * 'ssSampleRate' - The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000". Valid values for pcm are "8000" and "16000" The default value is "16000".
--
-- * 'ssEngine' - Specifies the engine (@standard@ or @neural@ ) for Amazon Polly to use when processing input text for speech synthesis. For information on Amazon Polly voices and which voices are available in standard-only, NTTS-only, and both standard and NTTS formats, see <https://docs.aws.amazon.com/polly/latest/dg/voicelist.html Available Voices> . __NTTS-only voices__  When using NTTS-only voices such as Kevin (en-US), this parameter is required and must be set to @neural@ . If the engine is not specified, or is set to @standard@ , this will result in an error.  Type: String Valid Values: @standard@ | @neural@  Required: Yes __Standard voices__  For standard voices, this is not required; the engine parameter defaults to @standard@ . If the engine is not specified, or is set to @standard@ and an NTTS-only voice is selected, this will result in an error.
--
-- * 'ssOutputFormat' - The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.  When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.
--
-- * 'ssText' - Input text to synthesize. If you specify @ssml@ as the @TextType@ , follow the SSML format for the input text.
--
-- * 'ssVoiceId' - Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation.
synthesizeSpeech ::
  -- | 'ssOutputFormat'
  OutputFormat ->
  -- | 'ssText'
  Text ->
  -- | 'ssVoiceId'
  VoiceId ->
  SynthesizeSpeech
synthesizeSpeech pOutputFormat_ pText_ pVoiceId_ =
  SynthesizeSpeech'
    { _ssLanguageCode = Nothing,
      _ssSpeechMarkTypes = Nothing,
      _ssLexiconNames = Nothing,
      _ssTextType = Nothing,
      _ssSampleRate = Nothing,
      _ssEngine = Nothing,
      _ssOutputFormat = pOutputFormat_,
      _ssText = pText_,
      _ssVoiceId = pVoiceId_
    }

-- | Optional language code for the Synthesize Speech request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation for the @LanguageCode@ parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
ssLanguageCode :: Lens' SynthesizeSpeech (Maybe LanguageCode)
ssLanguageCode = lens _ssLanguageCode (\s a -> s {_ssLanguageCode = a})

-- | The type of speech marks returned for the input text.
ssSpeechMarkTypes :: Lens' SynthesizeSpeech [SpeechMarkType]
ssSpeechMarkTypes = lens _ssSpeechMarkTypes (\s a -> s {_ssSpeechMarkTypes = a}) . _Default . _Coerce

-- | List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see <https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html PutLexicon> .
ssLexiconNames :: Lens' SynthesizeSpeech [Text]
ssLexiconNames = lens _ssLexiconNames (\s a -> s {_ssLexiconNames = a}) . _Default . _Coerce

-- | Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see <https://docs.aws.amazon.com/polly/latest/dg/ssml.html Using SSML> .
ssTextType :: Lens' SynthesizeSpeech (Maybe TextType)
ssTextType = lens _ssTextType (\s a -> s {_ssTextType = a})

-- | The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000". Valid values for pcm are "8000" and "16000" The default value is "16000".
ssSampleRate :: Lens' SynthesizeSpeech (Maybe Text)
ssSampleRate = lens _ssSampleRate (\s a -> s {_ssSampleRate = a})

-- | Specifies the engine (@standard@ or @neural@ ) for Amazon Polly to use when processing input text for speech synthesis. For information on Amazon Polly voices and which voices are available in standard-only, NTTS-only, and both standard and NTTS formats, see <https://docs.aws.amazon.com/polly/latest/dg/voicelist.html Available Voices> . __NTTS-only voices__  When using NTTS-only voices such as Kevin (en-US), this parameter is required and must be set to @neural@ . If the engine is not specified, or is set to @standard@ , this will result in an error.  Type: String Valid Values: @standard@ | @neural@  Required: Yes __Standard voices__  For standard voices, this is not required; the engine parameter defaults to @standard@ . If the engine is not specified, or is set to @standard@ and an NTTS-only voice is selected, this will result in an error.
ssEngine :: Lens' SynthesizeSpeech (Maybe Engine)
ssEngine = lens _ssEngine (\s a -> s {_ssEngine = a})

-- | The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.  When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.
ssOutputFormat :: Lens' SynthesizeSpeech OutputFormat
ssOutputFormat = lens _ssOutputFormat (\s a -> s {_ssOutputFormat = a})

-- | Input text to synthesize. If you specify @ssml@ as the @TextType@ , follow the SSML format for the input text.
ssText :: Lens' SynthesizeSpeech Text
ssText = lens _ssText (\s a -> s {_ssText = a})

-- | Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation.
ssVoiceId :: Lens' SynthesizeSpeech VoiceId
ssVoiceId = lens _ssVoiceId (\s a -> s {_ssVoiceId = a})

instance AWSRequest SynthesizeSpeech where
  type Rs SynthesizeSpeech = SynthesizeSpeechResponse
  request = postJSON polly
  response =
    receiveBody
      ( \s h x ->
          SynthesizeSpeechResponse'
            <$> (h .#? "Content-Type")
            <*> (h .#? "x-amzn-RequestCharacters")
            <*> (pure (fromEnum s))
            <*> (pure x)
      )

instance Hashable SynthesizeSpeech

instance NFData SynthesizeSpeech

instance ToHeaders SynthesizeSpeech where
  toHeaders = const mempty

instance ToJSON SynthesizeSpeech where
  toJSON SynthesizeSpeech' {..} =
    object
      ( catMaybes
          [ ("LanguageCode" .=) <$> _ssLanguageCode,
            ("SpeechMarkTypes" .=) <$> _ssSpeechMarkTypes,
            ("LexiconNames" .=) <$> _ssLexiconNames,
            ("TextType" .=) <$> _ssTextType,
            ("SampleRate" .=) <$> _ssSampleRate,
            ("Engine" .=) <$> _ssEngine,
            Just ("OutputFormat" .= _ssOutputFormat),
            Just ("Text" .= _ssText),
            Just ("VoiceId" .= _ssVoiceId)
          ]
      )

instance ToPath SynthesizeSpeech where
  toPath = const "/v1/speech"

instance ToQuery SynthesizeSpeech where
  toQuery = const mempty

-- | /See:/ 'synthesizeSpeechResponse' smart constructor.
data SynthesizeSpeechResponse = SynthesizeSpeechResponse'
  { _ssrrsContentType ::
      !(Maybe Text),
    _ssrrsRequestCharacters ::
      !(Maybe Int),
    _ssrrsResponseStatus ::
      !Int,
    _ssrrsAudioStream ::
      !RsBody
  }
  deriving (Show, Generic)

-- | Creates a value of 'SynthesizeSpeechResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrrsContentType' - Specifies the type audio stream. This should reflect the @OutputFormat@ parameter in your request.      * If you request @mp3@ as the @OutputFormat@ , the @ContentType@ returned is audio/mpeg.      * If you request @ogg_vorbis@ as the @OutputFormat@ , the @ContentType@ returned is audio/ogg.      * If you request @pcm@ as the @OutputFormat@ , the @ContentType@ returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.      * If you request @json@ as the @OutputFormat@ , the @ContentType@ returned is audio/json.
--
-- * 'ssrrsRequestCharacters' - Number of characters synthesized.
--
-- * 'ssrrsResponseStatus' - -- | The response status code.
--
-- * 'ssrrsAudioStream' - Stream containing the synthesized speech.
synthesizeSpeechResponse ::
  -- | 'ssrrsResponseStatus'
  Int ->
  -- | 'ssrrsAudioStream'
  RsBody ->
  SynthesizeSpeechResponse
synthesizeSpeechResponse
  pResponseStatus_
  pAudioStream_ =
    SynthesizeSpeechResponse'
      { _ssrrsContentType =
          Nothing,
        _ssrrsRequestCharacters = Nothing,
        _ssrrsResponseStatus = pResponseStatus_,
        _ssrrsAudioStream = pAudioStream_
      }

-- | Specifies the type audio stream. This should reflect the @OutputFormat@ parameter in your request.      * If you request @mp3@ as the @OutputFormat@ , the @ContentType@ returned is audio/mpeg.      * If you request @ogg_vorbis@ as the @OutputFormat@ , the @ContentType@ returned is audio/ogg.      * If you request @pcm@ as the @OutputFormat@ , the @ContentType@ returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.      * If you request @json@ as the @OutputFormat@ , the @ContentType@ returned is audio/json.
ssrrsContentType :: Lens' SynthesizeSpeechResponse (Maybe Text)
ssrrsContentType = lens _ssrrsContentType (\s a -> s {_ssrrsContentType = a})

-- | Number of characters synthesized.
ssrrsRequestCharacters :: Lens' SynthesizeSpeechResponse (Maybe Int)
ssrrsRequestCharacters = lens _ssrrsRequestCharacters (\s a -> s {_ssrrsRequestCharacters = a})

-- | -- | The response status code.
ssrrsResponseStatus :: Lens' SynthesizeSpeechResponse Int
ssrrsResponseStatus = lens _ssrrsResponseStatus (\s a -> s {_ssrrsResponseStatus = a})

-- | Stream containing the synthesized speech.
ssrrsAudioStream :: Lens' SynthesizeSpeechResponse RsBody
ssrrsAudioStream = lens _ssrrsAudioStream (\s a -> s {_ssrrsAudioStream = a})
