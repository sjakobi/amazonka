{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppLaunchStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppLaunchStatus
  ( AppLaunchStatus
      ( ..,
        ALSConfigurationInProgress,
        ALSConfigurationInvalid,
        ALSDeltaLaunchFailed,
        ALSDeltaLaunchInProgress,
        ALSLaunchFailed,
        ALSLaunchInProgress,
        ALSLaunchPending,
        ALSLaunched,
        ALSPartiallyLaunched,
        ALSReadyForConfiguration,
        ALSReadyForLaunch,
        ALSTerminateFailed,
        ALSTerminateInProgress,
        ALSTerminated,
        ALSValidationInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppLaunchStatus = AppLaunchStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ALSConfigurationInProgress :: AppLaunchStatus
pattern ALSConfigurationInProgress = AppLaunchStatus' "CONFIGURATION_IN_PROGRESS"

pattern ALSConfigurationInvalid :: AppLaunchStatus
pattern ALSConfigurationInvalid = AppLaunchStatus' "CONFIGURATION_INVALID"

pattern ALSDeltaLaunchFailed :: AppLaunchStatus
pattern ALSDeltaLaunchFailed = AppLaunchStatus' "DELTA_LAUNCH_FAILED"

pattern ALSDeltaLaunchInProgress :: AppLaunchStatus
pattern ALSDeltaLaunchInProgress = AppLaunchStatus' "DELTA_LAUNCH_IN_PROGRESS"

pattern ALSLaunchFailed :: AppLaunchStatus
pattern ALSLaunchFailed = AppLaunchStatus' "LAUNCH_FAILED"

pattern ALSLaunchInProgress :: AppLaunchStatus
pattern ALSLaunchInProgress = AppLaunchStatus' "LAUNCH_IN_PROGRESS"

pattern ALSLaunchPending :: AppLaunchStatus
pattern ALSLaunchPending = AppLaunchStatus' "LAUNCH_PENDING"

pattern ALSLaunched :: AppLaunchStatus
pattern ALSLaunched = AppLaunchStatus' "LAUNCHED"

pattern ALSPartiallyLaunched :: AppLaunchStatus
pattern ALSPartiallyLaunched = AppLaunchStatus' "PARTIALLY_LAUNCHED"

pattern ALSReadyForConfiguration :: AppLaunchStatus
pattern ALSReadyForConfiguration = AppLaunchStatus' "READY_FOR_CONFIGURATION"

pattern ALSReadyForLaunch :: AppLaunchStatus
pattern ALSReadyForLaunch = AppLaunchStatus' "READY_FOR_LAUNCH"

pattern ALSTerminateFailed :: AppLaunchStatus
pattern ALSTerminateFailed = AppLaunchStatus' "TERMINATE_FAILED"

pattern ALSTerminateInProgress :: AppLaunchStatus
pattern ALSTerminateInProgress = AppLaunchStatus' "TERMINATE_IN_PROGRESS"

pattern ALSTerminated :: AppLaunchStatus
pattern ALSTerminated = AppLaunchStatus' "TERMINATED"

pattern ALSValidationInProgress :: AppLaunchStatus
pattern ALSValidationInProgress = AppLaunchStatus' "VALIDATION_IN_PROGRESS"

{-# COMPLETE
  ALSConfigurationInProgress,
  ALSConfigurationInvalid,
  ALSDeltaLaunchFailed,
  ALSDeltaLaunchInProgress,
  ALSLaunchFailed,
  ALSLaunchInProgress,
  ALSLaunchPending,
  ALSLaunched,
  ALSPartiallyLaunched,
  ALSReadyForConfiguration,
  ALSReadyForLaunch,
  ALSTerminateFailed,
  ALSTerminateInProgress,
  ALSTerminated,
  ALSValidationInProgress,
  AppLaunchStatus'
  #-}

instance FromText AppLaunchStatus where
  parser = (AppLaunchStatus' . mk) <$> takeText

instance ToText AppLaunchStatus where
  toText (AppLaunchStatus' ci) = original ci

instance Hashable AppLaunchStatus

instance NFData AppLaunchStatus

instance ToByteString AppLaunchStatus

instance ToQuery AppLaunchStatus

instance ToHeader AppLaunchStatus

instance FromJSON AppLaunchStatus where
  parseJSON = parseJSONText "AppLaunchStatus"
