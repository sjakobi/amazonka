{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.UserSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.UserSettings where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.JupyterServerAppSettings
import Network.AWS.SageMaker.Types.KernelGatewayAppSettings
import Network.AWS.SageMaker.Types.SharingSettings
import Network.AWS.SageMaker.Types.TensorBoardAppSettings

-- | A collection of settings that apply to users of Amazon SageMaker Studio. These settings are specified when the 'CreateUserProfile' API is called, and as @DefaultUserSettings@ when the 'CreateDomain' API is called.
--
--
-- @SecurityGroups@ is aggregated when specified in both calls. For all other settings in @UserSettings@ , the values specified in @CreateUserProfile@ take precedence over those specified in @CreateDomain@ .
--
--
-- /See:/ 'userSettings' smart constructor.
data UserSettings = UserSettings'
  { _usKernelGatewayAppSettings ::
      !(Maybe KernelGatewayAppSettings),
    _usTensorBoardAppSettings ::
      !(Maybe TensorBoardAppSettings),
    _usSecurityGroups :: !(Maybe [Text]),
    _usJupyterServerAppSettings ::
      !(Maybe JupyterServerAppSettings),
    _usExecutionRole :: !(Maybe Text),
    _usSharingSettings ::
      !(Maybe SharingSettings)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usKernelGatewayAppSettings' - The kernel gateway app settings.
--
-- * 'usTensorBoardAppSettings' - The TensorBoard app settings.
--
-- * 'usSecurityGroups' - The security groups for the Amazon Virtual Private Cloud (VPC) that Studio uses for communication. Optional when the @CreateDomain.AppNetworkAccessType@ parameter is set to @PublicInternetOnly@ . Required when the @CreateDomain.AppNetworkAccessType@ parameter is set to @VpcOnly@ . Amazon SageMaker adds a security group to allow NFS traffic from SageMaker Studio. Therefore, the number of security groups that you can specify is one less than the maximum number shown.
--
-- * 'usJupyterServerAppSettings' - The Jupyter server's app settings.
--
-- * 'usExecutionRole' - The execution role for the user.
--
-- * 'usSharingSettings' - The sharing settings.
userSettings ::
  UserSettings
userSettings =
  UserSettings'
    { _usKernelGatewayAppSettings =
        Nothing,
      _usTensorBoardAppSettings = Nothing,
      _usSecurityGroups = Nothing,
      _usJupyterServerAppSettings = Nothing,
      _usExecutionRole = Nothing,
      _usSharingSettings = Nothing
    }

-- | The kernel gateway app settings.
usKernelGatewayAppSettings :: Lens' UserSettings (Maybe KernelGatewayAppSettings)
usKernelGatewayAppSettings = lens _usKernelGatewayAppSettings (\s a -> s {_usKernelGatewayAppSettings = a})

-- | The TensorBoard app settings.
usTensorBoardAppSettings :: Lens' UserSettings (Maybe TensorBoardAppSettings)
usTensorBoardAppSettings = lens _usTensorBoardAppSettings (\s a -> s {_usTensorBoardAppSettings = a})

-- | The security groups for the Amazon Virtual Private Cloud (VPC) that Studio uses for communication. Optional when the @CreateDomain.AppNetworkAccessType@ parameter is set to @PublicInternetOnly@ . Required when the @CreateDomain.AppNetworkAccessType@ parameter is set to @VpcOnly@ . Amazon SageMaker adds a security group to allow NFS traffic from SageMaker Studio. Therefore, the number of security groups that you can specify is one less than the maximum number shown.
usSecurityGroups :: Lens' UserSettings [Text]
usSecurityGroups = lens _usSecurityGroups (\s a -> s {_usSecurityGroups = a}) . _Default . _Coerce

-- | The Jupyter server's app settings.
usJupyterServerAppSettings :: Lens' UserSettings (Maybe JupyterServerAppSettings)
usJupyterServerAppSettings = lens _usJupyterServerAppSettings (\s a -> s {_usJupyterServerAppSettings = a})

-- | The execution role for the user.
usExecutionRole :: Lens' UserSettings (Maybe Text)
usExecutionRole = lens _usExecutionRole (\s a -> s {_usExecutionRole = a})

-- | The sharing settings.
usSharingSettings :: Lens' UserSettings (Maybe SharingSettings)
usSharingSettings = lens _usSharingSettings (\s a -> s {_usSharingSettings = a})

instance FromJSON UserSettings where
  parseJSON =
    withObject
      "UserSettings"
      ( \x ->
          UserSettings'
            <$> (x .:? "KernelGatewayAppSettings")
            <*> (x .:? "TensorBoardAppSettings")
            <*> (x .:? "SecurityGroups" .!= mempty)
            <*> (x .:? "JupyterServerAppSettings")
            <*> (x .:? "ExecutionRole")
            <*> (x .:? "SharingSettings")
      )

instance Hashable UserSettings

instance NFData UserSettings

instance ToJSON UserSettings where
  toJSON UserSettings' {..} =
    object
      ( catMaybes
          [ ("KernelGatewayAppSettings" .=)
              <$> _usKernelGatewayAppSettings,
            ("TensorBoardAppSettings" .=)
              <$> _usTensorBoardAppSettings,
            ("SecurityGroups" .=) <$> _usSecurityGroups,
            ("JupyterServerAppSettings" .=)
              <$> _usJupyterServerAppSettings,
            ("ExecutionRole" .=) <$> _usExecutionRole,
            ("SharingSettings" .=) <$> _usSharingSettings
          ]
      )
