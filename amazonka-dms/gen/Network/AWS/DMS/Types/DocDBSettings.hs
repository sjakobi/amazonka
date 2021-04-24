{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.DocDBSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.DocDBSettings where

import Network.AWS.DMS.Types.NestingLevelValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that defines a DocumentDB endpoint.
--
--
--
-- /See:/ 'docDBSettings' smart constructor.
data DocDBSettings = DocDBSettings'
  { _ddsSecretsManagerSecretId ::
      !(Maybe Text),
    _ddsServerName :: !(Maybe Text),
    _ddsKMSKeyId :: !(Maybe Text),
    _ddsPassword :: !(Maybe (Sensitive Text)),
    _ddsPort :: !(Maybe Int),
    _ddsUsername :: !(Maybe Text),
    _ddsSecretsManagerAccessRoleARN ::
      !(Maybe Text),
    _ddsExtractDocId :: !(Maybe Bool),
    _ddsDocsToInvestigate :: !(Maybe Int),
    _ddsNestingLevel ::
      !(Maybe NestingLevelValue),
    _ddsDatabaseName :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocDBSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddsSecretsManagerSecretId' - The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the DocumentDB endpoint connection details.
--
-- * 'ddsServerName' - The name of the server on the DocumentDB source endpoint.
--
-- * 'ddsKMSKeyId' - The AWS KMS key identifier that is used to encrypt the content on the replication instance. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
--
-- * 'ddsPassword' - The password for the user account you use to access the DocumentDB source endpoint.
--
-- * 'ddsPort' - The port value for the DocumentDB source endpoint.
--
-- * 'ddsUsername' - The user name you use to access the DocumentDB source endpoint.
--
-- * 'ddsSecretsManagerAccessRoleARN' - The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the DocumentDB endpoint.
--
-- * 'ddsExtractDocId' - Specifies the document ID. Use this setting when @NestingLevel@ is set to @"none"@ .  Default value is @"false"@ .
--
-- * 'ddsDocsToInvestigate' - Indicates the number of documents to preview to determine the document organization. Use this setting when @NestingLevel@ is set to @"one"@ .  Must be a positive value greater than @0@ . Default value is @1000@ .
--
-- * 'ddsNestingLevel' - Specifies either document or table mode.  Default value is @"none"@ . Specify @"none"@ to use document mode. Specify @"one"@ to use table mode.
--
-- * 'ddsDatabaseName' - The database name on the DocumentDB source endpoint.
docDBSettings ::
  DocDBSettings
docDBSettings =
  DocDBSettings'
    { _ddsSecretsManagerSecretId =
        Nothing,
      _ddsServerName = Nothing,
      _ddsKMSKeyId = Nothing,
      _ddsPassword = Nothing,
      _ddsPort = Nothing,
      _ddsUsername = Nothing,
      _ddsSecretsManagerAccessRoleARN = Nothing,
      _ddsExtractDocId = Nothing,
      _ddsDocsToInvestigate = Nothing,
      _ddsNestingLevel = Nothing,
      _ddsDatabaseName = Nothing
    }

-- | The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the DocumentDB endpoint connection details.
ddsSecretsManagerSecretId :: Lens' DocDBSettings (Maybe Text)
ddsSecretsManagerSecretId = lens _ddsSecretsManagerSecretId (\s a -> s {_ddsSecretsManagerSecretId = a})

-- | The name of the server on the DocumentDB source endpoint.
ddsServerName :: Lens' DocDBSettings (Maybe Text)
ddsServerName = lens _ddsServerName (\s a -> s {_ddsServerName = a})

-- | The AWS KMS key identifier that is used to encrypt the content on the replication instance. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
ddsKMSKeyId :: Lens' DocDBSettings (Maybe Text)
ddsKMSKeyId = lens _ddsKMSKeyId (\s a -> s {_ddsKMSKeyId = a})

-- | The password for the user account you use to access the DocumentDB source endpoint.
ddsPassword :: Lens' DocDBSettings (Maybe Text)
ddsPassword = lens _ddsPassword (\s a -> s {_ddsPassword = a}) . mapping _Sensitive

-- | The port value for the DocumentDB source endpoint.
ddsPort :: Lens' DocDBSettings (Maybe Int)
ddsPort = lens _ddsPort (\s a -> s {_ddsPort = a})

-- | The user name you use to access the DocumentDB source endpoint.
ddsUsername :: Lens' DocDBSettings (Maybe Text)
ddsUsername = lens _ddsUsername (\s a -> s {_ddsUsername = a})

-- | The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the DocumentDB endpoint.
ddsSecretsManagerAccessRoleARN :: Lens' DocDBSettings (Maybe Text)
ddsSecretsManagerAccessRoleARN = lens _ddsSecretsManagerAccessRoleARN (\s a -> s {_ddsSecretsManagerAccessRoleARN = a})

-- | Specifies the document ID. Use this setting when @NestingLevel@ is set to @"none"@ .  Default value is @"false"@ .
ddsExtractDocId :: Lens' DocDBSettings (Maybe Bool)
ddsExtractDocId = lens _ddsExtractDocId (\s a -> s {_ddsExtractDocId = a})

-- | Indicates the number of documents to preview to determine the document organization. Use this setting when @NestingLevel@ is set to @"one"@ .  Must be a positive value greater than @0@ . Default value is @1000@ .
ddsDocsToInvestigate :: Lens' DocDBSettings (Maybe Int)
ddsDocsToInvestigate = lens _ddsDocsToInvestigate (\s a -> s {_ddsDocsToInvestigate = a})

-- | Specifies either document or table mode.  Default value is @"none"@ . Specify @"none"@ to use document mode. Specify @"one"@ to use table mode.
ddsNestingLevel :: Lens' DocDBSettings (Maybe NestingLevelValue)
ddsNestingLevel = lens _ddsNestingLevel (\s a -> s {_ddsNestingLevel = a})

-- | The database name on the DocumentDB source endpoint.
ddsDatabaseName :: Lens' DocDBSettings (Maybe Text)
ddsDatabaseName = lens _ddsDatabaseName (\s a -> s {_ddsDatabaseName = a})

instance FromJSON DocDBSettings where
  parseJSON =
    withObject
      "DocDBSettings"
      ( \x ->
          DocDBSettings'
            <$> (x .:? "SecretsManagerSecretId")
            <*> (x .:? "ServerName")
            <*> (x .:? "KmsKeyId")
            <*> (x .:? "Password")
            <*> (x .:? "Port")
            <*> (x .:? "Username")
            <*> (x .:? "SecretsManagerAccessRoleArn")
            <*> (x .:? "ExtractDocId")
            <*> (x .:? "DocsToInvestigate")
            <*> (x .:? "NestingLevel")
            <*> (x .:? "DatabaseName")
      )

instance Hashable DocDBSettings

instance NFData DocDBSettings

instance ToJSON DocDBSettings where
  toJSON DocDBSettings' {..} =
    object
      ( catMaybes
          [ ("SecretsManagerSecretId" .=)
              <$> _ddsSecretsManagerSecretId,
            ("ServerName" .=) <$> _ddsServerName,
            ("KmsKeyId" .=) <$> _ddsKMSKeyId,
            ("Password" .=) <$> _ddsPassword,
            ("Port" .=) <$> _ddsPort,
            ("Username" .=) <$> _ddsUsername,
            ("SecretsManagerAccessRoleArn" .=)
              <$> _ddsSecretsManagerAccessRoleARN,
            ("ExtractDocId" .=) <$> _ddsExtractDocId,
            ("DocsToInvestigate" .=) <$> _ddsDocsToInvestigate,
            ("NestingLevel" .=) <$> _ddsNestingLevel,
            ("DatabaseName" .=) <$> _ddsDatabaseName
          ]
      )
