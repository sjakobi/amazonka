{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ColumnStatisticsData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ColumnStatisticsData where

import Network.AWS.Glue.Types.BinaryColumnStatisticsData
import Network.AWS.Glue.Types.BooleanColumnStatisticsData
import Network.AWS.Glue.Types.ColumnStatisticsType
import Network.AWS.Glue.Types.DateColumnStatisticsData
import Network.AWS.Glue.Types.DecimalColumnStatisticsData
import Network.AWS.Glue.Types.DoubleColumnStatisticsData
import Network.AWS.Glue.Types.LongColumnStatisticsData
import Network.AWS.Glue.Types.StringColumnStatisticsData
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the individual types of column statistics data. Only one data object should be set and indicated by the @Type@ attribute.
--
--
--
-- /See:/ 'columnStatisticsData' smart constructor.
data ColumnStatisticsData = ColumnStatisticsData'
  { _csdDateColumnStatisticsData ::
      !( Maybe
           DateColumnStatisticsData
       ),
    _csdBinaryColumnStatisticsData ::
      !( Maybe
           BinaryColumnStatisticsData
       ),
    _csdBooleanColumnStatisticsData ::
      !( Maybe
           BooleanColumnStatisticsData
       ),
    _csdLongColumnStatisticsData ::
      !( Maybe
           LongColumnStatisticsData
       ),
    _csdStringColumnStatisticsData ::
      !( Maybe
           StringColumnStatisticsData
       ),
    _csdDoubleColumnStatisticsData ::
      !( Maybe
           DoubleColumnStatisticsData
       ),
    _csdDecimalColumnStatisticsData ::
      !( Maybe
           DecimalColumnStatisticsData
       ),
    _csdType ::
      !ColumnStatisticsType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ColumnStatisticsData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdDateColumnStatisticsData' - Date column statistics data.
--
-- * 'csdBinaryColumnStatisticsData' - Binary column statistics data.
--
-- * 'csdBooleanColumnStatisticsData' - Boolean column statistics data.
--
-- * 'csdLongColumnStatisticsData' - Long column statistics data.
--
-- * 'csdStringColumnStatisticsData' - String column statistics data.
--
-- * 'csdDoubleColumnStatisticsData' - Double column statistics data.
--
-- * 'csdDecimalColumnStatisticsData' - Decimal column statistics data.
--
-- * 'csdType' - The type of column statistics data.
columnStatisticsData ::
  -- | 'csdType'
  ColumnStatisticsType ->
  ColumnStatisticsData
columnStatisticsData pType_ =
  ColumnStatisticsData'
    { _csdDateColumnStatisticsData =
        Nothing,
      _csdBinaryColumnStatisticsData = Nothing,
      _csdBooleanColumnStatisticsData = Nothing,
      _csdLongColumnStatisticsData = Nothing,
      _csdStringColumnStatisticsData = Nothing,
      _csdDoubleColumnStatisticsData = Nothing,
      _csdDecimalColumnStatisticsData = Nothing,
      _csdType = pType_
    }

-- | Date column statistics data.
csdDateColumnStatisticsData :: Lens' ColumnStatisticsData (Maybe DateColumnStatisticsData)
csdDateColumnStatisticsData = lens _csdDateColumnStatisticsData (\s a -> s {_csdDateColumnStatisticsData = a})

-- | Binary column statistics data.
csdBinaryColumnStatisticsData :: Lens' ColumnStatisticsData (Maybe BinaryColumnStatisticsData)
csdBinaryColumnStatisticsData = lens _csdBinaryColumnStatisticsData (\s a -> s {_csdBinaryColumnStatisticsData = a})

-- | Boolean column statistics data.
csdBooleanColumnStatisticsData :: Lens' ColumnStatisticsData (Maybe BooleanColumnStatisticsData)
csdBooleanColumnStatisticsData = lens _csdBooleanColumnStatisticsData (\s a -> s {_csdBooleanColumnStatisticsData = a})

-- | Long column statistics data.
csdLongColumnStatisticsData :: Lens' ColumnStatisticsData (Maybe LongColumnStatisticsData)
csdLongColumnStatisticsData = lens _csdLongColumnStatisticsData (\s a -> s {_csdLongColumnStatisticsData = a})

-- | String column statistics data.
csdStringColumnStatisticsData :: Lens' ColumnStatisticsData (Maybe StringColumnStatisticsData)
csdStringColumnStatisticsData = lens _csdStringColumnStatisticsData (\s a -> s {_csdStringColumnStatisticsData = a})

-- | Double column statistics data.
csdDoubleColumnStatisticsData :: Lens' ColumnStatisticsData (Maybe DoubleColumnStatisticsData)
csdDoubleColumnStatisticsData = lens _csdDoubleColumnStatisticsData (\s a -> s {_csdDoubleColumnStatisticsData = a})

-- | Decimal column statistics data.
csdDecimalColumnStatisticsData :: Lens' ColumnStatisticsData (Maybe DecimalColumnStatisticsData)
csdDecimalColumnStatisticsData = lens _csdDecimalColumnStatisticsData (\s a -> s {_csdDecimalColumnStatisticsData = a})

-- | The type of column statistics data.
csdType :: Lens' ColumnStatisticsData ColumnStatisticsType
csdType = lens _csdType (\s a -> s {_csdType = a})

instance FromJSON ColumnStatisticsData where
  parseJSON =
    withObject
      "ColumnStatisticsData"
      ( \x ->
          ColumnStatisticsData'
            <$> (x .:? "DateColumnStatisticsData")
            <*> (x .:? "BinaryColumnStatisticsData")
            <*> (x .:? "BooleanColumnStatisticsData")
            <*> (x .:? "LongColumnStatisticsData")
            <*> (x .:? "StringColumnStatisticsData")
            <*> (x .:? "DoubleColumnStatisticsData")
            <*> (x .:? "DecimalColumnStatisticsData")
            <*> (x .: "Type")
      )

instance Hashable ColumnStatisticsData

instance NFData ColumnStatisticsData

instance ToJSON ColumnStatisticsData where
  toJSON ColumnStatisticsData' {..} =
    object
      ( catMaybes
          [ ("DateColumnStatisticsData" .=)
              <$> _csdDateColumnStatisticsData,
            ("BinaryColumnStatisticsData" .=)
              <$> _csdBinaryColumnStatisticsData,
            ("BooleanColumnStatisticsData" .=)
              <$> _csdBooleanColumnStatisticsData,
            ("LongColumnStatisticsData" .=)
              <$> _csdLongColumnStatisticsData,
            ("StringColumnStatisticsData" .=)
              <$> _csdStringColumnStatisticsData,
            ("DoubleColumnStatisticsData" .=)
              <$> _csdDoubleColumnStatisticsData,
            ("DecimalColumnStatisticsData" .=)
              <$> _csdDecimalColumnStatisticsData,
            Just ("Type" .= _csdType)
          ]
      )
