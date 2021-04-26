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
-- Module      : Network.AWS.CertificateManager.Types.RevocationReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.RevocationReason
  ( RevocationReason
      ( ..,
        RevocationReasonAACOMPROMISE,
        RevocationReasonAFFILIATIONCHANGED,
        RevocationReasonCACOMPROMISE,
        RevocationReasonCERTIFICATEHOLD,
        RevocationReasonCESSATIONOFOPERATION,
        RevocationReasonKEYCOMPROMISE,
        RevocationReasonPRIVILEGEWITHDRAWN,
        RevocationReasonREMOVEFROMCRL,
        RevocationReasonSUPERCEDED,
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

pattern RevocationReasonCACOMPROMISE :: RevocationReason
pattern RevocationReasonCACOMPROMISE = RevocationReason' "CA_COMPROMISE"

pattern RevocationReasonCERTIFICATEHOLD :: RevocationReason
pattern RevocationReasonCERTIFICATEHOLD = RevocationReason' "CERTIFICATE_HOLD"

pattern RevocationReasonCESSATIONOFOPERATION :: RevocationReason
pattern RevocationReasonCESSATIONOFOPERATION = RevocationReason' "CESSATION_OF_OPERATION"

pattern RevocationReasonKEYCOMPROMISE :: RevocationReason
pattern RevocationReasonKEYCOMPROMISE = RevocationReason' "KEY_COMPROMISE"

pattern RevocationReasonPRIVILEGEWITHDRAWN :: RevocationReason
pattern RevocationReasonPRIVILEGEWITHDRAWN = RevocationReason' "PRIVILEGE_WITHDRAWN"

pattern RevocationReasonREMOVEFROMCRL :: RevocationReason
pattern RevocationReasonREMOVEFROMCRL = RevocationReason' "REMOVE_FROM_CRL"

pattern RevocationReasonSUPERCEDED :: RevocationReason
pattern RevocationReasonSUPERCEDED = RevocationReason' "SUPERCEDED"

pattern RevocationReasonUNSPECIFIED :: RevocationReason
pattern RevocationReasonUNSPECIFIED = RevocationReason' "UNSPECIFIED"

{-# COMPLETE
  RevocationReasonAACOMPROMISE,
  RevocationReasonAFFILIATIONCHANGED,
  RevocationReasonCACOMPROMISE,
  RevocationReasonCERTIFICATEHOLD,
  RevocationReasonCESSATIONOFOPERATION,
  RevocationReasonKEYCOMPROMISE,
  RevocationReasonPRIVILEGEWITHDRAWN,
  RevocationReasonREMOVEFROMCRL,
  RevocationReasonSUPERCEDED,
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

instance Prelude.FromJSON RevocationReason where
  parseJSON = Prelude.parseJSONText "RevocationReason"
