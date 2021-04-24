{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SecondaryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SecondaryStatus
  ( SecondaryStatus
      ( ..,
        SCompleted,
        SDownloading,
        SDownloadingTrainingImage,
        SFailed,
        SInterrupted,
        SLaunchingMLInstances,
        SMaxRuntimeExceeded,
        SMaxWaitTimeExceeded,
        SPreparingTrainingStack,
        SStarting,
        SStopped,
        SStopping,
        STraining,
        SUpdating,
        SUploading
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SecondaryStatus = SecondaryStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SCompleted :: SecondaryStatus
pattern SCompleted = SecondaryStatus' "Completed"

pattern SDownloading :: SecondaryStatus
pattern SDownloading = SecondaryStatus' "Downloading"

pattern SDownloadingTrainingImage :: SecondaryStatus
pattern SDownloadingTrainingImage = SecondaryStatus' "DownloadingTrainingImage"

pattern SFailed :: SecondaryStatus
pattern SFailed = SecondaryStatus' "Failed"

pattern SInterrupted :: SecondaryStatus
pattern SInterrupted = SecondaryStatus' "Interrupted"

pattern SLaunchingMLInstances :: SecondaryStatus
pattern SLaunchingMLInstances = SecondaryStatus' "LaunchingMLInstances"

pattern SMaxRuntimeExceeded :: SecondaryStatus
pattern SMaxRuntimeExceeded = SecondaryStatus' "MaxRuntimeExceeded"

pattern SMaxWaitTimeExceeded :: SecondaryStatus
pattern SMaxWaitTimeExceeded = SecondaryStatus' "MaxWaitTimeExceeded"

pattern SPreparingTrainingStack :: SecondaryStatus
pattern SPreparingTrainingStack = SecondaryStatus' "PreparingTrainingStack"

pattern SStarting :: SecondaryStatus
pattern SStarting = SecondaryStatus' "Starting"

pattern SStopped :: SecondaryStatus
pattern SStopped = SecondaryStatus' "Stopped"

pattern SStopping :: SecondaryStatus
pattern SStopping = SecondaryStatus' "Stopping"

pattern STraining :: SecondaryStatus
pattern STraining = SecondaryStatus' "Training"

pattern SUpdating :: SecondaryStatus
pattern SUpdating = SecondaryStatus' "Updating"

pattern SUploading :: SecondaryStatus
pattern SUploading = SecondaryStatus' "Uploading"

{-# COMPLETE
  SCompleted,
  SDownloading,
  SDownloadingTrainingImage,
  SFailed,
  SInterrupted,
  SLaunchingMLInstances,
  SMaxRuntimeExceeded,
  SMaxWaitTimeExceeded,
  SPreparingTrainingStack,
  SStarting,
  SStopped,
  SStopping,
  STraining,
  SUpdating,
  SUploading,
  SecondaryStatus'
  #-}

instance FromText SecondaryStatus where
  parser = (SecondaryStatus' . mk) <$> takeText

instance ToText SecondaryStatus where
  toText (SecondaryStatus' ci) = original ci

instance Hashable SecondaryStatus

instance NFData SecondaryStatus

instance ToByteString SecondaryStatus

instance ToQuery SecondaryStatus

instance ToHeader SecondaryStatus

instance FromJSON SecondaryStatus where
  parseJSON = parseJSONText "SecondaryStatus"
