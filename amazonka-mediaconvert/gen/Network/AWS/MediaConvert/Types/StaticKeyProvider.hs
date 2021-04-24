{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.StaticKeyProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.StaticKeyProvider where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Use these settings to set up encryption with a static key provider.
--
-- /See:/ 'staticKeyProvider' smart constructor.
data StaticKeyProvider = StaticKeyProvider'
  { _sKeyFormat ::
      !(Maybe Text),
    _sStaticKeyValue :: !(Maybe Text),
    _sURL :: !(Maybe Text),
    _sKeyFormatVersions ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StaticKeyProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKeyFormat' - Relates to DRM implementation. Sets the value of the KEYFORMAT attribute. Must be 'identity' or a reverse DNS string. May be omitted to indicate an implicit value of 'identity'.
--
-- * 'sStaticKeyValue' - Relates to DRM implementation. Use a 32-character hexidecimal string to specify Key Value (StaticKeyValue).
--
-- * 'sURL' - Relates to DRM implementation. The location of the license server used for protecting content.
--
-- * 'sKeyFormatVersions' - Relates to DRM implementation. Either a single positive integer version value or a slash delimited list of version values (1/2/3).
staticKeyProvider ::
  StaticKeyProvider
staticKeyProvider =
  StaticKeyProvider'
    { _sKeyFormat = Nothing,
      _sStaticKeyValue = Nothing,
      _sURL = Nothing,
      _sKeyFormatVersions = Nothing
    }

-- | Relates to DRM implementation. Sets the value of the KEYFORMAT attribute. Must be 'identity' or a reverse DNS string. May be omitted to indicate an implicit value of 'identity'.
sKeyFormat :: Lens' StaticKeyProvider (Maybe Text)
sKeyFormat = lens _sKeyFormat (\s a -> s {_sKeyFormat = a})

-- | Relates to DRM implementation. Use a 32-character hexidecimal string to specify Key Value (StaticKeyValue).
sStaticKeyValue :: Lens' StaticKeyProvider (Maybe Text)
sStaticKeyValue = lens _sStaticKeyValue (\s a -> s {_sStaticKeyValue = a})

-- | Relates to DRM implementation. The location of the license server used for protecting content.
sURL :: Lens' StaticKeyProvider (Maybe Text)
sURL = lens _sURL (\s a -> s {_sURL = a})

-- | Relates to DRM implementation. Either a single positive integer version value or a slash delimited list of version values (1/2/3).
sKeyFormatVersions :: Lens' StaticKeyProvider (Maybe Text)
sKeyFormatVersions = lens _sKeyFormatVersions (\s a -> s {_sKeyFormatVersions = a})

instance FromJSON StaticKeyProvider where
  parseJSON =
    withObject
      "StaticKeyProvider"
      ( \x ->
          StaticKeyProvider'
            <$> (x .:? "keyFormat")
            <*> (x .:? "staticKeyValue")
            <*> (x .:? "url")
            <*> (x .:? "keyFormatVersions")
      )

instance Hashable StaticKeyProvider

instance NFData StaticKeyProvider

instance ToJSON StaticKeyProvider where
  toJSON StaticKeyProvider' {..} =
    object
      ( catMaybes
          [ ("keyFormat" .=) <$> _sKeyFormat,
            ("staticKeyValue" .=) <$> _sStaticKeyValue,
            ("url" .=) <$> _sURL,
            ("keyFormatVersions" .=) <$> _sKeyFormatVersions
          ]
      )
