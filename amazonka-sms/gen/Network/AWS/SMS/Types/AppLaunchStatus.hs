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
-- Module      : Network.AWS.SMS.Types.AppLaunchStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppLaunchStatus
  ( AppLaunchStatus
      ( ..,
        AppLaunchStatusCONFIGURATIONINPROGRESS,
        AppLaunchStatusCONFIGURATIONINVALID,
        AppLaunchStatusDELTALAUNCHFAILED,
        AppLaunchStatusDELTALAUNCHINPROGRESS,
        AppLaunchStatusLAUNCHED,
        AppLaunchStatusLAUNCHFAILED,
        AppLaunchStatusLAUNCHINPROGRESS,
        AppLaunchStatusLAUNCHPENDING,
        AppLaunchStatusPARTIALLYLAUNCHED,
        AppLaunchStatusREADYFORCONFIGURATION,
        AppLaunchStatusREADYFORLAUNCH,
        AppLaunchStatusTERMINATED,
        AppLaunchStatusTERMINATEFAILED,
        AppLaunchStatusTERMINATEINPROGRESS,
        AppLaunchStatusVALIDATIONINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppLaunchStatus = AppLaunchStatus'
  { fromAppLaunchStatus ::
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

pattern AppLaunchStatusCONFIGURATIONINPROGRESS :: AppLaunchStatus
pattern AppLaunchStatusCONFIGURATIONINPROGRESS = AppLaunchStatus' "CONFIGURATION_IN_PROGRESS"

pattern AppLaunchStatusCONFIGURATIONINVALID :: AppLaunchStatus
pattern AppLaunchStatusCONFIGURATIONINVALID = AppLaunchStatus' "CONFIGURATION_INVALID"

pattern AppLaunchStatusDELTALAUNCHFAILED :: AppLaunchStatus
pattern AppLaunchStatusDELTALAUNCHFAILED = AppLaunchStatus' "DELTA_LAUNCH_FAILED"

pattern AppLaunchStatusDELTALAUNCHINPROGRESS :: AppLaunchStatus
pattern AppLaunchStatusDELTALAUNCHINPROGRESS = AppLaunchStatus' "DELTA_LAUNCH_IN_PROGRESS"

pattern AppLaunchStatusLAUNCHED :: AppLaunchStatus
pattern AppLaunchStatusLAUNCHED = AppLaunchStatus' "LAUNCHED"

pattern AppLaunchStatusLAUNCHFAILED :: AppLaunchStatus
pattern AppLaunchStatusLAUNCHFAILED = AppLaunchStatus' "LAUNCH_FAILED"

pattern AppLaunchStatusLAUNCHINPROGRESS :: AppLaunchStatus
pattern AppLaunchStatusLAUNCHINPROGRESS = AppLaunchStatus' "LAUNCH_IN_PROGRESS"

pattern AppLaunchStatusLAUNCHPENDING :: AppLaunchStatus
pattern AppLaunchStatusLAUNCHPENDING = AppLaunchStatus' "LAUNCH_PENDING"

pattern AppLaunchStatusPARTIALLYLAUNCHED :: AppLaunchStatus
pattern AppLaunchStatusPARTIALLYLAUNCHED = AppLaunchStatus' "PARTIALLY_LAUNCHED"

pattern AppLaunchStatusREADYFORCONFIGURATION :: AppLaunchStatus
pattern AppLaunchStatusREADYFORCONFIGURATION = AppLaunchStatus' "READY_FOR_CONFIGURATION"

pattern AppLaunchStatusREADYFORLAUNCH :: AppLaunchStatus
pattern AppLaunchStatusREADYFORLAUNCH = AppLaunchStatus' "READY_FOR_LAUNCH"

pattern AppLaunchStatusTERMINATED :: AppLaunchStatus
pattern AppLaunchStatusTERMINATED = AppLaunchStatus' "TERMINATED"

pattern AppLaunchStatusTERMINATEFAILED :: AppLaunchStatus
pattern AppLaunchStatusTERMINATEFAILED = AppLaunchStatus' "TERMINATE_FAILED"

pattern AppLaunchStatusTERMINATEINPROGRESS :: AppLaunchStatus
pattern AppLaunchStatusTERMINATEINPROGRESS = AppLaunchStatus' "TERMINATE_IN_PROGRESS"

pattern AppLaunchStatusVALIDATIONINPROGRESS :: AppLaunchStatus
pattern AppLaunchStatusVALIDATIONINPROGRESS = AppLaunchStatus' "VALIDATION_IN_PROGRESS"

{-# COMPLETE
  AppLaunchStatusCONFIGURATIONINPROGRESS,
  AppLaunchStatusCONFIGURATIONINVALID,
  AppLaunchStatusDELTALAUNCHFAILED,
  AppLaunchStatusDELTALAUNCHINPROGRESS,
  AppLaunchStatusLAUNCHED,
  AppLaunchStatusLAUNCHFAILED,
  AppLaunchStatusLAUNCHINPROGRESS,
  AppLaunchStatusLAUNCHPENDING,
  AppLaunchStatusPARTIALLYLAUNCHED,
  AppLaunchStatusREADYFORCONFIGURATION,
  AppLaunchStatusREADYFORLAUNCH,
  AppLaunchStatusTERMINATED,
  AppLaunchStatusTERMINATEFAILED,
  AppLaunchStatusTERMINATEINPROGRESS,
  AppLaunchStatusVALIDATIONINPROGRESS,
  AppLaunchStatus'
  #-}

instance Prelude.FromText AppLaunchStatus where
  parser = AppLaunchStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppLaunchStatus where
  toText (AppLaunchStatus' x) = x

instance Prelude.Hashable AppLaunchStatus

instance Prelude.NFData AppLaunchStatus

instance Prelude.ToByteString AppLaunchStatus

instance Prelude.ToQuery AppLaunchStatus

instance Prelude.ToHeader AppLaunchStatus

instance Prelude.FromJSON AppLaunchStatus where
  parseJSON = Prelude.parseJSONText "AppLaunchStatus"
