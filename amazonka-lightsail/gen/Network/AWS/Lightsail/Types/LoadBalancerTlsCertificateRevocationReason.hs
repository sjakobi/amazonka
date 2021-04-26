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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateRevocationReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateRevocationReason
  ( LoadBalancerTlsCertificateRevocationReason
      ( ..,
        LoadBalancerTlsCertificateRevocationReasonAACOMPROMISE,
        LoadBalancerTlsCertificateRevocationReasonAFFILIATIONCHANGED,
        LoadBalancerTlsCertificateRevocationReasonCACOMPROMISE,
        LoadBalancerTlsCertificateRevocationReasonCERTIFICATEHOLD,
        LoadBalancerTlsCertificateRevocationReasonCESSATIONOFOPERATION,
        LoadBalancerTlsCertificateRevocationReasonKEYCOMPROMISE,
        LoadBalancerTlsCertificateRevocationReasonPRIVILEGEWITHDRAWN,
        LoadBalancerTlsCertificateRevocationReasonREMOVEFROMCRL,
        LoadBalancerTlsCertificateRevocationReasonSUPERCEDED,
        LoadBalancerTlsCertificateRevocationReasonUNSPECIFIED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerTlsCertificateRevocationReason = LoadBalancerTlsCertificateRevocationReason'
  { fromLoadBalancerTlsCertificateRevocationReason ::
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

pattern LoadBalancerTlsCertificateRevocationReasonAACOMPROMISE :: LoadBalancerTlsCertificateRevocationReason
pattern LoadBalancerTlsCertificateRevocationReasonAACOMPROMISE = LoadBalancerTlsCertificateRevocationReason' "A_A_COMPROMISE"

pattern LoadBalancerTlsCertificateRevocationReasonAFFILIATIONCHANGED :: LoadBalancerTlsCertificateRevocationReason
pattern LoadBalancerTlsCertificateRevocationReasonAFFILIATIONCHANGED = LoadBalancerTlsCertificateRevocationReason' "AFFILIATION_CHANGED"

pattern LoadBalancerTlsCertificateRevocationReasonCACOMPROMISE :: LoadBalancerTlsCertificateRevocationReason
pattern LoadBalancerTlsCertificateRevocationReasonCACOMPROMISE = LoadBalancerTlsCertificateRevocationReason' "CA_COMPROMISE"

pattern LoadBalancerTlsCertificateRevocationReasonCERTIFICATEHOLD :: LoadBalancerTlsCertificateRevocationReason
pattern LoadBalancerTlsCertificateRevocationReasonCERTIFICATEHOLD = LoadBalancerTlsCertificateRevocationReason' "CERTIFICATE_HOLD"

pattern LoadBalancerTlsCertificateRevocationReasonCESSATIONOFOPERATION :: LoadBalancerTlsCertificateRevocationReason
pattern LoadBalancerTlsCertificateRevocationReasonCESSATIONOFOPERATION = LoadBalancerTlsCertificateRevocationReason' "CESSATION_OF_OPERATION"

pattern LoadBalancerTlsCertificateRevocationReasonKEYCOMPROMISE :: LoadBalancerTlsCertificateRevocationReason
pattern LoadBalancerTlsCertificateRevocationReasonKEYCOMPROMISE = LoadBalancerTlsCertificateRevocationReason' "KEY_COMPROMISE"

pattern LoadBalancerTlsCertificateRevocationReasonPRIVILEGEWITHDRAWN :: LoadBalancerTlsCertificateRevocationReason
pattern LoadBalancerTlsCertificateRevocationReasonPRIVILEGEWITHDRAWN = LoadBalancerTlsCertificateRevocationReason' "PRIVILEGE_WITHDRAWN"

pattern LoadBalancerTlsCertificateRevocationReasonREMOVEFROMCRL :: LoadBalancerTlsCertificateRevocationReason
pattern LoadBalancerTlsCertificateRevocationReasonREMOVEFROMCRL = LoadBalancerTlsCertificateRevocationReason' "REMOVE_FROM_CRL"

pattern LoadBalancerTlsCertificateRevocationReasonSUPERCEDED :: LoadBalancerTlsCertificateRevocationReason
pattern LoadBalancerTlsCertificateRevocationReasonSUPERCEDED = LoadBalancerTlsCertificateRevocationReason' "SUPERCEDED"

pattern LoadBalancerTlsCertificateRevocationReasonUNSPECIFIED :: LoadBalancerTlsCertificateRevocationReason
pattern LoadBalancerTlsCertificateRevocationReasonUNSPECIFIED = LoadBalancerTlsCertificateRevocationReason' "UNSPECIFIED"

{-# COMPLETE
  LoadBalancerTlsCertificateRevocationReasonAACOMPROMISE,
  LoadBalancerTlsCertificateRevocationReasonAFFILIATIONCHANGED,
  LoadBalancerTlsCertificateRevocationReasonCACOMPROMISE,
  LoadBalancerTlsCertificateRevocationReasonCERTIFICATEHOLD,
  LoadBalancerTlsCertificateRevocationReasonCESSATIONOFOPERATION,
  LoadBalancerTlsCertificateRevocationReasonKEYCOMPROMISE,
  LoadBalancerTlsCertificateRevocationReasonPRIVILEGEWITHDRAWN,
  LoadBalancerTlsCertificateRevocationReasonREMOVEFROMCRL,
  LoadBalancerTlsCertificateRevocationReasonSUPERCEDED,
  LoadBalancerTlsCertificateRevocationReasonUNSPECIFIED,
  LoadBalancerTlsCertificateRevocationReason'
  #-}

instance Prelude.FromText LoadBalancerTlsCertificateRevocationReason where
  parser = LoadBalancerTlsCertificateRevocationReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerTlsCertificateRevocationReason where
  toText (LoadBalancerTlsCertificateRevocationReason' x) = x

instance Prelude.Hashable LoadBalancerTlsCertificateRevocationReason

instance Prelude.NFData LoadBalancerTlsCertificateRevocationReason

instance Prelude.ToByteString LoadBalancerTlsCertificateRevocationReason

instance Prelude.ToQuery LoadBalancerTlsCertificateRevocationReason

instance Prelude.ToHeader LoadBalancerTlsCertificateRevocationReason

instance Prelude.FromJSON LoadBalancerTlsCertificateRevocationReason where
  parseJSON = Prelude.parseJSONText "LoadBalancerTlsCertificateRevocationReason"
