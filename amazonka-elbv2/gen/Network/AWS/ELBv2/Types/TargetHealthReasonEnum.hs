{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.TargetHealthReasonEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.TargetHealthReasonEnum
  ( TargetHealthReasonEnum
      ( ..,
        Elb_InitialHealthChecking,
        Elb_InternalError,
        Elb_RegistrationInProgress,
        Target_DeregistrationInProgress,
        Target_FailedHealthChecks,
        Target_HealthCheckDisabled,
        Target_IPUnusable,
        Target_InvalidState,
        Target_NotInUse,
        Target_NotRegistered,
        Target_ResponseCodeMismatch,
        Target_Timeout
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetHealthReasonEnum
  = TargetHealthReasonEnum'
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

pattern Elb_InitialHealthChecking :: TargetHealthReasonEnum
pattern Elb_InitialHealthChecking = TargetHealthReasonEnum' "Elb.InitialHealthChecking"

pattern Elb_InternalError :: TargetHealthReasonEnum
pattern Elb_InternalError = TargetHealthReasonEnum' "Elb.InternalError"

pattern Elb_RegistrationInProgress :: TargetHealthReasonEnum
pattern Elb_RegistrationInProgress = TargetHealthReasonEnum' "Elb.RegistrationInProgress"

pattern Target_DeregistrationInProgress :: TargetHealthReasonEnum
pattern Target_DeregistrationInProgress = TargetHealthReasonEnum' "Target.DeregistrationInProgress"

pattern Target_FailedHealthChecks :: TargetHealthReasonEnum
pattern Target_FailedHealthChecks = TargetHealthReasonEnum' "Target.FailedHealthChecks"

pattern Target_HealthCheckDisabled :: TargetHealthReasonEnum
pattern Target_HealthCheckDisabled = TargetHealthReasonEnum' "Target.HealthCheckDisabled"

pattern Target_IPUnusable :: TargetHealthReasonEnum
pattern Target_IPUnusable = TargetHealthReasonEnum' "Target.IpUnusable"

pattern Target_InvalidState :: TargetHealthReasonEnum
pattern Target_InvalidState = TargetHealthReasonEnum' "Target.InvalidState"

pattern Target_NotInUse :: TargetHealthReasonEnum
pattern Target_NotInUse = TargetHealthReasonEnum' "Target.NotInUse"

pattern Target_NotRegistered :: TargetHealthReasonEnum
pattern Target_NotRegistered = TargetHealthReasonEnum' "Target.NotRegistered"

pattern Target_ResponseCodeMismatch :: TargetHealthReasonEnum
pattern Target_ResponseCodeMismatch = TargetHealthReasonEnum' "Target.ResponseCodeMismatch"

pattern Target_Timeout :: TargetHealthReasonEnum
pattern Target_Timeout = TargetHealthReasonEnum' "Target.Timeout"

{-# COMPLETE
  Elb_InitialHealthChecking,
  Elb_InternalError,
  Elb_RegistrationInProgress,
  Target_DeregistrationInProgress,
  Target_FailedHealthChecks,
  Target_HealthCheckDisabled,
  Target_IPUnusable,
  Target_InvalidState,
  Target_NotInUse,
  Target_NotRegistered,
  Target_ResponseCodeMismatch,
  Target_Timeout,
  TargetHealthReasonEnum'
  #-}

instance FromText TargetHealthReasonEnum where
  parser = (TargetHealthReasonEnum' . mk) <$> takeText

instance ToText TargetHealthReasonEnum where
  toText (TargetHealthReasonEnum' ci) = original ci

instance Hashable TargetHealthReasonEnum

instance NFData TargetHealthReasonEnum

instance ToByteString TargetHealthReasonEnum

instance ToQuery TargetHealthReasonEnum

instance ToHeader TargetHealthReasonEnum

instance FromXML TargetHealthReasonEnum where
  parseXML = parseXMLText "TargetHealthReasonEnum"
