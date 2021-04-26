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
-- Module      : Network.AWS.CertificateManager.Types.FailureReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.FailureReason
  ( FailureReason
      ( ..,
        FailureReasonADDITIONALVERIFICATIONREQUIRED,
        FailureReasonCAAERROR,
        FailureReasonDOMAINNOTALLOWED,
        FailureReasonDOMAINVALIDATIONDENIED,
        FailureReasonINVALIDPUBLICDOMAIN,
        FailureReasonNOAVAILABLECONTACTS,
        FailureReasonOTHER,
        FailureReasonPCAACCESSDENIED,
        FailureReasonPCAINVALIDARGS,
        FailureReasonPCAINVALIDARN,
        FailureReasonPCAINVALIDDURATION,
        FailureReasonPCAINVALIDSTATE,
        FailureReasonPCALIMITEXCEEDED,
        FailureReasonPCANAMECONSTRAINTSVALIDATION,
        FailureReasonPCAREQUESTFAILED,
        FailureReasonPCARESOURCENOTFOUND,
        FailureReasonSLRNOTFOUND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FailureReason = FailureReason'
  { fromFailureReason ::
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

pattern FailureReasonADDITIONALVERIFICATIONREQUIRED :: FailureReason
pattern FailureReasonADDITIONALVERIFICATIONREQUIRED = FailureReason' "ADDITIONAL_VERIFICATION_REQUIRED"

pattern FailureReasonCAAERROR :: FailureReason
pattern FailureReasonCAAERROR = FailureReason' "CAA_ERROR"

pattern FailureReasonDOMAINNOTALLOWED :: FailureReason
pattern FailureReasonDOMAINNOTALLOWED = FailureReason' "DOMAIN_NOT_ALLOWED"

pattern FailureReasonDOMAINVALIDATIONDENIED :: FailureReason
pattern FailureReasonDOMAINVALIDATIONDENIED = FailureReason' "DOMAIN_VALIDATION_DENIED"

pattern FailureReasonINVALIDPUBLICDOMAIN :: FailureReason
pattern FailureReasonINVALIDPUBLICDOMAIN = FailureReason' "INVALID_PUBLIC_DOMAIN"

pattern FailureReasonNOAVAILABLECONTACTS :: FailureReason
pattern FailureReasonNOAVAILABLECONTACTS = FailureReason' "NO_AVAILABLE_CONTACTS"

pattern FailureReasonOTHER :: FailureReason
pattern FailureReasonOTHER = FailureReason' "OTHER"

pattern FailureReasonPCAACCESSDENIED :: FailureReason
pattern FailureReasonPCAACCESSDENIED = FailureReason' "PCA_ACCESS_DENIED"

pattern FailureReasonPCAINVALIDARGS :: FailureReason
pattern FailureReasonPCAINVALIDARGS = FailureReason' "PCA_INVALID_ARGS"

pattern FailureReasonPCAINVALIDARN :: FailureReason
pattern FailureReasonPCAINVALIDARN = FailureReason' "PCA_INVALID_ARN"

pattern FailureReasonPCAINVALIDDURATION :: FailureReason
pattern FailureReasonPCAINVALIDDURATION = FailureReason' "PCA_INVALID_DURATION"

pattern FailureReasonPCAINVALIDSTATE :: FailureReason
pattern FailureReasonPCAINVALIDSTATE = FailureReason' "PCA_INVALID_STATE"

pattern FailureReasonPCALIMITEXCEEDED :: FailureReason
pattern FailureReasonPCALIMITEXCEEDED = FailureReason' "PCA_LIMIT_EXCEEDED"

pattern FailureReasonPCANAMECONSTRAINTSVALIDATION :: FailureReason
pattern FailureReasonPCANAMECONSTRAINTSVALIDATION = FailureReason' "PCA_NAME_CONSTRAINTS_VALIDATION"

pattern FailureReasonPCAREQUESTFAILED :: FailureReason
pattern FailureReasonPCAREQUESTFAILED = FailureReason' "PCA_REQUEST_FAILED"

pattern FailureReasonPCARESOURCENOTFOUND :: FailureReason
pattern FailureReasonPCARESOURCENOTFOUND = FailureReason' "PCA_RESOURCE_NOT_FOUND"

pattern FailureReasonSLRNOTFOUND :: FailureReason
pattern FailureReasonSLRNOTFOUND = FailureReason' "SLR_NOT_FOUND"

{-# COMPLETE
  FailureReasonADDITIONALVERIFICATIONREQUIRED,
  FailureReasonCAAERROR,
  FailureReasonDOMAINNOTALLOWED,
  FailureReasonDOMAINVALIDATIONDENIED,
  FailureReasonINVALIDPUBLICDOMAIN,
  FailureReasonNOAVAILABLECONTACTS,
  FailureReasonOTHER,
  FailureReasonPCAACCESSDENIED,
  FailureReasonPCAINVALIDARGS,
  FailureReasonPCAINVALIDARN,
  FailureReasonPCAINVALIDDURATION,
  FailureReasonPCAINVALIDSTATE,
  FailureReasonPCALIMITEXCEEDED,
  FailureReasonPCANAMECONSTRAINTSVALIDATION,
  FailureReasonPCAREQUESTFAILED,
  FailureReasonPCARESOURCENOTFOUND,
  FailureReasonSLRNOTFOUND,
  FailureReason'
  #-}

instance Prelude.FromText FailureReason where
  parser = FailureReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText FailureReason where
  toText (FailureReason' x) = x

instance Prelude.Hashable FailureReason

instance Prelude.NFData FailureReason

instance Prelude.ToByteString FailureReason

instance Prelude.ToQuery FailureReason

instance Prelude.ToHeader FailureReason

instance Prelude.FromJSON FailureReason where
  parseJSON = Prelude.parseJSONText "FailureReason"
