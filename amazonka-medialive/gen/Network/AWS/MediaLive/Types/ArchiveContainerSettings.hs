{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ArchiveContainerSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ArchiveContainerSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.M2tsSettings
import Network.AWS.MediaLive.Types.RawSettings
import Network.AWS.Prelude

-- | Archive Container Settings
--
-- /See:/ 'archiveContainerSettings' smart constructor.
data ArchiveContainerSettings = ArchiveContainerSettings'
  { _acsRawSettings ::
      !(Maybe RawSettings),
    _acsM2tsSettings ::
      !(Maybe M2tsSettings)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ArchiveContainerSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acsRawSettings' - Undocumented member.
--
-- * 'acsM2tsSettings' - Undocumented member.
archiveContainerSettings ::
  ArchiveContainerSettings
archiveContainerSettings =
  ArchiveContainerSettings'
    { _acsRawSettings =
        Nothing,
      _acsM2tsSettings = Nothing
    }

-- | Undocumented member.
acsRawSettings :: Lens' ArchiveContainerSettings (Maybe RawSettings)
acsRawSettings = lens _acsRawSettings (\s a -> s {_acsRawSettings = a})

-- | Undocumented member.
acsM2tsSettings :: Lens' ArchiveContainerSettings (Maybe M2tsSettings)
acsM2tsSettings = lens _acsM2tsSettings (\s a -> s {_acsM2tsSettings = a})

instance FromJSON ArchiveContainerSettings where
  parseJSON =
    withObject
      "ArchiveContainerSettings"
      ( \x ->
          ArchiveContainerSettings'
            <$> (x .:? "rawSettings") <*> (x .:? "m2tsSettings")
      )

instance Hashable ArchiveContainerSettings

instance NFData ArchiveContainerSettings

instance ToJSON ArchiveContainerSettings where
  toJSON ArchiveContainerSettings' {..} =
    object
      ( catMaybes
          [ ("rawSettings" .=) <$> _acsRawSettings,
            ("m2tsSettings" .=) <$> _acsM2tsSettings
          ]
      )
