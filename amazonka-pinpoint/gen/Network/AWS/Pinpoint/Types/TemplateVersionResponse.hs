{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.TemplateVersionResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.TemplateVersionResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about a specific version of a message template.
--
--
--
-- /See:/ 'templateVersionResponse' smart constructor.
data TemplateVersionResponse = TemplateVersionResponse'
  { _tvrTemplateDescription ::
      !(Maybe Text),
    _tvrVersion ::
      !(Maybe Text),
    _tvrDefaultSubstitutions ::
      !(Maybe Text),
    _tvrLastModifiedDate ::
      !Text,
    _tvrCreationDate ::
      !Text,
    _tvrTemplateName ::
      !Text,
    _tvrTemplateType ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TemplateVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvrTemplateDescription' - The custom description of the version of the message template.
--
-- * 'tvrVersion' - The unique identifier for the version of the message template. This value is an integer that Amazon Pinpoint automatically increments and assigns to each new version of a template.
--
-- * 'tvrDefaultSubstitutions' - A JSON object that specifies the default values that are used for message variables in the version of the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
--
-- * 'tvrLastModifiedDate' - The date, in ISO 8601 format, when the version of the message template was last modified.
--
-- * 'tvrCreationDate' - The date, in ISO 8601 format, when the version of the message template was created.
--
-- * 'tvrTemplateName' - The name of the message template.
--
-- * 'tvrTemplateType' - The type of channel that the message template is designed for. Possible values are: EMAIL, PUSH, SMS, and VOICE.
templateVersionResponse ::
  -- | 'tvrLastModifiedDate'
  Text ->
  -- | 'tvrCreationDate'
  Text ->
  -- | 'tvrTemplateName'
  Text ->
  -- | 'tvrTemplateType'
  Text ->
  TemplateVersionResponse
templateVersionResponse
  pLastModifiedDate_
  pCreationDate_
  pTemplateName_
  pTemplateType_ =
    TemplateVersionResponse'
      { _tvrTemplateDescription =
          Nothing,
        _tvrVersion = Nothing,
        _tvrDefaultSubstitutions = Nothing,
        _tvrLastModifiedDate = pLastModifiedDate_,
        _tvrCreationDate = pCreationDate_,
        _tvrTemplateName = pTemplateName_,
        _tvrTemplateType = pTemplateType_
      }

-- | The custom description of the version of the message template.
tvrTemplateDescription :: Lens' TemplateVersionResponse (Maybe Text)
tvrTemplateDescription = lens _tvrTemplateDescription (\s a -> s {_tvrTemplateDescription = a})

-- | The unique identifier for the version of the message template. This value is an integer that Amazon Pinpoint automatically increments and assigns to each new version of a template.
tvrVersion :: Lens' TemplateVersionResponse (Maybe Text)
tvrVersion = lens _tvrVersion (\s a -> s {_tvrVersion = a})

-- | A JSON object that specifies the default values that are used for message variables in the version of the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
tvrDefaultSubstitutions :: Lens' TemplateVersionResponse (Maybe Text)
tvrDefaultSubstitutions = lens _tvrDefaultSubstitutions (\s a -> s {_tvrDefaultSubstitutions = a})

-- | The date, in ISO 8601 format, when the version of the message template was last modified.
tvrLastModifiedDate :: Lens' TemplateVersionResponse Text
tvrLastModifiedDate = lens _tvrLastModifiedDate (\s a -> s {_tvrLastModifiedDate = a})

-- | The date, in ISO 8601 format, when the version of the message template was created.
tvrCreationDate :: Lens' TemplateVersionResponse Text
tvrCreationDate = lens _tvrCreationDate (\s a -> s {_tvrCreationDate = a})

-- | The name of the message template.
tvrTemplateName :: Lens' TemplateVersionResponse Text
tvrTemplateName = lens _tvrTemplateName (\s a -> s {_tvrTemplateName = a})

-- | The type of channel that the message template is designed for. Possible values are: EMAIL, PUSH, SMS, and VOICE.
tvrTemplateType :: Lens' TemplateVersionResponse Text
tvrTemplateType = lens _tvrTemplateType (\s a -> s {_tvrTemplateType = a})

instance FromJSON TemplateVersionResponse where
  parseJSON =
    withObject
      "TemplateVersionResponse"
      ( \x ->
          TemplateVersionResponse'
            <$> (x .:? "TemplateDescription")
            <*> (x .:? "Version")
            <*> (x .:? "DefaultSubstitutions")
            <*> (x .: "LastModifiedDate")
            <*> (x .: "CreationDate")
            <*> (x .: "TemplateName")
            <*> (x .: "TemplateType")
      )

instance Hashable TemplateVersionResponse

instance NFData TemplateVersionResponse
