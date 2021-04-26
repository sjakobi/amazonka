{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        BudgetTypeCOST,
        BudgetTypeRICOVERAGE,
        BudgetTypeRIUTILIZATION,
        BudgetTypeSAVINGSPLANSCOVERAGE,
        BudgetTypeSAVINGSPLANSUTILIZATION,
        BudgetTypeUSAGE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of a budget. It must be one of the following types:
--
-- @COST@, @USAGE@, @RI_UTILIZATION@, @RI_COVERAGE@,
-- @SAVINGS_PLANS_UTILIZATION@, or @SAVINGS_PLANS_COVERAGE@.
newtype BudgetType = BudgetType'
  { fromBudgetType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern BudgetTypeCOST :: BudgetType
pattern BudgetTypeCOST = BudgetType' "COST"

pattern BudgetTypeRICOVERAGE :: BudgetType
pattern BudgetTypeRICOVERAGE = BudgetType' "RI_COVERAGE"

pattern BudgetTypeRIUTILIZATION :: BudgetType
pattern BudgetTypeRIUTILIZATION = BudgetType' "RI_UTILIZATION"

pattern BudgetTypeSAVINGSPLANSCOVERAGE :: BudgetType
pattern BudgetTypeSAVINGSPLANSCOVERAGE = BudgetType' "SAVINGS_PLANS_COVERAGE"

pattern BudgetTypeSAVINGSPLANSUTILIZATION :: BudgetType
pattern BudgetTypeSAVINGSPLANSUTILIZATION = BudgetType' "SAVINGS_PLANS_UTILIZATION"

pattern BudgetTypeUSAGE :: BudgetType
pattern BudgetTypeUSAGE = BudgetType' "USAGE"

{-# COMPLETE
  BudgetTypeCOST,
  BudgetTypeRICOVERAGE,
  BudgetTypeRIUTILIZATION,
  BudgetTypeSAVINGSPLANSCOVERAGE,
  BudgetTypeSAVINGSPLANSUTILIZATION,
  BudgetTypeUSAGE,
  BudgetType'
  #-}

instance Prelude.FromText BudgetType where
  parser = BudgetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BudgetType where
  toText (BudgetType' x) = x

instance Prelude.Hashable BudgetType

instance Prelude.NFData BudgetType

instance Prelude.ToByteString BudgetType

instance Prelude.ToQuery BudgetType

instance Prelude.ToHeader BudgetType

instance Prelude.ToJSON BudgetType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BudgetType where
  parseJSON = Prelude.parseJSONText "BudgetType"
