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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateStatus
  ( LoadBalancerTlsCertificateStatus
      ( ..,
        LoadBalancerTlsCertificateStatusEXPIRED,
        LoadBalancerTlsCertificateStatusFAILED,
        LoadBalancerTlsCertificateStatusINACTIVE,
        LoadBalancerTlsCertificateStatusISSUED,
        LoadBalancerTlsCertificateStatusPENDINGVALIDATION,
        LoadBalancerTlsCertificateStatusREVOKED,
        LoadBalancerTlsCertificateStatusUNKNOWN,
        LoadBalancerTlsCertificateStatusVALIDATIONTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerTlsCertificateStatus = LoadBalancerTlsCertificateStatus'
  { fromLoadBalancerTlsCertificateStatus ::
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

pattern LoadBalancerTlsCertificateStatusEXPIRED :: LoadBalancerTlsCertificateStatus
pattern LoadBalancerTlsCertificateStatusEXPIRED = LoadBalancerTlsCertificateStatus' "EXPIRED"

pattern LoadBalancerTlsCertificateStatusFAILED :: LoadBalancerTlsCertificateStatus
pattern LoadBalancerTlsCertificateStatusFAILED = LoadBalancerTlsCertificateStatus' "FAILED"

pattern LoadBalancerTlsCertificateStatusINACTIVE :: LoadBalancerTlsCertificateStatus
pattern LoadBalancerTlsCertificateStatusINACTIVE = LoadBalancerTlsCertificateStatus' "INACTIVE"

pattern LoadBalancerTlsCertificateStatusISSUED :: LoadBalancerTlsCertificateStatus
pattern LoadBalancerTlsCertificateStatusISSUED = LoadBalancerTlsCertificateStatus' "ISSUED"

pattern LoadBalancerTlsCertificateStatusPENDINGVALIDATION :: LoadBalancerTlsCertificateStatus
pattern LoadBalancerTlsCertificateStatusPENDINGVALIDATION = LoadBalancerTlsCertificateStatus' "PENDING_VALIDATION"

pattern LoadBalancerTlsCertificateStatusREVOKED :: LoadBalancerTlsCertificateStatus
pattern LoadBalancerTlsCertificateStatusREVOKED = LoadBalancerTlsCertificateStatus' "REVOKED"

pattern LoadBalancerTlsCertificateStatusUNKNOWN :: LoadBalancerTlsCertificateStatus
pattern LoadBalancerTlsCertificateStatusUNKNOWN = LoadBalancerTlsCertificateStatus' "UNKNOWN"

pattern LoadBalancerTlsCertificateStatusVALIDATIONTIMEDOUT :: LoadBalancerTlsCertificateStatus
pattern LoadBalancerTlsCertificateStatusVALIDATIONTIMEDOUT = LoadBalancerTlsCertificateStatus' "VALIDATION_TIMED_OUT"

{-# COMPLETE
  LoadBalancerTlsCertificateStatusEXPIRED,
  LoadBalancerTlsCertificateStatusFAILED,
  LoadBalancerTlsCertificateStatusINACTIVE,
  LoadBalancerTlsCertificateStatusISSUED,
  LoadBalancerTlsCertificateStatusPENDINGVALIDATION,
  LoadBalancerTlsCertificateStatusREVOKED,
  LoadBalancerTlsCertificateStatusUNKNOWN,
  LoadBalancerTlsCertificateStatusVALIDATIONTIMEDOUT,
  LoadBalancerTlsCertificateStatus'
  #-}

instance Prelude.FromText LoadBalancerTlsCertificateStatus where
  parser = LoadBalancerTlsCertificateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerTlsCertificateStatus where
  toText (LoadBalancerTlsCertificateStatus' x) = x

instance Prelude.Hashable LoadBalancerTlsCertificateStatus

instance Prelude.NFData LoadBalancerTlsCertificateStatus

instance Prelude.ToByteString LoadBalancerTlsCertificateStatus

instance Prelude.ToQuery LoadBalancerTlsCertificateStatus

instance Prelude.ToHeader LoadBalancerTlsCertificateStatus

instance Prelude.FromJSON LoadBalancerTlsCertificateStatus where
  parseJSON = Prelude.parseJSONText "LoadBalancerTlsCertificateStatus"
