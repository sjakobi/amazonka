{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.TaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.TaskStatus
  ( TaskStatus
      ( ..,
        Completed,
        Failed,
        InProgress,
        Scheduled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskStatus = TaskStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Completed :: TaskStatus
pattern Completed = TaskStatus' "completed"

pattern Failed :: TaskStatus
pattern Failed = TaskStatus' "failed"

pattern InProgress :: TaskStatus
pattern InProgress = TaskStatus' "inProgress"

pattern Scheduled :: TaskStatus
pattern Scheduled = TaskStatus' "scheduled"

{-# COMPLETE
  Completed,
  Failed,
  InProgress,
  Scheduled,
  TaskStatus'
  #-}

instance FromText TaskStatus where
  parser = (TaskStatus' . mk) <$> takeText

instance ToText TaskStatus where
  toText (TaskStatus' ci) = original ci

instance Hashable TaskStatus

instance NFData TaskStatus

instance ToByteString TaskStatus

instance ToQuery TaskStatus

instance ToHeader TaskStatus

instance ToJSON TaskStatus where
  toJSON = toJSONText

instance FromJSON TaskStatus where
  parseJSON = parseJSONText "TaskStatus"
