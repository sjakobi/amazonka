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
-- Module      : Network.AWS.CertificateManager.Types.KeyUsageName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.KeyUsageName
  ( KeyUsageName
      ( ..,
        KeyUsageNameANY,
        KeyUsageNameCERTIFICATESIGNING,
        KeyUsageNameCRLSIGNING,
        KeyUsageNameCUSTOM,
        KeyUsageNameDATAENCIPHERMENT,
        KeyUsageNameDECIPHERONLY,
        KeyUsageNameDIGITALSIGNATURE,
        KeyUsageNameENCIPHERONLY,
        KeyUsageNameKEYAGREEMENT,
        KeyUsageNameKEYENCIPHERMENT,
        KeyUsageNameNONREPUDIATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype KeyUsageName = KeyUsageName'
  { fromKeyUsageName ::
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

pattern KeyUsageNameANY :: KeyUsageName
pattern KeyUsageNameANY = KeyUsageName' "ANY"

pattern KeyUsageNameCERTIFICATESIGNING :: KeyUsageName
pattern KeyUsageNameCERTIFICATESIGNING = KeyUsageName' "CERTIFICATE_SIGNING"

pattern KeyUsageNameCRLSIGNING :: KeyUsageName
pattern KeyUsageNameCRLSIGNING = KeyUsageName' "CRL_SIGNING"

pattern KeyUsageNameCUSTOM :: KeyUsageName
pattern KeyUsageNameCUSTOM = KeyUsageName' "CUSTOM"

pattern KeyUsageNameDATAENCIPHERMENT :: KeyUsageName
pattern KeyUsageNameDATAENCIPHERMENT = KeyUsageName' "DATA_ENCIPHERMENT"

pattern KeyUsageNameDECIPHERONLY :: KeyUsageName
pattern KeyUsageNameDECIPHERONLY = KeyUsageName' "DECIPHER_ONLY"

pattern KeyUsageNameDIGITALSIGNATURE :: KeyUsageName
pattern KeyUsageNameDIGITALSIGNATURE = KeyUsageName' "DIGITAL_SIGNATURE"

pattern KeyUsageNameENCIPHERONLY :: KeyUsageName
pattern KeyUsageNameENCIPHERONLY = KeyUsageName' "ENCIPHER_ONLY"

pattern KeyUsageNameKEYAGREEMENT :: KeyUsageName
pattern KeyUsageNameKEYAGREEMENT = KeyUsageName' "KEY_AGREEMENT"

pattern KeyUsageNameKEYENCIPHERMENT :: KeyUsageName
pattern KeyUsageNameKEYENCIPHERMENT = KeyUsageName' "KEY_ENCIPHERMENT"

pattern KeyUsageNameNONREPUDIATION :: KeyUsageName
pattern KeyUsageNameNONREPUDIATION = KeyUsageName' "NON_REPUDIATION"

{-# COMPLETE
  KeyUsageNameANY,
  KeyUsageNameCERTIFICATESIGNING,
  KeyUsageNameCRLSIGNING,
  KeyUsageNameCUSTOM,
  KeyUsageNameDATAENCIPHERMENT,
  KeyUsageNameDECIPHERONLY,
  KeyUsageNameDIGITALSIGNATURE,
  KeyUsageNameENCIPHERONLY,
  KeyUsageNameKEYAGREEMENT,
  KeyUsageNameKEYENCIPHERMENT,
  KeyUsageNameNONREPUDIATION,
  KeyUsageName'
  #-}

instance Prelude.FromText KeyUsageName where
  parser = KeyUsageName' Prelude.<$> Prelude.takeText

instance Prelude.ToText KeyUsageName where
  toText (KeyUsageName' x) = x

instance Prelude.Hashable KeyUsageName

instance Prelude.NFData KeyUsageName

instance Prelude.ToByteString KeyUsageName

instance Prelude.ToQuery KeyUsageName

instance Prelude.ToHeader KeyUsageName

instance Prelude.ToJSON KeyUsageName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON KeyUsageName where
  parseJSON = Prelude.parseJSONText "KeyUsageName"
