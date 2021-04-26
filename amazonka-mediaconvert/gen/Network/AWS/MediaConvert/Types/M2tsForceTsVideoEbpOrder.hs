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
-- Module      : Network.AWS.MediaConvert.Types.M2tsForceTsVideoEbpOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsForceTsVideoEbpOrder
  ( M2tsForceTsVideoEbpOrder
      ( ..,
        M2tsForceTsVideoEbpOrderDEFAULT,
        M2tsForceTsVideoEbpOrderFORCE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Keep the default value (DEFAULT) unless you know that your audio EBP
-- markers are incorrectly appearing before your video EBP markers. To
-- correct this problem, set this value to Force (FORCE).
newtype M2tsForceTsVideoEbpOrder = M2tsForceTsVideoEbpOrder'
  { fromM2tsForceTsVideoEbpOrder ::
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

pattern M2tsForceTsVideoEbpOrderDEFAULT :: M2tsForceTsVideoEbpOrder
pattern M2tsForceTsVideoEbpOrderDEFAULT = M2tsForceTsVideoEbpOrder' "DEFAULT"

pattern M2tsForceTsVideoEbpOrderFORCE :: M2tsForceTsVideoEbpOrder
pattern M2tsForceTsVideoEbpOrderFORCE = M2tsForceTsVideoEbpOrder' "FORCE"

{-# COMPLETE
  M2tsForceTsVideoEbpOrderDEFAULT,
  M2tsForceTsVideoEbpOrderFORCE,
  M2tsForceTsVideoEbpOrder'
  #-}

instance Prelude.FromText M2tsForceTsVideoEbpOrder where
  parser = M2tsForceTsVideoEbpOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsForceTsVideoEbpOrder where
  toText (M2tsForceTsVideoEbpOrder' x) = x

instance Prelude.Hashable M2tsForceTsVideoEbpOrder

instance Prelude.NFData M2tsForceTsVideoEbpOrder

instance Prelude.ToByteString M2tsForceTsVideoEbpOrder

instance Prelude.ToQuery M2tsForceTsVideoEbpOrder

instance Prelude.ToHeader M2tsForceTsVideoEbpOrder

instance Prelude.ToJSON M2tsForceTsVideoEbpOrder where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsForceTsVideoEbpOrder where
  parseJSON = Prelude.parseJSONText "M2tsForceTsVideoEbpOrder"
