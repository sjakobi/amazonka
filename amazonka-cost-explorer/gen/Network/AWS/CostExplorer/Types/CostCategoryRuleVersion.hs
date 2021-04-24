{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CostCategoryExpression_V1
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The rule schema version in this particular Cost Category.
data CostCategoryRuleVersion
  = CostCategoryRuleVersion'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CostCategoryExpression_V1 :: CostCategoryRuleVersion
pattern CostCategoryExpression_V1 = CostCategoryRuleVersion' "CostCategoryExpression.v1"

{-# COMPLETE
  CostCategoryExpression_V1,
  CostCategoryRuleVersion'
  #-}

instance FromText CostCategoryRuleVersion where
  parser = (CostCategoryRuleVersion' . mk) <$> takeText

instance ToText CostCategoryRuleVersion where
  toText (CostCategoryRuleVersion' ci) = original ci

instance Hashable CostCategoryRuleVersion

instance NFData CostCategoryRuleVersion

instance ToByteString CostCategoryRuleVersion

instance ToQuery CostCategoryRuleVersion

instance ToHeader CostCategoryRuleVersion

instance ToJSON CostCategoryRuleVersion where
  toJSON = toJSONText

instance FromJSON CostCategoryRuleVersion where
  parseJSON = parseJSONText "CostCategoryRuleVersion"
