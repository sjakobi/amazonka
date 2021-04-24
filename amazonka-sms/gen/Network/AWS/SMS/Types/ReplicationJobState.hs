{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ReplicationJobState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ReplicationJobState
  ( ReplicationJobState
      ( ..,
        Active,
        Completed,
        Deleted,
        Deleting,
        Failed,
        Failing,
        PausedOnFailure,
        Pending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReplicationJobState
  = ReplicationJobState'
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

pattern Active :: ReplicationJobState
pattern Active = ReplicationJobState' "ACTIVE"

pattern Completed :: ReplicationJobState
pattern Completed = ReplicationJobState' "COMPLETED"

pattern Deleted :: ReplicationJobState
pattern Deleted = ReplicationJobState' "DELETED"

pattern Deleting :: ReplicationJobState
pattern Deleting = ReplicationJobState' "DELETING"

pattern Failed :: ReplicationJobState
pattern Failed = ReplicationJobState' "FAILED"

pattern Failing :: ReplicationJobState
pattern Failing = ReplicationJobState' "FAILING"

pattern PausedOnFailure :: ReplicationJobState
pattern PausedOnFailure = ReplicationJobState' "PAUSED_ON_FAILURE"

pattern Pending :: ReplicationJobState
pattern Pending = ReplicationJobState' "PENDING"

{-# COMPLETE
  Active,
  Completed,
  Deleted,
  Deleting,
  Failed,
  Failing,
  PausedOnFailure,
  Pending,
  ReplicationJobState'
  #-}

instance FromText ReplicationJobState where
  parser = (ReplicationJobState' . mk) <$> takeText

instance ToText ReplicationJobState where
  toText (ReplicationJobState' ci) = original ci

instance Hashable ReplicationJobState

instance NFData ReplicationJobState

instance ToByteString ReplicationJobState

instance ToQuery ReplicationJobState

instance ToHeader ReplicationJobState

instance FromJSON ReplicationJobState where
  parseJSON = parseJSONText "ReplicationJobState"
