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
-- Module      : Network.AWS.S3.Types.InventoryFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.InventoryFrequency
  ( InventoryFrequency
      ( ..,
        InventoryFrequencyDaily,
        InventoryFrequencyWeekly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype InventoryFrequency = InventoryFrequency'
  { fromInventoryFrequency ::
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

pattern InventoryFrequencyDaily :: InventoryFrequency
pattern InventoryFrequencyDaily = InventoryFrequency' "Daily"

pattern InventoryFrequencyWeekly :: InventoryFrequency
pattern InventoryFrequencyWeekly = InventoryFrequency' "Weekly"

{-# COMPLETE
  InventoryFrequencyDaily,
  InventoryFrequencyWeekly,
  InventoryFrequency'
  #-}

instance Prelude.FromText InventoryFrequency where
  parser = InventoryFrequency' Prelude.<$> Prelude.takeText

instance Prelude.ToText InventoryFrequency where
  toText (InventoryFrequency' x) = x

instance Prelude.Hashable InventoryFrequency

instance Prelude.NFData InventoryFrequency

instance Prelude.ToByteString InventoryFrequency

instance Prelude.ToQuery InventoryFrequency

instance Prelude.ToHeader InventoryFrequency

instance Prelude.FromXML InventoryFrequency where
  parseXML = Prelude.parseXMLText "InventoryFrequency"

instance Prelude.ToXML InventoryFrequency where
  toXML = Prelude.toXMLText
