{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.ApplicationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ApplicationSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The persistent application settings for users of a stack.
--
--
--
-- /See:/ 'applicationSettings' smart constructor.
data ApplicationSettings = ApplicationSettings'
  { _asSettingsGroup ::
      !(Maybe Text),
    _asEnabled :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asSettingsGroup' - The path prefix for the S3 bucket where users’ persistent application settings are stored. You can allow the same persistent application settings to be used across multiple stacks by specifying the same settings group for each stack.
--
-- * 'asEnabled' - Enables or disables persistent application settings for users during their streaming sessions.
applicationSettings ::
  -- | 'asEnabled'
  Bool ->
  ApplicationSettings
applicationSettings pEnabled_ =
  ApplicationSettings'
    { _asSettingsGroup = Nothing,
      _asEnabled = pEnabled_
    }

-- | The path prefix for the S3 bucket where users’ persistent application settings are stored. You can allow the same persistent application settings to be used across multiple stacks by specifying the same settings group for each stack.
asSettingsGroup :: Lens' ApplicationSettings (Maybe Text)
asSettingsGroup = lens _asSettingsGroup (\s a -> s {_asSettingsGroup = a})

-- | Enables or disables persistent application settings for users during their streaming sessions.
asEnabled :: Lens' ApplicationSettings Bool
asEnabled = lens _asEnabled (\s a -> s {_asEnabled = a})

instance Hashable ApplicationSettings

instance NFData ApplicationSettings

instance ToJSON ApplicationSettings where
  toJSON ApplicationSettings' {..} =
    object
      ( catMaybes
          [ ("SettingsGroup" .=) <$> _asSettingsGroup,
            Just ("Enabled" .= _asEnabled)
          ]
      )
