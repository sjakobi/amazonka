{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.SavingsPlansUtilizationAggregates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SavingsPlansUtilizationAggregates where

import Network.AWS.CostExplorer.Types.SavingsPlansAmortizedCommitment
import Network.AWS.CostExplorer.Types.SavingsPlansSavings
import Network.AWS.CostExplorer.Types.SavingsPlansUtilization
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The aggregated utilization metrics for your Savings Plans usage.
--
--
--
-- /See:/ 'savingsPlansUtilizationAggregates' smart constructor.
data SavingsPlansUtilizationAggregates = SavingsPlansUtilizationAggregates'
  { _spuaSavings ::
      !( Maybe
           SavingsPlansSavings
       ),
    _spuaAmortizedCommitment ::
      !( Maybe
           SavingsPlansAmortizedCommitment
       ),
    _spuaUtilization ::
      !SavingsPlansUtilization
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SavingsPlansUtilizationAggregates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spuaSavings' - The amount saved by using existing Savings Plans. Savings returns both net savings from Savings Plans, as well as the @onDemandCostEquivalent@ of the Savings Plans when considering the utilization rate.
--
-- * 'spuaAmortizedCommitment' - The total amortized commitment for a Savings Plans. This includes the sum of the upfront and recurring Savings Plans fees.
--
-- * 'spuaUtilization' - A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.
savingsPlansUtilizationAggregates ::
  -- | 'spuaUtilization'
  SavingsPlansUtilization ->
  SavingsPlansUtilizationAggregates
savingsPlansUtilizationAggregates pUtilization_ =
  SavingsPlansUtilizationAggregates'
    { _spuaSavings =
        Nothing,
      _spuaAmortizedCommitment = Nothing,
      _spuaUtilization = pUtilization_
    }

-- | The amount saved by using existing Savings Plans. Savings returns both net savings from Savings Plans, as well as the @onDemandCostEquivalent@ of the Savings Plans when considering the utilization rate.
spuaSavings :: Lens' SavingsPlansUtilizationAggregates (Maybe SavingsPlansSavings)
spuaSavings = lens _spuaSavings (\s a -> s {_spuaSavings = a})

-- | The total amortized commitment for a Savings Plans. This includes the sum of the upfront and recurring Savings Plans fees.
spuaAmortizedCommitment :: Lens' SavingsPlansUtilizationAggregates (Maybe SavingsPlansAmortizedCommitment)
spuaAmortizedCommitment = lens _spuaAmortizedCommitment (\s a -> s {_spuaAmortizedCommitment = a})

-- | A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.
spuaUtilization :: Lens' SavingsPlansUtilizationAggregates SavingsPlansUtilization
spuaUtilization = lens _spuaUtilization (\s a -> s {_spuaUtilization = a})

instance FromJSON SavingsPlansUtilizationAggregates where
  parseJSON =
    withObject
      "SavingsPlansUtilizationAggregates"
      ( \x ->
          SavingsPlansUtilizationAggregates'
            <$> (x .:? "Savings")
            <*> (x .:? "AmortizedCommitment")
            <*> (x .: "Utilization")
      )

instance Hashable SavingsPlansUtilizationAggregates

instance NFData SavingsPlansUtilizationAggregates
