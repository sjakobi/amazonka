{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.SnapshotStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SnapshotStatus
  ( SnapshotStatus
      ( ..,
        SSCompleted,
        SSCreating,
        SSFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SnapshotStatus = SnapshotStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSCompleted :: SnapshotStatus
pattern SSCompleted = SnapshotStatus' "Completed"

pattern SSCreating :: SnapshotStatus
pattern SSCreating = SnapshotStatus' "Creating"

pattern SSFailed :: SnapshotStatus
pattern SSFailed = SnapshotStatus' "Failed"

{-# COMPLETE
  SSCompleted,
  SSCreating,
  SSFailed,
  SnapshotStatus'
  #-}

instance FromText SnapshotStatus where
  parser = (SnapshotStatus' . mk) <$> takeText

instance ToText SnapshotStatus where
  toText (SnapshotStatus' ci) = original ci

instance Hashable SnapshotStatus

instance NFData SnapshotStatus

instance ToByteString SnapshotStatus

instance ToQuery SnapshotStatus

instance ToHeader SnapshotStatus

instance FromJSON SnapshotStatus where
  parseJSON = parseJSONText "SnapshotStatus"
