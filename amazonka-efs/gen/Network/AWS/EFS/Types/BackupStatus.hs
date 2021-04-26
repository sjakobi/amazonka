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
-- Module      : Network.AWS.EFS.Types.BackupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types.BackupStatus
  ( BackupStatus
      ( ..,
        BackupStatusDISABLED,
        BackupStatusDISABLING,
        BackupStatusENABLED,
        BackupStatusENABLING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BackupStatus = BackupStatus'
  { fromBackupStatus ::
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

pattern BackupStatusDISABLED :: BackupStatus
pattern BackupStatusDISABLED = BackupStatus' "DISABLED"

pattern BackupStatusDISABLING :: BackupStatus
pattern BackupStatusDISABLING = BackupStatus' "DISABLING"

pattern BackupStatusENABLED :: BackupStatus
pattern BackupStatusENABLED = BackupStatus' "ENABLED"

pattern BackupStatusENABLING :: BackupStatus
pattern BackupStatusENABLING = BackupStatus' "ENABLING"

{-# COMPLETE
  BackupStatusDISABLED,
  BackupStatusDISABLING,
  BackupStatusENABLED,
  BackupStatusENABLING,
  BackupStatus'
  #-}

instance Prelude.FromText BackupStatus where
  parser = BackupStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText BackupStatus where
  toText (BackupStatus' x) = x

instance Prelude.Hashable BackupStatus

instance Prelude.NFData BackupStatus

instance Prelude.ToByteString BackupStatus

instance Prelude.ToQuery BackupStatus

instance Prelude.ToHeader BackupStatus

instance Prelude.ToJSON BackupStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BackupStatus where
  parseJSON = Prelude.parseJSONText "BackupStatus"
