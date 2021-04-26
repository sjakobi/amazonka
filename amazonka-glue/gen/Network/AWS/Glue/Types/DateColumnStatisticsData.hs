{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.DateColumnStatisticsData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DateColumnStatisticsData where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Defines column statistics supported for timestamp data columns.
--
-- /See:/ 'newDateColumnStatisticsData' smart constructor.
data DateColumnStatisticsData = DateColumnStatisticsData'
  { -- | The highest value in the column.
    maximumValue :: Prelude.Maybe Prelude.POSIX,
    -- | The lowest value in the column.
    minimumValue :: Prelude.Maybe Prelude.POSIX,
    -- | The number of null values in the column.
    numberOfNulls :: Prelude.Nat,
    -- | The number of distinct values in a column.
    numberOfDistinctValues :: Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DateColumnStatisticsData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maximumValue', 'dateColumnStatisticsData_maximumValue' - The highest value in the column.
--
-- 'minimumValue', 'dateColumnStatisticsData_minimumValue' - The lowest value in the column.
--
-- 'numberOfNulls', 'dateColumnStatisticsData_numberOfNulls' - The number of null values in the column.
--
-- 'numberOfDistinctValues', 'dateColumnStatisticsData_numberOfDistinctValues' - The number of distinct values in a column.
newDateColumnStatisticsData ::
  -- | 'numberOfNulls'
  Prelude.Natural ->
  -- | 'numberOfDistinctValues'
  Prelude.Natural ->
  DateColumnStatisticsData
newDateColumnStatisticsData
  pNumberOfNulls_
  pNumberOfDistinctValues_ =
    DateColumnStatisticsData'
      { maximumValue =
          Prelude.Nothing,
        minimumValue = Prelude.Nothing,
        numberOfNulls =
          Prelude._Nat Lens.# pNumberOfNulls_,
        numberOfDistinctValues =
          Prelude._Nat Lens.# pNumberOfDistinctValues_
      }

-- | The highest value in the column.
dateColumnStatisticsData_maximumValue :: Lens.Lens' DateColumnStatisticsData (Prelude.Maybe Prelude.UTCTime)
dateColumnStatisticsData_maximumValue = Lens.lens (\DateColumnStatisticsData' {maximumValue} -> maximumValue) (\s@DateColumnStatisticsData' {} a -> s {maximumValue = a} :: DateColumnStatisticsData) Prelude.. Lens.mapping Prelude._Time

-- | The lowest value in the column.
dateColumnStatisticsData_minimumValue :: Lens.Lens' DateColumnStatisticsData (Prelude.Maybe Prelude.UTCTime)
dateColumnStatisticsData_minimumValue = Lens.lens (\DateColumnStatisticsData' {minimumValue} -> minimumValue) (\s@DateColumnStatisticsData' {} a -> s {minimumValue = a} :: DateColumnStatisticsData) Prelude.. Lens.mapping Prelude._Time

-- | The number of null values in the column.
dateColumnStatisticsData_numberOfNulls :: Lens.Lens' DateColumnStatisticsData Prelude.Natural
dateColumnStatisticsData_numberOfNulls = Lens.lens (\DateColumnStatisticsData' {numberOfNulls} -> numberOfNulls) (\s@DateColumnStatisticsData' {} a -> s {numberOfNulls = a} :: DateColumnStatisticsData) Prelude.. Prelude._Nat

-- | The number of distinct values in a column.
dateColumnStatisticsData_numberOfDistinctValues :: Lens.Lens' DateColumnStatisticsData Prelude.Natural
dateColumnStatisticsData_numberOfDistinctValues = Lens.lens (\DateColumnStatisticsData' {numberOfDistinctValues} -> numberOfDistinctValues) (\s@DateColumnStatisticsData' {} a -> s {numberOfDistinctValues = a} :: DateColumnStatisticsData) Prelude.. Prelude._Nat

instance Prelude.FromJSON DateColumnStatisticsData where
  parseJSON =
    Prelude.withObject
      "DateColumnStatisticsData"
      ( \x ->
          DateColumnStatisticsData'
            Prelude.<$> (x Prelude..:? "MaximumValue")
            Prelude.<*> (x Prelude..:? "MinimumValue")
            Prelude.<*> (x Prelude..: "NumberOfNulls")
            Prelude.<*> (x Prelude..: "NumberOfDistinctValues")
      )

instance Prelude.Hashable DateColumnStatisticsData

instance Prelude.NFData DateColumnStatisticsData

instance Prelude.ToJSON DateColumnStatisticsData where
  toJSON DateColumnStatisticsData' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("MaximumValue" Prelude..=)
              Prelude.<$> maximumValue,
            ("MinimumValue" Prelude..=) Prelude.<$> minimumValue,
            Prelude.Just
              ("NumberOfNulls" Prelude..= numberOfNulls),
            Prelude.Just
              ( "NumberOfDistinctValues"
                  Prelude..= numberOfDistinctValues
              )
          ]
      )
