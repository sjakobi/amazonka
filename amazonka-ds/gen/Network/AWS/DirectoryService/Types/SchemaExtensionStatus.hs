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
-- Module      : Network.AWS.DirectoryService.Types.SchemaExtensionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SchemaExtensionStatus
  ( SchemaExtensionStatus
      ( ..,
        SchemaExtensionStatusCancelInProgress,
        SchemaExtensionStatusCancelled,
        SchemaExtensionStatusCompleted,
        SchemaExtensionStatusCreatingSnapshot,
        SchemaExtensionStatusFailed,
        SchemaExtensionStatusInitializing,
        SchemaExtensionStatusReplicating,
        SchemaExtensionStatusRollbackInProgress,
        SchemaExtensionStatusUpdatingSchema
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SchemaExtensionStatus = SchemaExtensionStatus'
  { fromSchemaExtensionStatus ::
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

pattern SchemaExtensionStatusCancelInProgress :: SchemaExtensionStatus
pattern SchemaExtensionStatusCancelInProgress = SchemaExtensionStatus' "CancelInProgress"

pattern SchemaExtensionStatusCancelled :: SchemaExtensionStatus
pattern SchemaExtensionStatusCancelled = SchemaExtensionStatus' "Cancelled"

pattern SchemaExtensionStatusCompleted :: SchemaExtensionStatus
pattern SchemaExtensionStatusCompleted = SchemaExtensionStatus' "Completed"

pattern SchemaExtensionStatusCreatingSnapshot :: SchemaExtensionStatus
pattern SchemaExtensionStatusCreatingSnapshot = SchemaExtensionStatus' "CreatingSnapshot"

pattern SchemaExtensionStatusFailed :: SchemaExtensionStatus
pattern SchemaExtensionStatusFailed = SchemaExtensionStatus' "Failed"

pattern SchemaExtensionStatusInitializing :: SchemaExtensionStatus
pattern SchemaExtensionStatusInitializing = SchemaExtensionStatus' "Initializing"

pattern SchemaExtensionStatusReplicating :: SchemaExtensionStatus
pattern SchemaExtensionStatusReplicating = SchemaExtensionStatus' "Replicating"

pattern SchemaExtensionStatusRollbackInProgress :: SchemaExtensionStatus
pattern SchemaExtensionStatusRollbackInProgress = SchemaExtensionStatus' "RollbackInProgress"

pattern SchemaExtensionStatusUpdatingSchema :: SchemaExtensionStatus
pattern SchemaExtensionStatusUpdatingSchema = SchemaExtensionStatus' "UpdatingSchema"

{-# COMPLETE
  SchemaExtensionStatusCancelInProgress,
  SchemaExtensionStatusCancelled,
  SchemaExtensionStatusCompleted,
  SchemaExtensionStatusCreatingSnapshot,
  SchemaExtensionStatusFailed,
  SchemaExtensionStatusInitializing,
  SchemaExtensionStatusReplicating,
  SchemaExtensionStatusRollbackInProgress,
  SchemaExtensionStatusUpdatingSchema,
  SchemaExtensionStatus'
  #-}

instance Prelude.FromText SchemaExtensionStatus where
  parser = SchemaExtensionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SchemaExtensionStatus where
  toText (SchemaExtensionStatus' x) = x

instance Prelude.Hashable SchemaExtensionStatus

instance Prelude.NFData SchemaExtensionStatus

instance Prelude.ToByteString SchemaExtensionStatus

instance Prelude.ToQuery SchemaExtensionStatus

instance Prelude.ToHeader SchemaExtensionStatus

instance Prelude.FromJSON SchemaExtensionStatus where
  parseJSON = Prelude.parseJSONText "SchemaExtensionStatus"
