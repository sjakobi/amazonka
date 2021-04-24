{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ExecutionStatus
  ( ExecutionStatus
      ( ..,
        ESCompleted,
        ESCompletedWithViolations,
        ESFailed,
        ESInProgress,
        ESPending,
        ESStopped,
        ESStopping
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

pattern ESCompleted :: ExecutionStatus
pattern ESCompleted = ExecutionStatus' "Completed"

pattern ESCompletedWithViolations :: ExecutionStatus
pattern ESCompletedWithViolations = ExecutionStatus' "CompletedWithViolations"

pattern ESFailed :: ExecutionStatus
pattern ESFailed = ExecutionStatus' "Failed"

pattern ESInProgress :: ExecutionStatus
pattern ESInProgress = ExecutionStatus' "InProgress"

pattern ESPending :: ExecutionStatus
pattern ESPending = ExecutionStatus' "Pending"

pattern ESStopped :: ExecutionStatus
pattern ESStopped = ExecutionStatus' "Stopped"

pattern ESStopping :: ExecutionStatus
pattern ESStopping = ExecutionStatus' "Stopping"

{-# COMPLETE
  ESCompleted,
  ESCompletedWithViolations,
  ESFailed,
  ESInProgress,
  ESPending,
  ESStopped,
  ESStopping,
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
