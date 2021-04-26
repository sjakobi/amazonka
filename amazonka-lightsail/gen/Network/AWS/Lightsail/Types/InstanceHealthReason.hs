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
-- Module      : Network.AWS.Lightsail.Types.InstanceHealthReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceHealthReason
  ( InstanceHealthReason
      ( ..,
        InstanceHealthReasonInstance_DeregistrationInProgress,
        InstanceHealthReasonInstance_FailedHealthChecks,
        InstanceHealthReasonInstance_InvalidState,
        InstanceHealthReasonInstance_IpUnusable,
        InstanceHealthReasonInstance_NotInUse,
        InstanceHealthReasonInstance_NotRegistered,
        InstanceHealthReasonInstance_ResponseCodeMismatch,
        InstanceHealthReasonInstance_Timeout,
        InstanceHealthReasonLb_InitialHealthChecking,
        InstanceHealthReasonLb_InternalError,
        InstanceHealthReasonLb_RegistrationInProgress
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceHealthReason = InstanceHealthReason'
  { fromInstanceHealthReason ::
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

pattern InstanceHealthReasonInstance_DeregistrationInProgress :: InstanceHealthReason
pattern InstanceHealthReasonInstance_DeregistrationInProgress = InstanceHealthReason' "Instance.DeregistrationInProgress"

pattern InstanceHealthReasonInstance_FailedHealthChecks :: InstanceHealthReason
pattern InstanceHealthReasonInstance_FailedHealthChecks = InstanceHealthReason' "Instance.FailedHealthChecks"

pattern InstanceHealthReasonInstance_InvalidState :: InstanceHealthReason
pattern InstanceHealthReasonInstance_InvalidState = InstanceHealthReason' "Instance.InvalidState"

pattern InstanceHealthReasonInstance_IpUnusable :: InstanceHealthReason
pattern InstanceHealthReasonInstance_IpUnusable = InstanceHealthReason' "Instance.IpUnusable"

pattern InstanceHealthReasonInstance_NotInUse :: InstanceHealthReason
pattern InstanceHealthReasonInstance_NotInUse = InstanceHealthReason' "Instance.NotInUse"

pattern InstanceHealthReasonInstance_NotRegistered :: InstanceHealthReason
pattern InstanceHealthReasonInstance_NotRegistered = InstanceHealthReason' "Instance.NotRegistered"

pattern InstanceHealthReasonInstance_ResponseCodeMismatch :: InstanceHealthReason
pattern InstanceHealthReasonInstance_ResponseCodeMismatch = InstanceHealthReason' "Instance.ResponseCodeMismatch"

pattern InstanceHealthReasonInstance_Timeout :: InstanceHealthReason
pattern InstanceHealthReasonInstance_Timeout = InstanceHealthReason' "Instance.Timeout"

pattern InstanceHealthReasonLb_InitialHealthChecking :: InstanceHealthReason
pattern InstanceHealthReasonLb_InitialHealthChecking = InstanceHealthReason' "Lb.InitialHealthChecking"

pattern InstanceHealthReasonLb_InternalError :: InstanceHealthReason
pattern InstanceHealthReasonLb_InternalError = InstanceHealthReason' "Lb.InternalError"

pattern InstanceHealthReasonLb_RegistrationInProgress :: InstanceHealthReason
pattern InstanceHealthReasonLb_RegistrationInProgress = InstanceHealthReason' "Lb.RegistrationInProgress"

{-# COMPLETE
  InstanceHealthReasonInstance_DeregistrationInProgress,
  InstanceHealthReasonInstance_FailedHealthChecks,
  InstanceHealthReasonInstance_InvalidState,
  InstanceHealthReasonInstance_IpUnusable,
  InstanceHealthReasonInstance_NotInUse,
  InstanceHealthReasonInstance_NotRegistered,
  InstanceHealthReasonInstance_ResponseCodeMismatch,
  InstanceHealthReasonInstance_Timeout,
  InstanceHealthReasonLb_InitialHealthChecking,
  InstanceHealthReasonLb_InternalError,
  InstanceHealthReasonLb_RegistrationInProgress,
  InstanceHealthReason'
  #-}

instance Prelude.FromText InstanceHealthReason where
  parser = InstanceHealthReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceHealthReason where
  toText (InstanceHealthReason' x) = x

instance Prelude.Hashable InstanceHealthReason

instance Prelude.NFData InstanceHealthReason

instance Prelude.ToByteString InstanceHealthReason

instance Prelude.ToQuery InstanceHealthReason

instance Prelude.ToHeader InstanceHealthReason

instance Prelude.FromJSON InstanceHealthReason where
  parseJSON = Prelude.parseJSONText "InstanceHealthReason"
