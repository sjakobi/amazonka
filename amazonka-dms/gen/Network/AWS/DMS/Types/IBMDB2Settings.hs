{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.IBMDB2Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.IBMDB2Settings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that defines an IBM Db2 LUW endpoint.
--
--
--
-- /See:/ 'iBMDB2Settings' smart constructor.
data IBMDB2Settings = IBMDB2Settings'
  { _ibmdsCurrentLsn ::
      !(Maybe Text),
    _ibmdsSecretsManagerSecretId ::
      !(Maybe Text),
    _ibmdsServerName :: !(Maybe Text),
    _ibmdsPassword ::
      !(Maybe (Sensitive Text)),
    _ibmdsPort :: !(Maybe Int),
    _ibmdsUsername :: !(Maybe Text),
    _ibmdsSecretsManagerAccessRoleARN ::
      !(Maybe Text),
    _ibmdsSetDataCaptureChanges ::
      !(Maybe Bool),
    _ibmdsMaxKBytesPerRead :: !(Maybe Int),
    _ibmdsDatabaseName :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'IBMDB2Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibmdsCurrentLsn' - For ongoing replication (CDC), use CurrentLSN to specify a log sequence number (LSN) where you want the replication to start.
--
-- * 'ibmdsSecretsManagerSecretId' - The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the Db2 LUW endpoint connection details.
--
-- * 'ibmdsServerName' - Fully qualified domain name of the endpoint.
--
-- * 'ibmdsPassword' - Endpoint connection password.
--
-- * 'ibmdsPort' - Endpoint TCP port.
--
-- * 'ibmdsUsername' - Endpoint connection user name.
--
-- * 'ibmdsSecretsManagerAccessRoleARN' - The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the Db2 LUW endpoint.
--
-- * 'ibmdsSetDataCaptureChanges' - Enables ongoing replication (CDC) as a BOOLEAN value. The default is true.
--
-- * 'ibmdsMaxKBytesPerRead' - Maximum number of bytes per read, as a NUMBER value. The default is 64 KB.
--
-- * 'ibmdsDatabaseName' - Database name for the endpoint.
iBMDB2Settings ::
  IBMDB2Settings
iBMDB2Settings =
  IBMDB2Settings'
    { _ibmdsCurrentLsn = Nothing,
      _ibmdsSecretsManagerSecretId = Nothing,
      _ibmdsServerName = Nothing,
      _ibmdsPassword = Nothing,
      _ibmdsPort = Nothing,
      _ibmdsUsername = Nothing,
      _ibmdsSecretsManagerAccessRoleARN = Nothing,
      _ibmdsSetDataCaptureChanges = Nothing,
      _ibmdsMaxKBytesPerRead = Nothing,
      _ibmdsDatabaseName = Nothing
    }

-- | For ongoing replication (CDC), use CurrentLSN to specify a log sequence number (LSN) where you want the replication to start.
ibmdsCurrentLsn :: Lens' IBMDB2Settings (Maybe Text)
ibmdsCurrentLsn = lens _ibmdsCurrentLsn (\s a -> s {_ibmdsCurrentLsn = a})

-- | The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the Db2 LUW endpoint connection details.
ibmdsSecretsManagerSecretId :: Lens' IBMDB2Settings (Maybe Text)
ibmdsSecretsManagerSecretId = lens _ibmdsSecretsManagerSecretId (\s a -> s {_ibmdsSecretsManagerSecretId = a})

-- | Fully qualified domain name of the endpoint.
ibmdsServerName :: Lens' IBMDB2Settings (Maybe Text)
ibmdsServerName = lens _ibmdsServerName (\s a -> s {_ibmdsServerName = a})

-- | Endpoint connection password.
ibmdsPassword :: Lens' IBMDB2Settings (Maybe Text)
ibmdsPassword = lens _ibmdsPassword (\s a -> s {_ibmdsPassword = a}) . mapping _Sensitive

-- | Endpoint TCP port.
ibmdsPort :: Lens' IBMDB2Settings (Maybe Int)
ibmdsPort = lens _ibmdsPort (\s a -> s {_ibmdsPort = a})

-- | Endpoint connection user name.
ibmdsUsername :: Lens' IBMDB2Settings (Maybe Text)
ibmdsUsername = lens _ibmdsUsername (\s a -> s {_ibmdsUsername = a})

-- | The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the Db2 LUW endpoint.
ibmdsSecretsManagerAccessRoleARN :: Lens' IBMDB2Settings (Maybe Text)
ibmdsSecretsManagerAccessRoleARN = lens _ibmdsSecretsManagerAccessRoleARN (\s a -> s {_ibmdsSecretsManagerAccessRoleARN = a})

-- | Enables ongoing replication (CDC) as a BOOLEAN value. The default is true.
ibmdsSetDataCaptureChanges :: Lens' IBMDB2Settings (Maybe Bool)
ibmdsSetDataCaptureChanges = lens _ibmdsSetDataCaptureChanges (\s a -> s {_ibmdsSetDataCaptureChanges = a})

-- | Maximum number of bytes per read, as a NUMBER value. The default is 64 KB.
ibmdsMaxKBytesPerRead :: Lens' IBMDB2Settings (Maybe Int)
ibmdsMaxKBytesPerRead = lens _ibmdsMaxKBytesPerRead (\s a -> s {_ibmdsMaxKBytesPerRead = a})

-- | Database name for the endpoint.
ibmdsDatabaseName :: Lens' IBMDB2Settings (Maybe Text)
ibmdsDatabaseName = lens _ibmdsDatabaseName (\s a -> s {_ibmdsDatabaseName = a})

instance FromJSON IBMDB2Settings where
  parseJSON =
    withObject
      "IBMDB2Settings"
      ( \x ->
          IBMDB2Settings'
            <$> (x .:? "CurrentLsn")
            <*> (x .:? "SecretsManagerSecretId")
            <*> (x .:? "ServerName")
            <*> (x .:? "Password")
            <*> (x .:? "Port")
            <*> (x .:? "Username")
            <*> (x .:? "SecretsManagerAccessRoleArn")
            <*> (x .:? "SetDataCaptureChanges")
            <*> (x .:? "MaxKBytesPerRead")
            <*> (x .:? "DatabaseName")
      )

instance Hashable IBMDB2Settings

instance NFData IBMDB2Settings

instance ToJSON IBMDB2Settings where
  toJSON IBMDB2Settings' {..} =
    object
      ( catMaybes
          [ ("CurrentLsn" .=) <$> _ibmdsCurrentLsn,
            ("SecretsManagerSecretId" .=)
              <$> _ibmdsSecretsManagerSecretId,
            ("ServerName" .=) <$> _ibmdsServerName,
            ("Password" .=) <$> _ibmdsPassword,
            ("Port" .=) <$> _ibmdsPort,
            ("Username" .=) <$> _ibmdsUsername,
            ("SecretsManagerAccessRoleArn" .=)
              <$> _ibmdsSecretsManagerAccessRoleARN,
            ("SetDataCaptureChanges" .=)
              <$> _ibmdsSetDataCaptureChanges,
            ("MaxKBytesPerRead" .=) <$> _ibmdsMaxKBytesPerRead,
            ("DatabaseName" .=) <$> _ibmdsDatabaseName
          ]
      )
