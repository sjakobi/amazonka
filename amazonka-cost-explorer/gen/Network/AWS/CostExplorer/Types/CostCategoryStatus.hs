{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.CostCategoryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.CostCategoryStatus
  ( CostCategoryStatus
      ( ..,
        Applied,
        Processing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CostCategoryStatus
  = CostCategoryStatus'
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

pattern Applied :: CostCategoryStatus
pattern Applied = CostCategoryStatus' "APPLIED"

pattern Processing :: CostCategoryStatus
pattern Processing = CostCategoryStatus' "PROCESSING"

{-# COMPLETE
  Applied,
  Processing,
  CostCategoryStatus'
  #-}

instance FromText CostCategoryStatus where
  parser = (CostCategoryStatus' . mk) <$> takeText

instance ToText CostCategoryStatus where
  toText (CostCategoryStatus' ci) = original ci

instance Hashable CostCategoryStatus

instance NFData CostCategoryStatus

instance ToByteString CostCategoryStatus

instance ToQuery CostCategoryStatus

instance ToHeader CostCategoryStatus

instance FromJSON CostCategoryStatus where
  parseJSON = parseJSONText "CostCategoryStatus"
