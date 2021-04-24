{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingJobStatus
  ( ProcessingJobStatus
      ( ..,
        PJSCompleted,
        PJSFailed,
        PJSInProgress,
        PJSStopped,
        PJSStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProcessingJobStatus
  = ProcessingJobStatus'
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

pattern PJSCompleted :: ProcessingJobStatus
pattern PJSCompleted = ProcessingJobStatus' "Completed"

pattern PJSFailed :: ProcessingJobStatus
pattern PJSFailed = ProcessingJobStatus' "Failed"

pattern PJSInProgress :: ProcessingJobStatus
pattern PJSInProgress = ProcessingJobStatus' "InProgress"

pattern PJSStopped :: ProcessingJobStatus
pattern PJSStopped = ProcessingJobStatus' "Stopped"

pattern PJSStopping :: ProcessingJobStatus
pattern PJSStopping = ProcessingJobStatus' "Stopping"

{-# COMPLETE
  PJSCompleted,
  PJSFailed,
  PJSInProgress,
  PJSStopped,
  PJSStopping,
  ProcessingJobStatus'
  #-}

instance FromText ProcessingJobStatus where
  parser = (ProcessingJobStatus' . mk) <$> takeText

instance ToText ProcessingJobStatus where
  toText (ProcessingJobStatus' ci) = original ci

instance Hashable ProcessingJobStatus

instance NFData ProcessingJobStatus

instance ToByteString ProcessingJobStatus

instance ToQuery ProcessingJobStatus

instance ToHeader ProcessingJobStatus

instance ToJSON ProcessingJobStatus where
  toJSON = toJSONText

instance FromJSON ProcessingJobStatus where
  parseJSON = parseJSONText "ProcessingJobStatus"
