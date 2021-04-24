{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppLaunchConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppLaunchConfigurationStatus
  ( AppLaunchConfigurationStatus
      ( ..,
        ALCSConfigured,
        ALCSNotConfigured
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppLaunchConfigurationStatus
  = AppLaunchConfigurationStatus'
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

pattern ALCSConfigured :: AppLaunchConfigurationStatus
pattern ALCSConfigured = AppLaunchConfigurationStatus' "CONFIGURED"

pattern ALCSNotConfigured :: AppLaunchConfigurationStatus
pattern ALCSNotConfigured = AppLaunchConfigurationStatus' "NOT_CONFIGURED"

{-# COMPLETE
  ALCSConfigured,
  ALCSNotConfigured,
  AppLaunchConfigurationStatus'
  #-}

instance FromText AppLaunchConfigurationStatus where
  parser = (AppLaunchConfigurationStatus' . mk) <$> takeText

instance ToText AppLaunchConfigurationStatus where
  toText (AppLaunchConfigurationStatus' ci) = original ci

instance Hashable AppLaunchConfigurationStatus

instance NFData AppLaunchConfigurationStatus

instance ToByteString AppLaunchConfigurationStatus

instance ToQuery AppLaunchConfigurationStatus

instance ToHeader AppLaunchConfigurationStatus

instance FromJSON AppLaunchConfigurationStatus where
  parseJSON = parseJSONText "AppLaunchConfigurationStatus"
