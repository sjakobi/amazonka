{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.SnapshotType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SnapshotType
  ( SnapshotType
      ( ..,
        Auto,
        Manual
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SnapshotType = SnapshotType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Auto :: SnapshotType
pattern Auto = SnapshotType' "Auto"

pattern Manual :: SnapshotType
pattern Manual = SnapshotType' "Manual"

{-# COMPLETE
  Auto,
  Manual,
  SnapshotType'
  #-}

instance FromText SnapshotType where
  parser = (SnapshotType' . mk) <$> takeText

instance ToText SnapshotType where
  toText (SnapshotType' ci) = original ci

instance Hashable SnapshotType

instance NFData SnapshotType

instance ToByteString SnapshotType

instance ToQuery SnapshotType

instance ToHeader SnapshotType

instance FromJSON SnapshotType where
  parseJSON = parseJSONText "SnapshotType"
