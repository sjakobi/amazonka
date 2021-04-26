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
-- Module      : Network.AWS.CostExplorer.Types.CostCategoryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.CostCategoryStatus
  ( CostCategoryStatus
      ( ..,
        CostCategoryStatusAPPLIED,
        CostCategoryStatusPROCESSING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CostCategoryStatus = CostCategoryStatus'
  { fromCostCategoryStatus ::
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

pattern CostCategoryStatusAPPLIED :: CostCategoryStatus
pattern CostCategoryStatusAPPLIED = CostCategoryStatus' "APPLIED"

pattern CostCategoryStatusPROCESSING :: CostCategoryStatus
pattern CostCategoryStatusPROCESSING = CostCategoryStatus' "PROCESSING"

{-# COMPLETE
  CostCategoryStatusAPPLIED,
  CostCategoryStatusPROCESSING,
  CostCategoryStatus'
  #-}

instance Prelude.FromText CostCategoryStatus where
  parser = CostCategoryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CostCategoryStatus where
  toText (CostCategoryStatus' x) = x

instance Prelude.Hashable CostCategoryStatus

instance Prelude.NFData CostCategoryStatus

instance Prelude.ToByteString CostCategoryStatus

instance Prelude.ToQuery CostCategoryStatus

instance Prelude.ToHeader CostCategoryStatus

instance Prelude.FromJSON CostCategoryStatus where
  parseJSON = Prelude.parseJSONText "CostCategoryStatus"
