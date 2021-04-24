{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.PostgreSQLSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.PostgreSQLSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that defines a PostgreSQL endpoint.
--
--
--
-- /See:/ 'postgreSQLSettings' smart constructor.
data PostgreSQLSettings = PostgreSQLSettings'
  { _psqlsFailTasksOnLobTruncation ::
      !(Maybe Bool),
    _psqlsExecuteTimeout ::
      !(Maybe Int),
    _psqlsSlotName :: !(Maybe Text),
    _psqlsCaptureDdls ::
      !(Maybe Bool),
    _psqlsDdlArtifactsSchema ::
      !(Maybe Text),
    _psqlsSecretsManagerSecretId ::
      !(Maybe Text),
    _psqlsAfterConnectScript ::
      !(Maybe Text),
    _psqlsServerName :: !(Maybe Text),
    _psqlsMaxFileSize :: !(Maybe Int),
    _psqlsPassword ::
      !(Maybe (Sensitive Text)),
    _psqlsPort :: !(Maybe Int),
    _psqlsUsername :: !(Maybe Text),
    _psqlsSecretsManagerAccessRoleARN ::
      !(Maybe Text),
    _psqlsDatabaseName ::
      !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PostgreSQLSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psqlsFailTasksOnLobTruncation' - When set to @true@ , this value causes a task to fail if the actual size of a LOB column is greater than the specified @LobMaxSize@ . If task is set to Limited LOB mode and this option is set to true, the task fails instead of truncating the LOB data.
--
-- * 'psqlsExecuteTimeout' - Sets the client statement timeout for the PostgreSQL instance, in seconds. The default value is 60 seconds. Example: @executeTimeout=100;@
--
-- * 'psqlsSlotName' - Sets the name of a previously created logical replication slot for a CDC load of the PostgreSQL source instance. When used with the AWS DMS API @CdcStartPosition@ request parameter, this attribute also enables using native CDC start points.
--
-- * 'psqlsCaptureDdls' - To capture DDL events, AWS DMS creates various artifacts in the PostgreSQL database when the task starts. You can later remove these artifacts. If this value is set to @N@ , you don't have to create tables or triggers on the source database.
--
-- * 'psqlsDdlArtifactsSchema' - The schema in which the operational DDL database artifacts are created. Example: @ddlArtifactsSchema=xyzddlschema;@
--
-- * 'psqlsSecretsManagerSecretId' - The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the PostgreSQL endpoint connection details.
--
-- * 'psqlsAfterConnectScript' - For use with change data capture (CDC) only, this attribute has AWS DMS bypass foreign keys and user triggers to reduce the time it takes to bulk load data. Example: @afterConnectScript=SET session_replication_role='replica'@
--
-- * 'psqlsServerName' - Fully qualified domain name of the endpoint.
--
-- * 'psqlsMaxFileSize' - Specifies the maximum size (in KB) of any .csv file used to transfer data to PostgreSQL. Example: @maxFileSize=512@
--
-- * 'psqlsPassword' - Endpoint connection password.
--
-- * 'psqlsPort' - Endpoint TCP port.
--
-- * 'psqlsUsername' - Endpoint connection user name.
--
-- * 'psqlsSecretsManagerAccessRoleARN' - The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the PostgreSQL endpoint.
--
-- * 'psqlsDatabaseName' - Database name for the endpoint.
postgreSQLSettings ::
  PostgreSQLSettings
postgreSQLSettings =
  PostgreSQLSettings'
    { _psqlsFailTasksOnLobTruncation =
        Nothing,
      _psqlsExecuteTimeout = Nothing,
      _psqlsSlotName = Nothing,
      _psqlsCaptureDdls = Nothing,
      _psqlsDdlArtifactsSchema = Nothing,
      _psqlsSecretsManagerSecretId = Nothing,
      _psqlsAfterConnectScript = Nothing,
      _psqlsServerName = Nothing,
      _psqlsMaxFileSize = Nothing,
      _psqlsPassword = Nothing,
      _psqlsPort = Nothing,
      _psqlsUsername = Nothing,
      _psqlsSecretsManagerAccessRoleARN = Nothing,
      _psqlsDatabaseName = Nothing
    }

-- | When set to @true@ , this value causes a task to fail if the actual size of a LOB column is greater than the specified @LobMaxSize@ . If task is set to Limited LOB mode and this option is set to true, the task fails instead of truncating the LOB data.
psqlsFailTasksOnLobTruncation :: Lens' PostgreSQLSettings (Maybe Bool)
psqlsFailTasksOnLobTruncation = lens _psqlsFailTasksOnLobTruncation (\s a -> s {_psqlsFailTasksOnLobTruncation = a})

-- | Sets the client statement timeout for the PostgreSQL instance, in seconds. The default value is 60 seconds. Example: @executeTimeout=100;@
psqlsExecuteTimeout :: Lens' PostgreSQLSettings (Maybe Int)
psqlsExecuteTimeout = lens _psqlsExecuteTimeout (\s a -> s {_psqlsExecuteTimeout = a})

-- | Sets the name of a previously created logical replication slot for a CDC load of the PostgreSQL source instance. When used with the AWS DMS API @CdcStartPosition@ request parameter, this attribute also enables using native CDC start points.
psqlsSlotName :: Lens' PostgreSQLSettings (Maybe Text)
psqlsSlotName = lens _psqlsSlotName (\s a -> s {_psqlsSlotName = a})

-- | To capture DDL events, AWS DMS creates various artifacts in the PostgreSQL database when the task starts. You can later remove these artifacts. If this value is set to @N@ , you don't have to create tables or triggers on the source database.
psqlsCaptureDdls :: Lens' PostgreSQLSettings (Maybe Bool)
psqlsCaptureDdls = lens _psqlsCaptureDdls (\s a -> s {_psqlsCaptureDdls = a})

-- | The schema in which the operational DDL database artifacts are created. Example: @ddlArtifactsSchema=xyzddlschema;@
psqlsDdlArtifactsSchema :: Lens' PostgreSQLSettings (Maybe Text)
psqlsDdlArtifactsSchema = lens _psqlsDdlArtifactsSchema (\s a -> s {_psqlsDdlArtifactsSchema = a})

-- | The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the PostgreSQL endpoint connection details.
psqlsSecretsManagerSecretId :: Lens' PostgreSQLSettings (Maybe Text)
psqlsSecretsManagerSecretId = lens _psqlsSecretsManagerSecretId (\s a -> s {_psqlsSecretsManagerSecretId = a})

-- | For use with change data capture (CDC) only, this attribute has AWS DMS bypass foreign keys and user triggers to reduce the time it takes to bulk load data. Example: @afterConnectScript=SET session_replication_role='replica'@
psqlsAfterConnectScript :: Lens' PostgreSQLSettings (Maybe Text)
psqlsAfterConnectScript = lens _psqlsAfterConnectScript (\s a -> s {_psqlsAfterConnectScript = a})

-- | Fully qualified domain name of the endpoint.
psqlsServerName :: Lens' PostgreSQLSettings (Maybe Text)
psqlsServerName = lens _psqlsServerName (\s a -> s {_psqlsServerName = a})

-- | Specifies the maximum size (in KB) of any .csv file used to transfer data to PostgreSQL. Example: @maxFileSize=512@
psqlsMaxFileSize :: Lens' PostgreSQLSettings (Maybe Int)
psqlsMaxFileSize = lens _psqlsMaxFileSize (\s a -> s {_psqlsMaxFileSize = a})

-- | Endpoint connection password.
psqlsPassword :: Lens' PostgreSQLSettings (Maybe Text)
psqlsPassword = lens _psqlsPassword (\s a -> s {_psqlsPassword = a}) . mapping _Sensitive

-- | Endpoint TCP port.
psqlsPort :: Lens' PostgreSQLSettings (Maybe Int)
psqlsPort = lens _psqlsPort (\s a -> s {_psqlsPort = a})

-- | Endpoint connection user name.
psqlsUsername :: Lens' PostgreSQLSettings (Maybe Text)
psqlsUsername = lens _psqlsUsername (\s a -> s {_psqlsUsername = a})

-- | The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the PostgreSQL endpoint.
psqlsSecretsManagerAccessRoleARN :: Lens' PostgreSQLSettings (Maybe Text)
psqlsSecretsManagerAccessRoleARN = lens _psqlsSecretsManagerAccessRoleARN (\s a -> s {_psqlsSecretsManagerAccessRoleARN = a})

-- | Database name for the endpoint.
psqlsDatabaseName :: Lens' PostgreSQLSettings (Maybe Text)
psqlsDatabaseName = lens _psqlsDatabaseName (\s a -> s {_psqlsDatabaseName = a})

instance FromJSON PostgreSQLSettings where
  parseJSON =
    withObject
      "PostgreSQLSettings"
      ( \x ->
          PostgreSQLSettings'
            <$> (x .:? "FailTasksOnLobTruncation")
            <*> (x .:? "ExecuteTimeout")
            <*> (x .:? "SlotName")
            <*> (x .:? "CaptureDdls")
            <*> (x .:? "DdlArtifactsSchema")
            <*> (x .:? "SecretsManagerSecretId")
            <*> (x .:? "AfterConnectScript")
            <*> (x .:? "ServerName")
            <*> (x .:? "MaxFileSize")
            <*> (x .:? "Password")
            <*> (x .:? "Port")
            <*> (x .:? "Username")
            <*> (x .:? "SecretsManagerAccessRoleArn")
            <*> (x .:? "DatabaseName")
      )

instance Hashable PostgreSQLSettings

instance NFData PostgreSQLSettings

instance ToJSON PostgreSQLSettings where
  toJSON PostgreSQLSettings' {..} =
    object
      ( catMaybes
          [ ("FailTasksOnLobTruncation" .=)
              <$> _psqlsFailTasksOnLobTruncation,
            ("ExecuteTimeout" .=) <$> _psqlsExecuteTimeout,
            ("SlotName" .=) <$> _psqlsSlotName,
            ("CaptureDdls" .=) <$> _psqlsCaptureDdls,
            ("DdlArtifactsSchema" .=)
              <$> _psqlsDdlArtifactsSchema,
            ("SecretsManagerSecretId" .=)
              <$> _psqlsSecretsManagerSecretId,
            ("AfterConnectScript" .=)
              <$> _psqlsAfterConnectScript,
            ("ServerName" .=) <$> _psqlsServerName,
            ("MaxFileSize" .=) <$> _psqlsMaxFileSize,
            ("Password" .=) <$> _psqlsPassword,
            ("Port" .=) <$> _psqlsPort,
            ("Username" .=) <$> _psqlsUsername,
            ("SecretsManagerAccessRoleArn" .=)
              <$> _psqlsSecretsManagerAccessRoleARN,
            ("DatabaseName" .=) <$> _psqlsDatabaseName
          ]
      )
