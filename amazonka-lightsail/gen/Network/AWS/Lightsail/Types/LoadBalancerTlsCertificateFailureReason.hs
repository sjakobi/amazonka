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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateFailureReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateFailureReason
  ( LoadBalancerTlsCertificateFailureReason
      ( ..,
        LoadBalancerTlsCertificateFailureReasonADDITIONALVERIFICATIONREQUIRED,
        LoadBalancerTlsCertificateFailureReasonDOMAINNOTALLOWED,
        LoadBalancerTlsCertificateFailureReasonINVALIDPUBLICDOMAIN,
        LoadBalancerTlsCertificateFailureReasonNOAVAILABLECONTACTS,
        LoadBalancerTlsCertificateFailureReasonOTHER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerTlsCertificateFailureReason = LoadBalancerTlsCertificateFailureReason'
  { fromLoadBalancerTlsCertificateFailureReason ::
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

pattern LoadBalancerTlsCertificateFailureReasonADDITIONALVERIFICATIONREQUIRED :: LoadBalancerTlsCertificateFailureReason
pattern LoadBalancerTlsCertificateFailureReasonADDITIONALVERIFICATIONREQUIRED = LoadBalancerTlsCertificateFailureReason' "ADDITIONAL_VERIFICATION_REQUIRED"

pattern LoadBalancerTlsCertificateFailureReasonDOMAINNOTALLOWED :: LoadBalancerTlsCertificateFailureReason
pattern LoadBalancerTlsCertificateFailureReasonDOMAINNOTALLOWED = LoadBalancerTlsCertificateFailureReason' "DOMAIN_NOT_ALLOWED"

pattern LoadBalancerTlsCertificateFailureReasonINVALIDPUBLICDOMAIN :: LoadBalancerTlsCertificateFailureReason
pattern LoadBalancerTlsCertificateFailureReasonINVALIDPUBLICDOMAIN = LoadBalancerTlsCertificateFailureReason' "INVALID_PUBLIC_DOMAIN"

pattern LoadBalancerTlsCertificateFailureReasonNOAVAILABLECONTACTS :: LoadBalancerTlsCertificateFailureReason
pattern LoadBalancerTlsCertificateFailureReasonNOAVAILABLECONTACTS = LoadBalancerTlsCertificateFailureReason' "NO_AVAILABLE_CONTACTS"

pattern LoadBalancerTlsCertificateFailureReasonOTHER :: LoadBalancerTlsCertificateFailureReason
pattern LoadBalancerTlsCertificateFailureReasonOTHER = LoadBalancerTlsCertificateFailureReason' "OTHER"

{-# COMPLETE
  LoadBalancerTlsCertificateFailureReasonADDITIONALVERIFICATIONREQUIRED,
  LoadBalancerTlsCertificateFailureReasonDOMAINNOTALLOWED,
  LoadBalancerTlsCertificateFailureReasonINVALIDPUBLICDOMAIN,
  LoadBalancerTlsCertificateFailureReasonNOAVAILABLECONTACTS,
  LoadBalancerTlsCertificateFailureReasonOTHER,
  LoadBalancerTlsCertificateFailureReason'
  #-}

instance Prelude.FromText LoadBalancerTlsCertificateFailureReason where
  parser = LoadBalancerTlsCertificateFailureReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerTlsCertificateFailureReason where
  toText (LoadBalancerTlsCertificateFailureReason' x) = x

instance Prelude.Hashable LoadBalancerTlsCertificateFailureReason

instance Prelude.NFData LoadBalancerTlsCertificateFailureReason

instance Prelude.ToByteString LoadBalancerTlsCertificateFailureReason

instance Prelude.ToQuery LoadBalancerTlsCertificateFailureReason

instance Prelude.ToHeader LoadBalancerTlsCertificateFailureReason

instance Prelude.FromJSON LoadBalancerTlsCertificateFailureReason where
  parseJSON = Prelude.parseJSONText "LoadBalancerTlsCertificateFailureReason"
