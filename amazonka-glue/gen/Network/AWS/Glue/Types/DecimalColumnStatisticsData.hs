{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.DecimalColumnStatisticsData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DecimalColumnStatisticsData where

import Network.AWS.Glue.Types.DecimalNumber
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines column statistics supported for fixed-point number data columns.
--
--
--
-- /See:/ 'decimalColumnStatisticsData' smart constructor.
data DecimalColumnStatisticsData = DecimalColumnStatisticsData'
  { _decMaximumValue ::
      !( Maybe
           DecimalNumber
       ),
    _decMinimumValue ::
      !( Maybe
           DecimalNumber
       ),
    _decNumberOfNulls ::
      !Nat,
    _decNumberOfDistinctValues ::
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

-- | Creates a value of 'DecimalColumnStatisticsData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decMaximumValue' - The highest value in the column.
--
-- * 'decMinimumValue' - The lowest value in the column.
--
-- * 'decNumberOfNulls' - The number of null values in the column.
--
-- * 'decNumberOfDistinctValues' - The number of distinct values in a column.
decimalColumnStatisticsData ::
  -- | 'decNumberOfNulls'
  Natural ->
  -- | 'decNumberOfDistinctValues'
  Natural ->
  DecimalColumnStatisticsData
decimalColumnStatisticsData
  pNumberOfNulls_
  pNumberOfDistinctValues_ =
    DecimalColumnStatisticsData'
      { _decMaximumValue =
          Nothing,
        _decMinimumValue = Nothing,
        _decNumberOfNulls = _Nat # pNumberOfNulls_,
        _decNumberOfDistinctValues =
          _Nat # pNumberOfDistinctValues_
      }

-- | The highest value in the column.
decMaximumValue :: Lens' DecimalColumnStatisticsData (Maybe DecimalNumber)
decMaximumValue = lens _decMaximumValue (\s a -> s {_decMaximumValue = a})

-- | The lowest value in the column.
decMinimumValue :: Lens' DecimalColumnStatisticsData (Maybe DecimalNumber)
decMinimumValue = lens _decMinimumValue (\s a -> s {_decMinimumValue = a})

-- | The number of null values in the column.
decNumberOfNulls :: Lens' DecimalColumnStatisticsData Natural
decNumberOfNulls = lens _decNumberOfNulls (\s a -> s {_decNumberOfNulls = a}) . _Nat

-- | The number of distinct values in a column.
decNumberOfDistinctValues :: Lens' DecimalColumnStatisticsData Natural
decNumberOfDistinctValues = lens _decNumberOfDistinctValues (\s a -> s {_decNumberOfDistinctValues = a}) . _Nat

instance FromJSON DecimalColumnStatisticsData where
  parseJSON =
    withObject
      "DecimalColumnStatisticsData"
      ( \x ->
          DecimalColumnStatisticsData'
            <$> (x .:? "MaximumValue")
            <*> (x .:? "MinimumValue")
            <*> (x .: "NumberOfNulls")
            <*> (x .: "NumberOfDistinctValues")
      )

instance Hashable DecimalColumnStatisticsData

instance NFData DecimalColumnStatisticsData

instance ToJSON DecimalColumnStatisticsData where
  toJSON DecimalColumnStatisticsData' {..} =
    object
      ( catMaybes
          [ ("MaximumValue" .=) <$> _decMaximumValue,
            ("MinimumValue" .=) <$> _decMinimumValue,
            Just ("NumberOfNulls" .= _decNumberOfNulls),
            Just
              ( "NumberOfDistinctValues"
                  .= _decNumberOfDistinctValues
              )
          ]
      )
