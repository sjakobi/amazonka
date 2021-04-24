{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuditMitigationActionsExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditMitigationActionsExecutionStatus
  ( AuditMitigationActionsExecutionStatus
      ( ..,
        AMAESCanceled,
        AMAESCompleted,
        AMAESFailed,
        AMAESInProgress,
        AMAESPending,
        AMAESSkipped
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuditMitigationActionsExecutionStatus
  = AuditMitigationActionsExecutionStatus'
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

pattern AMAESCanceled :: AuditMitigationActionsExecutionStatus
pattern AMAESCanceled = AuditMitigationActionsExecutionStatus' "CANCELED"

pattern AMAESCompleted :: AuditMitigationActionsExecutionStatus
pattern AMAESCompleted = AuditMitigationActionsExecutionStatus' "COMPLETED"

pattern AMAESFailed :: AuditMitigationActionsExecutionStatus
pattern AMAESFailed = AuditMitigationActionsExecutionStatus' "FAILED"

pattern AMAESInProgress :: AuditMitigationActionsExecutionStatus
pattern AMAESInProgress = AuditMitigationActionsExecutionStatus' "IN_PROGRESS"

pattern AMAESPending :: AuditMitigationActionsExecutionStatus
pattern AMAESPending = AuditMitigationActionsExecutionStatus' "PENDING"

pattern AMAESSkipped :: AuditMitigationActionsExecutionStatus
pattern AMAESSkipped = AuditMitigationActionsExecutionStatus' "SKIPPED"

{-# COMPLETE
  AMAESCanceled,
  AMAESCompleted,
  AMAESFailed,
  AMAESInProgress,
  AMAESPending,
  AMAESSkipped,
  AuditMitigationActionsExecutionStatus'
  #-}

instance FromText AuditMitigationActionsExecutionStatus where
  parser = (AuditMitigationActionsExecutionStatus' . mk) <$> takeText

instance ToText AuditMitigationActionsExecutionStatus where
  toText (AuditMitigationActionsExecutionStatus' ci) = original ci

instance Hashable AuditMitigationActionsExecutionStatus

instance NFData AuditMitigationActionsExecutionStatus

instance ToByteString AuditMitigationActionsExecutionStatus

instance ToQuery AuditMitigationActionsExecutionStatus

instance ToHeader AuditMitigationActionsExecutionStatus

instance ToJSON AuditMitigationActionsExecutionStatus where
  toJSON = toJSONText

instance FromJSON AuditMitigationActionsExecutionStatus where
  parseJSON = parseJSONText "AuditMitigationActionsExecutionStatus"
