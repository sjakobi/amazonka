{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        DeleteSchema,
        DisableSchema
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InventorySchemaDeleteOption
  = InventorySchemaDeleteOption'
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

pattern DeleteSchema :: InventorySchemaDeleteOption
pattern DeleteSchema = InventorySchemaDeleteOption' "DeleteSchema"

pattern DisableSchema :: InventorySchemaDeleteOption
pattern DisableSchema = InventorySchemaDeleteOption' "DisableSchema"

{-# COMPLETE
  DeleteSchema,
  DisableSchema,
  InventorySchemaDeleteOption'
  #-}

instance FromText InventorySchemaDeleteOption where
  parser = (InventorySchemaDeleteOption' . mk) <$> takeText

instance ToText InventorySchemaDeleteOption where
  toText (InventorySchemaDeleteOption' ci) = original ci

instance Hashable InventorySchemaDeleteOption

instance NFData InventorySchemaDeleteOption

instance ToByteString InventorySchemaDeleteOption

instance ToQuery InventorySchemaDeleteOption

instance ToHeader InventorySchemaDeleteOption

instance ToJSON InventorySchemaDeleteOption where
  toJSON = toJSONText
