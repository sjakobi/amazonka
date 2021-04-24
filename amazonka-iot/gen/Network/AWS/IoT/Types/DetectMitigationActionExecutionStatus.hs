{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DetectMitigationActionExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DetectMitigationActionExecutionStatus
  ( DetectMitigationActionExecutionStatus
      ( ..,
        DMAESFailed,
        DMAESInProgress,
        DMAESSkipped,
        DMAESSuccessful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DetectMitigationActionExecutionStatus
  = DetectMitigationActionExecutionStatus'
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

pattern DMAESFailed :: DetectMitigationActionExecutionStatus
pattern DMAESFailed = DetectMitigationActionExecutionStatus' "FAILED"

pattern DMAESInProgress :: DetectMitigationActionExecutionStatus
pattern DMAESInProgress = DetectMitigationActionExecutionStatus' "IN_PROGRESS"

pattern DMAESSkipped :: DetectMitigationActionExecutionStatus
pattern DMAESSkipped = DetectMitigationActionExecutionStatus' "SKIPPED"

pattern DMAESSuccessful :: DetectMitigationActionExecutionStatus
pattern DMAESSuccessful = DetectMitigationActionExecutionStatus' "SUCCESSFUL"

{-# COMPLETE
  DMAESFailed,
  DMAESInProgress,
  DMAESSkipped,
  DMAESSuccessful,
  DetectMitigationActionExecutionStatus'
  #-}

instance FromText DetectMitigationActionExecutionStatus where
  parser = (DetectMitigationActionExecutionStatus' . mk) <$> takeText

instance ToText DetectMitigationActionExecutionStatus where
  toText (DetectMitigationActionExecutionStatus' ci) = original ci

instance Hashable DetectMitigationActionExecutionStatus

instance NFData DetectMitigationActionExecutionStatus

instance ToByteString DetectMitigationActionExecutionStatus

instance ToQuery DetectMitigationActionExecutionStatus

instance ToHeader DetectMitigationActionExecutionStatus

instance FromJSON DetectMitigationActionExecutionStatus where
  parseJSON = parseJSONText "DetectMitigationActionExecutionStatus"
