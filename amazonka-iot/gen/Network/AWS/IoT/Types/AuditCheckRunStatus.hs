{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuditCheckRunStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditCheckRunStatus
  ( AuditCheckRunStatus
      ( ..,
        Canceled,
        CompletedCompliant,
        CompletedNonCompliant,
        Failed,
        InProgress,
        WaitingForDataCollection
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuditCheckRunStatus
  = AuditCheckRunStatus'
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

pattern Canceled :: AuditCheckRunStatus
pattern Canceled = AuditCheckRunStatus' "CANCELED"

pattern CompletedCompliant :: AuditCheckRunStatus
pattern CompletedCompliant = AuditCheckRunStatus' "COMPLETED_COMPLIANT"

pattern CompletedNonCompliant :: AuditCheckRunStatus
pattern CompletedNonCompliant = AuditCheckRunStatus' "COMPLETED_NON_COMPLIANT"

pattern Failed :: AuditCheckRunStatus
pattern Failed = AuditCheckRunStatus' "FAILED"

pattern InProgress :: AuditCheckRunStatus
pattern InProgress = AuditCheckRunStatus' "IN_PROGRESS"

pattern WaitingForDataCollection :: AuditCheckRunStatus
pattern WaitingForDataCollection = AuditCheckRunStatus' "WAITING_FOR_DATA_COLLECTION"

{-# COMPLETE
  Canceled,
  CompletedCompliant,
  CompletedNonCompliant,
  Failed,
  InProgress,
  WaitingForDataCollection,
  AuditCheckRunStatus'
  #-}

instance FromText AuditCheckRunStatus where
  parser = (AuditCheckRunStatus' . mk) <$> takeText

instance ToText AuditCheckRunStatus where
  toText (AuditCheckRunStatus' ci) = original ci

instance Hashable AuditCheckRunStatus

instance NFData AuditCheckRunStatus

instance ToByteString AuditCheckRunStatus

instance ToQuery AuditCheckRunStatus

instance ToHeader AuditCheckRunStatus

instance FromJSON AuditCheckRunStatus where
  parseJSON = parseJSONText "AuditCheckRunStatus"
