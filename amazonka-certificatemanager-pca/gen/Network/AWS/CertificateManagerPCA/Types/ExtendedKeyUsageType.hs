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
-- Module      : Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsageType
  ( ExtendedKeyUsageType
      ( ..,
        ExtendedKeyUsageTypeCERTIFICATETRANSPARENCY,
        ExtendedKeyUsageTypeCLIENTAUTH,
        ExtendedKeyUsageTypeCODESIGNING,
        ExtendedKeyUsageTypeDOCUMENTSIGNING,
        ExtendedKeyUsageTypeEMAILPROTECTION,
        ExtendedKeyUsageTypeOCSPSIGNING,
        ExtendedKeyUsageTypeSERVERAUTH,
        ExtendedKeyUsageTypeSMARTCARDLOGIN,
        ExtendedKeyUsageTypeTIMESTAMPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExtendedKeyUsageType = ExtendedKeyUsageType'
  { fromExtendedKeyUsageType ::
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

pattern ExtendedKeyUsageTypeCERTIFICATETRANSPARENCY :: ExtendedKeyUsageType
pattern ExtendedKeyUsageTypeCERTIFICATETRANSPARENCY = ExtendedKeyUsageType' "CERTIFICATE_TRANSPARENCY"

pattern ExtendedKeyUsageTypeCLIENTAUTH :: ExtendedKeyUsageType
pattern ExtendedKeyUsageTypeCLIENTAUTH = ExtendedKeyUsageType' "CLIENT_AUTH"

pattern ExtendedKeyUsageTypeCODESIGNING :: ExtendedKeyUsageType
pattern ExtendedKeyUsageTypeCODESIGNING = ExtendedKeyUsageType' "CODE_SIGNING"

pattern ExtendedKeyUsageTypeDOCUMENTSIGNING :: ExtendedKeyUsageType
pattern ExtendedKeyUsageTypeDOCUMENTSIGNING = ExtendedKeyUsageType' "DOCUMENT_SIGNING"

pattern ExtendedKeyUsageTypeEMAILPROTECTION :: ExtendedKeyUsageType
pattern ExtendedKeyUsageTypeEMAILPROTECTION = ExtendedKeyUsageType' "EMAIL_PROTECTION"

pattern ExtendedKeyUsageTypeOCSPSIGNING :: ExtendedKeyUsageType
pattern ExtendedKeyUsageTypeOCSPSIGNING = ExtendedKeyUsageType' "OCSP_SIGNING"

pattern ExtendedKeyUsageTypeSERVERAUTH :: ExtendedKeyUsageType
pattern ExtendedKeyUsageTypeSERVERAUTH = ExtendedKeyUsageType' "SERVER_AUTH"

pattern ExtendedKeyUsageTypeSMARTCARDLOGIN :: ExtendedKeyUsageType
pattern ExtendedKeyUsageTypeSMARTCARDLOGIN = ExtendedKeyUsageType' "SMART_CARD_LOGIN"

pattern ExtendedKeyUsageTypeTIMESTAMPING :: ExtendedKeyUsageType
pattern ExtendedKeyUsageTypeTIMESTAMPING = ExtendedKeyUsageType' "TIME_STAMPING"

{-# COMPLETE
  ExtendedKeyUsageTypeCERTIFICATETRANSPARENCY,
  ExtendedKeyUsageTypeCLIENTAUTH,
  ExtendedKeyUsageTypeCODESIGNING,
  ExtendedKeyUsageTypeDOCUMENTSIGNING,
  ExtendedKeyUsageTypeEMAILPROTECTION,
  ExtendedKeyUsageTypeOCSPSIGNING,
  ExtendedKeyUsageTypeSERVERAUTH,
  ExtendedKeyUsageTypeSMARTCARDLOGIN,
  ExtendedKeyUsageTypeTIMESTAMPING,
  ExtendedKeyUsageType'
  #-}

instance Prelude.FromText ExtendedKeyUsageType where
  parser = ExtendedKeyUsageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExtendedKeyUsageType where
  toText (ExtendedKeyUsageType' x) = x

instance Prelude.Hashable ExtendedKeyUsageType

instance Prelude.NFData ExtendedKeyUsageType

instance Prelude.ToByteString ExtendedKeyUsageType

instance Prelude.ToQuery ExtendedKeyUsageType

instance Prelude.ToHeader ExtendedKeyUsageType

instance Prelude.ToJSON ExtendedKeyUsageType where
  toJSON = Prelude.toJSONText
