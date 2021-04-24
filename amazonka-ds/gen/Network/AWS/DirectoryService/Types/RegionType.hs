{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.RegionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RegionType
  ( RegionType
      ( ..,
        Additional,
        Primary
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RegionType = RegionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Additional :: RegionType
pattern Additional = RegionType' "Additional"

pattern Primary :: RegionType
pattern Primary = RegionType' "Primary"

{-# COMPLETE
  Additional,
  Primary,
  RegionType'
  #-}

instance FromText RegionType where
  parser = (RegionType' . mk) <$> takeText

instance ToText RegionType where
  toText (RegionType' ci) = original ci

instance Hashable RegionType

instance NFData RegionType

instance ToByteString RegionType

instance ToQuery RegionType

instance ToHeader RegionType

instance FromJSON RegionType where
  parseJSON = parseJSONText "RegionType"
