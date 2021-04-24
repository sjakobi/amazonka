{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.StageExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.StageExecutionStatus
  ( StageExecutionStatus
      ( ..,
        SESCancelled,
        SESFailed,
        SESInProgress,
        SESStopped,
        SESStopping,
        SESSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StageExecutionStatus
  = StageExecutionStatus'
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

pattern SESCancelled :: StageExecutionStatus
pattern SESCancelled = StageExecutionStatus' "Cancelled"

pattern SESFailed :: StageExecutionStatus
pattern SESFailed = StageExecutionStatus' "Failed"

pattern SESInProgress :: StageExecutionStatus
pattern SESInProgress = StageExecutionStatus' "InProgress"

pattern SESStopped :: StageExecutionStatus
pattern SESStopped = StageExecutionStatus' "Stopped"

pattern SESStopping :: StageExecutionStatus
pattern SESStopping = StageExecutionStatus' "Stopping"

pattern SESSucceeded :: StageExecutionStatus
pattern SESSucceeded = StageExecutionStatus' "Succeeded"

{-# COMPLETE
  SESCancelled,
  SESFailed,
  SESInProgress,
  SESStopped,
  SESStopping,
  SESSucceeded,
  StageExecutionStatus'
  #-}

instance FromText StageExecutionStatus where
  parser = (StageExecutionStatus' . mk) <$> takeText

instance ToText StageExecutionStatus where
  toText (StageExecutionStatus' ci) = original ci

instance Hashable StageExecutionStatus

instance NFData StageExecutionStatus

instance ToByteString StageExecutionStatus

instance ToQuery StageExecutionStatus

instance ToHeader StageExecutionStatus

instance FromJSON StageExecutionStatus where
  parseJSON = parseJSONText "StageExecutionStatus"
