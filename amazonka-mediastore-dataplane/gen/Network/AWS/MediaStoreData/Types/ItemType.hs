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
-- Module      : Network.AWS.MediaStoreData.Types.ItemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaStoreData.Types.ItemType
  ( ItemType
      ( ..,
        ItemTypeFOLDER,
        ItemTypeOBJECT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ItemType = ItemType'
  { fromItemType ::
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

pattern ItemTypeFOLDER :: ItemType
pattern ItemTypeFOLDER = ItemType' "FOLDER"

pattern ItemTypeOBJECT :: ItemType
pattern ItemTypeOBJECT = ItemType' "OBJECT"

{-# COMPLETE
  ItemTypeFOLDER,
  ItemTypeOBJECT,
  ItemType'
  #-}

instance Prelude.FromText ItemType where
  parser = ItemType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ItemType where
  toText (ItemType' x) = x

instance Prelude.Hashable ItemType

instance Prelude.NFData ItemType

instance Prelude.ToByteString ItemType

instance Prelude.ToQuery ItemType

instance Prelude.ToHeader ItemType

instance Prelude.FromJSON ItemType where
  parseJSON = Prelude.parseJSONText "ItemType"
