{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.SourceAccessConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.SourceAccessConfiguration where

import Network.AWS.Lambda.Types.SourceAccessType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | You can specify the authentication protocol, or the VPC components to secure access to your event source.
--
--
--
-- /See:/ 'sourceAccessConfiguration' smart constructor.
data SourceAccessConfiguration = SourceAccessConfiguration'
  { _sacURI ::
      !(Maybe Text),
    _sacType ::
      !( Maybe
           SourceAccessType
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SourceAccessConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sacURI' - The value for your chosen configuration in @Type@ . For example: @"URI": "arn:aws:secretsmanager:us-east-1:01234567890:secret:MyBrokerSecretName"@ .
--
-- * 'sacType' - The type of authentication protocol or the VPC components for your event source. For example: @"Type":"SASL_SCRAM_512_AUTH"@ .     * @BASIC_AUTH@ - (MQ) The Secrets Manager secret that stores your broker credentials.     * @VPC_SUBNET@ - The subnets associated with your VPC. Lambda connects to these subnets to fetch data from your Self-Managed Apache Kafka cluster.     * @VPC_SECURITY_GROUP@ - The VPC security group used to manage access to your Self-Managed Apache Kafka brokers.     * @SASL_SCRAM_256_AUTH@ - The Secrets Manager ARN of your secret key used for SASL SCRAM-256 authentication of your Self-Managed Apache Kafka brokers.     * @SASL_SCRAM_512_AUTH@ - The Secrets Manager ARN of your secret key used for SASL SCRAM-512 authentication of your Self-Managed Apache Kafka brokers.
sourceAccessConfiguration ::
  SourceAccessConfiguration
sourceAccessConfiguration =
  SourceAccessConfiguration'
    { _sacURI = Nothing,
      _sacType = Nothing
    }

-- | The value for your chosen configuration in @Type@ . For example: @"URI": "arn:aws:secretsmanager:us-east-1:01234567890:secret:MyBrokerSecretName"@ .
sacURI :: Lens' SourceAccessConfiguration (Maybe Text)
sacURI = lens _sacURI (\s a -> s {_sacURI = a})

-- | The type of authentication protocol or the VPC components for your event source. For example: @"Type":"SASL_SCRAM_512_AUTH"@ .     * @BASIC_AUTH@ - (MQ) The Secrets Manager secret that stores your broker credentials.     * @VPC_SUBNET@ - The subnets associated with your VPC. Lambda connects to these subnets to fetch data from your Self-Managed Apache Kafka cluster.     * @VPC_SECURITY_GROUP@ - The VPC security group used to manage access to your Self-Managed Apache Kafka brokers.     * @SASL_SCRAM_256_AUTH@ - The Secrets Manager ARN of your secret key used for SASL SCRAM-256 authentication of your Self-Managed Apache Kafka brokers.     * @SASL_SCRAM_512_AUTH@ - The Secrets Manager ARN of your secret key used for SASL SCRAM-512 authentication of your Self-Managed Apache Kafka brokers.
sacType :: Lens' SourceAccessConfiguration (Maybe SourceAccessType)
sacType = lens _sacType (\s a -> s {_sacType = a})

instance FromJSON SourceAccessConfiguration where
  parseJSON =
    withObject
      "SourceAccessConfiguration"
      ( \x ->
          SourceAccessConfiguration'
            <$> (x .:? "URI") <*> (x .:? "Type")
      )

instance Hashable SourceAccessConfiguration

instance NFData SourceAccessConfiguration

instance ToJSON SourceAccessConfiguration where
  toJSON SourceAccessConfiguration' {..} =
    object
      ( catMaybes
          [("URI" .=) <$> _sacURI, ("Type" .=) <$> _sacType]
      )
