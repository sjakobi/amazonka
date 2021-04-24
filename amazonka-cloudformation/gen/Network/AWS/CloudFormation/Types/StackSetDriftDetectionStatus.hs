{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackSetDriftDetectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetDriftDetectionStatus
  ( StackSetDriftDetectionStatus
      ( ..,
        SSDDSCompleted,
        SSDDSFailed,
        SSDDSInProgress,
        SSDDSPartialSuccess,
        SSDDSStopped
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackSetDriftDetectionStatus
  = StackSetDriftDetectionStatus'
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

pattern SSDDSCompleted :: StackSetDriftDetectionStatus
pattern SSDDSCompleted = StackSetDriftDetectionStatus' "COMPLETED"

pattern SSDDSFailed :: StackSetDriftDetectionStatus
pattern SSDDSFailed = StackSetDriftDetectionStatus' "FAILED"

pattern SSDDSInProgress :: StackSetDriftDetectionStatus
pattern SSDDSInProgress = StackSetDriftDetectionStatus' "IN_PROGRESS"

pattern SSDDSPartialSuccess :: StackSetDriftDetectionStatus
pattern SSDDSPartialSuccess = StackSetDriftDetectionStatus' "PARTIAL_SUCCESS"

pattern SSDDSStopped :: StackSetDriftDetectionStatus
pattern SSDDSStopped = StackSetDriftDetectionStatus' "STOPPED"

{-# COMPLETE
  SSDDSCompleted,
  SSDDSFailed,
  SSDDSInProgress,
  SSDDSPartialSuccess,
  SSDDSStopped,
  StackSetDriftDetectionStatus'
  #-}

instance FromText StackSetDriftDetectionStatus where
  parser = (StackSetDriftDetectionStatus' . mk) <$> takeText

instance ToText StackSetDriftDetectionStatus where
  toText (StackSetDriftDetectionStatus' ci) = original ci

instance Hashable StackSetDriftDetectionStatus

instance NFData StackSetDriftDetectionStatus

instance ToByteString StackSetDriftDetectionStatus

instance ToQuery StackSetDriftDetectionStatus

instance ToHeader StackSetDriftDetectionStatus

instance FromXML StackSetDriftDetectionStatus where
  parseXML = parseXMLText "StackSetDriftDetectionStatus"
