{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppReplicationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppReplicationStatus
  ( AppReplicationStatus
      ( ..,
        ConfigurationInProgress,
        ConfigurationInvalid,
        DeltaReplicated,
        DeltaReplicationFailed,
        DeltaReplicationInProgress,
        PartiallyReplicated,
        ReadyForConfiguration,
        ReadyForReplication,
        Replicated,
        ReplicationFailed,
        ReplicationInProgress,
        ReplicationPending,
        ReplicationStopFailed,
        ReplicationStopped,
        ReplicationStopping,
        ValidationInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppReplicationStatus
  = AppReplicationStatus'
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

pattern ConfigurationInProgress :: AppReplicationStatus
pattern ConfigurationInProgress = AppReplicationStatus' "CONFIGURATION_IN_PROGRESS"

pattern ConfigurationInvalid :: AppReplicationStatus
pattern ConfigurationInvalid = AppReplicationStatus' "CONFIGURATION_INVALID"

pattern DeltaReplicated :: AppReplicationStatus
pattern DeltaReplicated = AppReplicationStatus' "DELTA_REPLICATED"

pattern DeltaReplicationFailed :: AppReplicationStatus
pattern DeltaReplicationFailed = AppReplicationStatus' "DELTA_REPLICATION_FAILED"

pattern DeltaReplicationInProgress :: AppReplicationStatus
pattern DeltaReplicationInProgress = AppReplicationStatus' "DELTA_REPLICATION_IN_PROGRESS"

pattern PartiallyReplicated :: AppReplicationStatus
pattern PartiallyReplicated = AppReplicationStatus' "PARTIALLY_REPLICATED"

pattern ReadyForConfiguration :: AppReplicationStatus
pattern ReadyForConfiguration = AppReplicationStatus' "READY_FOR_CONFIGURATION"

pattern ReadyForReplication :: AppReplicationStatus
pattern ReadyForReplication = AppReplicationStatus' "READY_FOR_REPLICATION"

pattern Replicated :: AppReplicationStatus
pattern Replicated = AppReplicationStatus' "REPLICATED"

pattern ReplicationFailed :: AppReplicationStatus
pattern ReplicationFailed = AppReplicationStatus' "REPLICATION_FAILED"

pattern ReplicationInProgress :: AppReplicationStatus
pattern ReplicationInProgress = AppReplicationStatus' "REPLICATION_IN_PROGRESS"

pattern ReplicationPending :: AppReplicationStatus
pattern ReplicationPending = AppReplicationStatus' "REPLICATION_PENDING"

pattern ReplicationStopFailed :: AppReplicationStatus
pattern ReplicationStopFailed = AppReplicationStatus' "REPLICATION_STOP_FAILED"

pattern ReplicationStopped :: AppReplicationStatus
pattern ReplicationStopped = AppReplicationStatus' "REPLICATION_STOPPED"

pattern ReplicationStopping :: AppReplicationStatus
pattern ReplicationStopping = AppReplicationStatus' "REPLICATION_STOPPING"

pattern ValidationInProgress :: AppReplicationStatus
pattern ValidationInProgress = AppReplicationStatus' "VALIDATION_IN_PROGRESS"

{-# COMPLETE
  ConfigurationInProgress,
  ConfigurationInvalid,
  DeltaReplicated,
  DeltaReplicationFailed,
  DeltaReplicationInProgress,
  PartiallyReplicated,
  ReadyForConfiguration,
  ReadyForReplication,
  Replicated,
  ReplicationFailed,
  ReplicationInProgress,
  ReplicationPending,
  ReplicationStopFailed,
  ReplicationStopped,
  ReplicationStopping,
  ValidationInProgress,
  AppReplicationStatus'
  #-}

instance FromText AppReplicationStatus where
  parser = (AppReplicationStatus' . mk) <$> takeText

instance ToText AppReplicationStatus where
  toText (AppReplicationStatus' ci) = original ci

instance Hashable AppReplicationStatus

instance NFData AppReplicationStatus

instance ToByteString AppReplicationStatus

instance ToQuery AppReplicationStatus

instance ToHeader AppReplicationStatus

instance FromJSON AppReplicationStatus where
  parseJSON = parseJSONText "AppReplicationStatus"
