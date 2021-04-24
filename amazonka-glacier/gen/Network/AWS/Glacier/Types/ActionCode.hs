{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.ActionCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.ActionCode
  ( ActionCode
      ( ..,
        ArchiveRetrieval,
        InventoryRetrieval,
        Select
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionCode = ActionCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ArchiveRetrieval :: ActionCode
pattern ArchiveRetrieval = ActionCode' "ArchiveRetrieval"

pattern InventoryRetrieval :: ActionCode
pattern InventoryRetrieval = ActionCode' "InventoryRetrieval"

pattern Select :: ActionCode
pattern Select = ActionCode' "Select"

{-# COMPLETE
  ArchiveRetrieval,
  InventoryRetrieval,
  Select,
  ActionCode'
  #-}

instance FromText ActionCode where
  parser = (ActionCode' . mk) <$> takeText

instance ToText ActionCode where
  toText (ActionCode' ci) = original ci

instance Hashable ActionCode

instance NFData ActionCode

instance ToByteString ActionCode

instance ToQuery ActionCode

instance ToHeader ActionCode

instance FromJSON ActionCode where
  parseJSON = parseJSONText "ActionCode"
