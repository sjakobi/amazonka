{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ConnectionPropertyKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ConnectionPropertyKey
  ( ConnectionPropertyKey
      ( ..,
        ConfigFiles,
        ConnectionURL,
        ConnectorClassName,
        ConnectorType,
        ConnectorURL,
        CustomJdbcCert,
        CustomJdbcCertString,
        EncryptedPassword,
        Host,
        InstanceId,
        JdbcConnectionURL,
        JdbcDriverClassName,
        JdbcDriverJARURI,
        JdbcEnforceSSL,
        JdbcEngine,
        JdbcEngineVersion,
        KafkaBootstrapServers,
        KafkaCustomCert,
        KafkaSSLEnabled,
        KafkaSkipCustomCertValidation,
        Password,
        Port,
        SecretId,
        SkipCustomJdbcCertValidation,
        Username
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionPropertyKey
  = ConnectionPropertyKey'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ConfigFiles :: ConnectionPropertyKey
pattern ConfigFiles = ConnectionPropertyKey' "CONFIG_FILES"

pattern ConnectionURL :: ConnectionPropertyKey
pattern ConnectionURL = ConnectionPropertyKey' "CONNECTION_URL"

pattern ConnectorClassName :: ConnectionPropertyKey
pattern ConnectorClassName = ConnectionPropertyKey' "CONNECTOR_CLASS_NAME"

pattern ConnectorType :: ConnectionPropertyKey
pattern ConnectorType = ConnectionPropertyKey' "CONNECTOR_TYPE"

pattern ConnectorURL :: ConnectionPropertyKey
pattern ConnectorURL = ConnectionPropertyKey' "CONNECTOR_URL"

pattern CustomJdbcCert :: ConnectionPropertyKey
pattern CustomJdbcCert = ConnectionPropertyKey' "CUSTOM_JDBC_CERT"

pattern CustomJdbcCertString :: ConnectionPropertyKey
pattern CustomJdbcCertString = ConnectionPropertyKey' "CUSTOM_JDBC_CERT_STRING"

pattern EncryptedPassword :: ConnectionPropertyKey
pattern EncryptedPassword = ConnectionPropertyKey' "ENCRYPTED_PASSWORD"

pattern Host :: ConnectionPropertyKey
pattern Host = ConnectionPropertyKey' "HOST"

pattern InstanceId :: ConnectionPropertyKey
pattern InstanceId = ConnectionPropertyKey' "INSTANCE_ID"

pattern JdbcConnectionURL :: ConnectionPropertyKey
pattern JdbcConnectionURL = ConnectionPropertyKey' "JDBC_CONNECTION_URL"

pattern JdbcDriverClassName :: ConnectionPropertyKey
pattern JdbcDriverClassName = ConnectionPropertyKey' "JDBC_DRIVER_CLASS_NAME"

pattern JdbcDriverJARURI :: ConnectionPropertyKey
pattern JdbcDriverJARURI = ConnectionPropertyKey' "JDBC_DRIVER_JAR_URI"

pattern JdbcEnforceSSL :: ConnectionPropertyKey
pattern JdbcEnforceSSL = ConnectionPropertyKey' "JDBC_ENFORCE_SSL"

pattern JdbcEngine :: ConnectionPropertyKey
pattern JdbcEngine = ConnectionPropertyKey' "JDBC_ENGINE"

pattern JdbcEngineVersion :: ConnectionPropertyKey
pattern JdbcEngineVersion = ConnectionPropertyKey' "JDBC_ENGINE_VERSION"

pattern KafkaBootstrapServers :: ConnectionPropertyKey
pattern KafkaBootstrapServers = ConnectionPropertyKey' "KAFKA_BOOTSTRAP_SERVERS"

pattern KafkaCustomCert :: ConnectionPropertyKey
pattern KafkaCustomCert = ConnectionPropertyKey' "KAFKA_CUSTOM_CERT"

pattern KafkaSSLEnabled :: ConnectionPropertyKey
pattern KafkaSSLEnabled = ConnectionPropertyKey' "KAFKA_SSL_ENABLED"

pattern KafkaSkipCustomCertValidation :: ConnectionPropertyKey
pattern KafkaSkipCustomCertValidation = ConnectionPropertyKey' "KAFKA_SKIP_CUSTOM_CERT_VALIDATION"

pattern Password :: ConnectionPropertyKey
pattern Password = ConnectionPropertyKey' "PASSWORD"

pattern Port :: ConnectionPropertyKey
pattern Port = ConnectionPropertyKey' "PORT"

pattern SecretId :: ConnectionPropertyKey
pattern SecretId = ConnectionPropertyKey' "SECRET_ID"

pattern SkipCustomJdbcCertValidation :: ConnectionPropertyKey
pattern SkipCustomJdbcCertValidation = ConnectionPropertyKey' "SKIP_CUSTOM_JDBC_CERT_VALIDATION"

pattern Username :: ConnectionPropertyKey
pattern Username = ConnectionPropertyKey' "USERNAME"

{-# COMPLETE
  ConfigFiles,
  ConnectionURL,
  ConnectorClassName,
  ConnectorType,
  ConnectorURL,
  CustomJdbcCert,
  CustomJdbcCertString,
  EncryptedPassword,
  Host,
  InstanceId,
  JdbcConnectionURL,
  JdbcDriverClassName,
  JdbcDriverJARURI,
  JdbcEnforceSSL,
  JdbcEngine,
  JdbcEngineVersion,
  KafkaBootstrapServers,
  KafkaCustomCert,
  KafkaSSLEnabled,
  KafkaSkipCustomCertValidation,
  Password,
  Port,
  SecretId,
  SkipCustomJdbcCertValidation,
  Username,
  ConnectionPropertyKey'
  #-}

instance FromText ConnectionPropertyKey where
  parser = (ConnectionPropertyKey' . mk) <$> takeText

instance ToText ConnectionPropertyKey where
  toText (ConnectionPropertyKey' ci) = original ci

instance Hashable ConnectionPropertyKey

instance NFData ConnectionPropertyKey

instance ToByteString ConnectionPropertyKey

instance ToQuery ConnectionPropertyKey

instance ToHeader ConnectionPropertyKey

instance ToJSON ConnectionPropertyKey where
  toJSON = toJSONText

instance FromJSON ConnectionPropertyKey where
  parseJSON = parseJSONText "ConnectionPropertyKey"
