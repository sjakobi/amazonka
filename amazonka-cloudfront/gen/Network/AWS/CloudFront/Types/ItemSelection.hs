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
-- Module      : Network.AWS.CloudFront.Types.ItemSelection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.ItemSelection
  ( ItemSelection
      ( ..,
        ItemSelectionAll,
        ItemSelectionNone,
        ItemSelectionWhitelist
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ItemSelection = ItemSelection'
  { fromItemSelection ::
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

pattern ItemSelectionAll :: ItemSelection
pattern ItemSelectionAll = ItemSelection' "all"

pattern ItemSelectionNone :: ItemSelection
pattern ItemSelectionNone = ItemSelection' "none"

pattern ItemSelectionWhitelist :: ItemSelection
pattern ItemSelectionWhitelist = ItemSelection' "whitelist"

{-# COMPLETE
  ItemSelectionAll,
  ItemSelectionNone,
  ItemSelectionWhitelist,
  ItemSelection'
  #-}

instance Prelude.FromText ItemSelection where
  parser = ItemSelection' Prelude.<$> Prelude.takeText

instance Prelude.ToText ItemSelection where
  toText (ItemSelection' x) = x

instance Prelude.Hashable ItemSelection

instance Prelude.NFData ItemSelection

instance Prelude.ToByteString ItemSelection

instance Prelude.ToQuery ItemSelection

instance Prelude.ToHeader ItemSelection

instance Prelude.FromXML ItemSelection where
  parseXML = Prelude.parseXMLText "ItemSelection"

instance Prelude.ToXML ItemSelection where
  toXML = Prelude.toXMLText
