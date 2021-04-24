{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        SESCancelInProgress,
        SESCancelled,
        SESCompleted,
        SESCreatingSnapshot,
        SESFailed,
        SESInitializing,
        SESReplicating,
        SESRollbackInProgress,
        SESUpdatingSchema
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SchemaExtensionStatus
  = SchemaExtensionStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SESCancelInProgress :: SchemaExtensionStatus
pattern SESCancelInProgress = SchemaExtensionStatus' "CancelInProgress"

pattern SESCancelled :: SchemaExtensionStatus
pattern SESCancelled = SchemaExtensionStatus' "Cancelled"

pattern SESCompleted :: SchemaExtensionStatus
pattern SESCompleted = SchemaExtensionStatus' "Completed"

pattern SESCreatingSnapshot :: SchemaExtensionStatus
pattern SESCreatingSnapshot = SchemaExtensionStatus' "CreatingSnapshot"

pattern SESFailed :: SchemaExtensionStatus
pattern SESFailed = SchemaExtensionStatus' "Failed"

pattern SESInitializing :: SchemaExtensionStatus
pattern SESInitializing = SchemaExtensionStatus' "Initializing"

pattern SESReplicating :: SchemaExtensionStatus
pattern SESReplicating = SchemaExtensionStatus' "Replicating"

pattern SESRollbackInProgress :: SchemaExtensionStatus
pattern SESRollbackInProgress = SchemaExtensionStatus' "RollbackInProgress"

pattern SESUpdatingSchema :: SchemaExtensionStatus
pattern SESUpdatingSchema = SchemaExtensionStatus' "UpdatingSchema"

{-# COMPLETE
  SESCancelInProgress,
  SESCancelled,
  SESCompleted,
  SESCreatingSnapshot,
  SESFailed,
  SESInitializing,
  SESReplicating,
  SESRollbackInProgress,
  SESUpdatingSchema,
  SchemaExtensionStatus'
  #-}

instance FromText SchemaExtensionStatus where
  parser = (SchemaExtensionStatus' . mk) <$> takeText

instance ToText SchemaExtensionStatus where
  toText (SchemaExtensionStatus' ci) = original ci

instance Hashable SchemaExtensionStatus

instance NFData SchemaExtensionStatus

instance ToByteString SchemaExtensionStatus

instance ToQuery SchemaExtensionStatus

instance ToHeader SchemaExtensionStatus

instance FromJSON SchemaExtensionStatus where
  parseJSON = parseJSONText "SchemaExtensionStatus"
