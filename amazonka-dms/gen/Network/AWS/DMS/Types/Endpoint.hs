{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.Endpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.Endpoint where

import Network.AWS.DMS.Types.DmsSSLModeValue
import Network.AWS.DMS.Types.DmsTransferSettings
import Network.AWS.DMS.Types.DocDBSettings
import Network.AWS.DMS.Types.DynamoDBSettings
import Network.AWS.DMS.Types.ElasticsearchSettings
import Network.AWS.DMS.Types.IBMDB2Settings
import Network.AWS.DMS.Types.KafkaSettings
import Network.AWS.DMS.Types.KinesisSettings
import Network.AWS.DMS.Types.MicrosoftSQLServerSettings
import Network.AWS.DMS.Types.MongoDBSettings
import Network.AWS.DMS.Types.MySQLSettings
import Network.AWS.DMS.Types.NeptuneSettings
import Network.AWS.DMS.Types.OracleSettings
import Network.AWS.DMS.Types.PostgreSQLSettings
import Network.AWS.DMS.Types.RedshiftSettings
import Network.AWS.DMS.Types.ReplicationEndpointTypeValue
import Network.AWS.DMS.Types.S3Settings
import Network.AWS.DMS.Types.SybaseSettings
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an endpoint of a database instance in response to operations such as the following:
--
--
--     * @CreateEndpoint@
--
--     * @DescribeEndpoint@
--
--     * @DescribeEndpointTypes@
--
--     * @ModifyEndpoint@
--
--
--
--
-- /See:/ 'endpoint' smart constructor.
data Endpoint = Endpoint'
  { _eSSLMode ::
      !(Maybe DmsSSLModeValue),
    _eMongoDBSettings :: !(Maybe MongoDBSettings),
    _eStatus :: !(Maybe Text),
    _eNeptuneSettings :: !(Maybe NeptuneSettings),
    _eEngineName :: !(Maybe Text),
    _eElasticsearchSettings ::
      !(Maybe ElasticsearchSettings),
    _eExternalTableDefinition :: !(Maybe Text),
    _eEndpointType ::
      !(Maybe ReplicationEndpointTypeValue),
    _eOracleSettings :: !(Maybe OracleSettings),
    _ePostgreSQLSettings :: !(Maybe PostgreSQLSettings),
    _eServiceAccessRoleARN :: !(Maybe Text),
    _eCertificateARN :: !(Maybe Text),
    _eS3Settings :: !(Maybe S3Settings),
    _eServerName :: !(Maybe Text),
    _eMicrosoftSQLServerSettings ::
      !(Maybe MicrosoftSQLServerSettings),
    _eKMSKeyId :: !(Maybe Text),
    _eIBMDB2Settings :: !(Maybe IBMDB2Settings),
    _eMySQLSettings :: !(Maybe MySQLSettings),
    _eDmsTransferSettings ::
      !(Maybe DmsTransferSettings),
    _ePort :: !(Maybe Int),
    _eEndpointARN :: !(Maybe Text),
    _eRedshiftSettings :: !(Maybe RedshiftSettings),
    _eUsername :: !(Maybe Text),
    _eEngineDisplayName :: !(Maybe Text),
    _eKafkaSettings :: !(Maybe KafkaSettings),
    _eDocDBSettings :: !(Maybe DocDBSettings),
    _eDynamoDBSettings :: !(Maybe DynamoDBSettings),
    _eExtraConnectionAttributes :: !(Maybe Text),
    _eExternalId :: !(Maybe Text),
    _eEndpointIdentifier :: !(Maybe Text),
    _eKinesisSettings :: !(Maybe KinesisSettings),
    _eSybaseSettings :: !(Maybe SybaseSettings),
    _eDatabaseName :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Endpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eSSLMode' - The SSL mode used to connect to the endpoint. The default value is @none@ .
--
-- * 'eMongoDBSettings' - The settings for the MongoDB source endpoint. For more information, see the @MongoDbSettings@ structure.
--
-- * 'eStatus' - The status of the endpoint.
--
-- * 'eNeptuneSettings' - The settings for the Amazon Neptune target endpoint. For more information, see the @NeptuneSettings@ structure.
--
-- * 'eEngineName' - The database engine name. Valid values, depending on the EndpointType, include @"mysql"@ , @"oracle"@ , @"postgres"@ , @"mariadb"@ , @"aurora"@ , @"aurora-postgresql"@ , @"redshift"@ , @"s3"@ , @"db2"@ , @"azuredb"@ , @"sybase"@ , @"dynamodb"@ , @"mongodb"@ , @"kinesis"@ , @"kafka"@ , @"elasticsearch"@ , @"documentdb"@ , @"sqlserver"@ , and @"neptune"@ .
--
-- * 'eElasticsearchSettings' - The settings for the Elasticsearch source endpoint. For more information, see the @ElasticsearchSettings@ structure.
--
-- * 'eExternalTableDefinition' - The external table definition.
--
-- * 'eEndpointType' - The type of endpoint. Valid values are @source@ and @target@ .
--
-- * 'eOracleSettings' - The settings for the Oracle source and target endpoint. For more information, see the @OracleSettings@ structure.
--
-- * 'ePostgreSQLSettings' - The settings for the PostgreSQL source and target endpoint. For more information, see the @PostgreSQLSettings@ structure.
--
-- * 'eServiceAccessRoleARN' - The Amazon Resource Name (ARN) used by the service access IAM role.
--
-- * 'eCertificateARN' - The Amazon Resource Name (ARN) used for SSL connection to the endpoint.
--
-- * 'eS3Settings' - The settings for the S3 target endpoint. For more information, see the @S3Settings@ structure.
--
-- * 'eServerName' - The name of the server at the endpoint.
--
-- * 'eMicrosoftSQLServerSettings' - The settings for the Microsoft SQL Server source and target endpoint. For more information, see the @MicrosoftSQLServerSettings@ structure.
--
-- * 'eKMSKeyId' - An AWS KMS key identifier that is used to encrypt the connection parameters for the endpoint. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
--
-- * 'eIBMDB2Settings' - The settings for the IBM Db2 LUW source endpoint. For more information, see the @IBMDb2Settings@ structure.
--
-- * 'eMySQLSettings' - The settings for the MySQL source and target endpoint. For more information, see the @MySQLSettings@ structure.
--
-- * 'eDmsTransferSettings' - The settings in JSON format for the DMS transfer type of source endpoint.  Possible settings include the following:     * @ServiceAccessRoleArn@ - The IAM role that has permission to access the Amazon S3 bucket.     * @BucketName@ - The name of the S3 bucket to use.     * @CompressionType@ - An optional parameter to use GZIP to compress the target files. To use GZIP, set this value to @NONE@ (the default). To keep the files uncompressed, don't use this value. Shorthand syntax for these settings is as follows: @ServiceAccessRoleArn=string,BucketName=string,CompressionType=string@  JSON syntax for these settings is as follows: @{ "ServiceAccessRoleArn": "string", "BucketName": "string", "CompressionType": "none"|"gzip" } @
--
-- * 'ePort' - The port value used to access the endpoint.
--
-- * 'eEndpointARN' - The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
--
-- * 'eRedshiftSettings' - Settings for the Amazon Redshift endpoint.
--
-- * 'eUsername' - The user name used to connect to the endpoint.
--
-- * 'eEngineDisplayName' - The expanded name for the engine name. For example, if the @EngineName@ parameter is "aurora," this value would be "Amazon Aurora MySQL."
--
-- * 'eKafkaSettings' - The settings for the Apache Kafka target endpoint. For more information, see the @KafkaSettings@ structure.
--
-- * 'eDocDBSettings' - Undocumented member.
--
-- * 'eDynamoDBSettings' - The settings for the DynamoDB target endpoint. For more information, see the @DynamoDBSettings@ structure.
--
-- * 'eExtraConnectionAttributes' - Additional connection attributes used to connect to the endpoint.
--
-- * 'eExternalId' - Value returned by a call to CreateEndpoint that can be used for cross-account validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a cross-account.
--
-- * 'eEndpointIdentifier' - The database endpoint identifier. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'eKinesisSettings' - The settings for the Amazon Kinesis target endpoint. For more information, see the @KinesisSettings@ structure.
--
-- * 'eSybaseSettings' - The settings for the SAP ASE source and target endpoint. For more information, see the @SybaseSettings@ structure.
--
-- * 'eDatabaseName' - The name of the database at the endpoint.
endpoint ::
  Endpoint
endpoint =
  Endpoint'
    { _eSSLMode = Nothing,
      _eMongoDBSettings = Nothing,
      _eStatus = Nothing,
      _eNeptuneSettings = Nothing,
      _eEngineName = Nothing,
      _eElasticsearchSettings = Nothing,
      _eExternalTableDefinition = Nothing,
      _eEndpointType = Nothing,
      _eOracleSettings = Nothing,
      _ePostgreSQLSettings = Nothing,
      _eServiceAccessRoleARN = Nothing,
      _eCertificateARN = Nothing,
      _eS3Settings = Nothing,
      _eServerName = Nothing,
      _eMicrosoftSQLServerSettings = Nothing,
      _eKMSKeyId = Nothing,
      _eIBMDB2Settings = Nothing,
      _eMySQLSettings = Nothing,
      _eDmsTransferSettings = Nothing,
      _ePort = Nothing,
      _eEndpointARN = Nothing,
      _eRedshiftSettings = Nothing,
      _eUsername = Nothing,
      _eEngineDisplayName = Nothing,
      _eKafkaSettings = Nothing,
      _eDocDBSettings = Nothing,
      _eDynamoDBSettings = Nothing,
      _eExtraConnectionAttributes = Nothing,
      _eExternalId = Nothing,
      _eEndpointIdentifier = Nothing,
      _eKinesisSettings = Nothing,
      _eSybaseSettings = Nothing,
      _eDatabaseName = Nothing
    }

-- | The SSL mode used to connect to the endpoint. The default value is @none@ .
eSSLMode :: Lens' Endpoint (Maybe DmsSSLModeValue)
eSSLMode = lens _eSSLMode (\s a -> s {_eSSLMode = a})

-- | The settings for the MongoDB source endpoint. For more information, see the @MongoDbSettings@ structure.
eMongoDBSettings :: Lens' Endpoint (Maybe MongoDBSettings)
eMongoDBSettings = lens _eMongoDBSettings (\s a -> s {_eMongoDBSettings = a})

-- | The status of the endpoint.
eStatus :: Lens' Endpoint (Maybe Text)
eStatus = lens _eStatus (\s a -> s {_eStatus = a})

-- | The settings for the Amazon Neptune target endpoint. For more information, see the @NeptuneSettings@ structure.
eNeptuneSettings :: Lens' Endpoint (Maybe NeptuneSettings)
eNeptuneSettings = lens _eNeptuneSettings (\s a -> s {_eNeptuneSettings = a})

-- | The database engine name. Valid values, depending on the EndpointType, include @"mysql"@ , @"oracle"@ , @"postgres"@ , @"mariadb"@ , @"aurora"@ , @"aurora-postgresql"@ , @"redshift"@ , @"s3"@ , @"db2"@ , @"azuredb"@ , @"sybase"@ , @"dynamodb"@ , @"mongodb"@ , @"kinesis"@ , @"kafka"@ , @"elasticsearch"@ , @"documentdb"@ , @"sqlserver"@ , and @"neptune"@ .
eEngineName :: Lens' Endpoint (Maybe Text)
eEngineName = lens _eEngineName (\s a -> s {_eEngineName = a})

-- | The settings for the Elasticsearch source endpoint. For more information, see the @ElasticsearchSettings@ structure.
eElasticsearchSettings :: Lens' Endpoint (Maybe ElasticsearchSettings)
eElasticsearchSettings = lens _eElasticsearchSettings (\s a -> s {_eElasticsearchSettings = a})

-- | The external table definition.
eExternalTableDefinition :: Lens' Endpoint (Maybe Text)
eExternalTableDefinition = lens _eExternalTableDefinition (\s a -> s {_eExternalTableDefinition = a})

-- | The type of endpoint. Valid values are @source@ and @target@ .
eEndpointType :: Lens' Endpoint (Maybe ReplicationEndpointTypeValue)
eEndpointType = lens _eEndpointType (\s a -> s {_eEndpointType = a})

-- | The settings for the Oracle source and target endpoint. For more information, see the @OracleSettings@ structure.
eOracleSettings :: Lens' Endpoint (Maybe OracleSettings)
eOracleSettings = lens _eOracleSettings (\s a -> s {_eOracleSettings = a})

-- | The settings for the PostgreSQL source and target endpoint. For more information, see the @PostgreSQLSettings@ structure.
ePostgreSQLSettings :: Lens' Endpoint (Maybe PostgreSQLSettings)
ePostgreSQLSettings = lens _ePostgreSQLSettings (\s a -> s {_ePostgreSQLSettings = a})

-- | The Amazon Resource Name (ARN) used by the service access IAM role.
eServiceAccessRoleARN :: Lens' Endpoint (Maybe Text)
eServiceAccessRoleARN = lens _eServiceAccessRoleARN (\s a -> s {_eServiceAccessRoleARN = a})

-- | The Amazon Resource Name (ARN) used for SSL connection to the endpoint.
eCertificateARN :: Lens' Endpoint (Maybe Text)
eCertificateARN = lens _eCertificateARN (\s a -> s {_eCertificateARN = a})

-- | The settings for the S3 target endpoint. For more information, see the @S3Settings@ structure.
eS3Settings :: Lens' Endpoint (Maybe S3Settings)
eS3Settings = lens _eS3Settings (\s a -> s {_eS3Settings = a})

-- | The name of the server at the endpoint.
eServerName :: Lens' Endpoint (Maybe Text)
eServerName = lens _eServerName (\s a -> s {_eServerName = a})

-- | The settings for the Microsoft SQL Server source and target endpoint. For more information, see the @MicrosoftSQLServerSettings@ structure.
eMicrosoftSQLServerSettings :: Lens' Endpoint (Maybe MicrosoftSQLServerSettings)
eMicrosoftSQLServerSettings = lens _eMicrosoftSQLServerSettings (\s a -> s {_eMicrosoftSQLServerSettings = a})

-- | An AWS KMS key identifier that is used to encrypt the connection parameters for the endpoint. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
eKMSKeyId :: Lens' Endpoint (Maybe Text)
eKMSKeyId = lens _eKMSKeyId (\s a -> s {_eKMSKeyId = a})

-- | The settings for the IBM Db2 LUW source endpoint. For more information, see the @IBMDb2Settings@ structure.
eIBMDB2Settings :: Lens' Endpoint (Maybe IBMDB2Settings)
eIBMDB2Settings = lens _eIBMDB2Settings (\s a -> s {_eIBMDB2Settings = a})

-- | The settings for the MySQL source and target endpoint. For more information, see the @MySQLSettings@ structure.
eMySQLSettings :: Lens' Endpoint (Maybe MySQLSettings)
eMySQLSettings = lens _eMySQLSettings (\s a -> s {_eMySQLSettings = a})

-- | The settings in JSON format for the DMS transfer type of source endpoint.  Possible settings include the following:     * @ServiceAccessRoleArn@ - The IAM role that has permission to access the Amazon S3 bucket.     * @BucketName@ - The name of the S3 bucket to use.     * @CompressionType@ - An optional parameter to use GZIP to compress the target files. To use GZIP, set this value to @NONE@ (the default). To keep the files uncompressed, don't use this value. Shorthand syntax for these settings is as follows: @ServiceAccessRoleArn=string,BucketName=string,CompressionType=string@  JSON syntax for these settings is as follows: @{ "ServiceAccessRoleArn": "string", "BucketName": "string", "CompressionType": "none"|"gzip" } @
eDmsTransferSettings :: Lens' Endpoint (Maybe DmsTransferSettings)
eDmsTransferSettings = lens _eDmsTransferSettings (\s a -> s {_eDmsTransferSettings = a})

-- | The port value used to access the endpoint.
ePort :: Lens' Endpoint (Maybe Int)
ePort = lens _ePort (\s a -> s {_ePort = a})

-- | The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
eEndpointARN :: Lens' Endpoint (Maybe Text)
eEndpointARN = lens _eEndpointARN (\s a -> s {_eEndpointARN = a})

-- | Settings for the Amazon Redshift endpoint.
eRedshiftSettings :: Lens' Endpoint (Maybe RedshiftSettings)
eRedshiftSettings = lens _eRedshiftSettings (\s a -> s {_eRedshiftSettings = a})

-- | The user name used to connect to the endpoint.
eUsername :: Lens' Endpoint (Maybe Text)
eUsername = lens _eUsername (\s a -> s {_eUsername = a})

-- | The expanded name for the engine name. For example, if the @EngineName@ parameter is "aurora," this value would be "Amazon Aurora MySQL."
eEngineDisplayName :: Lens' Endpoint (Maybe Text)
eEngineDisplayName = lens _eEngineDisplayName (\s a -> s {_eEngineDisplayName = a})

-- | The settings for the Apache Kafka target endpoint. For more information, see the @KafkaSettings@ structure.
eKafkaSettings :: Lens' Endpoint (Maybe KafkaSettings)
eKafkaSettings = lens _eKafkaSettings (\s a -> s {_eKafkaSettings = a})

-- | Undocumented member.
eDocDBSettings :: Lens' Endpoint (Maybe DocDBSettings)
eDocDBSettings = lens _eDocDBSettings (\s a -> s {_eDocDBSettings = a})

-- | The settings for the DynamoDB target endpoint. For more information, see the @DynamoDBSettings@ structure.
eDynamoDBSettings :: Lens' Endpoint (Maybe DynamoDBSettings)
eDynamoDBSettings = lens _eDynamoDBSettings (\s a -> s {_eDynamoDBSettings = a})

-- | Additional connection attributes used to connect to the endpoint.
eExtraConnectionAttributes :: Lens' Endpoint (Maybe Text)
eExtraConnectionAttributes = lens _eExtraConnectionAttributes (\s a -> s {_eExtraConnectionAttributes = a})

-- | Value returned by a call to CreateEndpoint that can be used for cross-account validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a cross-account.
eExternalId :: Lens' Endpoint (Maybe Text)
eExternalId = lens _eExternalId (\s a -> s {_eExternalId = a})

-- | The database endpoint identifier. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
eEndpointIdentifier :: Lens' Endpoint (Maybe Text)
eEndpointIdentifier = lens _eEndpointIdentifier (\s a -> s {_eEndpointIdentifier = a})

-- | The settings for the Amazon Kinesis target endpoint. For more information, see the @KinesisSettings@ structure.
eKinesisSettings :: Lens' Endpoint (Maybe KinesisSettings)
eKinesisSettings = lens _eKinesisSettings (\s a -> s {_eKinesisSettings = a})

-- | The settings for the SAP ASE source and target endpoint. For more information, see the @SybaseSettings@ structure.
eSybaseSettings :: Lens' Endpoint (Maybe SybaseSettings)
eSybaseSettings = lens _eSybaseSettings (\s a -> s {_eSybaseSettings = a})

-- | The name of the database at the endpoint.
eDatabaseName :: Lens' Endpoint (Maybe Text)
eDatabaseName = lens _eDatabaseName (\s a -> s {_eDatabaseName = a})

instance FromJSON Endpoint where
  parseJSON =
    withObject
      "Endpoint"
      ( \x ->
          Endpoint'
            <$> (x .:? "SslMode")
            <*> (x .:? "MongoDbSettings")
            <*> (x .:? "Status")
            <*> (x .:? "NeptuneSettings")
            <*> (x .:? "EngineName")
            <*> (x .:? "ElasticsearchSettings")
            <*> (x .:? "ExternalTableDefinition")
            <*> (x .:? "EndpointType")
            <*> (x .:? "OracleSettings")
            <*> (x .:? "PostgreSQLSettings")
            <*> (x .:? "ServiceAccessRoleArn")
            <*> (x .:? "CertificateArn")
            <*> (x .:? "S3Settings")
            <*> (x .:? "ServerName")
            <*> (x .:? "MicrosoftSQLServerSettings")
            <*> (x .:? "KmsKeyId")
            <*> (x .:? "IBMDb2Settings")
            <*> (x .:? "MySQLSettings")
            <*> (x .:? "DmsTransferSettings")
            <*> (x .:? "Port")
            <*> (x .:? "EndpointArn")
            <*> (x .:? "RedshiftSettings")
            <*> (x .:? "Username")
            <*> (x .:? "EngineDisplayName")
            <*> (x .:? "KafkaSettings")
            <*> (x .:? "DocDbSettings")
            <*> (x .:? "DynamoDbSettings")
            <*> (x .:? "ExtraConnectionAttributes")
            <*> (x .:? "ExternalId")
            <*> (x .:? "EndpointIdentifier")
            <*> (x .:? "KinesisSettings")
            <*> (x .:? "SybaseSettings")
            <*> (x .:? "DatabaseName")
      )

instance Hashable Endpoint

instance NFData Endpoint
