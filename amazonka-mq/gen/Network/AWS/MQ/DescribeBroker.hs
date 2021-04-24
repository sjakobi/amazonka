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
-- Module      : Network.AWS.MQ.DescribeBroker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified broker.
module Network.AWS.MQ.DescribeBroker
  ( -- * Creating a Request
    describeBroker,
    DescribeBroker,

    -- * Request Lenses
    dbBrokerId,

    -- * Destructuring the Response
    describeBrokerResponse,
    DescribeBrokerResponse,

    -- * Response Lenses
    desrsEncryptionOptions,
    desrsBrokerName,
    desrsBrokerInstances,
    desrsStorageType,
    desrsLdapServerMetadata,
    desrsBrokerId,
    desrsPendingHostInstanceType,
    desrsEngineType,
    desrsConfigurations,
    desrsAuthenticationStrategy,
    desrsSubnetIds,
    desrsPendingSecurityGroups,
    desrsPubliclyAccessible,
    desrsSecurityGroups,
    desrsLogs,
    desrsPendingAuthenticationStrategy,
    desrsMaintenanceWindowStartTime,
    desrsEngineVersion,
    desrsBrokerState,
    desrsTags,
    desrsHostInstanceType,
    desrsPendingLdapServerMetadata,
    desrsBrokerARN,
    desrsPendingEngineVersion,
    desrsCreated,
    desrsAutoMinorVersionUpgrade,
    desrsUsers,
    desrsDeploymentMode,
    desrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeBroker' smart constructor.
newtype DescribeBroker = DescribeBroker'
  { _dbBrokerId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeBroker' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbBrokerId' - The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
describeBroker ::
  -- | 'dbBrokerId'
  Text ->
  DescribeBroker
describeBroker pBrokerId_ =
  DescribeBroker' {_dbBrokerId = pBrokerId_}

-- | The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
dbBrokerId :: Lens' DescribeBroker Text
dbBrokerId = lens _dbBrokerId (\s a -> s {_dbBrokerId = a})

instance AWSRequest DescribeBroker where
  type Rs DescribeBroker = DescribeBrokerResponse
  request = get mq
  response =
    receiveJSON
      ( \s h x ->
          DescribeBrokerResponse'
            <$> (x .?> "encryptionOptions")
            <*> (x .?> "brokerName")
            <*> (x .?> "brokerInstances" .!@ mempty)
            <*> (x .?> "storageType")
            <*> (x .?> "ldapServerMetadata")
            <*> (x .?> "brokerId")
            <*> (x .?> "pendingHostInstanceType")
            <*> (x .?> "engineType")
            <*> (x .?> "configurations")
            <*> (x .?> "authenticationStrategy")
            <*> (x .?> "subnetIds" .!@ mempty)
            <*> (x .?> "pendingSecurityGroups" .!@ mempty)
            <*> (x .?> "publiclyAccessible")
            <*> (x .?> "securityGroups" .!@ mempty)
            <*> (x .?> "logs")
            <*> (x .?> "pendingAuthenticationStrategy")
            <*> (x .?> "maintenanceWindowStartTime")
            <*> (x .?> "engineVersion")
            <*> (x .?> "brokerState")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "hostInstanceType")
            <*> (x .?> "pendingLdapServerMetadata")
            <*> (x .?> "brokerArn")
            <*> (x .?> "pendingEngineVersion")
            <*> (x .?> "created")
            <*> (x .?> "autoMinorVersionUpgrade")
            <*> (x .?> "users" .!@ mempty)
            <*> (x .?> "deploymentMode")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeBroker

instance NFData DescribeBroker

instance ToHeaders DescribeBroker where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeBroker where
  toPath DescribeBroker' {..} =
    mconcat ["/v1/brokers/", toBS _dbBrokerId]

instance ToQuery DescribeBroker where
  toQuery = const mempty

-- | /See:/ 'describeBrokerResponse' smart constructor.
data DescribeBrokerResponse = DescribeBrokerResponse'
  { _desrsEncryptionOptions ::
      !( Maybe
           EncryptionOptions
       ),
    _desrsBrokerName ::
      !(Maybe Text),
    _desrsBrokerInstances ::
      !(Maybe [BrokerInstance]),
    _desrsStorageType ::
      !( Maybe
           BrokerStorageType
       ),
    _desrsLdapServerMetadata ::
      !( Maybe
           LdapServerMetadataOutput
       ),
    _desrsBrokerId ::
      !(Maybe Text),
    _desrsPendingHostInstanceType ::
      !(Maybe Text),
    _desrsEngineType ::
      !(Maybe EngineType),
    _desrsConfigurations ::
      !(Maybe Configurations),
    _desrsAuthenticationStrategy ::
      !( Maybe
           AuthenticationStrategy
       ),
    _desrsSubnetIds ::
      !(Maybe [Text]),
    _desrsPendingSecurityGroups ::
      !(Maybe [Text]),
    _desrsPubliclyAccessible ::
      !(Maybe Bool),
    _desrsSecurityGroups ::
      !(Maybe [Text]),
    _desrsLogs ::
      !(Maybe LogsSummary),
    _desrsPendingAuthenticationStrategy ::
      !( Maybe
           AuthenticationStrategy
       ),
    _desrsMaintenanceWindowStartTime ::
      !(Maybe WeeklyStartTime),
    _desrsEngineVersion ::
      !(Maybe Text),
    _desrsBrokerState ::
      !(Maybe BrokerState),
    _desrsTags ::
      !(Maybe (Map Text Text)),
    _desrsHostInstanceType ::
      !(Maybe Text),
    _desrsPendingLdapServerMetadata ::
      !( Maybe
           LdapServerMetadataOutput
       ),
    _desrsBrokerARN ::
      !(Maybe Text),
    _desrsPendingEngineVersion ::
      !(Maybe Text),
    _desrsCreated ::
      !(Maybe POSIX),
    _desrsAutoMinorVersionUpgrade ::
      !(Maybe Bool),
    _desrsUsers ::
      !(Maybe [UserSummary]),
    _desrsDeploymentMode ::
      !(Maybe DeploymentMode),
    _desrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeBrokerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsEncryptionOptions' - Encryption options for the broker.
--
-- * 'desrsBrokerName' - The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
--
-- * 'desrsBrokerInstances' - A list of information about allocated brokers.
--
-- * 'desrsStorageType' - The broker's storage type.
--
-- * 'desrsLdapServerMetadata' - The metadata of the LDAP server used to authenticate and authorize connections to the broker.
--
-- * 'desrsBrokerId' - The unique ID that Amazon MQ generates for the broker.
--
-- * 'desrsPendingHostInstanceType' - The host instance type of the broker to upgrade to. For a list of supported instance types, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types
--
-- * 'desrsEngineType' - Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
--
-- * 'desrsConfigurations' - The list of all revisions for the specified configuration.
--
-- * 'desrsAuthenticationStrategy' - The authentication strategy used to secure the broker.
--
-- * 'desrsSubnetIds' - The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment (ACTIVEMQ) requires two subnets. A CLUSTER_MULTI_AZ deployment (RABBITMQ) has no subnet requirements when deployed with public accessibility, deployment without public accessibility requires at least one subnet.
--
-- * 'desrsPendingSecurityGroups' - The list of pending security groups to authorize connections to brokers.
--
-- * 'desrsPubliclyAccessible' - Required. Enables connections from applications outside of the VPC that hosts the broker's subnets.
--
-- * 'desrsSecurityGroups' - The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
--
-- * 'desrsLogs' - The list of information about logs currently enabled and pending to be deployed for the specified broker.
--
-- * 'desrsPendingAuthenticationStrategy' - The authentication strategy that will be applied when the broker is rebooted.
--
-- * 'desrsMaintenanceWindowStartTime' - The parameters that determine the WeeklyStartTime.
--
-- * 'desrsEngineVersion' - The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
--
-- * 'desrsBrokerState' - The status of the broker.
--
-- * 'desrsTags' - The list of all tags associated with this broker.
--
-- * 'desrsHostInstanceType' - The broker's instance type.
--
-- * 'desrsPendingLdapServerMetadata' - The metadata of the LDAP server that will be used to authenticate and authorize connections to the broker once it is rebooted.
--
-- * 'desrsBrokerARN' - The Amazon Resource Name (ARN) of the broker.
--
-- * 'desrsPendingEngineVersion' - The version of the broker engine to upgrade to. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
--
-- * 'desrsCreated' - The time when the broker was created.
--
-- * 'desrsAutoMinorVersionUpgrade' - Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
--
-- * 'desrsUsers' - The list of all broker usernames for the specified broker.
--
-- * 'desrsDeploymentMode' - Required. The deployment mode of the broker.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeBrokerResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeBrokerResponse
describeBrokerResponse pResponseStatus_ =
  DescribeBrokerResponse'
    { _desrsEncryptionOptions =
        Nothing,
      _desrsBrokerName = Nothing,
      _desrsBrokerInstances = Nothing,
      _desrsStorageType = Nothing,
      _desrsLdapServerMetadata = Nothing,
      _desrsBrokerId = Nothing,
      _desrsPendingHostInstanceType = Nothing,
      _desrsEngineType = Nothing,
      _desrsConfigurations = Nothing,
      _desrsAuthenticationStrategy = Nothing,
      _desrsSubnetIds = Nothing,
      _desrsPendingSecurityGroups = Nothing,
      _desrsPubliclyAccessible = Nothing,
      _desrsSecurityGroups = Nothing,
      _desrsLogs = Nothing,
      _desrsPendingAuthenticationStrategy = Nothing,
      _desrsMaintenanceWindowStartTime = Nothing,
      _desrsEngineVersion = Nothing,
      _desrsBrokerState = Nothing,
      _desrsTags = Nothing,
      _desrsHostInstanceType = Nothing,
      _desrsPendingLdapServerMetadata = Nothing,
      _desrsBrokerARN = Nothing,
      _desrsPendingEngineVersion = Nothing,
      _desrsCreated = Nothing,
      _desrsAutoMinorVersionUpgrade = Nothing,
      _desrsUsers = Nothing,
      _desrsDeploymentMode = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | Encryption options for the broker.
desrsEncryptionOptions :: Lens' DescribeBrokerResponse (Maybe EncryptionOptions)
desrsEncryptionOptions = lens _desrsEncryptionOptions (\s a -> s {_desrsEncryptionOptions = a})

-- | The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
desrsBrokerName :: Lens' DescribeBrokerResponse (Maybe Text)
desrsBrokerName = lens _desrsBrokerName (\s a -> s {_desrsBrokerName = a})

-- | A list of information about allocated brokers.
desrsBrokerInstances :: Lens' DescribeBrokerResponse [BrokerInstance]
desrsBrokerInstances = lens _desrsBrokerInstances (\s a -> s {_desrsBrokerInstances = a}) . _Default . _Coerce

-- | The broker's storage type.
desrsStorageType :: Lens' DescribeBrokerResponse (Maybe BrokerStorageType)
desrsStorageType = lens _desrsStorageType (\s a -> s {_desrsStorageType = a})

-- | The metadata of the LDAP server used to authenticate and authorize connections to the broker.
desrsLdapServerMetadata :: Lens' DescribeBrokerResponse (Maybe LdapServerMetadataOutput)
desrsLdapServerMetadata = lens _desrsLdapServerMetadata (\s a -> s {_desrsLdapServerMetadata = a})

-- | The unique ID that Amazon MQ generates for the broker.
desrsBrokerId :: Lens' DescribeBrokerResponse (Maybe Text)
desrsBrokerId = lens _desrsBrokerId (\s a -> s {_desrsBrokerId = a})

-- | The host instance type of the broker to upgrade to. For a list of supported instance types, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types
desrsPendingHostInstanceType :: Lens' DescribeBrokerResponse (Maybe Text)
desrsPendingHostInstanceType = lens _desrsPendingHostInstanceType (\s a -> s {_desrsPendingHostInstanceType = a})

-- | Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
desrsEngineType :: Lens' DescribeBrokerResponse (Maybe EngineType)
desrsEngineType = lens _desrsEngineType (\s a -> s {_desrsEngineType = a})

-- | The list of all revisions for the specified configuration.
desrsConfigurations :: Lens' DescribeBrokerResponse (Maybe Configurations)
desrsConfigurations = lens _desrsConfigurations (\s a -> s {_desrsConfigurations = a})

-- | The authentication strategy used to secure the broker.
desrsAuthenticationStrategy :: Lens' DescribeBrokerResponse (Maybe AuthenticationStrategy)
desrsAuthenticationStrategy = lens _desrsAuthenticationStrategy (\s a -> s {_desrsAuthenticationStrategy = a})

-- | The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment (ACTIVEMQ) requires two subnets. A CLUSTER_MULTI_AZ deployment (RABBITMQ) has no subnet requirements when deployed with public accessibility, deployment without public accessibility requires at least one subnet.
desrsSubnetIds :: Lens' DescribeBrokerResponse [Text]
desrsSubnetIds = lens _desrsSubnetIds (\s a -> s {_desrsSubnetIds = a}) . _Default . _Coerce

-- | The list of pending security groups to authorize connections to brokers.
desrsPendingSecurityGroups :: Lens' DescribeBrokerResponse [Text]
desrsPendingSecurityGroups = lens _desrsPendingSecurityGroups (\s a -> s {_desrsPendingSecurityGroups = a}) . _Default . _Coerce

-- | Required. Enables connections from applications outside of the VPC that hosts the broker's subnets.
desrsPubliclyAccessible :: Lens' DescribeBrokerResponse (Maybe Bool)
desrsPubliclyAccessible = lens _desrsPubliclyAccessible (\s a -> s {_desrsPubliclyAccessible = a})

-- | The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
desrsSecurityGroups :: Lens' DescribeBrokerResponse [Text]
desrsSecurityGroups = lens _desrsSecurityGroups (\s a -> s {_desrsSecurityGroups = a}) . _Default . _Coerce

-- | The list of information about logs currently enabled and pending to be deployed for the specified broker.
desrsLogs :: Lens' DescribeBrokerResponse (Maybe LogsSummary)
desrsLogs = lens _desrsLogs (\s a -> s {_desrsLogs = a})

-- | The authentication strategy that will be applied when the broker is rebooted.
desrsPendingAuthenticationStrategy :: Lens' DescribeBrokerResponse (Maybe AuthenticationStrategy)
desrsPendingAuthenticationStrategy = lens _desrsPendingAuthenticationStrategy (\s a -> s {_desrsPendingAuthenticationStrategy = a})

-- | The parameters that determine the WeeklyStartTime.
desrsMaintenanceWindowStartTime :: Lens' DescribeBrokerResponse (Maybe WeeklyStartTime)
desrsMaintenanceWindowStartTime = lens _desrsMaintenanceWindowStartTime (\s a -> s {_desrsMaintenanceWindowStartTime = a})

-- | The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
desrsEngineVersion :: Lens' DescribeBrokerResponse (Maybe Text)
desrsEngineVersion = lens _desrsEngineVersion (\s a -> s {_desrsEngineVersion = a})

-- | The status of the broker.
desrsBrokerState :: Lens' DescribeBrokerResponse (Maybe BrokerState)
desrsBrokerState = lens _desrsBrokerState (\s a -> s {_desrsBrokerState = a})

-- | The list of all tags associated with this broker.
desrsTags :: Lens' DescribeBrokerResponse (HashMap Text Text)
desrsTags = lens _desrsTags (\s a -> s {_desrsTags = a}) . _Default . _Map

-- | The broker's instance type.
desrsHostInstanceType :: Lens' DescribeBrokerResponse (Maybe Text)
desrsHostInstanceType = lens _desrsHostInstanceType (\s a -> s {_desrsHostInstanceType = a})

-- | The metadata of the LDAP server that will be used to authenticate and authorize connections to the broker once it is rebooted.
desrsPendingLdapServerMetadata :: Lens' DescribeBrokerResponse (Maybe LdapServerMetadataOutput)
desrsPendingLdapServerMetadata = lens _desrsPendingLdapServerMetadata (\s a -> s {_desrsPendingLdapServerMetadata = a})

-- | The Amazon Resource Name (ARN) of the broker.
desrsBrokerARN :: Lens' DescribeBrokerResponse (Maybe Text)
desrsBrokerARN = lens _desrsBrokerARN (\s a -> s {_desrsBrokerARN = a})

-- | The version of the broker engine to upgrade to. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
desrsPendingEngineVersion :: Lens' DescribeBrokerResponse (Maybe Text)
desrsPendingEngineVersion = lens _desrsPendingEngineVersion (\s a -> s {_desrsPendingEngineVersion = a})

-- | The time when the broker was created.
desrsCreated :: Lens' DescribeBrokerResponse (Maybe UTCTime)
desrsCreated = lens _desrsCreated (\s a -> s {_desrsCreated = a}) . mapping _Time

-- | Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
desrsAutoMinorVersionUpgrade :: Lens' DescribeBrokerResponse (Maybe Bool)
desrsAutoMinorVersionUpgrade = lens _desrsAutoMinorVersionUpgrade (\s a -> s {_desrsAutoMinorVersionUpgrade = a})

-- | The list of all broker usernames for the specified broker.
desrsUsers :: Lens' DescribeBrokerResponse [UserSummary]
desrsUsers = lens _desrsUsers (\s a -> s {_desrsUsers = a}) . _Default . _Coerce

-- | Required. The deployment mode of the broker.
desrsDeploymentMode :: Lens' DescribeBrokerResponse (Maybe DeploymentMode)
desrsDeploymentMode = lens _desrsDeploymentMode (\s a -> s {_desrsDeploymentMode = a})

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeBrokerResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeBrokerResponse
