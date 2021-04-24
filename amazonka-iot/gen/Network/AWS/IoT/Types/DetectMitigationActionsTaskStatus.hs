{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DetectMitigationActionsTaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DetectMitigationActionsTaskStatus
  ( DetectMitigationActionsTaskStatus
      ( ..,
        DMATSCanceled,
        DMATSFailed,
        DMATSInProgress,
        DMATSSuccessful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DetectMitigationActionsTaskStatus
  = DetectMitigationActionsTaskStatus'
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

pattern DMATSCanceled :: DetectMitigationActionsTaskStatus
pattern DMATSCanceled = DetectMitigationActionsTaskStatus' "CANCELED"

pattern DMATSFailed :: DetectMitigationActionsTaskStatus
pattern DMATSFailed = DetectMitigationActionsTaskStatus' "FAILED"

pattern DMATSInProgress :: DetectMitigationActionsTaskStatus
pattern DMATSInProgress = DetectMitigationActionsTaskStatus' "IN_PROGRESS"

pattern DMATSSuccessful :: DetectMitigationActionsTaskStatus
pattern DMATSSuccessful = DetectMitigationActionsTaskStatus' "SUCCESSFUL"

{-# COMPLETE
  DMATSCanceled,
  DMATSFailed,
  DMATSInProgress,
  DMATSSuccessful,
  DetectMitigationActionsTaskStatus'
  #-}

instance FromText DetectMitigationActionsTaskStatus where
  parser = (DetectMitigationActionsTaskStatus' . mk) <$> takeText

instance ToText DetectMitigationActionsTaskStatus where
  toText (DetectMitigationActionsTaskStatus' ci) = original ci

instance Hashable DetectMitigationActionsTaskStatus

instance NFData DetectMitigationActionsTaskStatus

instance ToByteString DetectMitigationActionsTaskStatus

instance ToQuery DetectMitigationActionsTaskStatus

instance ToHeader DetectMitigationActionsTaskStatus

instance FromJSON DetectMitigationActionsTaskStatus where
  parseJSON = parseJSONText "DetectMitigationActionsTaskStatus"
