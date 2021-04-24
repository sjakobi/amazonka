{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ActionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ActionStatus
  ( ActionStatus
      ( ..,
        ASCompleted,
        ASFailed,
        ASInProgress,
        ASStopped,
        ASStopping,
        ASUnknown
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

pattern ASCompleted :: ActionStatus
pattern ASCompleted = ActionStatus' "Completed"

pattern ASFailed :: ActionStatus
pattern ASFailed = ActionStatus' "Failed"

pattern ASInProgress :: ActionStatus
pattern ASInProgress = ActionStatus' "InProgress"

pattern ASStopped :: ActionStatus
pattern ASStopped = ActionStatus' "Stopped"

pattern ASStopping :: ActionStatus
pattern ASStopping = ActionStatus' "Stopping"

pattern ASUnknown :: ActionStatus
pattern ASUnknown = ActionStatus' "Unknown"

{-# COMPLETE
  ASCompleted,
  ASFailed,
  ASInProgress,
  ASStopped,
  ASStopping,
  ASUnknown,
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

instance ToJSON ActionStatus where
  toJSON = toJSONText

instance FromJSON ActionStatus where
  parseJSON = parseJSONText "ActionStatus"
