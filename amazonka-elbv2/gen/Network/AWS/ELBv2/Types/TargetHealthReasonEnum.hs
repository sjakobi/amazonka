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
-- Module      : Network.AWS.ELBv2.Types.TargetHealthReasonEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.TargetHealthReasonEnum
  ( TargetHealthReasonEnum
      ( ..,
        TargetHealthReasonEnumElb_InitialHealthChecking,
        TargetHealthReasonEnumElb_InternalError,
        TargetHealthReasonEnumElb_RegistrationInProgress,
        TargetHealthReasonEnumTarget_DeregistrationInProgress,
        TargetHealthReasonEnumTarget_FailedHealthChecks,
        TargetHealthReasonEnumTarget_HealthCheckDisabled,
        TargetHealthReasonEnumTarget_InvalidState,
        TargetHealthReasonEnumTarget_IpUnusable,
        TargetHealthReasonEnumTarget_NotInUse,
        TargetHealthReasonEnumTarget_NotRegistered,
        TargetHealthReasonEnumTarget_ResponseCodeMismatch,
        TargetHealthReasonEnumTarget_Timeout
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetHealthReasonEnum = TargetHealthReasonEnum'
  { fromTargetHealthReasonEnum ::
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

pattern TargetHealthReasonEnumElb_InitialHealthChecking :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumElb_InitialHealthChecking = TargetHealthReasonEnum' "Elb.InitialHealthChecking"

pattern TargetHealthReasonEnumElb_InternalError :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumElb_InternalError = TargetHealthReasonEnum' "Elb.InternalError"

pattern TargetHealthReasonEnumElb_RegistrationInProgress :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumElb_RegistrationInProgress = TargetHealthReasonEnum' "Elb.RegistrationInProgress"

pattern TargetHealthReasonEnumTarget_DeregistrationInProgress :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumTarget_DeregistrationInProgress = TargetHealthReasonEnum' "Target.DeregistrationInProgress"

pattern TargetHealthReasonEnumTarget_FailedHealthChecks :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumTarget_FailedHealthChecks = TargetHealthReasonEnum' "Target.FailedHealthChecks"

pattern TargetHealthReasonEnumTarget_HealthCheckDisabled :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumTarget_HealthCheckDisabled = TargetHealthReasonEnum' "Target.HealthCheckDisabled"

pattern TargetHealthReasonEnumTarget_InvalidState :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumTarget_InvalidState = TargetHealthReasonEnum' "Target.InvalidState"

pattern TargetHealthReasonEnumTarget_IpUnusable :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumTarget_IpUnusable = TargetHealthReasonEnum' "Target.IpUnusable"

pattern TargetHealthReasonEnumTarget_NotInUse :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumTarget_NotInUse = TargetHealthReasonEnum' "Target.NotInUse"

pattern TargetHealthReasonEnumTarget_NotRegistered :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumTarget_NotRegistered = TargetHealthReasonEnum' "Target.NotRegistered"

pattern TargetHealthReasonEnumTarget_ResponseCodeMismatch :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumTarget_ResponseCodeMismatch = TargetHealthReasonEnum' "Target.ResponseCodeMismatch"

pattern TargetHealthReasonEnumTarget_Timeout :: TargetHealthReasonEnum
pattern TargetHealthReasonEnumTarget_Timeout = TargetHealthReasonEnum' "Target.Timeout"

{-# COMPLETE
  TargetHealthReasonEnumElb_InitialHealthChecking,
  TargetHealthReasonEnumElb_InternalError,
  TargetHealthReasonEnumElb_RegistrationInProgress,
  TargetHealthReasonEnumTarget_DeregistrationInProgress,
  TargetHealthReasonEnumTarget_FailedHealthChecks,
  TargetHealthReasonEnumTarget_HealthCheckDisabled,
  TargetHealthReasonEnumTarget_InvalidState,
  TargetHealthReasonEnumTarget_IpUnusable,
  TargetHealthReasonEnumTarget_NotInUse,
  TargetHealthReasonEnumTarget_NotRegistered,
  TargetHealthReasonEnumTarget_ResponseCodeMismatch,
  TargetHealthReasonEnumTarget_Timeout,
  TargetHealthReasonEnum'
  #-}

instance Prelude.FromText TargetHealthReasonEnum where
  parser = TargetHealthReasonEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetHealthReasonEnum where
  toText (TargetHealthReasonEnum' x) = x

instance Prelude.Hashable TargetHealthReasonEnum

instance Prelude.NFData TargetHealthReasonEnum

instance Prelude.ToByteString TargetHealthReasonEnum

instance Prelude.ToQuery TargetHealthReasonEnum

instance Prelude.ToHeader TargetHealthReasonEnum

instance Prelude.FromXML TargetHealthReasonEnum where
  parseXML = Prelude.parseXMLText "TargetHealthReasonEnum"
