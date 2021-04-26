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
-- Module      : Network.AWS.SSM.Types.InventorySchemaDeleteOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InventorySchemaDeleteOption
  ( InventorySchemaDeleteOption
      ( ..,
        InventorySchemaDeleteOptionDeleteSchema,
        InventorySchemaDeleteOptionDisableSchema
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InventorySchemaDeleteOption = InventorySchemaDeleteOption'
  { fromInventorySchemaDeleteOption ::
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

pattern InventorySchemaDeleteOptionDeleteSchema :: InventorySchemaDeleteOption
pattern InventorySchemaDeleteOptionDeleteSchema = InventorySchemaDeleteOption' "DeleteSchema"

pattern InventorySchemaDeleteOptionDisableSchema :: InventorySchemaDeleteOption
pattern InventorySchemaDeleteOptionDisableSchema = InventorySchemaDeleteOption' "DisableSchema"

{-# COMPLETE
  InventorySchemaDeleteOptionDeleteSchema,
  InventorySchemaDeleteOptionDisableSchema,
  InventorySchemaDeleteOption'
  #-}

instance Prelude.FromText InventorySchemaDeleteOption where
  parser = InventorySchemaDeleteOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText InventorySchemaDeleteOption where
  toText (InventorySchemaDeleteOption' x) = x

instance Prelude.Hashable InventorySchemaDeleteOption

instance Prelude.NFData InventorySchemaDeleteOption

instance Prelude.ToByteString InventorySchemaDeleteOption

instance Prelude.ToQuery InventorySchemaDeleteOption

instance Prelude.ToHeader InventorySchemaDeleteOption

instance Prelude.ToJSON InventorySchemaDeleteOption where
  toJSON = Prelude.toJSONText
