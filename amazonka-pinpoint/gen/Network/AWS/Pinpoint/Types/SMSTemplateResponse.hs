{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SMSTemplateResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SMSTemplateResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.TemplateType
import Network.AWS.Prelude

-- | Provides information about the content and settings for a message template that can be used in text messages that are sent through the SMS channel.
--
--
--
-- /See:/ 'sMSTemplateResponse' smart constructor.
data SMSTemplateResponse = SMSTemplateResponse'
  { _smstrmTemplateDescription ::
      !(Maybe Text),
    _smstrmBody :: !(Maybe Text),
    _smstrmARN :: !(Maybe Text),
    _smstrmVersion :: !(Maybe Text),
    _smstrmDefaultSubstitutions ::
      !(Maybe Text),
    _smstrmTags ::
      !(Maybe (Map Text Text)),
    _smstrmRecommenderId ::
      !(Maybe Text),
    _smstrmLastModifiedDate ::
      !Text,
    _smstrmCreationDate :: !Text,
    _smstrmTemplateName :: !Text,
    _smstrmTemplateType ::
      !TemplateType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SMSTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smstrmTemplateDescription' - The custom description of the message template.
--
-- * 'smstrmBody' - The message body that's used in text messages that are based on the message template.
--
-- * 'smstrmARN' - The Amazon Resource Name (ARN) of the message template.
--
-- * 'smstrmVersion' - The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
--
-- * 'smstrmDefaultSubstitutions' - The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
--
-- * 'smstrmTags' - A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
--
-- * 'smstrmRecommenderId' - The unique identifier for the recommender model that's used by the message template.
--
-- * 'smstrmLastModifiedDate' - The date, in ISO 8601 format, when the message template was last modified.
--
-- * 'smstrmCreationDate' - The date, in ISO 8601 format, when the message template was created.
--
-- * 'smstrmTemplateName' - The name of the message template.
--
-- * 'smstrmTemplateType' - The type of channel that the message template is designed for. For an SMS template, this value is SMS.
sMSTemplateResponse ::
  -- | 'smstrmLastModifiedDate'
  Text ->
  -- | 'smstrmCreationDate'
  Text ->
  -- | 'smstrmTemplateName'
  Text ->
  -- | 'smstrmTemplateType'
  TemplateType ->
  SMSTemplateResponse
sMSTemplateResponse
  pLastModifiedDate_
  pCreationDate_
  pTemplateName_
  pTemplateType_ =
    SMSTemplateResponse'
      { _smstrmTemplateDescription =
          Nothing,
        _smstrmBody = Nothing,
        _smstrmARN = Nothing,
        _smstrmVersion = Nothing,
        _smstrmDefaultSubstitutions = Nothing,
        _smstrmTags = Nothing,
        _smstrmRecommenderId = Nothing,
        _smstrmLastModifiedDate = pLastModifiedDate_,
        _smstrmCreationDate = pCreationDate_,
        _smstrmTemplateName = pTemplateName_,
        _smstrmTemplateType = pTemplateType_
      }

-- | The custom description of the message template.
smstrmTemplateDescription :: Lens' SMSTemplateResponse (Maybe Text)
smstrmTemplateDescription = lens _smstrmTemplateDescription (\s a -> s {_smstrmTemplateDescription = a})

-- | The message body that's used in text messages that are based on the message template.
smstrmBody :: Lens' SMSTemplateResponse (Maybe Text)
smstrmBody = lens _smstrmBody (\s a -> s {_smstrmBody = a})

-- | The Amazon Resource Name (ARN) of the message template.
smstrmARN :: Lens' SMSTemplateResponse (Maybe Text)
smstrmARN = lens _smstrmARN (\s a -> s {_smstrmARN = a})

-- | The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
smstrmVersion :: Lens' SMSTemplateResponse (Maybe Text)
smstrmVersion = lens _smstrmVersion (\s a -> s {_smstrmVersion = a})

-- | The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
smstrmDefaultSubstitutions :: Lens' SMSTemplateResponse (Maybe Text)
smstrmDefaultSubstitutions = lens _smstrmDefaultSubstitutions (\s a -> s {_smstrmDefaultSubstitutions = a})

-- | A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
smstrmTags :: Lens' SMSTemplateResponse (HashMap Text Text)
smstrmTags = lens _smstrmTags (\s a -> s {_smstrmTags = a}) . _Default . _Map

-- | The unique identifier for the recommender model that's used by the message template.
smstrmRecommenderId :: Lens' SMSTemplateResponse (Maybe Text)
smstrmRecommenderId = lens _smstrmRecommenderId (\s a -> s {_smstrmRecommenderId = a})

-- | The date, in ISO 8601 format, when the message template was last modified.
smstrmLastModifiedDate :: Lens' SMSTemplateResponse Text
smstrmLastModifiedDate = lens _smstrmLastModifiedDate (\s a -> s {_smstrmLastModifiedDate = a})

-- | The date, in ISO 8601 format, when the message template was created.
smstrmCreationDate :: Lens' SMSTemplateResponse Text
smstrmCreationDate = lens _smstrmCreationDate (\s a -> s {_smstrmCreationDate = a})

-- | The name of the message template.
smstrmTemplateName :: Lens' SMSTemplateResponse Text
smstrmTemplateName = lens _smstrmTemplateName (\s a -> s {_smstrmTemplateName = a})

-- | The type of channel that the message template is designed for. For an SMS template, this value is SMS.
smstrmTemplateType :: Lens' SMSTemplateResponse TemplateType
smstrmTemplateType = lens _smstrmTemplateType (\s a -> s {_smstrmTemplateType = a})

instance FromJSON SMSTemplateResponse where
  parseJSON =
    withObject
      "SMSTemplateResponse"
      ( \x ->
          SMSTemplateResponse'
            <$> (x .:? "TemplateDescription")
            <*> (x .:? "Body")
            <*> (x .:? "Arn")
            <*> (x .:? "Version")
            <*> (x .:? "DefaultSubstitutions")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "RecommenderId")
            <*> (x .: "LastModifiedDate")
            <*> (x .: "CreationDate")
            <*> (x .: "TemplateName")
            <*> (x .: "TemplateType")
      )

instance Hashable SMSTemplateResponse

instance NFData SMSTemplateResponse
