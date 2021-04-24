{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackDriftDetectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackDriftDetectionStatus
  ( StackDriftDetectionStatus
      ( ..,
        DetectionComplete,
        DetectionFailed,
        DetectionInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackDriftDetectionStatus
  = StackDriftDetectionStatus'
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

pattern DetectionComplete :: StackDriftDetectionStatus
pattern DetectionComplete = StackDriftDetectionStatus' "DETECTION_COMPLETE"

pattern DetectionFailed :: StackDriftDetectionStatus
pattern DetectionFailed = StackDriftDetectionStatus' "DETECTION_FAILED"

pattern DetectionInProgress :: StackDriftDetectionStatus
pattern DetectionInProgress = StackDriftDetectionStatus' "DETECTION_IN_PROGRESS"

{-# COMPLETE
  DetectionComplete,
  DetectionFailed,
  DetectionInProgress,
  StackDriftDetectionStatus'
  #-}

instance FromText StackDriftDetectionStatus where
  parser = (StackDriftDetectionStatus' . mk) <$> takeText

instance ToText StackDriftDetectionStatus where
  toText (StackDriftDetectionStatus' ci) = original ci

instance Hashable StackDriftDetectionStatus

instance NFData StackDriftDetectionStatus

instance ToByteString StackDriftDetectionStatus

instance ToQuery StackDriftDetectionStatus

instance ToHeader StackDriftDetectionStatus

instance FromXML StackDriftDetectionStatus where
  parseXML = parseXMLText "StackDriftDetectionStatus"
