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
-- Module      : Network.AWS.DirectoryService.Types.SnapshotStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SnapshotStatus
  ( SnapshotStatus
      ( ..,
        SnapshotStatusCompleted,
        SnapshotStatusCreating,
        SnapshotStatusFailed
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SnapshotStatus = SnapshotStatus'
  { fromSnapshotStatus ::
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

pattern SnapshotStatusCompleted :: SnapshotStatus
pattern SnapshotStatusCompleted = SnapshotStatus' "Completed"

pattern SnapshotStatusCreating :: SnapshotStatus
pattern SnapshotStatusCreating = SnapshotStatus' "Creating"

pattern SnapshotStatusFailed :: SnapshotStatus
pattern SnapshotStatusFailed = SnapshotStatus' "Failed"

{-# COMPLETE
  SnapshotStatusCompleted,
  SnapshotStatusCreating,
  SnapshotStatusFailed,
  SnapshotStatus'
  #-}

instance Prelude.FromText SnapshotStatus where
  parser = SnapshotStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SnapshotStatus where
  toText (SnapshotStatus' x) = x

instance Prelude.Hashable SnapshotStatus

instance Prelude.NFData SnapshotStatus

instance Prelude.ToByteString SnapshotStatus

instance Prelude.ToQuery SnapshotStatus

instance Prelude.ToHeader SnapshotStatus

instance Prelude.FromJSON SnapshotStatus where
  parseJSON = Prelude.parseJSONText "SnapshotStatus"
