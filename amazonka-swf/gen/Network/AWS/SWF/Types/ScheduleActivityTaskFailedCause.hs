{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ScheduleActivityTaskFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ScheduleActivityTaskFailedCause
  ( ScheduleActivityTaskFailedCause
      ( ..,
        ActivityCreationRateExceeded,
        ActivityIdAlreadyInUse,
        ActivityTypeDeprecated,
        ActivityTypeDoesNotExist,
        DefaultHeartbeatTimeoutUndefined,
        DefaultScheduleToCloseTimeoutUndefined,
        DefaultScheduleToStartTimeoutUndefined,
        DefaultStartToCloseTimeoutUndefined,
        DefaultTaskListUndefined,
        OpenActivitiesLimitExceeded,
        OperationNotPermitted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScheduleActivityTaskFailedCause
  = ScheduleActivityTaskFailedCause'
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

pattern ActivityCreationRateExceeded :: ScheduleActivityTaskFailedCause
pattern ActivityCreationRateExceeded = ScheduleActivityTaskFailedCause' "ACTIVITY_CREATION_RATE_EXCEEDED"

pattern ActivityIdAlreadyInUse :: ScheduleActivityTaskFailedCause
pattern ActivityIdAlreadyInUse = ScheduleActivityTaskFailedCause' "ACTIVITY_ID_ALREADY_IN_USE"

pattern ActivityTypeDeprecated :: ScheduleActivityTaskFailedCause
pattern ActivityTypeDeprecated = ScheduleActivityTaskFailedCause' "ACTIVITY_TYPE_DEPRECATED"

pattern ActivityTypeDoesNotExist :: ScheduleActivityTaskFailedCause
pattern ActivityTypeDoesNotExist = ScheduleActivityTaskFailedCause' "ACTIVITY_TYPE_DOES_NOT_EXIST"

pattern DefaultHeartbeatTimeoutUndefined :: ScheduleActivityTaskFailedCause
pattern DefaultHeartbeatTimeoutUndefined = ScheduleActivityTaskFailedCause' "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED"

pattern DefaultScheduleToCloseTimeoutUndefined :: ScheduleActivityTaskFailedCause
pattern DefaultScheduleToCloseTimeoutUndefined = ScheduleActivityTaskFailedCause' "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern DefaultScheduleToStartTimeoutUndefined :: ScheduleActivityTaskFailedCause
pattern DefaultScheduleToStartTimeoutUndefined = ScheduleActivityTaskFailedCause' "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED"

pattern DefaultStartToCloseTimeoutUndefined :: ScheduleActivityTaskFailedCause
pattern DefaultStartToCloseTimeoutUndefined = ScheduleActivityTaskFailedCause' "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern DefaultTaskListUndefined :: ScheduleActivityTaskFailedCause
pattern DefaultTaskListUndefined = ScheduleActivityTaskFailedCause' "DEFAULT_TASK_LIST_UNDEFINED"

pattern OpenActivitiesLimitExceeded :: ScheduleActivityTaskFailedCause
pattern OpenActivitiesLimitExceeded = ScheduleActivityTaskFailedCause' "OPEN_ACTIVITIES_LIMIT_EXCEEDED"

pattern OperationNotPermitted :: ScheduleActivityTaskFailedCause
pattern OperationNotPermitted = ScheduleActivityTaskFailedCause' "OPERATION_NOT_PERMITTED"

{-# COMPLETE
  ActivityCreationRateExceeded,
  ActivityIdAlreadyInUse,
  ActivityTypeDeprecated,
  ActivityTypeDoesNotExist,
  DefaultHeartbeatTimeoutUndefined,
  DefaultScheduleToCloseTimeoutUndefined,
  DefaultScheduleToStartTimeoutUndefined,
  DefaultStartToCloseTimeoutUndefined,
  DefaultTaskListUndefined,
  OpenActivitiesLimitExceeded,
  OperationNotPermitted,
  ScheduleActivityTaskFailedCause'
  #-}

instance FromText ScheduleActivityTaskFailedCause where
  parser = (ScheduleActivityTaskFailedCause' . mk) <$> takeText

instance ToText ScheduleActivityTaskFailedCause where
  toText (ScheduleActivityTaskFailedCause' ci) = original ci

instance Hashable ScheduleActivityTaskFailedCause

instance NFData ScheduleActivityTaskFailedCause

instance ToByteString ScheduleActivityTaskFailedCause

instance ToQuery ScheduleActivityTaskFailedCause

instance ToHeader ScheduleActivityTaskFailedCause

instance FromJSON ScheduleActivityTaskFailedCause where
  parseJSON = parseJSONText "ScheduleActivityTaskFailedCause"
