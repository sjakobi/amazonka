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
-- Module      : Network.AWS.Route53Domains.Types.ExtraParamName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.ExtraParamName
  ( ExtraParamName
      ( ..,
        ExtraParamNameAUIDNUMBER,
        ExtraParamNameAUIDTYPE,
        ExtraParamNameBIRTHCITY,
        ExtraParamNameBIRTHCOUNTRY,
        ExtraParamNameBIRTHDATEINYYYYMMDD,
        ExtraParamNameBIRTHDEPARTMENT,
        ExtraParamNameBRANDNUMBER,
        ExtraParamNameCABUSINESSENTITYTYPE,
        ExtraParamNameCALEGALREPRESENTATIVE,
        ExtraParamNameCALEGALREPRESENTATIVECAPACITY,
        ExtraParamNameCALEGALTYPE,
        ExtraParamNameDOCUMENTNUMBER,
        ExtraParamNameDUNSNUMBER,
        ExtraParamNameESIDENTIFICATION,
        ExtraParamNameESIDENTIFICATIONTYPE,
        ExtraParamNameESLEGALFORM,
        ExtraParamNameFIBUSINESSNUMBER,
        ExtraParamNameFIIDNUMBER,
        ExtraParamNameFINATIONALITY,
        ExtraParamNameFIORGANIZATIONTYPE,
        ExtraParamNameITNATIONALITY,
        ExtraParamNameITPIN,
        ExtraParamNameITREGISTRANTENTITYTYPE,
        ExtraParamNameRUPASSPORTDATA,
        ExtraParamNameSEIDNUMBER,
        ExtraParamNameSGIDNUMBER,
        ExtraParamNameUKCOMPANYNUMBER,
        ExtraParamNameUKCONTACTTYPE,
        ExtraParamNameVATNUMBER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExtraParamName = ExtraParamName'
  { fromExtraParamName ::
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

pattern ExtraParamNameAUIDNUMBER :: ExtraParamName
pattern ExtraParamNameAUIDNUMBER = ExtraParamName' "AU_ID_NUMBER"

pattern ExtraParamNameAUIDTYPE :: ExtraParamName
pattern ExtraParamNameAUIDTYPE = ExtraParamName' "AU_ID_TYPE"

pattern ExtraParamNameBIRTHCITY :: ExtraParamName
pattern ExtraParamNameBIRTHCITY = ExtraParamName' "BIRTH_CITY"

pattern ExtraParamNameBIRTHCOUNTRY :: ExtraParamName
pattern ExtraParamNameBIRTHCOUNTRY = ExtraParamName' "BIRTH_COUNTRY"

pattern ExtraParamNameBIRTHDATEINYYYYMMDD :: ExtraParamName
pattern ExtraParamNameBIRTHDATEINYYYYMMDD = ExtraParamName' "BIRTH_DATE_IN_YYYY_MM_DD"

pattern ExtraParamNameBIRTHDEPARTMENT :: ExtraParamName
pattern ExtraParamNameBIRTHDEPARTMENT = ExtraParamName' "BIRTH_DEPARTMENT"

pattern ExtraParamNameBRANDNUMBER :: ExtraParamName
pattern ExtraParamNameBRANDNUMBER = ExtraParamName' "BRAND_NUMBER"

pattern ExtraParamNameCABUSINESSENTITYTYPE :: ExtraParamName
pattern ExtraParamNameCABUSINESSENTITYTYPE = ExtraParamName' "CA_BUSINESS_ENTITY_TYPE"

pattern ExtraParamNameCALEGALREPRESENTATIVE :: ExtraParamName
pattern ExtraParamNameCALEGALREPRESENTATIVE = ExtraParamName' "CA_LEGAL_REPRESENTATIVE"

pattern ExtraParamNameCALEGALREPRESENTATIVECAPACITY :: ExtraParamName
pattern ExtraParamNameCALEGALREPRESENTATIVECAPACITY = ExtraParamName' "CA_LEGAL_REPRESENTATIVE_CAPACITY"

pattern ExtraParamNameCALEGALTYPE :: ExtraParamName
pattern ExtraParamNameCALEGALTYPE = ExtraParamName' "CA_LEGAL_TYPE"

pattern ExtraParamNameDOCUMENTNUMBER :: ExtraParamName
pattern ExtraParamNameDOCUMENTNUMBER = ExtraParamName' "DOCUMENT_NUMBER"

pattern ExtraParamNameDUNSNUMBER :: ExtraParamName
pattern ExtraParamNameDUNSNUMBER = ExtraParamName' "DUNS_NUMBER"

pattern ExtraParamNameESIDENTIFICATION :: ExtraParamName
pattern ExtraParamNameESIDENTIFICATION = ExtraParamName' "ES_IDENTIFICATION"

pattern ExtraParamNameESIDENTIFICATIONTYPE :: ExtraParamName
pattern ExtraParamNameESIDENTIFICATIONTYPE = ExtraParamName' "ES_IDENTIFICATION_TYPE"

pattern ExtraParamNameESLEGALFORM :: ExtraParamName
pattern ExtraParamNameESLEGALFORM = ExtraParamName' "ES_LEGAL_FORM"

pattern ExtraParamNameFIBUSINESSNUMBER :: ExtraParamName
pattern ExtraParamNameFIBUSINESSNUMBER = ExtraParamName' "FI_BUSINESS_NUMBER"

pattern ExtraParamNameFIIDNUMBER :: ExtraParamName
pattern ExtraParamNameFIIDNUMBER = ExtraParamName' "FI_ID_NUMBER"

pattern ExtraParamNameFINATIONALITY :: ExtraParamName
pattern ExtraParamNameFINATIONALITY = ExtraParamName' "FI_NATIONALITY"

pattern ExtraParamNameFIORGANIZATIONTYPE :: ExtraParamName
pattern ExtraParamNameFIORGANIZATIONTYPE = ExtraParamName' "FI_ORGANIZATION_TYPE"

pattern ExtraParamNameITNATIONALITY :: ExtraParamName
pattern ExtraParamNameITNATIONALITY = ExtraParamName' "IT_NATIONALITY"

pattern ExtraParamNameITPIN :: ExtraParamName
pattern ExtraParamNameITPIN = ExtraParamName' "IT_PIN"

pattern ExtraParamNameITREGISTRANTENTITYTYPE :: ExtraParamName
pattern ExtraParamNameITREGISTRANTENTITYTYPE = ExtraParamName' "IT_REGISTRANT_ENTITY_TYPE"

pattern ExtraParamNameRUPASSPORTDATA :: ExtraParamName
pattern ExtraParamNameRUPASSPORTDATA = ExtraParamName' "RU_PASSPORT_DATA"

pattern ExtraParamNameSEIDNUMBER :: ExtraParamName
pattern ExtraParamNameSEIDNUMBER = ExtraParamName' "SE_ID_NUMBER"

pattern ExtraParamNameSGIDNUMBER :: ExtraParamName
pattern ExtraParamNameSGIDNUMBER = ExtraParamName' "SG_ID_NUMBER"

pattern ExtraParamNameUKCOMPANYNUMBER :: ExtraParamName
pattern ExtraParamNameUKCOMPANYNUMBER = ExtraParamName' "UK_COMPANY_NUMBER"

pattern ExtraParamNameUKCONTACTTYPE :: ExtraParamName
pattern ExtraParamNameUKCONTACTTYPE = ExtraParamName' "UK_CONTACT_TYPE"

pattern ExtraParamNameVATNUMBER :: ExtraParamName
pattern ExtraParamNameVATNUMBER = ExtraParamName' "VAT_NUMBER"

{-# COMPLETE
  ExtraParamNameAUIDNUMBER,
  ExtraParamNameAUIDTYPE,
  ExtraParamNameBIRTHCITY,
  ExtraParamNameBIRTHCOUNTRY,
  ExtraParamNameBIRTHDATEINYYYYMMDD,
  ExtraParamNameBIRTHDEPARTMENT,
  ExtraParamNameBRANDNUMBER,
  ExtraParamNameCABUSINESSENTITYTYPE,
  ExtraParamNameCALEGALREPRESENTATIVE,
  ExtraParamNameCALEGALREPRESENTATIVECAPACITY,
  ExtraParamNameCALEGALTYPE,
  ExtraParamNameDOCUMENTNUMBER,
  ExtraParamNameDUNSNUMBER,
  ExtraParamNameESIDENTIFICATION,
  ExtraParamNameESIDENTIFICATIONTYPE,
  ExtraParamNameESLEGALFORM,
  ExtraParamNameFIBUSINESSNUMBER,
  ExtraParamNameFIIDNUMBER,
  ExtraParamNameFINATIONALITY,
  ExtraParamNameFIORGANIZATIONTYPE,
  ExtraParamNameITNATIONALITY,
  ExtraParamNameITPIN,
  ExtraParamNameITREGISTRANTENTITYTYPE,
  ExtraParamNameRUPASSPORTDATA,
  ExtraParamNameSEIDNUMBER,
  ExtraParamNameSGIDNUMBER,
  ExtraParamNameUKCOMPANYNUMBER,
  ExtraParamNameUKCONTACTTYPE,
  ExtraParamNameVATNUMBER,
  ExtraParamName'
  #-}

instance Prelude.FromText ExtraParamName where
  parser = ExtraParamName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExtraParamName where
  toText (ExtraParamName' x) = x

instance Prelude.Hashable ExtraParamName

instance Prelude.NFData ExtraParamName

instance Prelude.ToByteString ExtraParamName

instance Prelude.ToQuery ExtraParamName

instance Prelude.ToHeader ExtraParamName

instance Prelude.ToJSON ExtraParamName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExtraParamName where
  parseJSON = Prelude.parseJSONText "ExtraParamName"
