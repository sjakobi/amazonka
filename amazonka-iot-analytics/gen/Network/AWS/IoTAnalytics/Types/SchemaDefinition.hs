{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.SchemaDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.SchemaDefinition where

import Network.AWS.IoTAnalytics.Types.Column
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information needed to define a schema.
--
--
--
-- /See:/ 'schemaDefinition' smart constructor.
newtype SchemaDefinition = SchemaDefinition'
  { _sdColumns ::
      Maybe [Column]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SchemaDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdColumns' - Specifies one or more columns that store your data. Each schema can have up to 100 columns. Each column can have up to 100 nested types
schemaDefinition ::
  SchemaDefinition
schemaDefinition =
  SchemaDefinition' {_sdColumns = Nothing}

-- | Specifies one or more columns that store your data. Each schema can have up to 100 columns. Each column can have up to 100 nested types
sdColumns :: Lens' SchemaDefinition [Column]
sdColumns = lens _sdColumns (\s a -> s {_sdColumns = a}) . _Default . _Coerce

instance FromJSON SchemaDefinition where
  parseJSON =
    withObject
      "SchemaDefinition"
      ( \x ->
          SchemaDefinition' <$> (x .:? "columns" .!= mempty)
      )

instance Hashable SchemaDefinition

instance NFData SchemaDefinition

instance ToJSON SchemaDefinition where
  toJSON SchemaDefinition' {..} =
    object (catMaybes [("columns" .=) <$> _sdColumns])
