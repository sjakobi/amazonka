{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.ExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.ExecutionStatus
  ( ExecutionStatus
      ( ..,
        Aborted,
        Failed,
        Running,
        Succeeded,
        TimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionStatus = ExecutionStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Aborted :: ExecutionStatus
pattern Aborted = ExecutionStatus' "ABORTED"

pattern Failed :: ExecutionStatus
pattern Failed = ExecutionStatus' "FAILED"

pattern Running :: ExecutionStatus
pattern Running = ExecutionStatus' "RUNNING"

pattern Succeeded :: ExecutionStatus
pattern Succeeded = ExecutionStatus' "SUCCEEDED"

pattern TimedOut :: ExecutionStatus
pattern TimedOut = ExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  Aborted,
  Failed,
  Running,
  Succeeded,
  TimedOut,
  ExecutionStatus'
  #-}

instance FromText ExecutionStatus where
  parser = (ExecutionStatus' . mk) <$> takeText

instance ToText ExecutionStatus where
  toText (ExecutionStatus' ci) = original ci

instance Hashable ExecutionStatus

instance NFData ExecutionStatus

instance ToByteString ExecutionStatus

instance ToQuery ExecutionStatus

instance ToHeader ExecutionStatus

instance ToJSON ExecutionStatus where
  toJSON = toJSONText

instance FromJSON ExecutionStatus where
  parseJSON = parseJSONText "ExecutionStatus"
