{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DataCatalogConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DataCatalogConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The meta data of the Glue table which serves as data catalog for the @OfflineStore@ .
--
--
--
-- /See:/ 'dataCatalogConfig' smart constructor.
data DataCatalogConfig = DataCatalogConfig'
  { _dccTableName ::
      !Text,
    _dccCatalog :: !Text,
    _dccDatabase :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DataCatalogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccTableName' - The name of the Glue table.
--
-- * 'dccCatalog' - The name of the Glue table catalog.
--
-- * 'dccDatabase' - The name of the Glue table database.
dataCatalogConfig ::
  -- | 'dccTableName'
  Text ->
  -- | 'dccCatalog'
  Text ->
  -- | 'dccDatabase'
  Text ->
  DataCatalogConfig
dataCatalogConfig pTableName_ pCatalog_ pDatabase_ =
  DataCatalogConfig'
    { _dccTableName = pTableName_,
      _dccCatalog = pCatalog_,
      _dccDatabase = pDatabase_
    }

-- | The name of the Glue table.
dccTableName :: Lens' DataCatalogConfig Text
dccTableName = lens _dccTableName (\s a -> s {_dccTableName = a})

-- | The name of the Glue table catalog.
dccCatalog :: Lens' DataCatalogConfig Text
dccCatalog = lens _dccCatalog (\s a -> s {_dccCatalog = a})

-- | The name of the Glue table database.
dccDatabase :: Lens' DataCatalogConfig Text
dccDatabase = lens _dccDatabase (\s a -> s {_dccDatabase = a})

instance FromJSON DataCatalogConfig where
  parseJSON =
    withObject
      "DataCatalogConfig"
      ( \x ->
          DataCatalogConfig'
            <$> (x .: "TableName")
            <*> (x .: "Catalog")
            <*> (x .: "Database")
      )

instance Hashable DataCatalogConfig

instance NFData DataCatalogConfig

instance ToJSON DataCatalogConfig where
  toJSON DataCatalogConfig' {..} =
    object
      ( catMaybes
          [ Just ("TableName" .= _dccTableName),
            Just ("Catalog" .= _dccCatalog),
            Just ("Database" .= _dccDatabase)
          ]
      )
