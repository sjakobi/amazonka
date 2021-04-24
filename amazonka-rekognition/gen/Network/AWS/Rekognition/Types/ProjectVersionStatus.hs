{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ProjectVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ProjectVersionStatus
  ( ProjectVersionStatus
      ( ..,
        PVSDeleting,
        PVSFailed,
        PVSRunning,
        PVSStarting,
        PVSStopped,
        PVSStopping,
        PVSTrainingCompleted,
        PVSTrainingFailed,
        PVSTrainingInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProjectVersionStatus
  = ProjectVersionStatus'
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

pattern PVSDeleting :: ProjectVersionStatus
pattern PVSDeleting = ProjectVersionStatus' "DELETING"

pattern PVSFailed :: ProjectVersionStatus
pattern PVSFailed = ProjectVersionStatus' "FAILED"

pattern PVSRunning :: ProjectVersionStatus
pattern PVSRunning = ProjectVersionStatus' "RUNNING"

pattern PVSStarting :: ProjectVersionStatus
pattern PVSStarting = ProjectVersionStatus' "STARTING"

pattern PVSStopped :: ProjectVersionStatus
pattern PVSStopped = ProjectVersionStatus' "STOPPED"

pattern PVSStopping :: ProjectVersionStatus
pattern PVSStopping = ProjectVersionStatus' "STOPPING"

pattern PVSTrainingCompleted :: ProjectVersionStatus
pattern PVSTrainingCompleted = ProjectVersionStatus' "TRAINING_COMPLETED"

pattern PVSTrainingFailed :: ProjectVersionStatus
pattern PVSTrainingFailed = ProjectVersionStatus' "TRAINING_FAILED"

pattern PVSTrainingInProgress :: ProjectVersionStatus
pattern PVSTrainingInProgress = ProjectVersionStatus' "TRAINING_IN_PROGRESS"

{-# COMPLETE
  PVSDeleting,
  PVSFailed,
  PVSRunning,
  PVSStarting,
  PVSStopped,
  PVSStopping,
  PVSTrainingCompleted,
  PVSTrainingFailed,
  PVSTrainingInProgress,
  ProjectVersionStatus'
  #-}

instance FromText ProjectVersionStatus where
  parser = (ProjectVersionStatus' . mk) <$> takeText

instance ToText ProjectVersionStatus where
  toText (ProjectVersionStatus' ci) = original ci

instance Hashable ProjectVersionStatus

instance NFData ProjectVersionStatus

instance ToByteString ProjectVersionStatus

instance ToQuery ProjectVersionStatus

instance ToHeader ProjectVersionStatus

instance FromJSON ProjectVersionStatus where
  parseJSON = parseJSONText "ProjectVersionStatus"
