{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.MicrosoftSQLServerSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.MicrosoftSQLServerSettings where

import Network.AWS.DMS.Types.SafeguardPolicy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that defines a Microsoft SQL Server endpoint.
--
--
--
-- /See:/ 'microsoftSQLServerSettings' smart constructor.
data MicrosoftSQLServerSettings = MicrosoftSQLServerSettings'
  { _msqlssUseBcpFullLoad ::
      !(Maybe Bool),
    _msqlssSafeguardPolicy ::
      !( Maybe
           SafeguardPolicy
       ),
    _msqlssSecretsManagerSecretId ::
      !(Maybe Text),
    _msqlssServerName ::
      !(Maybe Text),
    _msqlssPassword ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _msqlssBcpPacketSize ::
      !(Maybe Int),
    _msqlssPort ::
      !(Maybe Int),
    _msqlssUsername ::
      !(Maybe Text),
    _msqlssSecretsManagerAccessRoleARN ::
      !(Maybe Text),
    _msqlssControlTablesFileGroup ::
      !(Maybe Text),
    _msqlssReadBackupOnly ::
      !(Maybe Bool),
    _msqlssDatabaseName ::
      !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MicrosoftSQLServerSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msqlssUseBcpFullLoad' - Use this to attribute to transfer data for full-load operations using BCP. When the target table contains an identity column that does not exist in the source table, you must disable the use BCP for loading table option.
--
-- * 'msqlssSafeguardPolicy' - Use this attribute to minimize the need to access the backup log and enable AWS DMS to prevent truncation using one of the following two methods. /Start transactions in the database:/ This is the default method. When this method is used, AWS DMS prevents TLOG truncation by mimicking a transaction in the database. As long as such a transaction is open, changes that appear after the transaction started aren't truncated. If you need Microsoft Replication to be enabled in your database, then you must choose this method. /Exclusively use sp_repldone within a single task/ : When this method is used, AWS DMS reads the changes and then uses sp_repldone to mark the TLOG transactions as ready for truncation. Although this method doesn't involve any transactional activities, it can only be used when Microsoft Replication isn't running. Also, when using this method, only one AWS DMS task can access the database at any given time. Therefore, if you need to run parallel AWS DMS tasks against the same database, use the default method.
--
-- * 'msqlssSecretsManagerSecretId' - The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the SQL Server endpoint connection details.
--
-- * 'msqlssServerName' - Fully qualified domain name of the endpoint.
--
-- * 'msqlssPassword' - Endpoint connection password.
--
-- * 'msqlssBcpPacketSize' - The maximum size of the packets (in bytes) used to transfer data using BCP.
--
-- * 'msqlssPort' - Endpoint TCP port.
--
-- * 'msqlssUsername' - Endpoint connection user name.
--
-- * 'msqlssSecretsManagerAccessRoleARN' - The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the SQL Server endpoint.
--
-- * 'msqlssControlTablesFileGroup' - Specifies a file group for the AWS DMS internal tables. When the replication task starts, all the internal AWS DMS control tables (awsdms_ apply_exception, awsdms_apply, awsdms_changes) are created for the specified file group.
--
-- * 'msqlssReadBackupOnly' - When this attribute is set to @Y@ , AWS DMS only reads changes from transaction log backups and doesn't read from the active transaction log file during ongoing replication. Setting this parameter to @Y@ enables you to control active transaction log file growth during full load and ongoing replication tasks. However, it can add some source latency to ongoing replication.
--
-- * 'msqlssDatabaseName' - Database name for the endpoint.
microsoftSQLServerSettings ::
  MicrosoftSQLServerSettings
microsoftSQLServerSettings =
  MicrosoftSQLServerSettings'
    { _msqlssUseBcpFullLoad =
        Nothing,
      _msqlssSafeguardPolicy = Nothing,
      _msqlssSecretsManagerSecretId = Nothing,
      _msqlssServerName = Nothing,
      _msqlssPassword = Nothing,
      _msqlssBcpPacketSize = Nothing,
      _msqlssPort = Nothing,
      _msqlssUsername = Nothing,
      _msqlssSecretsManagerAccessRoleARN = Nothing,
      _msqlssControlTablesFileGroup = Nothing,
      _msqlssReadBackupOnly = Nothing,
      _msqlssDatabaseName = Nothing
    }

-- | Use this to attribute to transfer data for full-load operations using BCP. When the target table contains an identity column that does not exist in the source table, you must disable the use BCP for loading table option.
msqlssUseBcpFullLoad :: Lens' MicrosoftSQLServerSettings (Maybe Bool)
msqlssUseBcpFullLoad = lens _msqlssUseBcpFullLoad (\s a -> s {_msqlssUseBcpFullLoad = a})

-- | Use this attribute to minimize the need to access the backup log and enable AWS DMS to prevent truncation using one of the following two methods. /Start transactions in the database:/ This is the default method. When this method is used, AWS DMS prevents TLOG truncation by mimicking a transaction in the database. As long as such a transaction is open, changes that appear after the transaction started aren't truncated. If you need Microsoft Replication to be enabled in your database, then you must choose this method. /Exclusively use sp_repldone within a single task/ : When this method is used, AWS DMS reads the changes and then uses sp_repldone to mark the TLOG transactions as ready for truncation. Although this method doesn't involve any transactional activities, it can only be used when Microsoft Replication isn't running. Also, when using this method, only one AWS DMS task can access the database at any given time. Therefore, if you need to run parallel AWS DMS tasks against the same database, use the default method.
msqlssSafeguardPolicy :: Lens' MicrosoftSQLServerSettings (Maybe SafeguardPolicy)
msqlssSafeguardPolicy = lens _msqlssSafeguardPolicy (\s a -> s {_msqlssSafeguardPolicy = a})

-- | The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the SQL Server endpoint connection details.
msqlssSecretsManagerSecretId :: Lens' MicrosoftSQLServerSettings (Maybe Text)
msqlssSecretsManagerSecretId = lens _msqlssSecretsManagerSecretId (\s a -> s {_msqlssSecretsManagerSecretId = a})

-- | Fully qualified domain name of the endpoint.
msqlssServerName :: Lens' MicrosoftSQLServerSettings (Maybe Text)
msqlssServerName = lens _msqlssServerName (\s a -> s {_msqlssServerName = a})

-- | Endpoint connection password.
msqlssPassword :: Lens' MicrosoftSQLServerSettings (Maybe Text)
msqlssPassword = lens _msqlssPassword (\s a -> s {_msqlssPassword = a}) . mapping _Sensitive

-- | The maximum size of the packets (in bytes) used to transfer data using BCP.
msqlssBcpPacketSize :: Lens' MicrosoftSQLServerSettings (Maybe Int)
msqlssBcpPacketSize = lens _msqlssBcpPacketSize (\s a -> s {_msqlssBcpPacketSize = a})

-- | Endpoint TCP port.
msqlssPort :: Lens' MicrosoftSQLServerSettings (Maybe Int)
msqlssPort = lens _msqlssPort (\s a -> s {_msqlssPort = a})

-- | Endpoint connection user name.
msqlssUsername :: Lens' MicrosoftSQLServerSettings (Maybe Text)
msqlssUsername = lens _msqlssUsername (\s a -> s {_msqlssUsername = a})

-- | The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the SQL Server endpoint.
msqlssSecretsManagerAccessRoleARN :: Lens' MicrosoftSQLServerSettings (Maybe Text)
msqlssSecretsManagerAccessRoleARN = lens _msqlssSecretsManagerAccessRoleARN (\s a -> s {_msqlssSecretsManagerAccessRoleARN = a})

-- | Specifies a file group for the AWS DMS internal tables. When the replication task starts, all the internal AWS DMS control tables (awsdms_ apply_exception, awsdms_apply, awsdms_changes) are created for the specified file group.
msqlssControlTablesFileGroup :: Lens' MicrosoftSQLServerSettings (Maybe Text)
msqlssControlTablesFileGroup = lens _msqlssControlTablesFileGroup (\s a -> s {_msqlssControlTablesFileGroup = a})

-- | When this attribute is set to @Y@ , AWS DMS only reads changes from transaction log backups and doesn't read from the active transaction log file during ongoing replication. Setting this parameter to @Y@ enables you to control active transaction log file growth during full load and ongoing replication tasks. However, it can add some source latency to ongoing replication.
msqlssReadBackupOnly :: Lens' MicrosoftSQLServerSettings (Maybe Bool)
msqlssReadBackupOnly = lens _msqlssReadBackupOnly (\s a -> s {_msqlssReadBackupOnly = a})

-- | Database name for the endpoint.
msqlssDatabaseName :: Lens' MicrosoftSQLServerSettings (Maybe Text)
msqlssDatabaseName = lens _msqlssDatabaseName (\s a -> s {_msqlssDatabaseName = a})

instance FromJSON MicrosoftSQLServerSettings where
  parseJSON =
    withObject
      "MicrosoftSQLServerSettings"
      ( \x ->
          MicrosoftSQLServerSettings'
            <$> (x .:? "UseBcpFullLoad")
            <*> (x .:? "SafeguardPolicy")
            <*> (x .:? "SecretsManagerSecretId")
            <*> (x .:? "ServerName")
            <*> (x .:? "Password")
            <*> (x .:? "BcpPacketSize")
            <*> (x .:? "Port")
            <*> (x .:? "Username")
            <*> (x .:? "SecretsManagerAccessRoleArn")
            <*> (x .:? "ControlTablesFileGroup")
            <*> (x .:? "ReadBackupOnly")
            <*> (x .:? "DatabaseName")
      )

instance Hashable MicrosoftSQLServerSettings

instance NFData MicrosoftSQLServerSettings

instance ToJSON MicrosoftSQLServerSettings where
  toJSON MicrosoftSQLServerSettings' {..} =
    object
      ( catMaybes
          [ ("UseBcpFullLoad" .=) <$> _msqlssUseBcpFullLoad,
            ("SafeguardPolicy" .=) <$> _msqlssSafeguardPolicy,
            ("SecretsManagerSecretId" .=)
              <$> _msqlssSecretsManagerSecretId,
            ("ServerName" .=) <$> _msqlssServerName,
            ("Password" .=) <$> _msqlssPassword,
            ("BcpPacketSize" .=) <$> _msqlssBcpPacketSize,
            ("Port" .=) <$> _msqlssPort,
            ("Username" .=) <$> _msqlssUsername,
            ("SecretsManagerAccessRoleArn" .=)
              <$> _msqlssSecretsManagerAccessRoleARN,
            ("ControlTablesFileGroup" .=)
              <$> _msqlssControlTablesFileGroup,
            ("ReadBackupOnly" .=) <$> _msqlssReadBackupOnly,
            ("DatabaseName" .=) <$> _msqlssDatabaseName
          ]
      )
