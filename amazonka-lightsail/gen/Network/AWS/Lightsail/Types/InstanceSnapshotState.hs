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
-- Module      : Network.AWS.Lightsail.Types.InstanceSnapshotState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceSnapshotState
  ( InstanceSnapshotState
      ( ..,
        InstanceSnapshotStateAvailable,
        InstanceSnapshotStateError,
        InstanceSnapshotStatePending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceSnapshotState = InstanceSnapshotState'
  { fromInstanceSnapshotState ::
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

pattern InstanceSnapshotStateAvailable :: InstanceSnapshotState
pattern InstanceSnapshotStateAvailable = InstanceSnapshotState' "available"

pattern InstanceSnapshotStateError :: InstanceSnapshotState
pattern InstanceSnapshotStateError = InstanceSnapshotState' "error"

pattern InstanceSnapshotStatePending :: InstanceSnapshotState
pattern InstanceSnapshotStatePending = InstanceSnapshotState' "pending"

{-# COMPLETE
  InstanceSnapshotStateAvailable,
  InstanceSnapshotStateError,
  InstanceSnapshotStatePending,
  InstanceSnapshotState'
  #-}

instance Prelude.FromText InstanceSnapshotState where
  parser = InstanceSnapshotState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceSnapshotState where
  toText (InstanceSnapshotState' x) = x

instance Prelude.Hashable InstanceSnapshotState

instance Prelude.NFData InstanceSnapshotState

instance Prelude.ToByteString InstanceSnapshotState

instance Prelude.ToQuery InstanceSnapshotState

instance Prelude.ToHeader InstanceSnapshotState

instance Prelude.FromJSON InstanceSnapshotState where
  parseJSON = Prelude.parseJSONText "InstanceSnapshotState"
