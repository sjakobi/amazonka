{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuditTaskType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditTaskType
  ( AuditTaskType
      ( ..,
        OnDemandAuditTask,
        ScheduledAuditTask
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuditTaskType = AuditTaskType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OnDemandAuditTask :: AuditTaskType
pattern OnDemandAuditTask = AuditTaskType' "ON_DEMAND_AUDIT_TASK"

pattern ScheduledAuditTask :: AuditTaskType
pattern ScheduledAuditTask = AuditTaskType' "SCHEDULED_AUDIT_TASK"

{-# COMPLETE
  OnDemandAuditTask,
  ScheduledAuditTask,
  AuditTaskType'
  #-}

instance FromText AuditTaskType where
  parser = (AuditTaskType' . mk) <$> takeText

instance ToText AuditTaskType where
  toText (AuditTaskType' ci) = original ci

instance Hashable AuditTaskType

instance NFData AuditTaskType

instance ToByteString AuditTaskType

instance ToQuery AuditTaskType

instance ToHeader AuditTaskType

instance ToJSON AuditTaskType where
  toJSON = toJSONText

instance FromJSON AuditTaskType where
  parseJSON = parseJSONText "AuditTaskType"
