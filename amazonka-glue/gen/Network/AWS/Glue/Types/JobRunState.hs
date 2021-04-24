{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.JobRunState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.JobRunState
  ( JobRunState
      ( ..,
        Failed,
        Running,
        Starting,
        Stopped,
        Stopping,
        Succeeded,
        Timeout
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobRunState = JobRunState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: JobRunState
pattern Failed = JobRunState' "FAILED"

pattern Running :: JobRunState
pattern Running = JobRunState' "RUNNING"

pattern Starting :: JobRunState
pattern Starting = JobRunState' "STARTING"

pattern Stopped :: JobRunState
pattern Stopped = JobRunState' "STOPPED"

pattern Stopping :: JobRunState
pattern Stopping = JobRunState' "STOPPING"

pattern Succeeded :: JobRunState
pattern Succeeded = JobRunState' "SUCCEEDED"

pattern Timeout :: JobRunState
pattern Timeout = JobRunState' "TIMEOUT"

{-# COMPLETE
  Failed,
  Running,
  Starting,
  Stopped,
  Stopping,
  Succeeded,
  Timeout,
  JobRunState'
  #-}

instance FromText JobRunState where
  parser = (JobRunState' . mk) <$> takeText

instance ToText JobRunState where
  toText (JobRunState' ci) = original ci

instance Hashable JobRunState

instance NFData JobRunState

instance ToByteString JobRunState

instance ToQuery JobRunState

instance ToHeader JobRunState

instance ToJSON JobRunState where
  toJSON = toJSONText

instance FromJSON JobRunState where
  parseJSON = parseJSONText "JobRunState"
