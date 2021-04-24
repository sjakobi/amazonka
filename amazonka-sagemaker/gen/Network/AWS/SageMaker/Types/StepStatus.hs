{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.StepStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.StepStatus
  ( StepStatus
      ( ..,
        SSsExecuting,
        SSsFailed,
        SSsStarting,
        SSsStopped,
        SSsStopping,
        SSsSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StepStatus = StepStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSsExecuting :: StepStatus
pattern SSsExecuting = StepStatus' "Executing"

pattern SSsFailed :: StepStatus
pattern SSsFailed = StepStatus' "Failed"

pattern SSsStarting :: StepStatus
pattern SSsStarting = StepStatus' "Starting"

pattern SSsStopped :: StepStatus
pattern SSsStopped = StepStatus' "Stopped"

pattern SSsStopping :: StepStatus
pattern SSsStopping = StepStatus' "Stopping"

pattern SSsSucceeded :: StepStatus
pattern SSsSucceeded = StepStatus' "Succeeded"

{-# COMPLETE
  SSsExecuting,
  SSsFailed,
  SSsStarting,
  SSsStopped,
  SSsStopping,
  SSsSucceeded,
  StepStatus'
  #-}

instance FromText StepStatus where
  parser = (StepStatus' . mk) <$> takeText

instance ToText StepStatus where
  toText (StepStatus' ci) = original ci

instance Hashable StepStatus

instance NFData StepStatus

instance ToByteString StepStatus

instance ToQuery StepStatus

instance ToHeader StepStatus

instance FromJSON StepStatus where
  parseJSON = parseJSONText "StepStatus"
