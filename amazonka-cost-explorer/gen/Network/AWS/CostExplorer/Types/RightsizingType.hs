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
-- Module      : Network.AWS.CostExplorer.Types.RightsizingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.RightsizingType
  ( RightsizingType
      ( ..,
        RightsizingTypeMODIFY,
        RightsizingTypeTERMINATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RightsizingType = RightsizingType'
  { fromRightsizingType ::
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

pattern RightsizingTypeMODIFY :: RightsizingType
pattern RightsizingTypeMODIFY = RightsizingType' "MODIFY"

pattern RightsizingTypeTERMINATE :: RightsizingType
pattern RightsizingTypeTERMINATE = RightsizingType' "TERMINATE"

{-# COMPLETE
  RightsizingTypeMODIFY,
  RightsizingTypeTERMINATE,
  RightsizingType'
  #-}

instance Prelude.FromText RightsizingType where
  parser = RightsizingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RightsizingType where
  toText (RightsizingType' x) = x

instance Prelude.Hashable RightsizingType

instance Prelude.NFData RightsizingType

instance Prelude.ToByteString RightsizingType

instance Prelude.ToQuery RightsizingType

instance Prelude.ToHeader RightsizingType

instance Prelude.FromJSON RightsizingType where
  parseJSON = Prelude.parseJSONText "RightsizingType"
