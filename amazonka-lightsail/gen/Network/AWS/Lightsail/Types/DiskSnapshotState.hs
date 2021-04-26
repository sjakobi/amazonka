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
-- Module      : Network.AWS.Lightsail.Types.DiskSnapshotState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.DiskSnapshotState
  ( DiskSnapshotState
      ( ..,
        DiskSnapshotStateCompleted,
        DiskSnapshotStateError,
        DiskSnapshotStatePending,
        DiskSnapshotStateUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DiskSnapshotState = DiskSnapshotState'
  { fromDiskSnapshotState ::
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

pattern DiskSnapshotStateCompleted :: DiskSnapshotState
pattern DiskSnapshotStateCompleted = DiskSnapshotState' "completed"

pattern DiskSnapshotStateError :: DiskSnapshotState
pattern DiskSnapshotStateError = DiskSnapshotState' "error"

pattern DiskSnapshotStatePending :: DiskSnapshotState
pattern DiskSnapshotStatePending = DiskSnapshotState' "pending"

pattern DiskSnapshotStateUnknown :: DiskSnapshotState
pattern DiskSnapshotStateUnknown = DiskSnapshotState' "unknown"

{-# COMPLETE
  DiskSnapshotStateCompleted,
  DiskSnapshotStateError,
  DiskSnapshotStatePending,
  DiskSnapshotStateUnknown,
  DiskSnapshotState'
  #-}

instance Prelude.FromText DiskSnapshotState where
  parser = DiskSnapshotState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DiskSnapshotState where
  toText (DiskSnapshotState' x) = x

instance Prelude.Hashable DiskSnapshotState

instance Prelude.NFData DiskSnapshotState

instance Prelude.ToByteString DiskSnapshotState

instance Prelude.ToQuery DiskSnapshotState

instance Prelude.ToHeader DiskSnapshotState

instance Prelude.FromJSON DiskSnapshotState where
  parseJSON = Prelude.parseJSONText "DiskSnapshotState"
