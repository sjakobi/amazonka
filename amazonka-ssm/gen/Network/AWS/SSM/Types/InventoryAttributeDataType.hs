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
-- Module      : Network.AWS.SSM.Types.InventoryAttributeDataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InventoryAttributeDataType
  ( InventoryAttributeDataType
      ( ..,
        InventoryAttributeDataTypeNumber,
        InventoryAttributeDataTypeString
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InventoryAttributeDataType = InventoryAttributeDataType'
  { fromInventoryAttributeDataType ::
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

pattern InventoryAttributeDataTypeNumber :: InventoryAttributeDataType
pattern InventoryAttributeDataTypeNumber = InventoryAttributeDataType' "number"

pattern InventoryAttributeDataTypeString :: InventoryAttributeDataType
pattern InventoryAttributeDataTypeString = InventoryAttributeDataType' "string"

{-# COMPLETE
  InventoryAttributeDataTypeNumber,
  InventoryAttributeDataTypeString,
  InventoryAttributeDataType'
  #-}

instance Prelude.FromText InventoryAttributeDataType where
  parser = InventoryAttributeDataType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InventoryAttributeDataType where
  toText (InventoryAttributeDataType' x) = x

instance Prelude.Hashable InventoryAttributeDataType

instance Prelude.NFData InventoryAttributeDataType

instance Prelude.ToByteString InventoryAttributeDataType

instance Prelude.ToQuery InventoryAttributeDataType

instance Prelude.ToHeader InventoryAttributeDataType

instance Prelude.FromJSON InventoryAttributeDataType where
  parseJSON = Prelude.parseJSONText "InventoryAttributeDataType"
