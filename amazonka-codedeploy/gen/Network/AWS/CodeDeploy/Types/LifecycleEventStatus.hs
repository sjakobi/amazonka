{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.LifecycleEventStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.LifecycleEventStatus
  ( LifecycleEventStatus
      ( ..,
        LESFailed,
        LESInProgress,
        LESPending,
        LESSkipped,
        LESSucceeded,
        LESUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LifecycleEventStatus
  = LifecycleEventStatus'
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

pattern LESFailed :: LifecycleEventStatus
pattern LESFailed = LifecycleEventStatus' "Failed"

pattern LESInProgress :: LifecycleEventStatus
pattern LESInProgress = LifecycleEventStatus' "InProgress"

pattern LESPending :: LifecycleEventStatus
pattern LESPending = LifecycleEventStatus' "Pending"

pattern LESSkipped :: LifecycleEventStatus
pattern LESSkipped = LifecycleEventStatus' "Skipped"

pattern LESSucceeded :: LifecycleEventStatus
pattern LESSucceeded = LifecycleEventStatus' "Succeeded"

pattern LESUnknown :: LifecycleEventStatus
pattern LESUnknown = LifecycleEventStatus' "Unknown"

{-# COMPLETE
  LESFailed,
  LESInProgress,
  LESPending,
  LESSkipped,
  LESSucceeded,
  LESUnknown,
  LifecycleEventStatus'
  #-}

instance FromText LifecycleEventStatus where
  parser = (LifecycleEventStatus' . mk) <$> takeText

instance ToText LifecycleEventStatus where
  toText (LifecycleEventStatus' ci) = original ci

instance Hashable LifecycleEventStatus

instance NFData LifecycleEventStatus

instance ToByteString LifecycleEventStatus

instance ToQuery LifecycleEventStatus

instance ToHeader LifecycleEventStatus

instance ToJSON LifecycleEventStatus where
  toJSON = toJSONText

instance FromJSON LifecycleEventStatus where
  parseJSON = parseJSONText "LifecycleEventStatus"
