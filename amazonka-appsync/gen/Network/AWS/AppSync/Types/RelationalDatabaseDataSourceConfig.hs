{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.RelationalDatabaseDataSourceConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.RelationalDatabaseDataSourceConfig where

import Network.AWS.AppSync.Types.RDSHTTPEndpointConfig
import Network.AWS.AppSync.Types.RelationalDatabaseSourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a relational database data source configuration.
--
--
--
-- /See:/ 'relationalDatabaseDataSourceConfig' smart constructor.
data RelationalDatabaseDataSourceConfig = RelationalDatabaseDataSourceConfig'
  { _rddscRdsHTTPEndpointConfig ::
      !( Maybe
           RDSHTTPEndpointConfig
       ),
    _rddscRelationalDatabaseSourceType ::
      !( Maybe
           RelationalDatabaseSourceType
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

-- | Creates a value of 'RelationalDatabaseDataSourceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddscRdsHTTPEndpointConfig' - Amazon RDS HTTP endpoint settings.
--
-- * 'rddscRelationalDatabaseSourceType' - Source type for the relational database.     * __RDS_HTTP_ENDPOINT__ : The relational database source type is an Amazon RDS HTTP endpoint.
relationalDatabaseDataSourceConfig ::
  RelationalDatabaseDataSourceConfig
relationalDatabaseDataSourceConfig =
  RelationalDatabaseDataSourceConfig'
    { _rddscRdsHTTPEndpointConfig =
        Nothing,
      _rddscRelationalDatabaseSourceType =
        Nothing
    }

-- | Amazon RDS HTTP endpoint settings.
rddscRdsHTTPEndpointConfig :: Lens' RelationalDatabaseDataSourceConfig (Maybe RDSHTTPEndpointConfig)
rddscRdsHTTPEndpointConfig = lens _rddscRdsHTTPEndpointConfig (\s a -> s {_rddscRdsHTTPEndpointConfig = a})

-- | Source type for the relational database.     * __RDS_HTTP_ENDPOINT__ : The relational database source type is an Amazon RDS HTTP endpoint.
rddscRelationalDatabaseSourceType :: Lens' RelationalDatabaseDataSourceConfig (Maybe RelationalDatabaseSourceType)
rddscRelationalDatabaseSourceType = lens _rddscRelationalDatabaseSourceType (\s a -> s {_rddscRelationalDatabaseSourceType = a})

instance FromJSON RelationalDatabaseDataSourceConfig where
  parseJSON =
    withObject
      "RelationalDatabaseDataSourceConfig"
      ( \x ->
          RelationalDatabaseDataSourceConfig'
            <$> (x .:? "rdsHttpEndpointConfig")
            <*> (x .:? "relationalDatabaseSourceType")
      )

instance Hashable RelationalDatabaseDataSourceConfig

instance NFData RelationalDatabaseDataSourceConfig

instance ToJSON RelationalDatabaseDataSourceConfig where
  toJSON RelationalDatabaseDataSourceConfig' {..} =
    object
      ( catMaybes
          [ ("rdsHttpEndpointConfig" .=)
              <$> _rddscRdsHTTPEndpointConfig,
            ("relationalDatabaseSourceType" .=)
              <$> _rddscRelationalDatabaseSourceType
          ]
      )
