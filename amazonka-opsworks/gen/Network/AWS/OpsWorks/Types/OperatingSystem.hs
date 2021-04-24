{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.OperatingSystem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.OperatingSystem where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types.OperatingSystemConfigurationManager
import Network.AWS.Prelude

-- | Describes supported operating systems in AWS OpsWorks Stacks.
--
--
--
-- /See:/ 'operatingSystem' smart constructor.
data OperatingSystem = OperatingSystem'
  { _osSupported ::
      !(Maybe Bool),
    _osConfigurationManagers ::
      !( Maybe
           [OperatingSystemConfigurationManager]
       ),
    _osId :: !(Maybe Text),
    _osReportedVersion :: !(Maybe Text),
    _osName :: !(Maybe Text),
    _osType :: !(Maybe Text),
    _osReportedName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperatingSystem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osSupported' - Indicates that an operating system is not supported for new instances.
--
-- * 'osConfigurationManagers' - Supported configuration manager name and versions for an AWS OpsWorks Stacks operating system.
--
-- * 'osId' - The ID of a supported operating system, such as @Amazon Linux 2018.03@ .
--
-- * 'osReportedVersion' - The version of the operating system, including the release and edition, if applicable.
--
-- * 'osName' - The name of the operating system, such as @Amazon Linux 2018.03@ .
--
-- * 'osType' - The type of a supported operating system, either @Linux@ or @Windows@ .
--
-- * 'osReportedName' - A short name for the operating system manufacturer.
operatingSystem ::
  OperatingSystem
operatingSystem =
  OperatingSystem'
    { _osSupported = Nothing,
      _osConfigurationManagers = Nothing,
      _osId = Nothing,
      _osReportedVersion = Nothing,
      _osName = Nothing,
      _osType = Nothing,
      _osReportedName = Nothing
    }

-- | Indicates that an operating system is not supported for new instances.
osSupported :: Lens' OperatingSystem (Maybe Bool)
osSupported = lens _osSupported (\s a -> s {_osSupported = a})

-- | Supported configuration manager name and versions for an AWS OpsWorks Stacks operating system.
osConfigurationManagers :: Lens' OperatingSystem [OperatingSystemConfigurationManager]
osConfigurationManagers = lens _osConfigurationManagers (\s a -> s {_osConfigurationManagers = a}) . _Default . _Coerce

-- | The ID of a supported operating system, such as @Amazon Linux 2018.03@ .
osId :: Lens' OperatingSystem (Maybe Text)
osId = lens _osId (\s a -> s {_osId = a})

-- | The version of the operating system, including the release and edition, if applicable.
osReportedVersion :: Lens' OperatingSystem (Maybe Text)
osReportedVersion = lens _osReportedVersion (\s a -> s {_osReportedVersion = a})

-- | The name of the operating system, such as @Amazon Linux 2018.03@ .
osName :: Lens' OperatingSystem (Maybe Text)
osName = lens _osName (\s a -> s {_osName = a})

-- | The type of a supported operating system, either @Linux@ or @Windows@ .
osType :: Lens' OperatingSystem (Maybe Text)
osType = lens _osType (\s a -> s {_osType = a})

-- | A short name for the operating system manufacturer.
osReportedName :: Lens' OperatingSystem (Maybe Text)
osReportedName = lens _osReportedName (\s a -> s {_osReportedName = a})

instance FromJSON OperatingSystem where
  parseJSON =
    withObject
      "OperatingSystem"
      ( \x ->
          OperatingSystem'
            <$> (x .:? "Supported")
            <*> (x .:? "ConfigurationManagers" .!= mempty)
            <*> (x .:? "Id")
            <*> (x .:? "ReportedVersion")
            <*> (x .:? "Name")
            <*> (x .:? "Type")
            <*> (x .:? "ReportedName")
      )

instance Hashable OperatingSystem

instance NFData OperatingSystem
