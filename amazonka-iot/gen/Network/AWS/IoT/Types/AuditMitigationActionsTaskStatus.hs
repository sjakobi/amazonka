{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuditMitigationActionsTaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditMitigationActionsTaskStatus
  ( AuditMitigationActionsTaskStatus
      ( ..,
        AMATSCanceled,
        AMATSCompleted,
        AMATSFailed,
        AMATSInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuditMitigationActionsTaskStatus
  = AuditMitigationActionsTaskStatus'
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

pattern AMATSCanceled :: AuditMitigationActionsTaskStatus
pattern AMATSCanceled = AuditMitigationActionsTaskStatus' "CANCELED"

pattern AMATSCompleted :: AuditMitigationActionsTaskStatus
pattern AMATSCompleted = AuditMitigationActionsTaskStatus' "COMPLETED"

pattern AMATSFailed :: AuditMitigationActionsTaskStatus
pattern AMATSFailed = AuditMitigationActionsTaskStatus' "FAILED"

pattern AMATSInProgress :: AuditMitigationActionsTaskStatus
pattern AMATSInProgress = AuditMitigationActionsTaskStatus' "IN_PROGRESS"

{-# COMPLETE
  AMATSCanceled,
  AMATSCompleted,
  AMATSFailed,
  AMATSInProgress,
  AuditMitigationActionsTaskStatus'
  #-}

instance FromText AuditMitigationActionsTaskStatus where
  parser = (AuditMitigationActionsTaskStatus' . mk) <$> takeText

instance ToText AuditMitigationActionsTaskStatus where
  toText (AuditMitigationActionsTaskStatus' ci) = original ci

instance Hashable AuditMitigationActionsTaskStatus

instance NFData AuditMitigationActionsTaskStatus

instance ToByteString AuditMitigationActionsTaskStatus

instance ToQuery AuditMitigationActionsTaskStatus

instance ToHeader AuditMitigationActionsTaskStatus

instance ToJSON AuditMitigationActionsTaskStatus where
  toJSON = toJSONText

instance FromJSON AuditMitigationActionsTaskStatus where
  parseJSON = parseJSONText "AuditMitigationActionsTaskStatus"
