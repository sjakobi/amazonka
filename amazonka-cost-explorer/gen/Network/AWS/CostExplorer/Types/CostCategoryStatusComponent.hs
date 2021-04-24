{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.CostCategoryStatusComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.CostCategoryStatusComponent
  ( CostCategoryStatusComponent
      ( ..,
        CostExplorer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CostCategoryStatusComponent
  = CostCategoryStatusComponent'
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

pattern CostExplorer :: CostCategoryStatusComponent
pattern CostExplorer = CostCategoryStatusComponent' "COST_EXPLORER"

{-# COMPLETE
  CostExplorer,
  CostCategoryStatusComponent'
  #-}

instance FromText CostCategoryStatusComponent where
  parser = (CostCategoryStatusComponent' . mk) <$> takeText

instance ToText CostCategoryStatusComponent where
  toText (CostCategoryStatusComponent' ci) = original ci

instance Hashable CostCategoryStatusComponent

instance NFData CostCategoryStatusComponent

instance ToByteString CostCategoryStatusComponent

instance ToQuery CostCategoryStatusComponent

instance ToHeader CostCategoryStatusComponent

instance FromJSON CostCategoryStatusComponent where
  parseJSON = parseJSONText "CostCategoryStatusComponent"
