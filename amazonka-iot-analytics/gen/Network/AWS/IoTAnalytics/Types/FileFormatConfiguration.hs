{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.FileFormatConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.FileFormatConfiguration where

import Network.AWS.IoTAnalytics.Types.JSONConfiguration
import Network.AWS.IoTAnalytics.Types.ParquetConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON and <https://parquet.apache.org/ Parquet> .
--
--
-- The default file format is JSON. You can specify only one format.
--
-- You can't change the file format after you create the data store.
--
--
-- /See:/ 'fileFormatConfiguration' smart constructor.
data FileFormatConfiguration = FileFormatConfiguration'
  { _ffcParquetConfiguration ::
      !( Maybe
           ParquetConfiguration
       ),
    _ffcJsonConfiguration ::
      !( Maybe
           JSONConfiguration
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

-- | Creates a value of 'FileFormatConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ffcParquetConfiguration' - Contains the configuration information of the Parquet format.
--
-- * 'ffcJsonConfiguration' - Contains the configuration information of the JSON format.
fileFormatConfiguration ::
  FileFormatConfiguration
fileFormatConfiguration =
  FileFormatConfiguration'
    { _ffcParquetConfiguration =
        Nothing,
      _ffcJsonConfiguration = Nothing
    }

-- | Contains the configuration information of the Parquet format.
ffcParquetConfiguration :: Lens' FileFormatConfiguration (Maybe ParquetConfiguration)
ffcParquetConfiguration = lens _ffcParquetConfiguration (\s a -> s {_ffcParquetConfiguration = a})

-- | Contains the configuration information of the JSON format.
ffcJsonConfiguration :: Lens' FileFormatConfiguration (Maybe JSONConfiguration)
ffcJsonConfiguration = lens _ffcJsonConfiguration (\s a -> s {_ffcJsonConfiguration = a})

instance FromJSON FileFormatConfiguration where
  parseJSON =
    withObject
      "FileFormatConfiguration"
      ( \x ->
          FileFormatConfiguration'
            <$> (x .:? "parquetConfiguration")
            <*> (x .:? "jsonConfiguration")
      )

instance Hashable FileFormatConfiguration

instance NFData FileFormatConfiguration

instance ToJSON FileFormatConfiguration where
  toJSON FileFormatConfiguration' {..} =
    object
      ( catMaybes
          [ ("parquetConfiguration" .=)
              <$> _ffcParquetConfiguration,
            ("jsonConfiguration" .=) <$> _ffcJsonConfiguration
          ]
      )
