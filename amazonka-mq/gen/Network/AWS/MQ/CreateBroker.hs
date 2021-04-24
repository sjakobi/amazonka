{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.CreateBroker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a broker. Note: This API is asynchronous.
module Network.AWS.MQ.CreateBroker
  ( -- * Creating a Request
    createBroker,
    CreateBroker,

    -- * Request Lenses
    cbEncryptionOptions,
    cbBrokerName,
    cbStorageType,
    cbLdapServerMetadata,
    cbEngineType,
    cbAuthenticationStrategy,
    cbConfiguration,
    cbCreatorRequestId,
    cbSubnetIds,
    cbPubliclyAccessible,
    cbSecurityGroups,
    cbLogs,
    cbMaintenanceWindowStartTime,
    cbEngineVersion,
    cbTags,
    cbHostInstanceType,
    cbAutoMinorVersionUpgrade,
    cbUsers,
    cbDeploymentMode,

    -- * Destructuring the Response
    createBrokerResponse,
    CreateBrokerResponse,

    -- * Response Lenses
    cbrrsBrokerId,
    cbrrsBrokerARN,
    cbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Creates a broker using the specified properties.
--
-- /See:/ 'createBroker' smart constructor.
data CreateBroker = CreateBroker'
  { _cbEncryptionOptions ::
      !(Maybe EncryptionOptions),
    _cbBrokerName :: !(Maybe Text),
    _cbStorageType :: !(Maybe BrokerStorageType),
    _cbLdapServerMetadata ::
      !(Maybe LdapServerMetadataInput),
    _cbEngineType :: !(Maybe EngineType),
    _cbAuthenticationStrategy ::
      !(Maybe AuthenticationStrategy),
    _cbConfiguration :: !(Maybe ConfigurationId),
    _cbCreatorRequestId :: !(Maybe Text),
    _cbSubnetIds :: !(Maybe [Text]),
    _cbPubliclyAccessible :: !(Maybe Bool),
    _cbSecurityGroups :: !(Maybe [Text]),
    _cbLogs :: !(Maybe Logs),
    _cbMaintenanceWindowStartTime ::
      !(Maybe WeeklyStartTime),
    _cbEngineVersion :: !(Maybe Text),
    _cbTags :: !(Maybe (Map Text Text)),
    _cbHostInstanceType :: !(Maybe Text),
    _cbAutoMinorVersionUpgrade :: !(Maybe Bool),
    _cbUsers :: !(Maybe [User]),
    _cbDeploymentMode :: !(Maybe DeploymentMode)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateBroker' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbEncryptionOptions' - Encryption options for the broker.
--
-- * 'cbBrokerName' - Required. The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
--
-- * 'cbStorageType' - The broker's storage type.
--
-- * 'cbLdapServerMetadata' - The metadata of the LDAP server used to authenticate and authorize connections to the broker.
--
-- * 'cbEngineType' - Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
--
-- * 'cbAuthenticationStrategy' - The authentication strategy used to secure the broker.
--
-- * 'cbConfiguration' - A list of information about the configuration.
--
-- * 'cbCreatorRequestId' - The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.
--
-- * 'cbSubnetIds' - The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment (ACTIVEMQ) requires two subnets. A CLUSTER_MULTI_AZ deployment (RABBITMQ) has no subnet requirements when deployed with public accessibility, deployment without public accessibility requires at least one subnet.
--
-- * 'cbPubliclyAccessible' - Required. Enables connections from applications outside of the VPC that hosts the broker's subnets.
--
-- * 'cbSecurityGroups' - The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
--
-- * 'cbLogs' - Enables Amazon CloudWatch logging for brokers.
--
-- * 'cbMaintenanceWindowStartTime' - The parameters that determine the WeeklyStartTime.
--
-- * 'cbEngineVersion' - Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
--
-- * 'cbTags' - Create tags when creating the broker.
--
-- * 'cbHostInstanceType' - Required. The broker's instance type.
--
-- * 'cbAutoMinorVersionUpgrade' - Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
--
-- * 'cbUsers' - Required. The list of broker users (persons or applications) who can access queues and topics. For RabbitMQ brokers, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ Web Console. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
--
-- * 'cbDeploymentMode' - Required. The deployment mode of the broker.
createBroker ::
  CreateBroker
createBroker =
  CreateBroker'
    { _cbEncryptionOptions = Nothing,
      _cbBrokerName = Nothing,
      _cbStorageType = Nothing,
      _cbLdapServerMetadata = Nothing,
      _cbEngineType = Nothing,
      _cbAuthenticationStrategy = Nothing,
      _cbConfiguration = Nothing,
      _cbCreatorRequestId = Nothing,
      _cbSubnetIds = Nothing,
      _cbPubliclyAccessible = Nothing,
      _cbSecurityGroups = Nothing,
      _cbLogs = Nothing,
      _cbMaintenanceWindowStartTime = Nothing,
      _cbEngineVersion = Nothing,
      _cbTags = Nothing,
      _cbHostInstanceType = Nothing,
      _cbAutoMinorVersionUpgrade = Nothing,
      _cbUsers = Nothing,
      _cbDeploymentMode = Nothing
    }

-- | Encryption options for the broker.
cbEncryptionOptions :: Lens' CreateBroker (Maybe EncryptionOptions)
cbEncryptionOptions = lens _cbEncryptionOptions (\s a -> s {_cbEncryptionOptions = a})

-- | Required. The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
cbBrokerName :: Lens' CreateBroker (Maybe Text)
cbBrokerName = lens _cbBrokerName (\s a -> s {_cbBrokerName = a})

-- | The broker's storage type.
cbStorageType :: Lens' CreateBroker (Maybe BrokerStorageType)
cbStorageType = lens _cbStorageType (\s a -> s {_cbStorageType = a})

-- | The metadata of the LDAP server used to authenticate and authorize connections to the broker.
cbLdapServerMetadata :: Lens' CreateBroker (Maybe LdapServerMetadataInput)
cbLdapServerMetadata = lens _cbLdapServerMetadata (\s a -> s {_cbLdapServerMetadata = a})

-- | Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
cbEngineType :: Lens' CreateBroker (Maybe EngineType)
cbEngineType = lens _cbEngineType (\s a -> s {_cbEngineType = a})

-- | The authentication strategy used to secure the broker.
cbAuthenticationStrategy :: Lens' CreateBroker (Maybe AuthenticationStrategy)
cbAuthenticationStrategy = lens _cbAuthenticationStrategy (\s a -> s {_cbAuthenticationStrategy = a})

-- | A list of information about the configuration.
cbConfiguration :: Lens' CreateBroker (Maybe ConfigurationId)
cbConfiguration = lens _cbConfiguration (\s a -> s {_cbConfiguration = a})

-- | The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.
cbCreatorRequestId :: Lens' CreateBroker (Maybe Text)
cbCreatorRequestId = lens _cbCreatorRequestId (\s a -> s {_cbCreatorRequestId = a})

-- | The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment (ACTIVEMQ) requires two subnets. A CLUSTER_MULTI_AZ deployment (RABBITMQ) has no subnet requirements when deployed with public accessibility, deployment without public accessibility requires at least one subnet.
cbSubnetIds :: Lens' CreateBroker [Text]
cbSubnetIds = lens _cbSubnetIds (\s a -> s {_cbSubnetIds = a}) . _Default . _Coerce

-- | Required. Enables connections from applications outside of the VPC that hosts the broker's subnets.
cbPubliclyAccessible :: Lens' CreateBroker (Maybe Bool)
cbPubliclyAccessible = lens _cbPubliclyAccessible (\s a -> s {_cbPubliclyAccessible = a})

-- | The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
cbSecurityGroups :: Lens' CreateBroker [Text]
cbSecurityGroups = lens _cbSecurityGroups (\s a -> s {_cbSecurityGroups = a}) . _Default . _Coerce

-- | Enables Amazon CloudWatch logging for brokers.
cbLogs :: Lens' CreateBroker (Maybe Logs)
cbLogs = lens _cbLogs (\s a -> s {_cbLogs = a})

-- | The parameters that determine the WeeklyStartTime.
cbMaintenanceWindowStartTime :: Lens' CreateBroker (Maybe WeeklyStartTime)
cbMaintenanceWindowStartTime = lens _cbMaintenanceWindowStartTime (\s a -> s {_cbMaintenanceWindowStartTime = a})

-- | Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
cbEngineVersion :: Lens' CreateBroker (Maybe Text)
cbEngineVersion = lens _cbEngineVersion (\s a -> s {_cbEngineVersion = a})

-- | Create tags when creating the broker.
cbTags :: Lens' CreateBroker (HashMap Text Text)
cbTags = lens _cbTags (\s a -> s {_cbTags = a}) . _Default . _Map

-- | Required. The broker's instance type.
cbHostInstanceType :: Lens' CreateBroker (Maybe Text)
cbHostInstanceType = lens _cbHostInstanceType (\s a -> s {_cbHostInstanceType = a})

-- | Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
cbAutoMinorVersionUpgrade :: Lens' CreateBroker (Maybe Bool)
cbAutoMinorVersionUpgrade = lens _cbAutoMinorVersionUpgrade (\s a -> s {_cbAutoMinorVersionUpgrade = a})

-- | Required. The list of broker users (persons or applications) who can access queues and topics. For RabbitMQ brokers, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ Web Console. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
cbUsers :: Lens' CreateBroker [User]
cbUsers = lens _cbUsers (\s a -> s {_cbUsers = a}) . _Default . _Coerce

-- | Required. The deployment mode of the broker.
cbDeploymentMode :: Lens' CreateBroker (Maybe DeploymentMode)
cbDeploymentMode = lens _cbDeploymentMode (\s a -> s {_cbDeploymentMode = a})

instance AWSRequest CreateBroker where
  type Rs CreateBroker = CreateBrokerResponse
  request = postJSON mq
  response =
    receiveJSON
      ( \s h x ->
          CreateBrokerResponse'
            <$> (x .?> "brokerId")
            <*> (x .?> "brokerArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateBroker

instance NFData CreateBroker

instance ToHeaders CreateBroker where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateBroker where
  toJSON CreateBroker' {..} =
    object
      ( catMaybes
          [ ("encryptionOptions" .=) <$> _cbEncryptionOptions,
            ("brokerName" .=) <$> _cbBrokerName,
            ("storageType" .=) <$> _cbStorageType,
            ("ldapServerMetadata" .=) <$> _cbLdapServerMetadata,
            ("engineType" .=) <$> _cbEngineType,
            ("authenticationStrategy" .=)
              <$> _cbAuthenticationStrategy,
            ("configuration" .=) <$> _cbConfiguration,
            ("creatorRequestId" .=) <$> _cbCreatorRequestId,
            ("subnetIds" .=) <$> _cbSubnetIds,
            ("publiclyAccessible" .=) <$> _cbPubliclyAccessible,
            ("securityGroups" .=) <$> _cbSecurityGroups,
            ("logs" .=) <$> _cbLogs,
            ("maintenanceWindowStartTime" .=)
              <$> _cbMaintenanceWindowStartTime,
            ("engineVersion" .=) <$> _cbEngineVersion,
            ("tags" .=) <$> _cbTags,
            ("hostInstanceType" .=) <$> _cbHostInstanceType,
            ("autoMinorVersionUpgrade" .=)
              <$> _cbAutoMinorVersionUpgrade,
            ("users" .=) <$> _cbUsers,
            ("deploymentMode" .=) <$> _cbDeploymentMode
          ]
      )

instance ToPath CreateBroker where
  toPath = const "/v1/brokers"

instance ToQuery CreateBroker where
  toQuery = const mempty

-- | /See:/ 'createBrokerResponse' smart constructor.
data CreateBrokerResponse = CreateBrokerResponse'
  { _cbrrsBrokerId ::
      !(Maybe Text),
    _cbrrsBrokerARN ::
      !(Maybe Text),
    _cbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateBrokerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbrrsBrokerId' - The unique ID that Amazon MQ generates for the broker.
--
-- * 'cbrrsBrokerARN' - The Amazon Resource Name (ARN) of the broker.
--
-- * 'cbrrsResponseStatus' - -- | The response status code.
createBrokerResponse ::
  -- | 'cbrrsResponseStatus'
  Int ->
  CreateBrokerResponse
createBrokerResponse pResponseStatus_ =
  CreateBrokerResponse'
    { _cbrrsBrokerId = Nothing,
      _cbrrsBrokerARN = Nothing,
      _cbrrsResponseStatus = pResponseStatus_
    }

-- | The unique ID that Amazon MQ generates for the broker.
cbrrsBrokerId :: Lens' CreateBrokerResponse (Maybe Text)
cbrrsBrokerId = lens _cbrrsBrokerId (\s a -> s {_cbrrsBrokerId = a})

-- | The Amazon Resource Name (ARN) of the broker.
cbrrsBrokerARN :: Lens' CreateBrokerResponse (Maybe Text)
cbrrsBrokerARN = lens _cbrrsBrokerARN (\s a -> s {_cbrrsBrokerARN = a})

-- | -- | The response status code.
cbrrsResponseStatus :: Lens' CreateBrokerResponse Int
cbrrsResponseStatus = lens _cbrrsResponseStatus (\s a -> s {_cbrrsResponseStatus = a})

instance NFData CreateBrokerResponse
