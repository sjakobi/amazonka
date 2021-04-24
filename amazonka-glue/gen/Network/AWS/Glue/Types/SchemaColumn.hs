{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SchemaColumn
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaColumn where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A key-value pair representing a column and data type that this transform can run against. The @Schema@ parameter of the @MLTransform@ may contain up to 100 of these structures.
--
--
--
-- /See:/ 'schemaColumn' smart constructor.
data SchemaColumn = SchemaColumn'
  { _scName ::
      !(Maybe Text),
    _scDataType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SchemaColumn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scName' - The name of the column.
--
-- * 'scDataType' - The type of data in the column.
schemaColumn ::
  SchemaColumn
schemaColumn =
  SchemaColumn'
    { _scName = Nothing,
      _scDataType = Nothing
    }

-- | The name of the column.
scName :: Lens' SchemaColumn (Maybe Text)
scName = lens _scName (\s a -> s {_scName = a})

-- | The type of data in the column.
scDataType :: Lens' SchemaColumn (Maybe Text)
scDataType = lens _scDataType (\s a -> s {_scDataType = a})

instance FromJSON SchemaColumn where
  parseJSON =
    withObject
      "SchemaColumn"
      ( \x ->
          SchemaColumn'
            <$> (x .:? "Name") <*> (x .:? "DataType")
      )

instance Hashable SchemaColumn

instance NFData SchemaColumn

instance ToJSON SchemaColumn where
  toJSON SchemaColumn' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _scName,
            ("DataType" .=) <$> _scDataType
          ]
      )
