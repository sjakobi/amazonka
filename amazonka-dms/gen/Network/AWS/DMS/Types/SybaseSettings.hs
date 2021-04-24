{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.SybaseSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.SybaseSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that defines a SAP ASE endpoint.
--
--
--
-- /See:/ 'sybaseSettings' smart constructor.
data SybaseSettings = SybaseSettings'
  { _ssSecretsManagerSecretId ::
      !(Maybe Text),
    _ssServerName :: !(Maybe Text),
    _ssPassword :: !(Maybe (Sensitive Text)),
    _ssPort :: !(Maybe Int),
    _ssUsername :: !(Maybe Text),
    _ssSecretsManagerAccessRoleARN ::
      !(Maybe Text),
    _ssDatabaseName :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SybaseSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssSecretsManagerSecretId' - The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the SAP SAE endpoint connection details.
--
-- * 'ssServerName' - Fully qualified domain name of the endpoint.
--
-- * 'ssPassword' - Endpoint connection password.
--
-- * 'ssPort' - Endpoint TCP port.
--
-- * 'ssUsername' - Endpoint connection user name.
--
-- * 'ssSecretsManagerAccessRoleARN' - The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the SAP ASE endpoint.
--
-- * 'ssDatabaseName' - Database name for the endpoint.
sybaseSettings ::
  SybaseSettings
sybaseSettings =
  SybaseSettings'
    { _ssSecretsManagerSecretId =
        Nothing,
      _ssServerName = Nothing,
      _ssPassword = Nothing,
      _ssPort = Nothing,
      _ssUsername = Nothing,
      _ssSecretsManagerAccessRoleARN = Nothing,
      _ssDatabaseName = Nothing
    }

-- | The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the SAP SAE endpoint connection details.
ssSecretsManagerSecretId :: Lens' SybaseSettings (Maybe Text)
ssSecretsManagerSecretId = lens _ssSecretsManagerSecretId (\s a -> s {_ssSecretsManagerSecretId = a})

-- | Fully qualified domain name of the endpoint.
ssServerName :: Lens' SybaseSettings (Maybe Text)
ssServerName = lens _ssServerName (\s a -> s {_ssServerName = a})

-- | Endpoint connection password.
ssPassword :: Lens' SybaseSettings (Maybe Text)
ssPassword = lens _ssPassword (\s a -> s {_ssPassword = a}) . mapping _Sensitive

-- | Endpoint TCP port.
ssPort :: Lens' SybaseSettings (Maybe Int)
ssPort = lens _ssPort (\s a -> s {_ssPort = a})

-- | Endpoint connection user name.
ssUsername :: Lens' SybaseSettings (Maybe Text)
ssUsername = lens _ssUsername (\s a -> s {_ssUsername = a})

-- | The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the SAP ASE endpoint.
ssSecretsManagerAccessRoleARN :: Lens' SybaseSettings (Maybe Text)
ssSecretsManagerAccessRoleARN = lens _ssSecretsManagerAccessRoleARN (\s a -> s {_ssSecretsManagerAccessRoleARN = a})

-- | Database name for the endpoint.
ssDatabaseName :: Lens' SybaseSettings (Maybe Text)
ssDatabaseName = lens _ssDatabaseName (\s a -> s {_ssDatabaseName = a})

instance FromJSON SybaseSettings where
  parseJSON =
    withObject
      "SybaseSettings"
      ( \x ->
          SybaseSettings'
            <$> (x .:? "SecretsManagerSecretId")
            <*> (x .:? "ServerName")
            <*> (x .:? "Password")
            <*> (x .:? "Port")
            <*> (x .:? "Username")
            <*> (x .:? "SecretsManagerAccessRoleArn")
            <*> (x .:? "DatabaseName")
      )

instance Hashable SybaseSettings

instance NFData SybaseSettings

instance ToJSON SybaseSettings where
  toJSON SybaseSettings' {..} =
    object
      ( catMaybes
          [ ("SecretsManagerSecretId" .=)
              <$> _ssSecretsManagerSecretId,
            ("ServerName" .=) <$> _ssServerName,
            ("Password" .=) <$> _ssPassword,
            ("Port" .=) <$> _ssPort,
            ("Username" .=) <$> _ssUsername,
            ("SecretsManagerAccessRoleArn" .=)
              <$> _ssSecretsManagerAccessRoleARN,
            ("DatabaseName" .=) <$> _ssDatabaseName
          ]
      )
