{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        SecondaryStatusCompleted,
        SecondaryStatusDownloading,
        SecondaryStatusDownloadingTrainingImage,
        SecondaryStatusFailed,
        SecondaryStatusInterrupted,
        SecondaryStatusLaunchingMLInstances,
        SecondaryStatusMaxRuntimeExceeded,
        SecondaryStatusMaxWaitTimeExceeded,
        SecondaryStatusPreparingTrainingStack,
        SecondaryStatusStarting,
        SecondaryStatusStopped,
        SecondaryStatusStopping,
        SecondaryStatusTraining,
        SecondaryStatusUpdating,
        SecondaryStatusUploading
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SecondaryStatus = SecondaryStatus'
  { fromSecondaryStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SecondaryStatusCompleted :: SecondaryStatus
pattern SecondaryStatusCompleted = SecondaryStatus' "Completed"

pattern SecondaryStatusDownloading :: SecondaryStatus
pattern SecondaryStatusDownloading = SecondaryStatus' "Downloading"

pattern SecondaryStatusDownloadingTrainingImage :: SecondaryStatus
pattern SecondaryStatusDownloadingTrainingImage = SecondaryStatus' "DownloadingTrainingImage"

pattern SecondaryStatusFailed :: SecondaryStatus
pattern SecondaryStatusFailed = SecondaryStatus' "Failed"

pattern SecondaryStatusInterrupted :: SecondaryStatus
pattern SecondaryStatusInterrupted = SecondaryStatus' "Interrupted"

pattern SecondaryStatusLaunchingMLInstances :: SecondaryStatus
pattern SecondaryStatusLaunchingMLInstances = SecondaryStatus' "LaunchingMLInstances"

pattern SecondaryStatusMaxRuntimeExceeded :: SecondaryStatus
pattern SecondaryStatusMaxRuntimeExceeded = SecondaryStatus' "MaxRuntimeExceeded"

pattern SecondaryStatusMaxWaitTimeExceeded :: SecondaryStatus
pattern SecondaryStatusMaxWaitTimeExceeded = SecondaryStatus' "MaxWaitTimeExceeded"

pattern SecondaryStatusPreparingTrainingStack :: SecondaryStatus
pattern SecondaryStatusPreparingTrainingStack = SecondaryStatus' "PreparingTrainingStack"

pattern SecondaryStatusStarting :: SecondaryStatus
pattern SecondaryStatusStarting = SecondaryStatus' "Starting"

pattern SecondaryStatusStopped :: SecondaryStatus
pattern SecondaryStatusStopped = SecondaryStatus' "Stopped"

pattern SecondaryStatusStopping :: SecondaryStatus
pattern SecondaryStatusStopping = SecondaryStatus' "Stopping"

pattern SecondaryStatusTraining :: SecondaryStatus
pattern SecondaryStatusTraining = SecondaryStatus' "Training"

pattern SecondaryStatusUpdating :: SecondaryStatus
pattern SecondaryStatusUpdating = SecondaryStatus' "Updating"

pattern SecondaryStatusUploading :: SecondaryStatus
pattern SecondaryStatusUploading = SecondaryStatus' "Uploading"

{-# COMPLETE
  SecondaryStatusCompleted,
  SecondaryStatusDownloading,
  SecondaryStatusDownloadingTrainingImage,
  SecondaryStatusFailed,
  SecondaryStatusInterrupted,
  SecondaryStatusLaunchingMLInstances,
  SecondaryStatusMaxRuntimeExceeded,
  SecondaryStatusMaxWaitTimeExceeded,
  SecondaryStatusPreparingTrainingStack,
  SecondaryStatusStarting,
  SecondaryStatusStopped,
  SecondaryStatusStopping,
  SecondaryStatusTraining,
  SecondaryStatusUpdating,
  SecondaryStatusUploading,
  SecondaryStatus'
  #-}

instance Prelude.FromText SecondaryStatus where
  parser = SecondaryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SecondaryStatus where
  toText (SecondaryStatus' x) = x

instance Prelude.Hashable SecondaryStatus

instance Prelude.NFData SecondaryStatus

instance Prelude.ToByteString SecondaryStatus

instance Prelude.ToQuery SecondaryStatus

instance Prelude.ToHeader SecondaryStatus

instance Prelude.FromJSON SecondaryStatus where
  parseJSON = Prelude.parseJSONText "SecondaryStatus"
