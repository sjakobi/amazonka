{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.ParquetConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.ParquetConfiguration where

import Network.AWS.IoTAnalytics.Types.SchemaDefinition
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the configuration information of the Parquet format.
--
--
--
-- /See:/ 'parquetConfiguration' smart constructor.
newtype ParquetConfiguration = ParquetConfiguration'
  { _pcSchemaDefinition ::
      Maybe SchemaDefinition
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ParquetConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcSchemaDefinition' - Information needed to define a schema.
parquetConfiguration ::
  ParquetConfiguration
parquetConfiguration =
  ParquetConfiguration'
    { _pcSchemaDefinition =
        Nothing
    }

-- | Information needed to define a schema.
pcSchemaDefinition :: Lens' ParquetConfiguration (Maybe SchemaDefinition)
pcSchemaDefinition = lens _pcSchemaDefinition (\s a -> s {_pcSchemaDefinition = a})

instance FromJSON ParquetConfiguration where
  parseJSON =
    withObject
      "ParquetConfiguration"
      ( \x ->
          ParquetConfiguration' <$> (x .:? "schemaDefinition")
      )

instance Hashable ParquetConfiguration

instance NFData ParquetConfiguration

instance ToJSON ParquetConfiguration where
  toJSON ParquetConfiguration' {..} =
    object
      ( catMaybes
          [("schemaDefinition" .=) <$> _pcSchemaDefinition]
      )
