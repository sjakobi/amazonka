{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.InstallationMedia
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.InstallationMedia where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.InstallationMediaFailureCause

-- | Contains the installation media for a DB engine that requires an on-premises customer provided license, such as Microsoft SQL Server.
--
--
--
-- /See:/ 'installationMedia' smart constructor.
data InstallationMedia = InstallationMedia'
  { _imStatus ::
      !(Maybe Text),
    _imCustomAvailabilityZoneId ::
      !(Maybe Text),
    _imInstallationMediaId ::
      !(Maybe Text),
    _imEngineVersion :: !(Maybe Text),
    _imOSInstallationMediaPath ::
      !(Maybe Text),
    _imFailureCause ::
      !( Maybe
           InstallationMediaFailureCause
       ),
    _imEngine :: !(Maybe Text),
    _imEngineInstallationMediaPath ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstallationMedia' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imStatus' - The status of the installation medium.
--
-- * 'imCustomAvailabilityZoneId' - The custom Availability Zone (AZ) that contains the installation media.
--
-- * 'imInstallationMediaId' - The installation medium ID.
--
-- * 'imEngineVersion' - The engine version of the DB engine.
--
-- * 'imOSInstallationMediaPath' - The path to the installation medium for the operating system associated with the DB engine.
--
-- * 'imFailureCause' - If an installation media failure occurred, the cause of the failure.
--
-- * 'imEngine' - The DB engine.
--
-- * 'imEngineInstallationMediaPath' - The path to the installation medium for the DB engine.
installationMedia ::
  InstallationMedia
installationMedia =
  InstallationMedia'
    { _imStatus = Nothing,
      _imCustomAvailabilityZoneId = Nothing,
      _imInstallationMediaId = Nothing,
      _imEngineVersion = Nothing,
      _imOSInstallationMediaPath = Nothing,
      _imFailureCause = Nothing,
      _imEngine = Nothing,
      _imEngineInstallationMediaPath = Nothing
    }

-- | The status of the installation medium.
imStatus :: Lens' InstallationMedia (Maybe Text)
imStatus = lens _imStatus (\s a -> s {_imStatus = a})

-- | The custom Availability Zone (AZ) that contains the installation media.
imCustomAvailabilityZoneId :: Lens' InstallationMedia (Maybe Text)
imCustomAvailabilityZoneId = lens _imCustomAvailabilityZoneId (\s a -> s {_imCustomAvailabilityZoneId = a})

-- | The installation medium ID.
imInstallationMediaId :: Lens' InstallationMedia (Maybe Text)
imInstallationMediaId = lens _imInstallationMediaId (\s a -> s {_imInstallationMediaId = a})

-- | The engine version of the DB engine.
imEngineVersion :: Lens' InstallationMedia (Maybe Text)
imEngineVersion = lens _imEngineVersion (\s a -> s {_imEngineVersion = a})

-- | The path to the installation medium for the operating system associated with the DB engine.
imOSInstallationMediaPath :: Lens' InstallationMedia (Maybe Text)
imOSInstallationMediaPath = lens _imOSInstallationMediaPath (\s a -> s {_imOSInstallationMediaPath = a})

-- | If an installation media failure occurred, the cause of the failure.
imFailureCause :: Lens' InstallationMedia (Maybe InstallationMediaFailureCause)
imFailureCause = lens _imFailureCause (\s a -> s {_imFailureCause = a})

-- | The DB engine.
imEngine :: Lens' InstallationMedia (Maybe Text)
imEngine = lens _imEngine (\s a -> s {_imEngine = a})

-- | The path to the installation medium for the DB engine.
imEngineInstallationMediaPath :: Lens' InstallationMedia (Maybe Text)
imEngineInstallationMediaPath = lens _imEngineInstallationMediaPath (\s a -> s {_imEngineInstallationMediaPath = a})

instance FromXML InstallationMedia where
  parseXML x =
    InstallationMedia'
      <$> (x .@? "Status")
      <*> (x .@? "CustomAvailabilityZoneId")
      <*> (x .@? "InstallationMediaId")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "OSInstallationMediaPath")
      <*> (x .@? "FailureCause")
      <*> (x .@? "Engine")
      <*> (x .@? "EngineInstallationMediaPath")

instance Hashable InstallationMedia

instance NFData InstallationMedia
