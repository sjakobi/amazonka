{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SchemaId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaId where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The unique ID of the schema in the AWS Glue schema registry.
--
--
--
-- /See:/ 'schemaId' smart constructor.
data SchemaId = SchemaId'
  { _siSchemaARN ::
      !(Maybe Text),
    _siRegistryName :: !(Maybe Text),
    _siSchemaName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SchemaId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siSchemaARN' - The Amazon Resource Name (ARN) of the schema. One of @SchemaArn@ or @SchemaName@ has to be provided.
--
-- * 'siRegistryName' - The name of the schema registry that contains the schema.
--
-- * 'siSchemaName' - The name of the schema. One of @SchemaArn@ or @SchemaName@ has to be provided.
schemaId ::
  SchemaId
schemaId =
  SchemaId'
    { _siSchemaARN = Nothing,
      _siRegistryName = Nothing,
      _siSchemaName = Nothing
    }

-- | The Amazon Resource Name (ARN) of the schema. One of @SchemaArn@ or @SchemaName@ has to be provided.
siSchemaARN :: Lens' SchemaId (Maybe Text)
siSchemaARN = lens _siSchemaARN (\s a -> s {_siSchemaARN = a})

-- | The name of the schema registry that contains the schema.
siRegistryName :: Lens' SchemaId (Maybe Text)
siRegistryName = lens _siRegistryName (\s a -> s {_siRegistryName = a})

-- | The name of the schema. One of @SchemaArn@ or @SchemaName@ has to be provided.
siSchemaName :: Lens' SchemaId (Maybe Text)
siSchemaName = lens _siSchemaName (\s a -> s {_siSchemaName = a})

instance FromJSON SchemaId where
  parseJSON =
    withObject
      "SchemaId"
      ( \x ->
          SchemaId'
            <$> (x .:? "SchemaArn")
            <*> (x .:? "RegistryName")
            <*> (x .:? "SchemaName")
      )

instance Hashable SchemaId

instance NFData SchemaId

instance ToJSON SchemaId where
  toJSON SchemaId' {..} =
    object
      ( catMaybes
          [ ("SchemaArn" .=) <$> _siSchemaARN,
            ("RegistryName" .=) <$> _siRegistryName,
            ("SchemaName" .=) <$> _siSchemaName
          ]
      )
