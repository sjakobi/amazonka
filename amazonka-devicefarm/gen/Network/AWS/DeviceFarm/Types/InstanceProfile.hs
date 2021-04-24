{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.InstanceProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.InstanceProfile where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the instance profile.
--
--
--
-- /See:/ 'instanceProfile' smart constructor.
data InstanceProfile = InstanceProfile'
  { _ipExcludeAppPackagesFromCleanup ::
      !(Maybe [Text]),
    _ipArn :: !(Maybe Text),
    _ipName :: !(Maybe Text),
    _ipDescription :: !(Maybe Text),
    _ipRebootAfterUse :: !(Maybe Bool),
    _ipPackageCleanup :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipExcludeAppPackagesFromCleanup' - An array of strings containing the list of app packages that should not be cleaned up from the device after a test run completes. The list of packages is considered only if you set @packageCleanup@ to @true@ .
--
-- * 'ipArn' - The Amazon Resource Name (ARN) of the instance profile.
--
-- * 'ipName' - The name of the instance profile.
--
-- * 'ipDescription' - The description of the instance profile.
--
-- * 'ipRebootAfterUse' - When set to @true@ , Device Farm reboots the instance after a test run. The default value is @true@ .
--
-- * 'ipPackageCleanup' - When set to @true@ , Device Farm removes app packages after a test run. The default value is @false@ for private devices.
instanceProfile ::
  InstanceProfile
instanceProfile =
  InstanceProfile'
    { _ipExcludeAppPackagesFromCleanup =
        Nothing,
      _ipArn = Nothing,
      _ipName = Nothing,
      _ipDescription = Nothing,
      _ipRebootAfterUse = Nothing,
      _ipPackageCleanup = Nothing
    }

-- | An array of strings containing the list of app packages that should not be cleaned up from the device after a test run completes. The list of packages is considered only if you set @packageCleanup@ to @true@ .
ipExcludeAppPackagesFromCleanup :: Lens' InstanceProfile [Text]
ipExcludeAppPackagesFromCleanup = lens _ipExcludeAppPackagesFromCleanup (\s a -> s {_ipExcludeAppPackagesFromCleanup = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the instance profile.
ipArn :: Lens' InstanceProfile (Maybe Text)
ipArn = lens _ipArn (\s a -> s {_ipArn = a})

-- | The name of the instance profile.
ipName :: Lens' InstanceProfile (Maybe Text)
ipName = lens _ipName (\s a -> s {_ipName = a})

-- | The description of the instance profile.
ipDescription :: Lens' InstanceProfile (Maybe Text)
ipDescription = lens _ipDescription (\s a -> s {_ipDescription = a})

-- | When set to @true@ , Device Farm reboots the instance after a test run. The default value is @true@ .
ipRebootAfterUse :: Lens' InstanceProfile (Maybe Bool)
ipRebootAfterUse = lens _ipRebootAfterUse (\s a -> s {_ipRebootAfterUse = a})

-- | When set to @true@ , Device Farm removes app packages after a test run. The default value is @false@ for private devices.
ipPackageCleanup :: Lens' InstanceProfile (Maybe Bool)
ipPackageCleanup = lens _ipPackageCleanup (\s a -> s {_ipPackageCleanup = a})

instance FromJSON InstanceProfile where
  parseJSON =
    withObject
      "InstanceProfile"
      ( \x ->
          InstanceProfile'
            <$> (x .:? "excludeAppPackagesFromCleanup" .!= mempty)
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "description")
            <*> (x .:? "rebootAfterUse")
            <*> (x .:? "packageCleanup")
      )

instance Hashable InstanceProfile

instance NFData InstanceProfile
