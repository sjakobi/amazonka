{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.MySQLSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.MySQLSettings where

import Network.AWS.DMS.Types.TargetDBType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that defines a MySQL endpoint.
--
--
--
-- /See:/ 'mySQLSettings' smart constructor.
data MySQLSettings = MySQLSettings'
  { _msqlsTargetDBType ::
      !(Maybe TargetDBType),
    _msqlsServerTimezone :: !(Maybe Text),
    _msqlsSecretsManagerSecretId ::
      !(Maybe Text),
    _msqlsAfterConnectScript :: !(Maybe Text),
    _msqlsServerName :: !(Maybe Text),
    _msqlsMaxFileSize :: !(Maybe Int),
    _msqlsPassword :: !(Maybe (Sensitive Text)),
    _msqlsEventsPollInterval :: !(Maybe Int),
    _msqlsPort :: !(Maybe Int),
    _msqlsUsername :: !(Maybe Text),
    _msqlsSecretsManagerAccessRoleARN ::
      !(Maybe Text),
    _msqlsParallelLoadThreads :: !(Maybe Int),
    _msqlsDatabaseName :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MySQLSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msqlsTargetDBType' - Specifies where to migrate source tables on the target, either to a single database or multiple databases. Example: @targetDbType=MULTIPLE_DATABASES@
--
-- * 'msqlsServerTimezone' - Specifies the time zone for the source MySQL database. Example: @serverTimezone=US/Pacific;@  Note: Do not enclose time zones in single quotes.
--
-- * 'msqlsSecretsManagerSecretId' - The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the MySQL endpoint connection details.
--
-- * 'msqlsAfterConnectScript' - Specifies a script to run immediately after AWS DMS connects to the endpoint. The migration task continues running regardless if the SQL statement succeeds or fails.
--
-- * 'msqlsServerName' - Fully qualified domain name of the endpoint.
--
-- * 'msqlsMaxFileSize' - Specifies the maximum size (in KB) of any .csv file used to transfer data to a MySQL-compatible database. Example: @maxFileSize=512@
--
-- * 'msqlsPassword' - Endpoint connection password.
--
-- * 'msqlsEventsPollInterval' - Specifies how often to check the binary log for new changes/events when the database is idle. Example: @eventsPollInterval=5;@  In the example, AWS DMS checks for changes in the binary logs every five seconds.
--
-- * 'msqlsPort' - Endpoint TCP port.
--
-- * 'msqlsUsername' - Endpoint connection user name.
--
-- * 'msqlsSecretsManagerAccessRoleARN' - The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the MySQL endpoint.
--
-- * 'msqlsParallelLoadThreads' - Improves performance when loading data into the MySQL-compatible target database. Specifies how many threads to use to load the data into the MySQL-compatible target database. Setting a large number of threads can have an adverse effect on database performance, because a separate connection is required for each thread. Example: @parallelLoadThreads=1@
--
-- * 'msqlsDatabaseName' - Database name for the endpoint.
mySQLSettings ::
  MySQLSettings
mySQLSettings =
  MySQLSettings'
    { _msqlsTargetDBType = Nothing,
      _msqlsServerTimezone = Nothing,
      _msqlsSecretsManagerSecretId = Nothing,
      _msqlsAfterConnectScript = Nothing,
      _msqlsServerName = Nothing,
      _msqlsMaxFileSize = Nothing,
      _msqlsPassword = Nothing,
      _msqlsEventsPollInterval = Nothing,
      _msqlsPort = Nothing,
      _msqlsUsername = Nothing,
      _msqlsSecretsManagerAccessRoleARN = Nothing,
      _msqlsParallelLoadThreads = Nothing,
      _msqlsDatabaseName = Nothing
    }

-- | Specifies where to migrate source tables on the target, either to a single database or multiple databases. Example: @targetDbType=MULTIPLE_DATABASES@
msqlsTargetDBType :: Lens' MySQLSettings (Maybe TargetDBType)
msqlsTargetDBType = lens _msqlsTargetDBType (\s a -> s {_msqlsTargetDBType = a})

-- | Specifies the time zone for the source MySQL database. Example: @serverTimezone=US/Pacific;@  Note: Do not enclose time zones in single quotes.
msqlsServerTimezone :: Lens' MySQLSettings (Maybe Text)
msqlsServerTimezone = lens _msqlsServerTimezone (\s a -> s {_msqlsServerTimezone = a})

-- | The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the MySQL endpoint connection details.
msqlsSecretsManagerSecretId :: Lens' MySQLSettings (Maybe Text)
msqlsSecretsManagerSecretId = lens _msqlsSecretsManagerSecretId (\s a -> s {_msqlsSecretsManagerSecretId = a})

-- | Specifies a script to run immediately after AWS DMS connects to the endpoint. The migration task continues running regardless if the SQL statement succeeds or fails.
msqlsAfterConnectScript :: Lens' MySQLSettings (Maybe Text)
msqlsAfterConnectScript = lens _msqlsAfterConnectScript (\s a -> s {_msqlsAfterConnectScript = a})

-- | Fully qualified domain name of the endpoint.
msqlsServerName :: Lens' MySQLSettings (Maybe Text)
msqlsServerName = lens _msqlsServerName (\s a -> s {_msqlsServerName = a})

-- | Specifies the maximum size (in KB) of any .csv file used to transfer data to a MySQL-compatible database. Example: @maxFileSize=512@
msqlsMaxFileSize :: Lens' MySQLSettings (Maybe Int)
msqlsMaxFileSize = lens _msqlsMaxFileSize (\s a -> s {_msqlsMaxFileSize = a})

-- | Endpoint connection password.
msqlsPassword :: Lens' MySQLSettings (Maybe Text)
msqlsPassword = lens _msqlsPassword (\s a -> s {_msqlsPassword = a}) . mapping _Sensitive

-- | Specifies how often to check the binary log for new changes/events when the database is idle. Example: @eventsPollInterval=5;@  In the example, AWS DMS checks for changes in the binary logs every five seconds.
msqlsEventsPollInterval :: Lens' MySQLSettings (Maybe Int)
msqlsEventsPollInterval = lens _msqlsEventsPollInterval (\s a -> s {_msqlsEventsPollInterval = a})

-- | Endpoint TCP port.
msqlsPort :: Lens' MySQLSettings (Maybe Int)
msqlsPort = lens _msqlsPort (\s a -> s {_msqlsPort = a})

-- | Endpoint connection user name.
msqlsUsername :: Lens' MySQLSettings (Maybe Text)
msqlsUsername = lens _msqlsUsername (\s a -> s {_msqlsUsername = a})

-- | The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the MySQL endpoint.
msqlsSecretsManagerAccessRoleARN :: Lens' MySQLSettings (Maybe Text)
msqlsSecretsManagerAccessRoleARN = lens _msqlsSecretsManagerAccessRoleARN (\s a -> s {_msqlsSecretsManagerAccessRoleARN = a})

-- | Improves performance when loading data into the MySQL-compatible target database. Specifies how many threads to use to load the data into the MySQL-compatible target database. Setting a large number of threads can have an adverse effect on database performance, because a separate connection is required for each thread. Example: @parallelLoadThreads=1@
msqlsParallelLoadThreads :: Lens' MySQLSettings (Maybe Int)
msqlsParallelLoadThreads = lens _msqlsParallelLoadThreads (\s a -> s {_msqlsParallelLoadThreads = a})

-- | Database name for the endpoint.
msqlsDatabaseName :: Lens' MySQLSettings (Maybe Text)
msqlsDatabaseName = lens _msqlsDatabaseName (\s a -> s {_msqlsDatabaseName = a})

instance FromJSON MySQLSettings where
  parseJSON =
    withObject
      "MySQLSettings"
      ( \x ->
          MySQLSettings'
            <$> (x .:? "TargetDbType")
            <*> (x .:? "ServerTimezone")
            <*> (x .:? "SecretsManagerSecretId")
            <*> (x .:? "AfterConnectScript")
            <*> (x .:? "ServerName")
            <*> (x .:? "MaxFileSize")
            <*> (x .:? "Password")
            <*> (x .:? "EventsPollInterval")
            <*> (x .:? "Port")
            <*> (x .:? "Username")
            <*> (x .:? "SecretsManagerAccessRoleArn")
            <*> (x .:? "ParallelLoadThreads")
            <*> (x .:? "DatabaseName")
      )

instance Hashable MySQLSettings

instance NFData MySQLSettings

instance ToJSON MySQLSettings where
  toJSON MySQLSettings' {..} =
    object
      ( catMaybes
          [ ("TargetDbType" .=) <$> _msqlsTargetDBType,
            ("ServerTimezone" .=) <$> _msqlsServerTimezone,
            ("SecretsManagerSecretId" .=)
              <$> _msqlsSecretsManagerSecretId,
            ("AfterConnectScript" .=)
              <$> _msqlsAfterConnectScript,
            ("ServerName" .=) <$> _msqlsServerName,
            ("MaxFileSize" .=) <$> _msqlsMaxFileSize,
            ("Password" .=) <$> _msqlsPassword,
            ("EventsPollInterval" .=)
              <$> _msqlsEventsPollInterval,
            ("Port" .=) <$> _msqlsPort,
            ("Username" .=) <$> _msqlsUsername,
            ("SecretsManagerAccessRoleArn" .=)
              <$> _msqlsSecretsManagerAccessRoleARN,
            ("ParallelLoadThreads" .=)
              <$> _msqlsParallelLoadThreads,
            ("DatabaseName" .=) <$> _msqlsDatabaseName
          ]
      )
