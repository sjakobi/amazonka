{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.DiskSnapshotState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.DiskSnapshotState
  ( DiskSnapshotState
      ( ..,
        DSSCompleted,
        DSSError',
        DSSPending,
        DSSUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DiskSnapshotState = DiskSnapshotState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DSSCompleted :: DiskSnapshotState
pattern DSSCompleted = DiskSnapshotState' "completed"

pattern DSSError' :: DiskSnapshotState
pattern DSSError' = DiskSnapshotState' "error"

pattern DSSPending :: DiskSnapshotState
pattern DSSPending = DiskSnapshotState' "pending"

pattern DSSUnknown :: DiskSnapshotState
pattern DSSUnknown = DiskSnapshotState' "unknown"

{-# COMPLETE
  DSSCompleted,
  DSSError',
  DSSPending,
  DSSUnknown,
  DiskSnapshotState'
  #-}

instance FromText DiskSnapshotState where
  parser = (DiskSnapshotState' . mk) <$> takeText

instance ToText DiskSnapshotState where
  toText (DiskSnapshotState' ci) = original ci

instance Hashable DiskSnapshotState

instance NFData DiskSnapshotState

instance ToByteString DiskSnapshotState

instance ToQuery DiskSnapshotState

instance ToHeader DiskSnapshotState

instance FromJSON DiskSnapshotState where
  parseJSON = parseJSONText "DiskSnapshotState"
