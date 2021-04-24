{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EmailTemplateResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EmailTemplateResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.TemplateType
import Network.AWS.Prelude

-- | Provides information about the content and settings for a message template that can be used in messages that are sent through the email channel.
--
--
--
-- /See:/ 'emailTemplateResponse' smart constructor.
data EmailTemplateResponse = EmailTemplateResponse'
  { _etrTemplateDescription ::
      !(Maybe Text),
    _etrARN :: !(Maybe Text),
    _etrVersion ::
      !(Maybe Text),
    _etrTextPart ::
      !(Maybe Text),
    _etrDefaultSubstitutions ::
      !(Maybe Text),
    _etrSubject ::
      !(Maybe Text),
    _etrTags ::
      !(Maybe (Map Text Text)),
    _etrRecommenderId ::
      !(Maybe Text),
    _etrHTMLPart ::
      !(Maybe Text),
    _etrLastModifiedDate ::
      !Text,
    _etrCreationDate :: !Text,
    _etrTemplateName :: !Text,
    _etrTemplateType ::
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

-- | Creates a value of 'EmailTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etrTemplateDescription' - The custom description of the message template.
--
-- * 'etrARN' - The Amazon Resource Name (ARN) of the message template.
--
-- * 'etrVersion' - The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
--
-- * 'etrTextPart' - The message body, in plain text format, that's used in email messages that are based on the message template.
--
-- * 'etrDefaultSubstitutions' - The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
--
-- * 'etrSubject' - The subject line, or title, that's used in email messages that are based on the message template.
--
-- * 'etrTags' - A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
--
-- * 'etrRecommenderId' - The unique identifier for the recommender model that's used by the message template.
--
-- * 'etrHTMLPart' - The message body, in HTML format, that's used in email messages that are based on the message template.
--
-- * 'etrLastModifiedDate' - The date, in ISO 8601 format, when the message template was last modified.
--
-- * 'etrCreationDate' - The date, in ISO 8601 format, when the message template was created.
--
-- * 'etrTemplateName' - The name of the message template.
--
-- * 'etrTemplateType' - The type of channel that the message template is designed for. For an email template, this value is EMAIL.
emailTemplateResponse ::
  -- | 'etrLastModifiedDate'
  Text ->
  -- | 'etrCreationDate'
  Text ->
  -- | 'etrTemplateName'
  Text ->
  -- | 'etrTemplateType'
  TemplateType ->
  EmailTemplateResponse
emailTemplateResponse
  pLastModifiedDate_
  pCreationDate_
  pTemplateName_
  pTemplateType_ =
    EmailTemplateResponse'
      { _etrTemplateDescription =
          Nothing,
        _etrARN = Nothing,
        _etrVersion = Nothing,
        _etrTextPart = Nothing,
        _etrDefaultSubstitutions = Nothing,
        _etrSubject = Nothing,
        _etrTags = Nothing,
        _etrRecommenderId = Nothing,
        _etrHTMLPart = Nothing,
        _etrLastModifiedDate = pLastModifiedDate_,
        _etrCreationDate = pCreationDate_,
        _etrTemplateName = pTemplateName_,
        _etrTemplateType = pTemplateType_
      }

-- | The custom description of the message template.
etrTemplateDescription :: Lens' EmailTemplateResponse (Maybe Text)
etrTemplateDescription = lens _etrTemplateDescription (\s a -> s {_etrTemplateDescription = a})

-- | The Amazon Resource Name (ARN) of the message template.
etrARN :: Lens' EmailTemplateResponse (Maybe Text)
etrARN = lens _etrARN (\s a -> s {_etrARN = a})

-- | The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
etrVersion :: Lens' EmailTemplateResponse (Maybe Text)
etrVersion = lens _etrVersion (\s a -> s {_etrVersion = a})

-- | The message body, in plain text format, that's used in email messages that are based on the message template.
etrTextPart :: Lens' EmailTemplateResponse (Maybe Text)
etrTextPart = lens _etrTextPart (\s a -> s {_etrTextPart = a})

-- | The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
etrDefaultSubstitutions :: Lens' EmailTemplateResponse (Maybe Text)
etrDefaultSubstitutions = lens _etrDefaultSubstitutions (\s a -> s {_etrDefaultSubstitutions = a})

-- | The subject line, or title, that's used in email messages that are based on the message template.
etrSubject :: Lens' EmailTemplateResponse (Maybe Text)
etrSubject = lens _etrSubject (\s a -> s {_etrSubject = a})

-- | A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
etrTags :: Lens' EmailTemplateResponse (HashMap Text Text)
etrTags = lens _etrTags (\s a -> s {_etrTags = a}) . _Default . _Map

-- | The unique identifier for the recommender model that's used by the message template.
etrRecommenderId :: Lens' EmailTemplateResponse (Maybe Text)
etrRecommenderId = lens _etrRecommenderId (\s a -> s {_etrRecommenderId = a})

-- | The message body, in HTML format, that's used in email messages that are based on the message template.
etrHTMLPart :: Lens' EmailTemplateResponse (Maybe Text)
etrHTMLPart = lens _etrHTMLPart (\s a -> s {_etrHTMLPart = a})

-- | The date, in ISO 8601 format, when the message template was last modified.
etrLastModifiedDate :: Lens' EmailTemplateResponse Text
etrLastModifiedDate = lens _etrLastModifiedDate (\s a -> s {_etrLastModifiedDate = a})

-- | The date, in ISO 8601 format, when the message template was created.
etrCreationDate :: Lens' EmailTemplateResponse Text
etrCreationDate = lens _etrCreationDate (\s a -> s {_etrCreationDate = a})

-- | The name of the message template.
etrTemplateName :: Lens' EmailTemplateResponse Text
etrTemplateName = lens _etrTemplateName (\s a -> s {_etrTemplateName = a})

-- | The type of channel that the message template is designed for. For an email template, this value is EMAIL.
etrTemplateType :: Lens' EmailTemplateResponse TemplateType
etrTemplateType = lens _etrTemplateType (\s a -> s {_etrTemplateType = a})

instance FromJSON EmailTemplateResponse where
  parseJSON =
    withObject
      "EmailTemplateResponse"
      ( \x ->
          EmailTemplateResponse'
            <$> (x .:? "TemplateDescription")
            <*> (x .:? "Arn")
            <*> (x .:? "Version")
            <*> (x .:? "TextPart")
            <*> (x .:? "DefaultSubstitutions")
            <*> (x .:? "Subject")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "RecommenderId")
            <*> (x .:? "HtmlPart")
            <*> (x .: "LastModifiedDate")
            <*> (x .: "CreationDate")
            <*> (x .: "TemplateName")
            <*> (x .: "TemplateType")
      )

instance Hashable EmailTemplateResponse

instance NFData EmailTemplateResponse
