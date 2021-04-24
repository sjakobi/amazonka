{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.BudgetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.BudgetType
  ( BudgetType
      ( ..,
        Cost,
        RiCoverage,
        RiUtilization,
        SavingsPlansCoverage,
        SavingsPlansUtilization,
        Usage
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of a budget. It must be one of the following types:
--
--
-- @COST@ , @USAGE@ , @RI_UTILIZATION@ , @RI_COVERAGE@ , @SAVINGS_PLANS_UTILIZATION@ , or @SAVINGS_PLANS_COVERAGE@ .
data BudgetType = BudgetType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Cost :: BudgetType
pattern Cost = BudgetType' "COST"

pattern RiCoverage :: BudgetType
pattern RiCoverage = BudgetType' "RI_COVERAGE"

pattern RiUtilization :: BudgetType
pattern RiUtilization = BudgetType' "RI_UTILIZATION"

pattern SavingsPlansCoverage :: BudgetType
pattern SavingsPlansCoverage = BudgetType' "SAVINGS_PLANS_COVERAGE"

pattern SavingsPlansUtilization :: BudgetType
pattern SavingsPlansUtilization = BudgetType' "SAVINGS_PLANS_UTILIZATION"

pattern Usage :: BudgetType
pattern Usage = BudgetType' "USAGE"

{-# COMPLETE
  Cost,
  RiCoverage,
  RiUtilization,
  SavingsPlansCoverage,
  SavingsPlansUtilization,
  Usage,
  BudgetType'
  #-}

instance FromText BudgetType where
  parser = (BudgetType' . mk) <$> takeText

instance ToText BudgetType where
  toText (BudgetType' ci) = original ci

instance Hashable BudgetType

instance NFData BudgetType

instance ToByteString BudgetType

instance ToQuery BudgetType

instance ToHeader BudgetType

instance ToJSON BudgetType where
  toJSON = toJSONText

instance FromJSON BudgetType where
  parseJSON = parseJSONText "BudgetType"
