{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ISAll,
        ISNone,
        ISWhitelist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ItemSelection = ItemSelection' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISAll :: ItemSelection
pattern ISAll = ItemSelection' "all"

pattern ISNone :: ItemSelection
pattern ISNone = ItemSelection' "none"

pattern ISWhitelist :: ItemSelection
pattern ISWhitelist = ItemSelection' "whitelist"

{-# COMPLETE
  ISAll,
  ISNone,
  ISWhitelist,
  ItemSelection'
  #-}

instance FromText ItemSelection where
  parser = (ItemSelection' . mk) <$> takeText

instance ToText ItemSelection where
  toText (ItemSelection' ci) = original ci

instance Hashable ItemSelection

instance NFData ItemSelection

instance ToByteString ItemSelection

instance ToQuery ItemSelection

instance ToHeader ItemSelection

instance FromXML ItemSelection where
  parseXML = parseXMLText "ItemSelection"

instance ToXML ItemSelection where
  toXML = toXMLText
