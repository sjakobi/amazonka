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
-- Module      : Network.AWS.CostExplorer.Types.CostCategoryStatusComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.CostCategoryStatusComponent
  ( CostCategoryStatusComponent
      ( ..,
        CostCategoryStatusComponentCOSTEXPLORER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CostCategoryStatusComponent = CostCategoryStatusComponent'
  { fromCostCategoryStatusComponent ::
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

pattern CostCategoryStatusComponentCOSTEXPLORER :: CostCategoryStatusComponent
pattern CostCategoryStatusComponentCOSTEXPLORER = CostCategoryStatusComponent' "COST_EXPLORER"

{-# COMPLETE
  CostCategoryStatusComponentCOSTEXPLORER,
  CostCategoryStatusComponent'
  #-}

instance Prelude.FromText CostCategoryStatusComponent where
  parser = CostCategoryStatusComponent' Prelude.<$> Prelude.takeText

instance Prelude.ToText CostCategoryStatusComponent where
  toText (CostCategoryStatusComponent' x) = x

instance Prelude.Hashable CostCategoryStatusComponent

instance Prelude.NFData CostCategoryStatusComponent

instance Prelude.ToByteString CostCategoryStatusComponent

instance Prelude.ToQuery CostCategoryStatusComponent

instance Prelude.ToHeader CostCategoryStatusComponent

instance Prelude.FromJSON CostCategoryStatusComponent where
  parseJSON = Prelude.parseJSONText "CostCategoryStatusComponent"
