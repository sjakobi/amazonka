{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.TargetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TargetStatus
  ( TargetStatus
      ( ..,
        TSFailed,
        TSInProgress,
        TSPending,
        TSReady,
        TSSkipped,
        TSSucceeded,
        TSUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetStatus = TargetStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TSFailed :: TargetStatus
pattern TSFailed = TargetStatus' "Failed"

pattern TSInProgress :: TargetStatus
pattern TSInProgress = TargetStatus' "InProgress"

pattern TSPending :: TargetStatus
pattern TSPending = TargetStatus' "Pending"

pattern TSReady :: TargetStatus
pattern TSReady = TargetStatus' "Ready"

pattern TSSkipped :: TargetStatus
pattern TSSkipped = TargetStatus' "Skipped"

pattern TSSucceeded :: TargetStatus
pattern TSSucceeded = TargetStatus' "Succeeded"

pattern TSUnknown :: TargetStatus
pattern TSUnknown = TargetStatus' "Unknown"

{-# COMPLETE
  TSFailed,
  TSInProgress,
  TSPending,
  TSReady,
  TSSkipped,
  TSSucceeded,
  TSUnknown,
  TargetStatus'
  #-}

instance FromText TargetStatus where
  parser = (TargetStatus' . mk) <$> takeText

instance ToText TargetStatus where
  toText (TargetStatus' ci) = original ci

instance Hashable TargetStatus

instance NFData TargetStatus

instance ToByteString TargetStatus

instance ToQuery TargetStatus

instance ToHeader TargetStatus

instance FromJSON TargetStatus where
  parseJSON = parseJSONText "TargetStatus"
