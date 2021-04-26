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
-- Module      : Network.AWS.CertificateManager.Types.ExtendedKeyUsageName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.ExtendedKeyUsageName
  ( ExtendedKeyUsageName
      ( ..,
        ExtendedKeyUsageNameANY,
        ExtendedKeyUsageNameCODESIGNING,
        ExtendedKeyUsageNameCUSTOM,
        ExtendedKeyUsageNameEMAILPROTECTION,
        ExtendedKeyUsageNameIPSECENDSYSTEM,
        ExtendedKeyUsageNameIPSECTUNNEL,
        ExtendedKeyUsageNameIPSECUSER,
        ExtendedKeyUsageNameNONE,
        ExtendedKeyUsageNameOCSPSIGNING,
        ExtendedKeyUsageNameTIMESTAMPING,
        ExtendedKeyUsageNameTLSWEBCLIENTAUTHENTICATION,
        ExtendedKeyUsageNameTLSWEBSERVERAUTHENTICATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExtendedKeyUsageName = ExtendedKeyUsageName'
  { fromExtendedKeyUsageName ::
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

pattern ExtendedKeyUsageNameANY :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameANY = ExtendedKeyUsageName' "ANY"

pattern ExtendedKeyUsageNameCODESIGNING :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameCODESIGNING = ExtendedKeyUsageName' "CODE_SIGNING"

pattern ExtendedKeyUsageNameCUSTOM :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameCUSTOM = ExtendedKeyUsageName' "CUSTOM"

pattern ExtendedKeyUsageNameEMAILPROTECTION :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameEMAILPROTECTION = ExtendedKeyUsageName' "EMAIL_PROTECTION"

pattern ExtendedKeyUsageNameIPSECENDSYSTEM :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameIPSECENDSYSTEM = ExtendedKeyUsageName' "IPSEC_END_SYSTEM"

pattern ExtendedKeyUsageNameIPSECTUNNEL :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameIPSECTUNNEL = ExtendedKeyUsageName' "IPSEC_TUNNEL"

pattern ExtendedKeyUsageNameIPSECUSER :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameIPSECUSER = ExtendedKeyUsageName' "IPSEC_USER"

pattern ExtendedKeyUsageNameNONE :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameNONE = ExtendedKeyUsageName' "NONE"

pattern ExtendedKeyUsageNameOCSPSIGNING :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameOCSPSIGNING = ExtendedKeyUsageName' "OCSP_SIGNING"

pattern ExtendedKeyUsageNameTIMESTAMPING :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameTIMESTAMPING = ExtendedKeyUsageName' "TIME_STAMPING"

pattern ExtendedKeyUsageNameTLSWEBCLIENTAUTHENTICATION :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameTLSWEBCLIENTAUTHENTICATION = ExtendedKeyUsageName' "TLS_WEB_CLIENT_AUTHENTICATION"

pattern ExtendedKeyUsageNameTLSWEBSERVERAUTHENTICATION :: ExtendedKeyUsageName
pattern ExtendedKeyUsageNameTLSWEBSERVERAUTHENTICATION = ExtendedKeyUsageName' "TLS_WEB_SERVER_AUTHENTICATION"

{-# COMPLETE
  ExtendedKeyUsageNameANY,
  ExtendedKeyUsageNameCODESIGNING,
  ExtendedKeyUsageNameCUSTOM,
  ExtendedKeyUsageNameEMAILPROTECTION,
  ExtendedKeyUsageNameIPSECENDSYSTEM,
  ExtendedKeyUsageNameIPSECTUNNEL,
  ExtendedKeyUsageNameIPSECUSER,
  ExtendedKeyUsageNameNONE,
  ExtendedKeyUsageNameOCSPSIGNING,
  ExtendedKeyUsageNameTIMESTAMPING,
  ExtendedKeyUsageNameTLSWEBCLIENTAUTHENTICATION,
  ExtendedKeyUsageNameTLSWEBSERVERAUTHENTICATION,
  ExtendedKeyUsageName'
  #-}

instance Prelude.FromText ExtendedKeyUsageName where
  parser = ExtendedKeyUsageName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExtendedKeyUsageName where
  toText (ExtendedKeyUsageName' x) = x

instance Prelude.Hashable ExtendedKeyUsageName

instance Prelude.NFData ExtendedKeyUsageName

instance Prelude.ToByteString ExtendedKeyUsageName

instance Prelude.ToQuery ExtendedKeyUsageName

instance Prelude.ToHeader ExtendedKeyUsageName

instance Prelude.ToJSON ExtendedKeyUsageName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExtendedKeyUsageName where
  parseJSON = Prelude.parseJSONText "ExtendedKeyUsageName"
