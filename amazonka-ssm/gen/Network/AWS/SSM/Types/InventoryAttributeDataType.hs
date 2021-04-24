{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        IADTNumber,
        IADTString
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InventoryAttributeDataType
  = InventoryAttributeDataType'
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

pattern IADTNumber :: InventoryAttributeDataType
pattern IADTNumber = InventoryAttributeDataType' "number"

pattern IADTString :: InventoryAttributeDataType
pattern IADTString = InventoryAttributeDataType' "string"

{-# COMPLETE
  IADTNumber,
  IADTString,
  InventoryAttributeDataType'
  #-}

instance FromText InventoryAttributeDataType where
  parser = (InventoryAttributeDataType' . mk) <$> takeText

instance ToText InventoryAttributeDataType where
  toText (InventoryAttributeDataType' ci) = original ci

instance Hashable InventoryAttributeDataType

instance NFData InventoryAttributeDataType

instance ToByteString InventoryAttributeDataType

instance ToQuery InventoryAttributeDataType

instance ToHeader InventoryAttributeDataType

instance FromJSON InventoryAttributeDataType where
  parseJSON = parseJSONText "InventoryAttributeDataType"
