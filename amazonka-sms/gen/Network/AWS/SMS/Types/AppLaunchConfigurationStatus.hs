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
-- Module      : Network.AWS.SMS.Types.AppLaunchConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppLaunchConfigurationStatus
  ( AppLaunchConfigurationStatus
      ( ..,
        AppLaunchConfigurationStatusCONFIGURED,
        AppLaunchConfigurationStatusNOTCONFIGURED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppLaunchConfigurationStatus = AppLaunchConfigurationStatus'
  { fromAppLaunchConfigurationStatus ::
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

pattern AppLaunchConfigurationStatusCONFIGURED :: AppLaunchConfigurationStatus
pattern AppLaunchConfigurationStatusCONFIGURED = AppLaunchConfigurationStatus' "CONFIGURED"

pattern AppLaunchConfigurationStatusNOTCONFIGURED :: AppLaunchConfigurationStatus
pattern AppLaunchConfigurationStatusNOTCONFIGURED = AppLaunchConfigurationStatus' "NOT_CONFIGURED"

{-# COMPLETE
  AppLaunchConfigurationStatusCONFIGURED,
  AppLaunchConfigurationStatusNOTCONFIGURED,
  AppLaunchConfigurationStatus'
  #-}

instance Prelude.FromText AppLaunchConfigurationStatus where
  parser = AppLaunchConfigurationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppLaunchConfigurationStatus where
  toText (AppLaunchConfigurationStatus' x) = x

instance Prelude.Hashable AppLaunchConfigurationStatus

instance Prelude.NFData AppLaunchConfigurationStatus

instance Prelude.ToByteString AppLaunchConfigurationStatus

instance Prelude.ToQuery AppLaunchConfigurationStatus

instance Prelude.ToHeader AppLaunchConfigurationStatus

instance Prelude.FromJSON AppLaunchConfigurationStatus where
  parseJSON = Prelude.parseJSONText "AppLaunchConfigurationStatus"
