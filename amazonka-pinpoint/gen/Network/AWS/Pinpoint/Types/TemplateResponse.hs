{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.TemplateResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.TemplateResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.TemplateType
import Network.AWS.Prelude

-- | Provides information about a message template that's associated with your Amazon Pinpoint account.
--
--
--
-- /See:/ 'templateResponse' smart constructor.
data TemplateResponse = TemplateResponse'
  { _trTemplateDescription ::
      !(Maybe Text),
    _trARN :: !(Maybe Text),
    _trVersion :: !(Maybe Text),
    _trDefaultSubstitutions ::
      !(Maybe Text),
    _trTags :: !(Maybe (Map Text Text)),
    _trLastModifiedDate :: !Text,
    _trCreationDate :: !Text,
    _trTemplateName :: !Text,
    _trTemplateType :: !TemplateType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trTemplateDescription' - The custom description of the message template. This value isn't included in a TemplateResponse object. To retrieve the description of a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the description for.
--
-- * 'trARN' - The Amazon Resource Name (ARN) of the message template. This value isn't included in a TemplateResponse object. To retrieve the ARN of a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the ARN for.
--
-- * 'trVersion' - The unique identifier, as an integer, for the active version of the message template.
--
-- * 'trDefaultSubstitutions' - The JSON object that specifies the default values that are used for message variables in the message template. This object isn't included in a TemplateResponse object. To retrieve this object for a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the object for.
--
-- * 'trTags' - A map of key-value pairs that identifies the tags that are associated with the message template. This object isn't included in a TemplateResponse object. To retrieve this object for a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the object for.
--
-- * 'trLastModifiedDate' - The date, in ISO 8601 format, when the message template was last modified.
--
-- * 'trCreationDate' - The date, in ISO 8601 format, when the message template was created.
--
-- * 'trTemplateName' - The name of the message template.
--
-- * 'trTemplateType' - The type of channel that the message template is designed for. Possible values are: EMAIL, PUSH, SMS, and VOICE.
templateResponse ::
  -- | 'trLastModifiedDate'
  Text ->
  -- | 'trCreationDate'
  Text ->
  -- | 'trTemplateName'
  Text ->
  -- | 'trTemplateType'
  TemplateType ->
  TemplateResponse
templateResponse
  pLastModifiedDate_
  pCreationDate_
  pTemplateName_
  pTemplateType_ =
    TemplateResponse'
      { _trTemplateDescription = Nothing,
        _trARN = Nothing,
        _trVersion = Nothing,
        _trDefaultSubstitutions = Nothing,
        _trTags = Nothing,
        _trLastModifiedDate = pLastModifiedDate_,
        _trCreationDate = pCreationDate_,
        _trTemplateName = pTemplateName_,
        _trTemplateType = pTemplateType_
      }

-- | The custom description of the message template. This value isn't included in a TemplateResponse object. To retrieve the description of a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the description for.
trTemplateDescription :: Lens' TemplateResponse (Maybe Text)
trTemplateDescription = lens _trTemplateDescription (\s a -> s {_trTemplateDescription = a})

-- | The Amazon Resource Name (ARN) of the message template. This value isn't included in a TemplateResponse object. To retrieve the ARN of a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the ARN for.
trARN :: Lens' TemplateResponse (Maybe Text)
trARN = lens _trARN (\s a -> s {_trARN = a})

-- | The unique identifier, as an integer, for the active version of the message template.
trVersion :: Lens' TemplateResponse (Maybe Text)
trVersion = lens _trVersion (\s a -> s {_trVersion = a})

-- | The JSON object that specifies the default values that are used for message variables in the message template. This object isn't included in a TemplateResponse object. To retrieve this object for a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the object for.
trDefaultSubstitutions :: Lens' TemplateResponse (Maybe Text)
trDefaultSubstitutions = lens _trDefaultSubstitutions (\s a -> s {_trDefaultSubstitutions = a})

-- | A map of key-value pairs that identifies the tags that are associated with the message template. This object isn't included in a TemplateResponse object. To retrieve this object for a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the object for.
trTags :: Lens' TemplateResponse (HashMap Text Text)
trTags = lens _trTags (\s a -> s {_trTags = a}) . _Default . _Map

-- | The date, in ISO 8601 format, when the message template was last modified.
trLastModifiedDate :: Lens' TemplateResponse Text
trLastModifiedDate = lens _trLastModifiedDate (\s a -> s {_trLastModifiedDate = a})

-- | The date, in ISO 8601 format, when the message template was created.
trCreationDate :: Lens' TemplateResponse Text
trCreationDate = lens _trCreationDate (\s a -> s {_trCreationDate = a})

-- | The name of the message template.
trTemplateName :: Lens' TemplateResponse Text
trTemplateName = lens _trTemplateName (\s a -> s {_trTemplateName = a})

-- | The type of channel that the message template is designed for. Possible values are: EMAIL, PUSH, SMS, and VOICE.
trTemplateType :: Lens' TemplateResponse TemplateType
trTemplateType = lens _trTemplateType (\s a -> s {_trTemplateType = a})

instance FromJSON TemplateResponse where
  parseJSON =
    withObject
      "TemplateResponse"
      ( \x ->
          TemplateResponse'
            <$> (x .:? "TemplateDescription")
            <*> (x .:? "Arn")
            <*> (x .:? "Version")
            <*> (x .:? "DefaultSubstitutions")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .: "LastModifiedDate")
            <*> (x .: "CreationDate")
            <*> (x .: "TemplateName")
            <*> (x .: "TemplateType")
      )

instance Hashable TemplateResponse

instance NFData TemplateResponse
