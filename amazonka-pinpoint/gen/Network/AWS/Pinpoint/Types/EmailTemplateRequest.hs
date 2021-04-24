{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EmailTemplateRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EmailTemplateRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the content and settings for a message template that can be used in messages that are sent through the email channel.
--
--
--
-- /See:/ 'emailTemplateRequest' smart constructor.
data EmailTemplateRequest = EmailTemplateRequest'
  { _eTemplateDescription ::
      !(Maybe Text),
    _eTextPart :: !(Maybe Text),
    _eDefaultSubstitutions ::
      !(Maybe Text),
    _eSubject :: !(Maybe Text),
    _eTags ::
      !(Maybe (Map Text Text)),
    _eRecommenderId ::
      !(Maybe Text),
    _eHTMLPart :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EmailTemplateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eTemplateDescription' - A custom description of the message template.
--
-- * 'eTextPart' - The message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.
--
-- * 'eDefaultSubstitutions' - A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.
--
-- * 'eSubject' - The subject line, or title, to use in email messages that are based on the message template.
--
-- * 'eTags' - A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.
--
-- * 'eRecommenderId' - The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.
--
-- * 'eHTMLPart' - The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.
emailTemplateRequest ::
  EmailTemplateRequest
emailTemplateRequest =
  EmailTemplateRequest'
    { _eTemplateDescription =
        Nothing,
      _eTextPart = Nothing,
      _eDefaultSubstitutions = Nothing,
      _eSubject = Nothing,
      _eTags = Nothing,
      _eRecommenderId = Nothing,
      _eHTMLPart = Nothing
    }

-- | A custom description of the message template.
eTemplateDescription :: Lens' EmailTemplateRequest (Maybe Text)
eTemplateDescription = lens _eTemplateDescription (\s a -> s {_eTemplateDescription = a})

-- | The message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.
eTextPart :: Lens' EmailTemplateRequest (Maybe Text)
eTextPart = lens _eTextPart (\s a -> s {_eTextPart = a})

-- | A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.
eDefaultSubstitutions :: Lens' EmailTemplateRequest (Maybe Text)
eDefaultSubstitutions = lens _eDefaultSubstitutions (\s a -> s {_eDefaultSubstitutions = a})

-- | The subject line, or title, to use in email messages that are based on the message template.
eSubject :: Lens' EmailTemplateRequest (Maybe Text)
eSubject = lens _eSubject (\s a -> s {_eSubject = a})

-- | A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.
eTags :: Lens' EmailTemplateRequest (HashMap Text Text)
eTags = lens _eTags (\s a -> s {_eTags = a}) . _Default . _Map

-- | The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.
eRecommenderId :: Lens' EmailTemplateRequest (Maybe Text)
eRecommenderId = lens _eRecommenderId (\s a -> s {_eRecommenderId = a})

-- | The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.
eHTMLPart :: Lens' EmailTemplateRequest (Maybe Text)
eHTMLPart = lens _eHTMLPart (\s a -> s {_eHTMLPart = a})

instance Hashable EmailTemplateRequest

instance NFData EmailTemplateRequest

instance ToJSON EmailTemplateRequest where
  toJSON EmailTemplateRequest' {..} =
    object
      ( catMaybes
          [ ("TemplateDescription" .=)
              <$> _eTemplateDescription,
            ("TextPart" .=) <$> _eTextPart,
            ("DefaultSubstitutions" .=)
              <$> _eDefaultSubstitutions,
            ("Subject" .=) <$> _eSubject,
            ("tags" .=) <$> _eTags,
            ("RecommenderId" .=) <$> _eRecommenderId,
            ("HtmlPart" .=) <$> _eHTMLPart
          ]
      )
