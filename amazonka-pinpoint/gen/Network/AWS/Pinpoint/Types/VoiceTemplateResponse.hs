{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.VoiceTemplateResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.VoiceTemplateResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.TemplateType
import Network.AWS.Prelude

-- | Provides information about the content and settings for a message template that can be used in messages that are sent through the voice channel.
--
--
--
-- /See:/ 'voiceTemplateResponse' smart constructor.
data VoiceTemplateResponse = VoiceTemplateResponse'
  { _vLanguageCode ::
      !(Maybe Text),
    _vTemplateDescription ::
      !(Maybe Text),
    _vVoiceId :: !(Maybe Text),
    _vBody :: !(Maybe Text),
    _vARN :: !(Maybe Text),
    _vVersion :: !(Maybe Text),
    _vDefaultSubstitutions ::
      !(Maybe Text),
    _vTags ::
      !(Maybe (Map Text Text)),
    _vLastModifiedDate :: !Text,
    _vCreationDate :: !Text,
    _vTemplateName :: !Text,
    _vTemplateType ::
      !TemplateType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'VoiceTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vLanguageCode' - The code for the language that's used when synthesizing the text of the script in messages that are based on the message template. For a list of supported languages and the code for each one, see the <https://docs.aws.amazon.com/polly/latest/dg/what-is.html Amazon Polly Developer Guide> .
--
-- * 'vTemplateDescription' - The custom description of the message template.
--
-- * 'vVoiceId' - The name of the voice that's used when delivering messages that are based on the message template. For a list of supported voices, see the <https://docs.aws.amazon.com/polly/latest/dg/what-is.html Amazon Polly Developer Guide> .
--
-- * 'vBody' - The text of the script that's used in messages that are based on the message template, in plain text format.
--
-- * 'vARN' - The Amazon Resource Name (ARN) of the message template.
--
-- * 'vVersion' - The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
--
-- * 'vDefaultSubstitutions' - The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
--
-- * 'vTags' - A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
--
-- * 'vLastModifiedDate' - The date, in ISO 8601 format, when the message template was last modified.
--
-- * 'vCreationDate' - The date, in ISO 8601 format, when the message template was created.
--
-- * 'vTemplateName' - The name of the message template.
--
-- * 'vTemplateType' - The type of channel that the message template is designed for. For a voice template, this value is VOICE.
voiceTemplateResponse ::
  -- | 'vLastModifiedDate'
  Text ->
  -- | 'vCreationDate'
  Text ->
  -- | 'vTemplateName'
  Text ->
  -- | 'vTemplateType'
  TemplateType ->
  VoiceTemplateResponse
voiceTemplateResponse
  pLastModifiedDate_
  pCreationDate_
  pTemplateName_
  pTemplateType_ =
    VoiceTemplateResponse'
      { _vLanguageCode = Nothing,
        _vTemplateDescription = Nothing,
        _vVoiceId = Nothing,
        _vBody = Nothing,
        _vARN = Nothing,
        _vVersion = Nothing,
        _vDefaultSubstitutions = Nothing,
        _vTags = Nothing,
        _vLastModifiedDate = pLastModifiedDate_,
        _vCreationDate = pCreationDate_,
        _vTemplateName = pTemplateName_,
        _vTemplateType = pTemplateType_
      }

-- | The code for the language that's used when synthesizing the text of the script in messages that are based on the message template. For a list of supported languages and the code for each one, see the <https://docs.aws.amazon.com/polly/latest/dg/what-is.html Amazon Polly Developer Guide> .
vLanguageCode :: Lens' VoiceTemplateResponse (Maybe Text)
vLanguageCode = lens _vLanguageCode (\s a -> s {_vLanguageCode = a})

-- | The custom description of the message template.
vTemplateDescription :: Lens' VoiceTemplateResponse (Maybe Text)
vTemplateDescription = lens _vTemplateDescription (\s a -> s {_vTemplateDescription = a})

-- | The name of the voice that's used when delivering messages that are based on the message template. For a list of supported voices, see the <https://docs.aws.amazon.com/polly/latest/dg/what-is.html Amazon Polly Developer Guide> .
vVoiceId :: Lens' VoiceTemplateResponse (Maybe Text)
vVoiceId = lens _vVoiceId (\s a -> s {_vVoiceId = a})

-- | The text of the script that's used in messages that are based on the message template, in plain text format.
vBody :: Lens' VoiceTemplateResponse (Maybe Text)
vBody = lens _vBody (\s a -> s {_vBody = a})

-- | The Amazon Resource Name (ARN) of the message template.
vARN :: Lens' VoiceTemplateResponse (Maybe Text)
vARN = lens _vARN (\s a -> s {_vARN = a})

-- | The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
vVersion :: Lens' VoiceTemplateResponse (Maybe Text)
vVersion = lens _vVersion (\s a -> s {_vVersion = a})

-- | The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
vDefaultSubstitutions :: Lens' VoiceTemplateResponse (Maybe Text)
vDefaultSubstitutions = lens _vDefaultSubstitutions (\s a -> s {_vDefaultSubstitutions = a})

-- | A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
vTags :: Lens' VoiceTemplateResponse (HashMap Text Text)
vTags = lens _vTags (\s a -> s {_vTags = a}) . _Default . _Map

-- | The date, in ISO 8601 format, when the message template was last modified.
vLastModifiedDate :: Lens' VoiceTemplateResponse Text
vLastModifiedDate = lens _vLastModifiedDate (\s a -> s {_vLastModifiedDate = a})

-- | The date, in ISO 8601 format, when the message template was created.
vCreationDate :: Lens' VoiceTemplateResponse Text
vCreationDate = lens _vCreationDate (\s a -> s {_vCreationDate = a})

-- | The name of the message template.
vTemplateName :: Lens' VoiceTemplateResponse Text
vTemplateName = lens _vTemplateName (\s a -> s {_vTemplateName = a})

-- | The type of channel that the message template is designed for. For a voice template, this value is VOICE.
vTemplateType :: Lens' VoiceTemplateResponse TemplateType
vTemplateType = lens _vTemplateType (\s a -> s {_vTemplateType = a})

instance FromJSON VoiceTemplateResponse where
  parseJSON =
    withObject
      "VoiceTemplateResponse"
      ( \x ->
          VoiceTemplateResponse'
            <$> (x .:? "LanguageCode")
            <*> (x .:? "TemplateDescription")
            <*> (x .:? "VoiceId")
            <*> (x .:? "Body")
            <*> (x .:? "Arn")
            <*> (x .:? "Version")
            <*> (x .:? "DefaultSubstitutions")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .: "LastModifiedDate")
            <*> (x .: "CreationDate")
            <*> (x .: "TemplateName")
            <*> (x .: "TemplateType")
      )

instance Hashable VoiceTemplateResponse

instance NFData VoiceTemplateResponse
