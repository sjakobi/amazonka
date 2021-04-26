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
-- Module      : Network.AWS.DynamoDB.Types.BackupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BackupStatus
  ( BackupStatus
      ( ..,
        BackupStatusAVAILABLE,
        BackupStatusCREATING,
        BackupStatusDELETED
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

pattern BackupStatusAVAILABLE :: BackupStatus
pattern BackupStatusAVAILABLE = BackupStatus' "AVAILABLE"

pattern BackupStatusCREATING :: BackupStatus
pattern BackupStatusCREATING = BackupStatus' "CREATING"

pattern BackupStatusDELETED :: BackupStatus
pattern BackupStatusDELETED = BackupStatus' "DELETED"

{-# COMPLETE
  BackupStatusAVAILABLE,
  BackupStatusCREATING,
  BackupStatusDELETED,
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

instance Prelude.FromJSON BackupStatus where
  parseJSON = Prelude.parseJSONText "BackupStatus"
