{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.Deserializer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.Deserializer where

import Network.AWS.Firehose.Types.HiveJSONSerDe
import Network.AWS.Firehose.Types.OpenXJSONSerDe
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The deserializer you want Kinesis Data Firehose to use for converting the input data from JSON. Kinesis Data Firehose then serializes the data to its final format using the 'Serializer' . Kinesis Data Firehose supports two types of deserializers: the <https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON Apache Hive JSON SerDe> and the <https://github.com/rcongiu/Hive-JSON-Serde OpenX JSON SerDe> .
--
--
--
-- /See:/ 'deserializer' smart constructor.
data Deserializer = Deserializer'
  { _dHiveJSONSerDe ::
      !(Maybe HiveJSONSerDe),
    _dOpenXJSONSerDe :: !(Maybe OpenXJSONSerDe)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Deserializer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dHiveJSONSerDe' - The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format. This is one of two deserializers you can choose, depending on which one offers the functionality you need. The other option is the OpenX SerDe.
--
-- * 'dOpenXJSONSerDe' - The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format. This is one of two deserializers you can choose, depending on which one offers the functionality you need. The other option is the native Hive / HCatalog JsonSerDe.
deserializer ::
  Deserializer
deserializer =
  Deserializer'
    { _dHiveJSONSerDe = Nothing,
      _dOpenXJSONSerDe = Nothing
    }

-- | The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format. This is one of two deserializers you can choose, depending on which one offers the functionality you need. The other option is the OpenX SerDe.
dHiveJSONSerDe :: Lens' Deserializer (Maybe HiveJSONSerDe)
dHiveJSONSerDe = lens _dHiveJSONSerDe (\s a -> s {_dHiveJSONSerDe = a})

-- | The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format. This is one of two deserializers you can choose, depending on which one offers the functionality you need. The other option is the native Hive / HCatalog JsonSerDe.
dOpenXJSONSerDe :: Lens' Deserializer (Maybe OpenXJSONSerDe)
dOpenXJSONSerDe = lens _dOpenXJSONSerDe (\s a -> s {_dOpenXJSONSerDe = a})

instance FromJSON Deserializer where
  parseJSON =
    withObject
      "Deserializer"
      ( \x ->
          Deserializer'
            <$> (x .:? "HiveJsonSerDe") <*> (x .:? "OpenXJsonSerDe")
      )

instance Hashable Deserializer

instance NFData Deserializer

instance ToJSON Deserializer where
  toJSON Deserializer' {..} =
    object
      ( catMaybes
          [ ("HiveJsonSerDe" .=) <$> _dHiveJSONSerDe,
            ("OpenXJsonSerDe" .=) <$> _dOpenXJSONSerDe
          ]
      )
