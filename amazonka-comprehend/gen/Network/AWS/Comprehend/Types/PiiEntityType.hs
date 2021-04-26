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
-- Module      : Network.AWS.Comprehend.Types.PiiEntityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.PiiEntityType
  ( PiiEntityType
      ( ..,
        PiiEntityTypeADDRESS,
        PiiEntityTypeAGE,
        PiiEntityTypeALL,
        PiiEntityTypeAWSACCESSKEY,
        PiiEntityTypeAWSSECRETKEY,
        PiiEntityTypeBANKACCOUNTNUMBER,
        PiiEntityTypeBANKROUTING,
        PiiEntityTypeCREDITDEBITCVV,
        PiiEntityTypeCREDITDEBITEXPIRY,
        PiiEntityTypeCREDITDEBITNUMBER,
        PiiEntityTypeDATETIME,
        PiiEntityTypeDRIVERID,
        PiiEntityTypeEMAIL,
        PiiEntityTypeIPADDRESS,
        PiiEntityTypeMACADDRESS,
        PiiEntityTypeNAME,
        PiiEntityTypePASSPORTNUMBER,
        PiiEntityTypePASSWORD,
        PiiEntityTypePHONE,
        PiiEntityTypePIN,
        PiiEntityTypeSSN,
        PiiEntityTypeURL,
        PiiEntityTypeUSERNAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PiiEntityType = PiiEntityType'
  { fromPiiEntityType ::
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

pattern PiiEntityTypeADDRESS :: PiiEntityType
pattern PiiEntityTypeADDRESS = PiiEntityType' "ADDRESS"

pattern PiiEntityTypeAGE :: PiiEntityType
pattern PiiEntityTypeAGE = PiiEntityType' "AGE"

pattern PiiEntityTypeALL :: PiiEntityType
pattern PiiEntityTypeALL = PiiEntityType' "ALL"

pattern PiiEntityTypeAWSACCESSKEY :: PiiEntityType
pattern PiiEntityTypeAWSACCESSKEY = PiiEntityType' "AWS_ACCESS_KEY"

pattern PiiEntityTypeAWSSECRETKEY :: PiiEntityType
pattern PiiEntityTypeAWSSECRETKEY = PiiEntityType' "AWS_SECRET_KEY"

pattern PiiEntityTypeBANKACCOUNTNUMBER :: PiiEntityType
pattern PiiEntityTypeBANKACCOUNTNUMBER = PiiEntityType' "BANK_ACCOUNT_NUMBER"

pattern PiiEntityTypeBANKROUTING :: PiiEntityType
pattern PiiEntityTypeBANKROUTING = PiiEntityType' "BANK_ROUTING"

pattern PiiEntityTypeCREDITDEBITCVV :: PiiEntityType
pattern PiiEntityTypeCREDITDEBITCVV = PiiEntityType' "CREDIT_DEBIT_CVV"

pattern PiiEntityTypeCREDITDEBITEXPIRY :: PiiEntityType
pattern PiiEntityTypeCREDITDEBITEXPIRY = PiiEntityType' "CREDIT_DEBIT_EXPIRY"

pattern PiiEntityTypeCREDITDEBITNUMBER :: PiiEntityType
pattern PiiEntityTypeCREDITDEBITNUMBER = PiiEntityType' "CREDIT_DEBIT_NUMBER"

pattern PiiEntityTypeDATETIME :: PiiEntityType
pattern PiiEntityTypeDATETIME = PiiEntityType' "DATE_TIME"

pattern PiiEntityTypeDRIVERID :: PiiEntityType
pattern PiiEntityTypeDRIVERID = PiiEntityType' "DRIVER_ID"

pattern PiiEntityTypeEMAIL :: PiiEntityType
pattern PiiEntityTypeEMAIL = PiiEntityType' "EMAIL"

pattern PiiEntityTypeIPADDRESS :: PiiEntityType
pattern PiiEntityTypeIPADDRESS = PiiEntityType' "IP_ADDRESS"

pattern PiiEntityTypeMACADDRESS :: PiiEntityType
pattern PiiEntityTypeMACADDRESS = PiiEntityType' "MAC_ADDRESS"

pattern PiiEntityTypeNAME :: PiiEntityType
pattern PiiEntityTypeNAME = PiiEntityType' "NAME"

pattern PiiEntityTypePASSPORTNUMBER :: PiiEntityType
pattern PiiEntityTypePASSPORTNUMBER = PiiEntityType' "PASSPORT_NUMBER"

pattern PiiEntityTypePASSWORD :: PiiEntityType
pattern PiiEntityTypePASSWORD = PiiEntityType' "PASSWORD"

pattern PiiEntityTypePHONE :: PiiEntityType
pattern PiiEntityTypePHONE = PiiEntityType' "PHONE"

pattern PiiEntityTypePIN :: PiiEntityType
pattern PiiEntityTypePIN = PiiEntityType' "PIN"

pattern PiiEntityTypeSSN :: PiiEntityType
pattern PiiEntityTypeSSN = PiiEntityType' "SSN"

pattern PiiEntityTypeURL :: PiiEntityType
pattern PiiEntityTypeURL = PiiEntityType' "URL"

pattern PiiEntityTypeUSERNAME :: PiiEntityType
pattern PiiEntityTypeUSERNAME = PiiEntityType' "USERNAME"

{-# COMPLETE
  PiiEntityTypeADDRESS,
  PiiEntityTypeAGE,
  PiiEntityTypeALL,
  PiiEntityTypeAWSACCESSKEY,
  PiiEntityTypeAWSSECRETKEY,
  PiiEntityTypeBANKACCOUNTNUMBER,
  PiiEntityTypeBANKROUTING,
  PiiEntityTypeCREDITDEBITCVV,
  PiiEntityTypeCREDITDEBITEXPIRY,
  PiiEntityTypeCREDITDEBITNUMBER,
  PiiEntityTypeDATETIME,
  PiiEntityTypeDRIVERID,
  PiiEntityTypeEMAIL,
  PiiEntityTypeIPADDRESS,
  PiiEntityTypeMACADDRESS,
  PiiEntityTypeNAME,
  PiiEntityTypePASSPORTNUMBER,
  PiiEntityTypePASSWORD,
  PiiEntityTypePHONE,
  PiiEntityTypePIN,
  PiiEntityTypeSSN,
  PiiEntityTypeURL,
  PiiEntityTypeUSERNAME,
  PiiEntityType'
  #-}

instance Prelude.FromText PiiEntityType where
  parser = PiiEntityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PiiEntityType where
  toText (PiiEntityType' x) = x

instance Prelude.Hashable PiiEntityType

instance Prelude.NFData PiiEntityType

instance Prelude.ToByteString PiiEntityType

instance Prelude.ToQuery PiiEntityType

instance Prelude.ToHeader PiiEntityType

instance Prelude.ToJSON PiiEntityType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PiiEntityType where
  parseJSON = Prelude.parseJSONText "PiiEntityType"
