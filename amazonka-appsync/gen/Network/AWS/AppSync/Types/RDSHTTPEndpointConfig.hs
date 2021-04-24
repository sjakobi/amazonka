{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.RDSHTTPEndpointConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.RDSHTTPEndpointConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Amazon RDS HTTP endpoint configuration.
--
--
--
-- /See:/ 'rdsHTTPEndpointConfig' smart constructor.
data RDSHTTPEndpointConfig = RDSHTTPEndpointConfig'
  { _rhttpecAwsSecretStoreARN ::
      !(Maybe Text),
    _rhttpecSchema ::
      !(Maybe Text),
    _rhttpecDbClusterIdentifier ::
      !(Maybe Text),
    _rhttpecAwsRegion ::
      !(Maybe Text),
    _rhttpecDatabaseName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RDSHTTPEndpointConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhttpecAwsSecretStoreARN' - AWS secret store ARN for database credentials.
--
-- * 'rhttpecSchema' - Logical schema name.
--
-- * 'rhttpecDbClusterIdentifier' - Amazon RDS cluster ARN.
--
-- * 'rhttpecAwsRegion' - AWS Region for RDS HTTP endpoint.
--
-- * 'rhttpecDatabaseName' - Logical database name.
rdsHTTPEndpointConfig ::
  RDSHTTPEndpointConfig
rdsHTTPEndpointConfig =
  RDSHTTPEndpointConfig'
    { _rhttpecAwsSecretStoreARN =
        Nothing,
      _rhttpecSchema = Nothing,
      _rhttpecDbClusterIdentifier = Nothing,
      _rhttpecAwsRegion = Nothing,
      _rhttpecDatabaseName = Nothing
    }

-- | AWS secret store ARN for database credentials.
rhttpecAwsSecretStoreARN :: Lens' RDSHTTPEndpointConfig (Maybe Text)
rhttpecAwsSecretStoreARN = lens _rhttpecAwsSecretStoreARN (\s a -> s {_rhttpecAwsSecretStoreARN = a})

-- | Logical schema name.
rhttpecSchema :: Lens' RDSHTTPEndpointConfig (Maybe Text)
rhttpecSchema = lens _rhttpecSchema (\s a -> s {_rhttpecSchema = a})

-- | Amazon RDS cluster ARN.
rhttpecDbClusterIdentifier :: Lens' RDSHTTPEndpointConfig (Maybe Text)
rhttpecDbClusterIdentifier = lens _rhttpecDbClusterIdentifier (\s a -> s {_rhttpecDbClusterIdentifier = a})

-- | AWS Region for RDS HTTP endpoint.
rhttpecAwsRegion :: Lens' RDSHTTPEndpointConfig (Maybe Text)
rhttpecAwsRegion = lens _rhttpecAwsRegion (\s a -> s {_rhttpecAwsRegion = a})

-- | Logical database name.
rhttpecDatabaseName :: Lens' RDSHTTPEndpointConfig (Maybe Text)
rhttpecDatabaseName = lens _rhttpecDatabaseName (\s a -> s {_rhttpecDatabaseName = a})

instance FromJSON RDSHTTPEndpointConfig where
  parseJSON =
    withObject
      "RDSHTTPEndpointConfig"
      ( \x ->
          RDSHTTPEndpointConfig'
            <$> (x .:? "awsSecretStoreArn")
            <*> (x .:? "schema")
            <*> (x .:? "dbClusterIdentifier")
            <*> (x .:? "awsRegion")
            <*> (x .:? "databaseName")
      )

instance Hashable RDSHTTPEndpointConfig

instance NFData RDSHTTPEndpointConfig

instance ToJSON RDSHTTPEndpointConfig where
  toJSON RDSHTTPEndpointConfig' {..} =
    object
      ( catMaybes
          [ ("awsSecretStoreArn" .=)
              <$> _rhttpecAwsSecretStoreARN,
            ("schema" .=) <$> _rhttpecSchema,
            ("dbClusterIdentifier" .=)
              <$> _rhttpecDbClusterIdentifier,
            ("awsRegion" .=) <$> _rhttpecAwsRegion,
            ("databaseName" .=) <$> _rhttpecDatabaseName
          ]
      )
