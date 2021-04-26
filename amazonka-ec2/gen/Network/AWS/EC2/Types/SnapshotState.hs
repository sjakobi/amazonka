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
-- Module      : Network.AWS.EC2.Types.SnapshotState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SnapshotState
  ( SnapshotState
      ( ..,
        SnapshotStateCompleted,
        SnapshotStateError,
        SnapshotStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype SnapshotState = SnapshotState'
  { fromSnapshotState ::
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

pattern SnapshotStateCompleted :: SnapshotState
pattern SnapshotStateCompleted = SnapshotState' "completed"

pattern SnapshotStateError :: SnapshotState
pattern SnapshotStateError = SnapshotState' "error"

pattern SnapshotStatePending :: SnapshotState
pattern SnapshotStatePending = SnapshotState' "pending"

{-# COMPLETE
  SnapshotStateCompleted,
  SnapshotStateError,
  SnapshotStatePending,
  SnapshotState'
  #-}

instance Prelude.FromText SnapshotState where
  parser = SnapshotState' Prelude.<$> Prelude.takeText

instance Prelude.ToText SnapshotState where
  toText (SnapshotState' x) = x

instance Prelude.Hashable SnapshotState

instance Prelude.NFData SnapshotState

instance Prelude.ToByteString SnapshotState

instance Prelude.ToQuery SnapshotState

instance Prelude.ToHeader SnapshotState

instance Prelude.FromXML SnapshotState where
  parseXML = Prelude.parseXMLText "SnapshotState"
