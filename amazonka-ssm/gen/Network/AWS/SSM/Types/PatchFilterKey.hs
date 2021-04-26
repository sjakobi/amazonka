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
-- Module      : Network.AWS.SSM.Types.PatchFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchFilterKey
  ( PatchFilterKey
      ( ..,
        PatchFilterKeyADVISORYID,
        PatchFilterKeyARCH,
        PatchFilterKeyBUGZILLAID,
        PatchFilterKeyCLASSIFICATION,
        PatchFilterKeyCVEID,
        PatchFilterKeyEPOCH,
        PatchFilterKeyMSRCSEVERITY,
        PatchFilterKeyNAME,
        PatchFilterKeyPATCHID,
        PatchFilterKeyPATCHSET,
        PatchFilterKeyPRIORITY,
        PatchFilterKeyPRODUCT,
        PatchFilterKeyPRODUCTFAMILY,
        PatchFilterKeyRELEASE,
        PatchFilterKeyREPOSITORY,
        PatchFilterKeySECTION,
        PatchFilterKeySECURITY,
        PatchFilterKeySEVERITY,
        PatchFilterKeyVERSION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PatchFilterKey = PatchFilterKey'
  { fromPatchFilterKey ::
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

pattern PatchFilterKeyADVISORYID :: PatchFilterKey
pattern PatchFilterKeyADVISORYID = PatchFilterKey' "ADVISORY_ID"

pattern PatchFilterKeyARCH :: PatchFilterKey
pattern PatchFilterKeyARCH = PatchFilterKey' "ARCH"

pattern PatchFilterKeyBUGZILLAID :: PatchFilterKey
pattern PatchFilterKeyBUGZILLAID = PatchFilterKey' "BUGZILLA_ID"

pattern PatchFilterKeyCLASSIFICATION :: PatchFilterKey
pattern PatchFilterKeyCLASSIFICATION = PatchFilterKey' "CLASSIFICATION"

pattern PatchFilterKeyCVEID :: PatchFilterKey
pattern PatchFilterKeyCVEID = PatchFilterKey' "CVE_ID"

pattern PatchFilterKeyEPOCH :: PatchFilterKey
pattern PatchFilterKeyEPOCH = PatchFilterKey' "EPOCH"

pattern PatchFilterKeyMSRCSEVERITY :: PatchFilterKey
pattern PatchFilterKeyMSRCSEVERITY = PatchFilterKey' "MSRC_SEVERITY"

pattern PatchFilterKeyNAME :: PatchFilterKey
pattern PatchFilterKeyNAME = PatchFilterKey' "NAME"

pattern PatchFilterKeyPATCHID :: PatchFilterKey
pattern PatchFilterKeyPATCHID = PatchFilterKey' "PATCH_ID"

pattern PatchFilterKeyPATCHSET :: PatchFilterKey
pattern PatchFilterKeyPATCHSET = PatchFilterKey' "PATCH_SET"

pattern PatchFilterKeyPRIORITY :: PatchFilterKey
pattern PatchFilterKeyPRIORITY = PatchFilterKey' "PRIORITY"

pattern PatchFilterKeyPRODUCT :: PatchFilterKey
pattern PatchFilterKeyPRODUCT = PatchFilterKey' "PRODUCT"

pattern PatchFilterKeyPRODUCTFAMILY :: PatchFilterKey
pattern PatchFilterKeyPRODUCTFAMILY = PatchFilterKey' "PRODUCT_FAMILY"

pattern PatchFilterKeyRELEASE :: PatchFilterKey
pattern PatchFilterKeyRELEASE = PatchFilterKey' "RELEASE"

pattern PatchFilterKeyREPOSITORY :: PatchFilterKey
pattern PatchFilterKeyREPOSITORY = PatchFilterKey' "REPOSITORY"

pattern PatchFilterKeySECTION :: PatchFilterKey
pattern PatchFilterKeySECTION = PatchFilterKey' "SECTION"

pattern PatchFilterKeySECURITY :: PatchFilterKey
pattern PatchFilterKeySECURITY = PatchFilterKey' "SECURITY"

pattern PatchFilterKeySEVERITY :: PatchFilterKey
pattern PatchFilterKeySEVERITY = PatchFilterKey' "SEVERITY"

pattern PatchFilterKeyVERSION :: PatchFilterKey
pattern PatchFilterKeyVERSION = PatchFilterKey' "VERSION"

{-# COMPLETE
  PatchFilterKeyADVISORYID,
  PatchFilterKeyARCH,
  PatchFilterKeyBUGZILLAID,
  PatchFilterKeyCLASSIFICATION,
  PatchFilterKeyCVEID,
  PatchFilterKeyEPOCH,
  PatchFilterKeyMSRCSEVERITY,
  PatchFilterKeyNAME,
  PatchFilterKeyPATCHID,
  PatchFilterKeyPATCHSET,
  PatchFilterKeyPRIORITY,
  PatchFilterKeyPRODUCT,
  PatchFilterKeyPRODUCTFAMILY,
  PatchFilterKeyRELEASE,
  PatchFilterKeyREPOSITORY,
  PatchFilterKeySECTION,
  PatchFilterKeySECURITY,
  PatchFilterKeySEVERITY,
  PatchFilterKeyVERSION,
  PatchFilterKey'
  #-}

instance Prelude.FromText PatchFilterKey where
  parser = PatchFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText PatchFilterKey where
  toText (PatchFilterKey' x) = x

instance Prelude.Hashable PatchFilterKey

instance Prelude.NFData PatchFilterKey

instance Prelude.ToByteString PatchFilterKey

instance Prelude.ToQuery PatchFilterKey

instance Prelude.ToHeader PatchFilterKey

instance Prelude.ToJSON PatchFilterKey where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PatchFilterKey where
  parseJSON = Prelude.parseJSONText "PatchFilterKey"
