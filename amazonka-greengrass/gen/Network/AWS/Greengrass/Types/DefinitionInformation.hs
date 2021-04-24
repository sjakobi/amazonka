{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.DefinitionInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.DefinitionInformation where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a definition.
--
-- /See:/ 'definitionInformation' smart constructor.
data DefinitionInformation = DefinitionInformation'
  { _diCreationTimestamp ::
      !(Maybe Text),
    _diLatestVersionARN ::
      !(Maybe Text),
    _diLatestVersion ::
      !(Maybe Text),
    _diARN :: !(Maybe Text),
    _diId :: !(Maybe Text),
    _diName :: !(Maybe Text),
    _diTags ::
      !(Maybe (Map Text Text)),
    _diLastUpdatedTimestamp ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DefinitionInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'diLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'diLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'diARN' - The ARN of the definition.
--
-- * 'diId' - The ID of the definition.
--
-- * 'diName' - The name of the definition.
--
-- * 'diTags' - Tag(s) attached to the resource arn.
--
-- * 'diLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
definitionInformation ::
  DefinitionInformation
definitionInformation =
  DefinitionInformation'
    { _diCreationTimestamp =
        Nothing,
      _diLatestVersionARN = Nothing,
      _diLatestVersion = Nothing,
      _diARN = Nothing,
      _diId = Nothing,
      _diName = Nothing,
      _diTags = Nothing,
      _diLastUpdatedTimestamp = Nothing
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
diCreationTimestamp :: Lens' DefinitionInformation (Maybe Text)
diCreationTimestamp = lens _diCreationTimestamp (\s a -> s {_diCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
diLatestVersionARN :: Lens' DefinitionInformation (Maybe Text)
diLatestVersionARN = lens _diLatestVersionARN (\s a -> s {_diLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
diLatestVersion :: Lens' DefinitionInformation (Maybe Text)
diLatestVersion = lens _diLatestVersion (\s a -> s {_diLatestVersion = a})

-- | The ARN of the definition.
diARN :: Lens' DefinitionInformation (Maybe Text)
diARN = lens _diARN (\s a -> s {_diARN = a})

-- | The ID of the definition.
diId :: Lens' DefinitionInformation (Maybe Text)
diId = lens _diId (\s a -> s {_diId = a})

-- | The name of the definition.
diName :: Lens' DefinitionInformation (Maybe Text)
diName = lens _diName (\s a -> s {_diName = a})

-- | Tag(s) attached to the resource arn.
diTags :: Lens' DefinitionInformation (HashMap Text Text)
diTags = lens _diTags (\s a -> s {_diTags = a}) . _Default . _Map

-- | The time, in milliseconds since the epoch, when the definition was last updated.
diLastUpdatedTimestamp :: Lens' DefinitionInformation (Maybe Text)
diLastUpdatedTimestamp = lens _diLastUpdatedTimestamp (\s a -> s {_diLastUpdatedTimestamp = a})

instance FromJSON DefinitionInformation where
  parseJSON =
    withObject
      "DefinitionInformation"
      ( \x ->
          DefinitionInformation'
            <$> (x .:? "CreationTimestamp")
            <*> (x .:? "LatestVersionArn")
            <*> (x .:? "LatestVersion")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Name")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "LastUpdatedTimestamp")
      )

instance Hashable DefinitionInformation

instance NFData DefinitionInformation
