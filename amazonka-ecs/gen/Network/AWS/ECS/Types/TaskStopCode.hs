{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.TaskStopCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskStopCode
  ( TaskStopCode
      ( ..,
        EssentialContainerExited,
        TaskFailedToStart,
        UserInitiated
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskStopCode = TaskStopCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EssentialContainerExited :: TaskStopCode
pattern EssentialContainerExited = TaskStopCode' "EssentialContainerExited"

pattern TaskFailedToStart :: TaskStopCode
pattern TaskFailedToStart = TaskStopCode' "TaskFailedToStart"

pattern UserInitiated :: TaskStopCode
pattern UserInitiated = TaskStopCode' "UserInitiated"

{-# COMPLETE
  EssentialContainerExited,
  TaskFailedToStart,
  UserInitiated,
  TaskStopCode'
  #-}

instance FromText TaskStopCode where
  parser = (TaskStopCode' . mk) <$> takeText

instance ToText TaskStopCode where
  toText (TaskStopCode' ci) = original ci

instance Hashable TaskStopCode

instance NFData TaskStopCode

instance ToByteString TaskStopCode

instance ToQuery TaskStopCode

instance ToHeader TaskStopCode

instance FromJSON TaskStopCode where
  parseJSON = parseJSONText "TaskStopCode"
