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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateRenewalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateRenewalStatus
  ( LoadBalancerTlsCertificateRenewalStatus
      ( ..,
        LoadBalancerTlsCertificateRenewalStatusFAILED,
        LoadBalancerTlsCertificateRenewalStatusPENDINGAUTORENEWAL,
        LoadBalancerTlsCertificateRenewalStatusPENDINGVALIDATION,
        LoadBalancerTlsCertificateRenewalStatusSUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerTlsCertificateRenewalStatus = LoadBalancerTlsCertificateRenewalStatus'
  { fromLoadBalancerTlsCertificateRenewalStatus ::
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

pattern LoadBalancerTlsCertificateRenewalStatusFAILED :: LoadBalancerTlsCertificateRenewalStatus
pattern LoadBalancerTlsCertificateRenewalStatusFAILED = LoadBalancerTlsCertificateRenewalStatus' "FAILED"

pattern LoadBalancerTlsCertificateRenewalStatusPENDINGAUTORENEWAL :: LoadBalancerTlsCertificateRenewalStatus
pattern LoadBalancerTlsCertificateRenewalStatusPENDINGAUTORENEWAL = LoadBalancerTlsCertificateRenewalStatus' "PENDING_AUTO_RENEWAL"

pattern LoadBalancerTlsCertificateRenewalStatusPENDINGVALIDATION :: LoadBalancerTlsCertificateRenewalStatus
pattern LoadBalancerTlsCertificateRenewalStatusPENDINGVALIDATION = LoadBalancerTlsCertificateRenewalStatus' "PENDING_VALIDATION"

pattern LoadBalancerTlsCertificateRenewalStatusSUCCESS :: LoadBalancerTlsCertificateRenewalStatus
pattern LoadBalancerTlsCertificateRenewalStatusSUCCESS = LoadBalancerTlsCertificateRenewalStatus' "SUCCESS"

{-# COMPLETE
  LoadBalancerTlsCertificateRenewalStatusFAILED,
  LoadBalancerTlsCertificateRenewalStatusPENDINGAUTORENEWAL,
  LoadBalancerTlsCertificateRenewalStatusPENDINGVALIDATION,
  LoadBalancerTlsCertificateRenewalStatusSUCCESS,
  LoadBalancerTlsCertificateRenewalStatus'
  #-}

instance Prelude.FromText LoadBalancerTlsCertificateRenewalStatus where
  parser = LoadBalancerTlsCertificateRenewalStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerTlsCertificateRenewalStatus where
  toText (LoadBalancerTlsCertificateRenewalStatus' x) = x

instance Prelude.Hashable LoadBalancerTlsCertificateRenewalStatus

instance Prelude.NFData LoadBalancerTlsCertificateRenewalStatus

instance Prelude.ToByteString LoadBalancerTlsCertificateRenewalStatus

instance Prelude.ToQuery LoadBalancerTlsCertificateRenewalStatus

instance Prelude.ToHeader LoadBalancerTlsCertificateRenewalStatus

instance Prelude.FromJSON LoadBalancerTlsCertificateRenewalStatus where
  parseJSON = Prelude.parseJSONText "LoadBalancerTlsCertificateRenewalStatus"
