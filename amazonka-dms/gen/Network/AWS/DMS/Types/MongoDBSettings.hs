{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.MongoDBSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.MongoDBSettings where

import Network.AWS.DMS.Types.AuthMechanismValue
import Network.AWS.DMS.Types.AuthTypeValue
import Network.AWS.DMS.Types.NestingLevelValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that defines a MongoDB endpoint.
--
--
--
-- /See:/ 'mongoDBSettings' smart constructor.
data MongoDBSettings = MongoDBSettings'
  { _mdsSecretsManagerSecretId ::
      !(Maybe Text),
    _mdsAuthSource :: !(Maybe Text),
    _mdsServerName :: !(Maybe Text),
    _mdsKMSKeyId :: !(Maybe Text),
    _mdsPassword ::
      !(Maybe (Sensitive Text)),
    _mdsPort :: !(Maybe Int),
    _mdsUsername :: !(Maybe Text),
    _mdsSecretsManagerAccessRoleARN ::
      !(Maybe Text),
    _mdsAuthMechanism ::
      !(Maybe AuthMechanismValue),
    _mdsExtractDocId :: !(Maybe Text),
    _mdsAuthType :: !(Maybe AuthTypeValue),
    _mdsDocsToInvestigate :: !(Maybe Text),
    _mdsNestingLevel ::
      !(Maybe NestingLevelValue),
    _mdsDatabaseName :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MongoDBSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdsSecretsManagerSecretId' - The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the MongoDB endpoint connection details.
--
-- * 'mdsAuthSource' - The MongoDB database name. This setting isn't used when @AuthType@ is set to @"no"@ .  The default is @"admin"@ .
--
-- * 'mdsServerName' - The name of the server on the MongoDB source endpoint.
--
-- * 'mdsKMSKeyId' - The AWS KMS key identifier that is used to encrypt the content on the replication instance. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
--
-- * 'mdsPassword' - The password for the user account you use to access the MongoDB source endpoint.
--
-- * 'mdsPort' - The port value for the MongoDB source endpoint.
--
-- * 'mdsUsername' - The user name you use to access the MongoDB source endpoint.
--
-- * 'mdsSecretsManagerAccessRoleARN' - The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the MongoDB endpoint.
--
-- * 'mdsAuthMechanism' - The authentication mechanism you use to access the MongoDB source endpoint. For the default value, in MongoDB version 2.x, @"default"@ is @"mongodb_cr"@ . For MongoDB version 3.x or later, @"default"@ is @"scram_sha_1"@ . This setting isn't used when @AuthType@ is set to @"no"@ .
--
-- * 'mdsExtractDocId' - Specifies the document ID. Use this setting when @NestingLevel@ is set to @"none"@ .  Default value is @"false"@ .
--
-- * 'mdsAuthType' - The authentication type you use to access the MongoDB source endpoint. When when set to @"no"@ , user name and password parameters are not used and can be empty.
--
-- * 'mdsDocsToInvestigate' - Indicates the number of documents to preview to determine the document organization. Use this setting when @NestingLevel@ is set to @"one"@ .  Must be a positive value greater than @0@ . Default value is @1000@ .
--
-- * 'mdsNestingLevel' - Specifies either document or table mode.  Default value is @"none"@ . Specify @"none"@ to use document mode. Specify @"one"@ to use table mode.
--
-- * 'mdsDatabaseName' - The database name on the MongoDB source endpoint.
mongoDBSettings ::
  MongoDBSettings
mongoDBSettings =
  MongoDBSettings'
    { _mdsSecretsManagerSecretId =
        Nothing,
      _mdsAuthSource = Nothing,
      _mdsServerName = Nothing,
      _mdsKMSKeyId = Nothing,
      _mdsPassword = Nothing,
      _mdsPort = Nothing,
      _mdsUsername = Nothing,
      _mdsSecretsManagerAccessRoleARN = Nothing,
      _mdsAuthMechanism = Nothing,
      _mdsExtractDocId = Nothing,
      _mdsAuthType = Nothing,
      _mdsDocsToInvestigate = Nothing,
      _mdsNestingLevel = Nothing,
      _mdsDatabaseName = Nothing
    }

-- | The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the MongoDB endpoint connection details.
mdsSecretsManagerSecretId :: Lens' MongoDBSettings (Maybe Text)
mdsSecretsManagerSecretId = lens _mdsSecretsManagerSecretId (\s a -> s {_mdsSecretsManagerSecretId = a})

-- | The MongoDB database name. This setting isn't used when @AuthType@ is set to @"no"@ .  The default is @"admin"@ .
mdsAuthSource :: Lens' MongoDBSettings (Maybe Text)
mdsAuthSource = lens _mdsAuthSource (\s a -> s {_mdsAuthSource = a})

-- | The name of the server on the MongoDB source endpoint.
mdsServerName :: Lens' MongoDBSettings (Maybe Text)
mdsServerName = lens _mdsServerName (\s a -> s {_mdsServerName = a})

-- | The AWS KMS key identifier that is used to encrypt the content on the replication instance. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
mdsKMSKeyId :: Lens' MongoDBSettings (Maybe Text)
mdsKMSKeyId = lens _mdsKMSKeyId (\s a -> s {_mdsKMSKeyId = a})

-- | The password for the user account you use to access the MongoDB source endpoint.
mdsPassword :: Lens' MongoDBSettings (Maybe Text)
mdsPassword = lens _mdsPassword (\s a -> s {_mdsPassword = a}) . mapping _Sensitive

-- | The port value for the MongoDB source endpoint.
mdsPort :: Lens' MongoDBSettings (Maybe Int)
mdsPort = lens _mdsPort (\s a -> s {_mdsPort = a})

-- | The user name you use to access the MongoDB source endpoint.
mdsUsername :: Lens' MongoDBSettings (Maybe Text)
mdsUsername = lens _mdsUsername (\s a -> s {_mdsUsername = a})

-- | The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the MongoDB endpoint.
mdsSecretsManagerAccessRoleARN :: Lens' MongoDBSettings (Maybe Text)
mdsSecretsManagerAccessRoleARN = lens _mdsSecretsManagerAccessRoleARN (\s a -> s {_mdsSecretsManagerAccessRoleARN = a})

-- | The authentication mechanism you use to access the MongoDB source endpoint. For the default value, in MongoDB version 2.x, @"default"@ is @"mongodb_cr"@ . For MongoDB version 3.x or later, @"default"@ is @"scram_sha_1"@ . This setting isn't used when @AuthType@ is set to @"no"@ .
mdsAuthMechanism :: Lens' MongoDBSettings (Maybe AuthMechanismValue)
mdsAuthMechanism = lens _mdsAuthMechanism (\s a -> s {_mdsAuthMechanism = a})

-- | Specifies the document ID. Use this setting when @NestingLevel@ is set to @"none"@ .  Default value is @"false"@ .
mdsExtractDocId :: Lens' MongoDBSettings (Maybe Text)
mdsExtractDocId = lens _mdsExtractDocId (\s a -> s {_mdsExtractDocId = a})

-- | The authentication type you use to access the MongoDB source endpoint. When when set to @"no"@ , user name and password parameters are not used and can be empty.
mdsAuthType :: Lens' MongoDBSettings (Maybe AuthTypeValue)
mdsAuthType = lens _mdsAuthType (\s a -> s {_mdsAuthType = a})

-- | Indicates the number of documents to preview to determine the document organization. Use this setting when @NestingLevel@ is set to @"one"@ .  Must be a positive value greater than @0@ . Default value is @1000@ .
mdsDocsToInvestigate :: Lens' MongoDBSettings (Maybe Text)
mdsDocsToInvestigate = lens _mdsDocsToInvestigate (\s a -> s {_mdsDocsToInvestigate = a})

-- | Specifies either document or table mode.  Default value is @"none"@ . Specify @"none"@ to use document mode. Specify @"one"@ to use table mode.
mdsNestingLevel :: Lens' MongoDBSettings (Maybe NestingLevelValue)
mdsNestingLevel = lens _mdsNestingLevel (\s a -> s {_mdsNestingLevel = a})

-- | The database name on the MongoDB source endpoint.
mdsDatabaseName :: Lens' MongoDBSettings (Maybe Text)
mdsDatabaseName = lens _mdsDatabaseName (\s a -> s {_mdsDatabaseName = a})

instance FromJSON MongoDBSettings where
  parseJSON =
    withObject
      "MongoDBSettings"
      ( \x ->
          MongoDBSettings'
            <$> (x .:? "SecretsManagerSecretId")
            <*> (x .:? "AuthSource")
            <*> (x .:? "ServerName")
            <*> (x .:? "KmsKeyId")
            <*> (x .:? "Password")
            <*> (x .:? "Port")
            <*> (x .:? "Username")
            <*> (x .:? "SecretsManagerAccessRoleArn")
            <*> (x .:? "AuthMechanism")
            <*> (x .:? "ExtractDocId")
            <*> (x .:? "AuthType")
            <*> (x .:? "DocsToInvestigate")
            <*> (x .:? "NestingLevel")
            <*> (x .:? "DatabaseName")
      )

instance Hashable MongoDBSettings

instance NFData MongoDBSettings

instance ToJSON MongoDBSettings where
  toJSON MongoDBSettings' {..} =
    object
      ( catMaybes
          [ ("SecretsManagerSecretId" .=)
              <$> _mdsSecretsManagerSecretId,
            ("AuthSource" .=) <$> _mdsAuthSource,
            ("ServerName" .=) <$> _mdsServerName,
            ("KmsKeyId" .=) <$> _mdsKMSKeyId,
            ("Password" .=) <$> _mdsPassword,
            ("Port" .=) <$> _mdsPort,
            ("Username" .=) <$> _mdsUsername,
            ("SecretsManagerAccessRoleArn" .=)
              <$> _mdsSecretsManagerAccessRoleARN,
            ("AuthMechanism" .=) <$> _mdsAuthMechanism,
            ("ExtractDocId" .=) <$> _mdsExtractDocId,
            ("AuthType" .=) <$> _mdsAuthType,
            ("DocsToInvestigate" .=) <$> _mdsDocsToInvestigate,
            ("NestingLevel" .=) <$> _mdsNestingLevel,
            ("DatabaseName" .=) <$> _mdsDatabaseName
          ]
      )
