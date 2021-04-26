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
-- Module      : Network.AWS.Lightsail.Types.AutoSnapshotStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.AutoSnapshotStatus
  ( AutoSnapshotStatus
      ( ..,
        AutoSnapshotStatusFailed,
        AutoSnapshotStatusInProgress,
        AutoSnapshotStatusNotFound,
        AutoSnapshotStatusSuccess
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoSnapshotStatus = AutoSnapshotStatus'
  { fromAutoSnapshotStatus ::
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

pattern AutoSnapshotStatusFailed :: AutoSnapshotStatus
pattern AutoSnapshotStatusFailed = AutoSnapshotStatus' "Failed"

pattern AutoSnapshotStatusInProgress :: AutoSnapshotStatus
pattern AutoSnapshotStatusInProgress = AutoSnapshotStatus' "InProgress"

pattern AutoSnapshotStatusNotFound :: AutoSnapshotStatus
pattern AutoSnapshotStatusNotFound = AutoSnapshotStatus' "NotFound"

pattern AutoSnapshotStatusSuccess :: AutoSnapshotStatus
pattern AutoSnapshotStatusSuccess = AutoSnapshotStatus' "Success"

{-# COMPLETE
  AutoSnapshotStatusFailed,
  AutoSnapshotStatusInProgress,
  AutoSnapshotStatusNotFound,
  AutoSnapshotStatusSuccess,
  AutoSnapshotStatus'
  #-}

instance Prelude.FromText AutoSnapshotStatus where
  parser = AutoSnapshotStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoSnapshotStatus where
  toText (AutoSnapshotStatus' x) = x

instance Prelude.Hashable AutoSnapshotStatus

instance Prelude.NFData AutoSnapshotStatus

instance Prelude.ToByteString AutoSnapshotStatus

instance Prelude.ToQuery AutoSnapshotStatus

instance Prelude.ToHeader AutoSnapshotStatus

instance Prelude.FromJSON AutoSnapshotStatus where
  parseJSON = Prelude.parseJSONText "AutoSnapshotStatus"
