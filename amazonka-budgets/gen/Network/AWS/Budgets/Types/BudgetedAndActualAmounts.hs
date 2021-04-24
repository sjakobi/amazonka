{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.BudgetedAndActualAmounts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.BudgetedAndActualAmounts where

import Network.AWS.Budgets.Types.Spend
import Network.AWS.Budgets.Types.TimePeriod
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The amount of cost or usage that you created the budget for, compared to your actual costs or usage.
--
--
--
-- /See:/ 'budgetedAndActualAmounts' smart constructor.
data BudgetedAndActualAmounts = BudgetedAndActualAmounts'
  { _baaaTimePeriod ::
      !(Maybe TimePeriod),
    _baaaBudgetedAmount ::
      !(Maybe Spend),
    _baaaActualAmount ::
      !(Maybe Spend)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BudgetedAndActualAmounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baaaTimePeriod' - The time period covered by this budget comparison.
--
-- * 'baaaBudgetedAmount' - The amount of cost or usage that you created the budget for.
--
-- * 'baaaActualAmount' - Your actual costs or usage for a budget period.
budgetedAndActualAmounts ::
  BudgetedAndActualAmounts
budgetedAndActualAmounts =
  BudgetedAndActualAmounts'
    { _baaaTimePeriod =
        Nothing,
      _baaaBudgetedAmount = Nothing,
      _baaaActualAmount = Nothing
    }

-- | The time period covered by this budget comparison.
baaaTimePeriod :: Lens' BudgetedAndActualAmounts (Maybe TimePeriod)
baaaTimePeriod = lens _baaaTimePeriod (\s a -> s {_baaaTimePeriod = a})

-- | The amount of cost or usage that you created the budget for.
baaaBudgetedAmount :: Lens' BudgetedAndActualAmounts (Maybe Spend)
baaaBudgetedAmount = lens _baaaBudgetedAmount (\s a -> s {_baaaBudgetedAmount = a})

-- | Your actual costs or usage for a budget period.
baaaActualAmount :: Lens' BudgetedAndActualAmounts (Maybe Spend)
baaaActualAmount = lens _baaaActualAmount (\s a -> s {_baaaActualAmount = a})

instance FromJSON BudgetedAndActualAmounts where
  parseJSON =
    withObject
      "BudgetedAndActualAmounts"
      ( \x ->
          BudgetedAndActualAmounts'
            <$> (x .:? "TimePeriod")
            <*> (x .:? "BudgetedAmount")
            <*> (x .:? "ActualAmount")
      )

instance Hashable BudgetedAndActualAmounts

instance NFData BudgetedAndActualAmounts
