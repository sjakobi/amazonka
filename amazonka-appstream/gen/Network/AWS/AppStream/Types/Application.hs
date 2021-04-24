{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.Application
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.Application where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an application in the application catalog.
--
--
--
-- /See:/ 'application' smart constructor.
data Application = Application'
  { _aIconURL ::
      !(Maybe Text),
    _aLaunchPath :: !(Maybe Text),
    _aEnabled :: !(Maybe Bool),
    _aMetadata :: !(Maybe (Map Text Text)),
    _aLaunchParameters :: !(Maybe Text),
    _aName :: !(Maybe Text),
    _aDisplayName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Application' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aIconURL' - The URL for the application icon. This URL might be time-limited.
--
-- * 'aLaunchPath' - The path to the application executable in the instance.
--
-- * 'aEnabled' - If there is a problem, the application can be disabled after image creation.
--
-- * 'aMetadata' - Additional attributes that describe the application.
--
-- * 'aLaunchParameters' - The arguments that are passed to the application at launch.
--
-- * 'aName' - The name of the application.
--
-- * 'aDisplayName' - The application name to display.
application ::
  Application
application =
  Application'
    { _aIconURL = Nothing,
      _aLaunchPath = Nothing,
      _aEnabled = Nothing,
      _aMetadata = Nothing,
      _aLaunchParameters = Nothing,
      _aName = Nothing,
      _aDisplayName = Nothing
    }

-- | The URL for the application icon. This URL might be time-limited.
aIconURL :: Lens' Application (Maybe Text)
aIconURL = lens _aIconURL (\s a -> s {_aIconURL = a})

-- | The path to the application executable in the instance.
aLaunchPath :: Lens' Application (Maybe Text)
aLaunchPath = lens _aLaunchPath (\s a -> s {_aLaunchPath = a})

-- | If there is a problem, the application can be disabled after image creation.
aEnabled :: Lens' Application (Maybe Bool)
aEnabled = lens _aEnabled (\s a -> s {_aEnabled = a})

-- | Additional attributes that describe the application.
aMetadata :: Lens' Application (HashMap Text Text)
aMetadata = lens _aMetadata (\s a -> s {_aMetadata = a}) . _Default . _Map

-- | The arguments that are passed to the application at launch.
aLaunchParameters :: Lens' Application (Maybe Text)
aLaunchParameters = lens _aLaunchParameters (\s a -> s {_aLaunchParameters = a})

-- | The name of the application.
aName :: Lens' Application (Maybe Text)
aName = lens _aName (\s a -> s {_aName = a})

-- | The application name to display.
aDisplayName :: Lens' Application (Maybe Text)
aDisplayName = lens _aDisplayName (\s a -> s {_aDisplayName = a})

instance FromJSON Application where
  parseJSON =
    withObject
      "Application"
      ( \x ->
          Application'
            <$> (x .:? "IconURL")
            <*> (x .:? "LaunchPath")
            <*> (x .:? "Enabled")
            <*> (x .:? "Metadata" .!= mempty)
            <*> (x .:? "LaunchParameters")
            <*> (x .:? "Name")
            <*> (x .:? "DisplayName")
      )

instance Hashable Application

instance NFData Application
