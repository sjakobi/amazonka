{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.DoubleColumnStatisticsData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DoubleColumnStatisticsData where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines column statistics supported for floating-point number data columns.
--
--
--
-- /See:/ 'doubleColumnStatisticsData' smart constructor.
data DoubleColumnStatisticsData = DoubleColumnStatisticsData'
  { _dMaximumValue ::
      !(Maybe Double),
    _dMinimumValue ::
      !(Maybe Double),
    _dNumberOfNulls ::
      !Nat,
    _dNumberOfDistinctValues ::
      !Nat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DoubleColumnStatisticsData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMaximumValue' - The highest value in the column.
--
-- * 'dMinimumValue' - The lowest value in the column.
--
-- * 'dNumberOfNulls' - The number of null values in the column.
--
-- * 'dNumberOfDistinctValues' - The number of distinct values in a column.
doubleColumnStatisticsData ::
  -- | 'dNumberOfNulls'
  Natural ->
  -- | 'dNumberOfDistinctValues'
  Natural ->
  DoubleColumnStatisticsData
doubleColumnStatisticsData
  pNumberOfNulls_
  pNumberOfDistinctValues_ =
    DoubleColumnStatisticsData'
      { _dMaximumValue =
          Nothing,
        _dMinimumValue = Nothing,
        _dNumberOfNulls = _Nat # pNumberOfNulls_,
        _dNumberOfDistinctValues =
          _Nat # pNumberOfDistinctValues_
      }

-- | The highest value in the column.
dMaximumValue :: Lens' DoubleColumnStatisticsData (Maybe Double)
dMaximumValue = lens _dMaximumValue (\s a -> s {_dMaximumValue = a})

-- | The lowest value in the column.
dMinimumValue :: Lens' DoubleColumnStatisticsData (Maybe Double)
dMinimumValue = lens _dMinimumValue (\s a -> s {_dMinimumValue = a})

-- | The number of null values in the column.
dNumberOfNulls :: Lens' DoubleColumnStatisticsData Natural
dNumberOfNulls = lens _dNumberOfNulls (\s a -> s {_dNumberOfNulls = a}) . _Nat

-- | The number of distinct values in a column.
dNumberOfDistinctValues :: Lens' DoubleColumnStatisticsData Natural
dNumberOfDistinctValues = lens _dNumberOfDistinctValues (\s a -> s {_dNumberOfDistinctValues = a}) . _Nat

instance FromJSON DoubleColumnStatisticsData where
  parseJSON =
    withObject
      "DoubleColumnStatisticsData"
      ( \x ->
          DoubleColumnStatisticsData'
            <$> (x .:? "MaximumValue")
            <*> (x .:? "MinimumValue")
            <*> (x .: "NumberOfNulls")
            <*> (x .: "NumberOfDistinctValues")
      )

instance Hashable DoubleColumnStatisticsData

instance NFData DoubleColumnStatisticsData

instance ToJSON DoubleColumnStatisticsData where
  toJSON DoubleColumnStatisticsData' {..} =
    object
      ( catMaybes
          [ ("MaximumValue" .=) <$> _dMaximumValue,
            ("MinimumValue" .=) <$> _dMinimumValue,
            Just ("NumberOfNulls" .= _dNumberOfNulls),
            Just
              ( "NumberOfDistinctValues"
                  .= _dNumberOfDistinctValues
              )
          ]
      )
