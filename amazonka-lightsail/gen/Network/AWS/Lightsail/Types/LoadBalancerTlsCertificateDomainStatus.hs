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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateDomainStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateDomainStatus
  ( LoadBalancerTlsCertificateDomainStatus
      ( ..,
        LoadBalancerTlsCertificateDomainStatusFAILED,
        LoadBalancerTlsCertificateDomainStatusPENDINGVALIDATION,
        LoadBalancerTlsCertificateDomainStatusSUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerTlsCertificateDomainStatus = LoadBalancerTlsCertificateDomainStatus'
  { fromLoadBalancerTlsCertificateDomainStatus ::
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

pattern LoadBalancerTlsCertificateDomainStatusFAILED :: LoadBalancerTlsCertificateDomainStatus
pattern LoadBalancerTlsCertificateDomainStatusFAILED = LoadBalancerTlsCertificateDomainStatus' "FAILED"

pattern LoadBalancerTlsCertificateDomainStatusPENDINGVALIDATION :: LoadBalancerTlsCertificateDomainStatus
pattern LoadBalancerTlsCertificateDomainStatusPENDINGVALIDATION = LoadBalancerTlsCertificateDomainStatus' "PENDING_VALIDATION"

pattern LoadBalancerTlsCertificateDomainStatusSUCCESS :: LoadBalancerTlsCertificateDomainStatus
pattern LoadBalancerTlsCertificateDomainStatusSUCCESS = LoadBalancerTlsCertificateDomainStatus' "SUCCESS"

{-# COMPLETE
  LoadBalancerTlsCertificateDomainStatusFAILED,
  LoadBalancerTlsCertificateDomainStatusPENDINGVALIDATION,
  LoadBalancerTlsCertificateDomainStatusSUCCESS,
  LoadBalancerTlsCertificateDomainStatus'
  #-}

instance Prelude.FromText LoadBalancerTlsCertificateDomainStatus where
  parser = LoadBalancerTlsCertificateDomainStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerTlsCertificateDomainStatus where
  toText (LoadBalancerTlsCertificateDomainStatus' x) = x

instance Prelude.Hashable LoadBalancerTlsCertificateDomainStatus

instance Prelude.NFData LoadBalancerTlsCertificateDomainStatus

instance Prelude.ToByteString LoadBalancerTlsCertificateDomainStatus

instance Prelude.ToQuery LoadBalancerTlsCertificateDomainStatus

instance Prelude.ToHeader LoadBalancerTlsCertificateDomainStatus

instance Prelude.FromJSON LoadBalancerTlsCertificateDomainStatus where
  parseJSON = Prelude.parseJSONText "LoadBalancerTlsCertificateDomainStatus"
