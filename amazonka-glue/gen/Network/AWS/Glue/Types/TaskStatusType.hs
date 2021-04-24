{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TaskStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TaskStatusType
  ( TaskStatusType
      ( ..,
        TSTFailed,
        TSTRunning,
        TSTStarting,
        TSTStopped,
        TSTStopping,
        TSTSucceeded,
        TSTTimeout
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskStatusType = TaskStatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TSTFailed :: TaskStatusType
pattern TSTFailed = TaskStatusType' "FAILED"

pattern TSTRunning :: TaskStatusType
pattern TSTRunning = TaskStatusType' "RUNNING"

pattern TSTStarting :: TaskStatusType
pattern TSTStarting = TaskStatusType' "STARTING"

pattern TSTStopped :: TaskStatusType
pattern TSTStopped = TaskStatusType' "STOPPED"

pattern TSTStopping :: TaskStatusType
pattern TSTStopping = TaskStatusType' "STOPPING"

pattern TSTSucceeded :: TaskStatusType
pattern TSTSucceeded = TaskStatusType' "SUCCEEDED"

pattern TSTTimeout :: TaskStatusType
pattern TSTTimeout = TaskStatusType' "TIMEOUT"

{-# COMPLETE
  TSTFailed,
  TSTRunning,
  TSTStarting,
  TSTStopped,
  TSTStopping,
  TSTSucceeded,
  TSTTimeout,
  TaskStatusType'
  #-}

instance FromText TaskStatusType where
  parser = (TaskStatusType' . mk) <$> takeText

instance ToText TaskStatusType where
  toText (TaskStatusType' ci) = original ci

instance Hashable TaskStatusType

instance NFData TaskStatusType

instance ToByteString TaskStatusType

instance ToQuery TaskStatusType

instance ToHeader TaskStatusType

instance ToJSON TaskStatusType where
  toJSON = toJSONText

instance FromJSON TaskStatusType where
  parseJSON = parseJSONText "TaskStatusType"
