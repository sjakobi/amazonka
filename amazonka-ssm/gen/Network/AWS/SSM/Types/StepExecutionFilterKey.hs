{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.StepExecutionFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.StepExecutionFilterKey
  ( StepExecutionFilterKey
      ( ..,
        SEFKAction,
        SEFKStartTimeAfter,
        SEFKStartTimeBefore,
        SEFKStepExecutionId,
        SEFKStepExecutionStatus,
        SEFKStepName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StepExecutionFilterKey
  = StepExecutionFilterKey'
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

pattern SEFKAction :: StepExecutionFilterKey
pattern SEFKAction = StepExecutionFilterKey' "Action"

pattern SEFKStartTimeAfter :: StepExecutionFilterKey
pattern SEFKStartTimeAfter = StepExecutionFilterKey' "StartTimeAfter"

pattern SEFKStartTimeBefore :: StepExecutionFilterKey
pattern SEFKStartTimeBefore = StepExecutionFilterKey' "StartTimeBefore"

pattern SEFKStepExecutionId :: StepExecutionFilterKey
pattern SEFKStepExecutionId = StepExecutionFilterKey' "StepExecutionId"

pattern SEFKStepExecutionStatus :: StepExecutionFilterKey
pattern SEFKStepExecutionStatus = StepExecutionFilterKey' "StepExecutionStatus"

pattern SEFKStepName :: StepExecutionFilterKey
pattern SEFKStepName = StepExecutionFilterKey' "StepName"

{-# COMPLETE
  SEFKAction,
  SEFKStartTimeAfter,
  SEFKStartTimeBefore,
  SEFKStepExecutionId,
  SEFKStepExecutionStatus,
  SEFKStepName,
  StepExecutionFilterKey'
  #-}

instance FromText StepExecutionFilterKey where
  parser = (StepExecutionFilterKey' . mk) <$> takeText

instance ToText StepExecutionFilterKey where
  toText (StepExecutionFilterKey' ci) = original ci

instance Hashable StepExecutionFilterKey

instance NFData StepExecutionFilterKey

instance ToByteString StepExecutionFilterKey

instance ToQuery StepExecutionFilterKey

instance ToHeader StepExecutionFilterKey

instance ToJSON StepExecutionFilterKey where
  toJSON = toJSONText
