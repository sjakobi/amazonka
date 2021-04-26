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
-- Module      : Network.AWS.CertificateManagerPCA.Types.RevocationReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.RevocationReason
  ( RevocationReason
      ( ..,
        RevocationReasonAACOMPROMISE,
        RevocationReasonAFFILIATIONCHANGED,
        RevocationReasonCERTIFICATEAUTHORITYCOMPROMISE,
        RevocationReasonCESSATIONOFOPERATION,
        RevocationReasonKEYCOMPROMISE,
        RevocationReasonPRIVILEGEWITHDRAWN,
        RevocationReasonSUPERSEDED,
        RevocationReasonUNSPECIFIED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RevocationReason = RevocationReason'
  { fromRevocationReason ::
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

pattern RevocationReasonAACOMPROMISE :: RevocationReason
pattern RevocationReasonAACOMPROMISE = RevocationReason' "A_A_COMPROMISE"

pattern RevocationReasonAFFILIATIONCHANGED :: RevocationReason
pattern RevocationReasonAFFILIATIONCHANGED = RevocationReason' "AFFILIATION_CHANGED"

pattern RevocationReasonCERTIFICATEAUTHORITYCOMPROMISE :: RevocationReason
pattern RevocationReasonCERTIFICATEAUTHORITYCOMPROMISE = RevocationReason' "CERTIFICATE_AUTHORITY_COMPROMISE"

pattern RevocationReasonCESSATIONOFOPERATION :: RevocationReason
pattern RevocationReasonCESSATIONOFOPERATION = RevocationReason' "CESSATION_OF_OPERATION"

pattern RevocationReasonKEYCOMPROMISE :: RevocationReason
pattern RevocationReasonKEYCOMPROMISE = RevocationReason' "KEY_COMPROMISE"

pattern RevocationReasonPRIVILEGEWITHDRAWN :: RevocationReason
pattern RevocationReasonPRIVILEGEWITHDRAWN = RevocationReason' "PRIVILEGE_WITHDRAWN"

pattern RevocationReasonSUPERSEDED :: RevocationReason
pattern RevocationReasonSUPERSEDED = RevocationReason' "SUPERSEDED"

pattern RevocationReasonUNSPECIFIED :: RevocationReason
pattern RevocationReasonUNSPECIFIED = RevocationReason' "UNSPECIFIED"

{-# COMPLETE
  RevocationReasonAACOMPROMISE,
  RevocationReasonAFFILIATIONCHANGED,
  RevocationReasonCERTIFICATEAUTHORITYCOMPROMISE,
  RevocationReasonCESSATIONOFOPERATION,
  RevocationReasonKEYCOMPROMISE,
  RevocationReasonPRIVILEGEWITHDRAWN,
  RevocationReasonSUPERSEDED,
  RevocationReasonUNSPECIFIED,
  RevocationReason'
  #-}

instance Prelude.FromText RevocationReason where
  parser = RevocationReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText RevocationReason where
  toText (RevocationReason' x) = x

instance Prelude.Hashable RevocationReason

instance Prelude.NFData RevocationReason

instance Prelude.ToByteString RevocationReason

instance Prelude.ToQuery RevocationReason

instance Prelude.ToHeader RevocationReason

instance Prelude.ToJSON RevocationReason where
  toJSON = Prelude.toJSONText
