{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuditTaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditTaskStatus
  ( AuditTaskStatus
      ( ..,
        ATSCanceled,
        ATSCompleted,
        ATSFailed,
        ATSInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuditTaskStatus = AuditTaskStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ATSCanceled :: AuditTaskStatus
pattern ATSCanceled = AuditTaskStatus' "CANCELED"

pattern ATSCompleted :: AuditTaskStatus
pattern ATSCompleted = AuditTaskStatus' "COMPLETED"

pattern ATSFailed :: AuditTaskStatus
pattern ATSFailed = AuditTaskStatus' "FAILED"

pattern ATSInProgress :: AuditTaskStatus
pattern ATSInProgress = AuditTaskStatus' "IN_PROGRESS"

{-# COMPLETE
  ATSCanceled,
  ATSCompleted,
  ATSFailed,
  ATSInProgress,
  AuditTaskStatus'
  #-}

instance FromText AuditTaskStatus where
  parser = (AuditTaskStatus' . mk) <$> takeText

instance ToText AuditTaskStatus where
  toText (AuditTaskStatus' ci) = original ci

instance Hashable AuditTaskStatus

instance NFData AuditTaskStatus

instance ToByteString AuditTaskStatus

instance ToQuery AuditTaskStatus

instance ToHeader AuditTaskStatus

instance ToJSON AuditTaskStatus where
  toJSON = toJSONText

instance FromJSON AuditTaskStatus where
  parseJSON = parseJSONText "AuditTaskStatus"
