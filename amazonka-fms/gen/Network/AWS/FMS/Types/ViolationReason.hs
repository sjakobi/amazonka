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
-- Module      : Network.AWS.FMS.Types.ViolationReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.ViolationReason
  ( ViolationReason
      ( ..,
        ViolationReasonMISSINGEXPECTEDROUTETABLE,
        ViolationReasonMISSINGFIREWALL,
        ViolationReasonMISSINGFIREWALLSUBNETINAZ,
        ViolationReasonNETWORKFIREWALLPOLICYMODIFIED,
        ViolationReasonRESOURCEINCORRECTWEBACL,
        ViolationReasonRESOURCEMISSINGSECURITYGROUP,
        ViolationReasonRESOURCEMISSINGSHIELDPROTECTION,
        ViolationReasonRESOURCEMISSINGWEBACL,
        ViolationReasonRESOURCEMISSINGWEBACLORSHIELDPROTECTION,
        ViolationReasonRESOURCEVIOLATESAUDITSECURITYGROUP,
        ViolationReasonSECURITYGROUPREDUNDANT,
        ViolationReasonSECURITYGROUPUNUSED,
        ViolationReasonWEBACLMISSINGRULEGROUP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ViolationReason = ViolationReason'
  { fromViolationReason ::
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

pattern ViolationReasonMISSINGEXPECTEDROUTETABLE :: ViolationReason
pattern ViolationReasonMISSINGEXPECTEDROUTETABLE = ViolationReason' "MISSING_EXPECTED_ROUTE_TABLE"

pattern ViolationReasonMISSINGFIREWALL :: ViolationReason
pattern ViolationReasonMISSINGFIREWALL = ViolationReason' "MISSING_FIREWALL"

pattern ViolationReasonMISSINGFIREWALLSUBNETINAZ :: ViolationReason
pattern ViolationReasonMISSINGFIREWALLSUBNETINAZ = ViolationReason' "MISSING_FIREWALL_SUBNET_IN_AZ"

pattern ViolationReasonNETWORKFIREWALLPOLICYMODIFIED :: ViolationReason
pattern ViolationReasonNETWORKFIREWALLPOLICYMODIFIED = ViolationReason' "NETWORK_FIREWALL_POLICY_MODIFIED"

pattern ViolationReasonRESOURCEINCORRECTWEBACL :: ViolationReason
pattern ViolationReasonRESOURCEINCORRECTWEBACL = ViolationReason' "RESOURCE_INCORRECT_WEB_ACL"

pattern ViolationReasonRESOURCEMISSINGSECURITYGROUP :: ViolationReason
pattern ViolationReasonRESOURCEMISSINGSECURITYGROUP = ViolationReason' "RESOURCE_MISSING_SECURITY_GROUP"

pattern ViolationReasonRESOURCEMISSINGSHIELDPROTECTION :: ViolationReason
pattern ViolationReasonRESOURCEMISSINGSHIELDPROTECTION = ViolationReason' "RESOURCE_MISSING_SHIELD_PROTECTION"

pattern ViolationReasonRESOURCEMISSINGWEBACL :: ViolationReason
pattern ViolationReasonRESOURCEMISSINGWEBACL = ViolationReason' "RESOURCE_MISSING_WEB_ACL"

pattern ViolationReasonRESOURCEMISSINGWEBACLORSHIELDPROTECTION :: ViolationReason
pattern ViolationReasonRESOURCEMISSINGWEBACLORSHIELDPROTECTION = ViolationReason' "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION"

pattern ViolationReasonRESOURCEVIOLATESAUDITSECURITYGROUP :: ViolationReason
pattern ViolationReasonRESOURCEVIOLATESAUDITSECURITYGROUP = ViolationReason' "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP"

pattern ViolationReasonSECURITYGROUPREDUNDANT :: ViolationReason
pattern ViolationReasonSECURITYGROUPREDUNDANT = ViolationReason' "SECURITY_GROUP_REDUNDANT"

pattern ViolationReasonSECURITYGROUPUNUSED :: ViolationReason
pattern ViolationReasonSECURITYGROUPUNUSED = ViolationReason' "SECURITY_GROUP_UNUSED"

pattern ViolationReasonWEBACLMISSINGRULEGROUP :: ViolationReason
pattern ViolationReasonWEBACLMISSINGRULEGROUP = ViolationReason' "WEB_ACL_MISSING_RULE_GROUP"

{-# COMPLETE
  ViolationReasonMISSINGEXPECTEDROUTETABLE,
  ViolationReasonMISSINGFIREWALL,
  ViolationReasonMISSINGFIREWALLSUBNETINAZ,
  ViolationReasonNETWORKFIREWALLPOLICYMODIFIED,
  ViolationReasonRESOURCEINCORRECTWEBACL,
  ViolationReasonRESOURCEMISSINGSECURITYGROUP,
  ViolationReasonRESOURCEMISSINGSHIELDPROTECTION,
  ViolationReasonRESOURCEMISSINGWEBACL,
  ViolationReasonRESOURCEMISSINGWEBACLORSHIELDPROTECTION,
  ViolationReasonRESOURCEVIOLATESAUDITSECURITYGROUP,
  ViolationReasonSECURITYGROUPREDUNDANT,
  ViolationReasonSECURITYGROUPUNUSED,
  ViolationReasonWEBACLMISSINGRULEGROUP,
  ViolationReason'
  #-}

instance Prelude.FromText ViolationReason where
  parser = ViolationReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText ViolationReason where
  toText (ViolationReason' x) = x

instance Prelude.Hashable ViolationReason

instance Prelude.NFData ViolationReason

instance Prelude.ToByteString ViolationReason

instance Prelude.ToQuery ViolationReason

instance Prelude.ToHeader ViolationReason

instance Prelude.FromJSON ViolationReason where
  parseJSON = Prelude.parseJSONText "ViolationReason"
