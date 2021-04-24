{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaStoreData.Types.ItemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaStoreData.Types.ItemType
  ( ItemType
      ( ..,
        TypeFolder,
        TypeObject
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ItemType = ItemType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TypeFolder :: ItemType
pattern TypeFolder = ItemType' "FOLDER"

pattern TypeObject :: ItemType
pattern TypeObject = ItemType' "OBJECT"

{-# COMPLETE
  TypeFolder,
  TypeObject,
  ItemType'
  #-}

instance FromText ItemType where
  parser = (ItemType' . mk) <$> takeText

instance ToText ItemType where
  toText (ItemType' ci) = original ci

instance Hashable ItemType

instance NFData ItemType

instance ToByteString ItemType

instance ToQuery ItemType

instance ToHeader ItemType

instance FromJSON ItemType where
  parseJSON = parseJSONText "ItemType"
