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
-- Module      : Network.AWS.S3.Types.InventoryIncludedObjectVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.InventoryIncludedObjectVersions
  ( InventoryIncludedObjectVersions
      ( ..,
        InventoryIncludedObjectVersionsAll,
        InventoryIncludedObjectVersionsCurrent
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype InventoryIncludedObjectVersions = InventoryIncludedObjectVersions'
  { fromInventoryIncludedObjectVersions ::
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

pattern InventoryIncludedObjectVersionsAll :: InventoryIncludedObjectVersions
pattern InventoryIncludedObjectVersionsAll = InventoryIncludedObjectVersions' "All"

pattern InventoryIncludedObjectVersionsCurrent :: InventoryIncludedObjectVersions
pattern InventoryIncludedObjectVersionsCurrent = InventoryIncludedObjectVersions' "Current"

{-# COMPLETE
  InventoryIncludedObjectVersionsAll,
  InventoryIncludedObjectVersionsCurrent,
  InventoryIncludedObjectVersions'
  #-}

instance Prelude.FromText InventoryIncludedObjectVersions where
  parser = InventoryIncludedObjectVersions' Prelude.<$> Prelude.takeText

instance Prelude.ToText InventoryIncludedObjectVersions where
  toText (InventoryIncludedObjectVersions' x) = x

instance Prelude.Hashable InventoryIncludedObjectVersions

instance Prelude.NFData InventoryIncludedObjectVersions

instance Prelude.ToByteString InventoryIncludedObjectVersions

instance Prelude.ToQuery InventoryIncludedObjectVersions

instance Prelude.ToHeader InventoryIncludedObjectVersions

instance Prelude.FromXML InventoryIncludedObjectVersions where
  parseXML = Prelude.parseXMLText "InventoryIncludedObjectVersions"

instance Prelude.ToXML InventoryIncludedObjectVersions where
  toXML = Prelude.toXMLText
