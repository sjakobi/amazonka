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
-- Module      : Network.AWS.MQ.UpdateBroker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a pending configuration change to a broker.
module Network.AWS.MQ.UpdateBroker
  ( -- * Creating a Request
    updateBroker,
    UpdateBroker,

    -- * Request Lenses
    ubLdapServerMetadata,
    ubAuthenticationStrategy,
    ubConfiguration,
    ubSecurityGroups,
    ubLogs,
    ubEngineVersion,
    ubHostInstanceType,
    ubAutoMinorVersionUpgrade,
    ubBrokerId,

    -- * Destructuring the Response
    updateBrokerResponse,
    UpdateBrokerResponse,

    -- * Response Lenses
    ubrrsLdapServerMetadata,
    ubrrsBrokerId,
    ubrrsAuthenticationStrategy,
    ubrrsConfiguration,
    ubrrsSecurityGroups,
    ubrrsLogs,
    ubrrsEngineVersion,
    ubrrsHostInstanceType,
    ubrrsAutoMinorVersionUpgrade,
    ubrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Updates the broker using the specified properties.
--
-- /See:/ 'updateBroker' smart constructor.
data UpdateBroker = UpdateBroker'
  { _ubLdapServerMetadata ::
      !(Maybe LdapServerMetadataInput),
    _ubAuthenticationStrategy ::
      !(Maybe AuthenticationStrategy),
    _ubConfiguration :: !(Maybe ConfigurationId),
    _ubSecurityGroups :: !(Maybe [Text]),
    _ubLogs :: !(Maybe Logs),
    _ubEngineVersion :: !(Maybe Text),
    _ubHostInstanceType :: !(Maybe Text),
    _ubAutoMinorVersionUpgrade :: !(Maybe Bool),
    _ubBrokerId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateBroker' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubLdapServerMetadata' - The metadata of the LDAP server used to authenticate and authorize connections to the broker.
--
-- * 'ubAuthenticationStrategy' - The authentication strategy used to secure the broker.
--
-- * 'ubConfiguration' - A list of information about the configuration.
--
-- * 'ubSecurityGroups' - The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
--
-- * 'ubLogs' - Enables Amazon CloudWatch logging for brokers.
--
-- * 'ubEngineVersion' - The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
--
-- * 'ubHostInstanceType' - The host instance type of the broker to upgrade to. For a list of supported instance types, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types
--
-- * 'ubAutoMinorVersionUpgrade' - Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
--
-- * 'ubBrokerId' - The unique ID that Amazon MQ generates for the broker.
updateBroker ::
  -- | 'ubBrokerId'
  Text ->
  UpdateBroker
updateBroker pBrokerId_ =
  UpdateBroker'
    { _ubLdapServerMetadata = Nothing,
      _ubAuthenticationStrategy = Nothing,
      _ubConfiguration = Nothing,
      _ubSecurityGroups = Nothing,
      _ubLogs = Nothing,
      _ubEngineVersion = Nothing,
      _ubHostInstanceType = Nothing,
      _ubAutoMinorVersionUpgrade = Nothing,
      _ubBrokerId = pBrokerId_
    }

-- | The metadata of the LDAP server used to authenticate and authorize connections to the broker.
ubLdapServerMetadata :: Lens' UpdateBroker (Maybe LdapServerMetadataInput)
ubLdapServerMetadata = lens _ubLdapServerMetadata (\s a -> s {_ubLdapServerMetadata = a})

-- | The authentication strategy used to secure the broker.
ubAuthenticationStrategy :: Lens' UpdateBroker (Maybe AuthenticationStrategy)
ubAuthenticationStrategy = lens _ubAuthenticationStrategy (\s a -> s {_ubAuthenticationStrategy = a})

-- | A list of information about the configuration.
ubConfiguration :: Lens' UpdateBroker (Maybe ConfigurationId)
ubConfiguration = lens _ubConfiguration (\s a -> s {_ubConfiguration = a})

-- | The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
ubSecurityGroups :: Lens' UpdateBroker [Text]
ubSecurityGroups = lens _ubSecurityGroups (\s a -> s {_ubSecurityGroups = a}) . _Default . _Coerce

-- | Enables Amazon CloudWatch logging for brokers.
ubLogs :: Lens' UpdateBroker (Maybe Logs)
ubLogs = lens _ubLogs (\s a -> s {_ubLogs = a})

-- | The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
ubEngineVersion :: Lens' UpdateBroker (Maybe Text)
ubEngineVersion = lens _ubEngineVersion (\s a -> s {_ubEngineVersion = a})

-- | The host instance type of the broker to upgrade to. For a list of supported instance types, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types
ubHostInstanceType :: Lens' UpdateBroker (Maybe Text)
ubHostInstanceType = lens _ubHostInstanceType (\s a -> s {_ubHostInstanceType = a})

-- | Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
ubAutoMinorVersionUpgrade :: Lens' UpdateBroker (Maybe Bool)
ubAutoMinorVersionUpgrade = lens _ubAutoMinorVersionUpgrade (\s a -> s {_ubAutoMinorVersionUpgrade = a})

-- | The unique ID that Amazon MQ generates for the broker.
ubBrokerId :: Lens' UpdateBroker Text
ubBrokerId = lens _ubBrokerId (\s a -> s {_ubBrokerId = a})

instance AWSRequest UpdateBroker where
  type Rs UpdateBroker = UpdateBrokerResponse
  request = putJSON mq
  response =
    receiveJSON
      ( \s h x ->
          UpdateBrokerResponse'
            <$> (x .?> "ldapServerMetadata")
            <*> (x .?> "brokerId")
            <*> (x .?> "authenticationStrategy")
            <*> (x .?> "configuration")
            <*> (x .?> "securityGroups" .!@ mempty)
            <*> (x .?> "logs")
            <*> (x .?> "engineVersion")
            <*> (x .?> "hostInstanceType")
            <*> (x .?> "autoMinorVersionUpgrade")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateBroker

instance NFData UpdateBroker

instance ToHeaders UpdateBroker where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateBroker where
  toJSON UpdateBroker' {..} =
    object
      ( catMaybes
          [ ("ldapServerMetadata" .=) <$> _ubLdapServerMetadata,
            ("authenticationStrategy" .=)
              <$> _ubAuthenticationStrategy,
            ("configuration" .=) <$> _ubConfiguration,
            ("securityGroups" .=) <$> _ubSecurityGroups,
            ("logs" .=) <$> _ubLogs,
            ("engineVersion" .=) <$> _ubEngineVersion,
            ("hostInstanceType" .=) <$> _ubHostInstanceType,
            ("autoMinorVersionUpgrade" .=)
              <$> _ubAutoMinorVersionUpgrade
          ]
      )

instance ToPath UpdateBroker where
  toPath UpdateBroker' {..} =
    mconcat ["/v1/brokers/", toBS _ubBrokerId]

instance ToQuery UpdateBroker where
  toQuery = const mempty

-- | /See:/ 'updateBrokerResponse' smart constructor.
data UpdateBrokerResponse = UpdateBrokerResponse'
  { _ubrrsLdapServerMetadata ::
      !( Maybe
           LdapServerMetadataOutput
       ),
    _ubrrsBrokerId ::
      !(Maybe Text),
    _ubrrsAuthenticationStrategy ::
      !( Maybe
           AuthenticationStrategy
       ),
    _ubrrsConfiguration ::
      !(Maybe ConfigurationId),
    _ubrrsSecurityGroups ::
      !(Maybe [Text]),
    _ubrrsLogs :: !(Maybe Logs),
    _ubrrsEngineVersion ::
      !(Maybe Text),
    _ubrrsHostInstanceType ::
      !(Maybe Text),
    _ubrrsAutoMinorVersionUpgrade ::
      !(Maybe Bool),
    _ubrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateBrokerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubrrsLdapServerMetadata' - The metadata of the LDAP server used to authenticate and authorize connections to the broker.
--
-- * 'ubrrsBrokerId' - Required. The unique ID that Amazon MQ generates for the broker.
--
-- * 'ubrrsAuthenticationStrategy' - The authentication strategy used to secure the broker.
--
-- * 'ubrrsConfiguration' - The ID of the updated configuration.
--
-- * 'ubrrsSecurityGroups' - The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
--
-- * 'ubrrsLogs' - The list of information about logs to be enabled for the specified broker.
--
-- * 'ubrrsEngineVersion' - The version of the broker engine to upgrade to. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
--
-- * 'ubrrsHostInstanceType' - The host instance type of the broker to upgrade to. For a list of supported instance types, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types
--
-- * 'ubrrsAutoMinorVersionUpgrade' - The new value of automatic upgrades to new minor version for brokers.
--
-- * 'ubrrsResponseStatus' - -- | The response status code.
updateBrokerResponse ::
  -- | 'ubrrsResponseStatus'
  Int ->
  UpdateBrokerResponse
updateBrokerResponse pResponseStatus_ =
  UpdateBrokerResponse'
    { _ubrrsLdapServerMetadata =
        Nothing,
      _ubrrsBrokerId = Nothing,
      _ubrrsAuthenticationStrategy = Nothing,
      _ubrrsConfiguration = Nothing,
      _ubrrsSecurityGroups = Nothing,
      _ubrrsLogs = Nothing,
      _ubrrsEngineVersion = Nothing,
      _ubrrsHostInstanceType = Nothing,
      _ubrrsAutoMinorVersionUpgrade = Nothing,
      _ubrrsResponseStatus = pResponseStatus_
    }

-- | The metadata of the LDAP server used to authenticate and authorize connections to the broker.
ubrrsLdapServerMetadata :: Lens' UpdateBrokerResponse (Maybe LdapServerMetadataOutput)
ubrrsLdapServerMetadata = lens _ubrrsLdapServerMetadata (\s a -> s {_ubrrsLdapServerMetadata = a})

-- | Required. The unique ID that Amazon MQ generates for the broker.
ubrrsBrokerId :: Lens' UpdateBrokerResponse (Maybe Text)
ubrrsBrokerId = lens _ubrrsBrokerId (\s a -> s {_ubrrsBrokerId = a})

-- | The authentication strategy used to secure the broker.
ubrrsAuthenticationStrategy :: Lens' UpdateBrokerResponse (Maybe AuthenticationStrategy)
ubrrsAuthenticationStrategy = lens _ubrrsAuthenticationStrategy (\s a -> s {_ubrrsAuthenticationStrategy = a})

-- | The ID of the updated configuration.
ubrrsConfiguration :: Lens' UpdateBrokerResponse (Maybe ConfigurationId)
ubrrsConfiguration = lens _ubrrsConfiguration (\s a -> s {_ubrrsConfiguration = a})

-- | The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
ubrrsSecurityGroups :: Lens' UpdateBrokerResponse [Text]
ubrrsSecurityGroups = lens _ubrrsSecurityGroups (\s a -> s {_ubrrsSecurityGroups = a}) . _Default . _Coerce

-- | The list of information about logs to be enabled for the specified broker.
ubrrsLogs :: Lens' UpdateBrokerResponse (Maybe Logs)
ubrrsLogs = lens _ubrrsLogs (\s a -> s {_ubrrsLogs = a})

-- | The version of the broker engine to upgrade to. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
ubrrsEngineVersion :: Lens' UpdateBrokerResponse (Maybe Text)
ubrrsEngineVersion = lens _ubrrsEngineVersion (\s a -> s {_ubrrsEngineVersion = a})

-- | The host instance type of the broker to upgrade to. For a list of supported instance types, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types
ubrrsHostInstanceType :: Lens' UpdateBrokerResponse (Maybe Text)
ubrrsHostInstanceType = lens _ubrrsHostInstanceType (\s a -> s {_ubrrsHostInstanceType = a})

-- | The new value of automatic upgrades to new minor version for brokers.
ubrrsAutoMinorVersionUpgrade :: Lens' UpdateBrokerResponse (Maybe Bool)
ubrrsAutoMinorVersionUpgrade = lens _ubrrsAutoMinorVersionUpgrade (\s a -> s {_ubrrsAutoMinorVersionUpgrade = a})

-- | -- | The response status code.
ubrrsResponseStatus :: Lens' UpdateBrokerResponse Int
ubrrsResponseStatus = lens _ubrrsResponseStatus (\s a -> s {_ubrrsResponseStatus = a})

instance NFData UpdateBrokerResponse
