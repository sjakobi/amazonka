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
-- Module      : Network.AWS.CostExplorer.Types.CostCategoryRuleVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.CostCategoryRuleVersion
  ( CostCategoryRuleVersion
      ( ..,
        CostCategoryRuleVersionCostCategoryExpression_V1
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The rule schema version in this particular Cost Category.
newtype CostCategoryRuleVersion = CostCategoryRuleVersion'
  { fromCostCategoryRuleVersion ::
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

pattern CostCategoryRuleVersionCostCategoryExpression_V1 :: CostCategoryRuleVersion
pattern CostCategoryRuleVersionCostCategoryExpression_V1 = CostCategoryRuleVersion' "CostCategoryExpression.v1"

{-# COMPLETE
  CostCategoryRuleVersionCostCategoryExpression_V1,
  CostCategoryRuleVersion'
  #-}

instance Prelude.FromText CostCategoryRuleVersion where
  parser = CostCategoryRuleVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText CostCategoryRuleVersion where
  toText (CostCategoryRuleVersion' x) = x

instance Prelude.Hashable CostCategoryRuleVersion

instance Prelude.NFData CostCategoryRuleVersion

instance Prelude.ToByteString CostCategoryRuleVersion

instance Prelude.ToQuery CostCategoryRuleVersion

instance Prelude.ToHeader CostCategoryRuleVersion

instance Prelude.ToJSON CostCategoryRuleVersion where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CostCategoryRuleVersion where
  parseJSON = Prelude.parseJSONText "CostCategoryRuleVersion"
