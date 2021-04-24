{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.ActionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ActionStatus
  ( ActionStatus
      ( ..,
        ExecutionFailure,
        ExecutionInProgress,
        ExecutionSuccess,
        Pending,
        ResetFailure,
        ResetInProgress,
        ReverseFailure,
        ReverseInProgress,
        ReverseSuccess,
        Standby
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionStatus = ActionStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ExecutionFailure :: ActionStatus
pattern ExecutionFailure = ActionStatus' "EXECUTION_FAILURE"

pattern ExecutionInProgress :: ActionStatus
pattern ExecutionInProgress = ActionStatus' "EXECUTION_IN_PROGRESS"

pattern ExecutionSuccess :: ActionStatus
pattern ExecutionSuccess = ActionStatus' "EXECUTION_SUCCESS"

pattern Pending :: ActionStatus
pattern Pending = ActionStatus' "PENDING"

pattern ResetFailure :: ActionStatus
pattern ResetFailure = ActionStatus' "RESET_FAILURE"

pattern ResetInProgress :: ActionStatus
pattern ResetInProgress = ActionStatus' "RESET_IN_PROGRESS"

pattern ReverseFailure :: ActionStatus
pattern ReverseFailure = ActionStatus' "REVERSE_FAILURE"

pattern ReverseInProgress :: ActionStatus
pattern ReverseInProgress = ActionStatus' "REVERSE_IN_PROGRESS"

pattern ReverseSuccess :: ActionStatus
pattern ReverseSuccess = ActionStatus' "REVERSE_SUCCESS"

pattern Standby :: ActionStatus
pattern Standby = ActionStatus' "STANDBY"

{-# COMPLETE
  ExecutionFailure,
  ExecutionInProgress,
  ExecutionSuccess,
  Pending,
  ResetFailure,
  ResetInProgress,
  ReverseFailure,
  ReverseInProgress,
  ReverseSuccess,
  Standby,
  ActionStatus'
  #-}

instance FromText ActionStatus where
  parser = (ActionStatus' . mk) <$> takeText

instance ToText ActionStatus where
  toText (ActionStatus' ci) = original ci

instance Hashable ActionStatus

instance NFData ActionStatus

instance ToByteString ActionStatus

instance ToQuery ActionStatus

instance ToHeader ActionStatus

instance FromJSON ActionStatus where
  parseJSON = parseJSONText "ActionStatus"
