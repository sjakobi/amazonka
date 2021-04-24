{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        PFKAdvisoryId,
        PFKArch,
        PFKBugzillaId,
        PFKClassification,
        PFKCveId,
        PFKEpoch,
        PFKMsrcSeverity,
        PFKName,
        PFKPatchId,
        PFKPatchSet,
        PFKPriority,
        PFKProduct,
        PFKProductFamily,
        PFKRelease,
        PFKRepository,
        PFKSection,
        PFKSecurity,
        PFKSeverity,
        PFKVersion
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PatchFilterKey = PatchFilterKey' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PFKAdvisoryId :: PatchFilterKey
pattern PFKAdvisoryId = PatchFilterKey' "ADVISORY_ID"

pattern PFKArch :: PatchFilterKey
pattern PFKArch = PatchFilterKey' "ARCH"

pattern PFKBugzillaId :: PatchFilterKey
pattern PFKBugzillaId = PatchFilterKey' "BUGZILLA_ID"

pattern PFKClassification :: PatchFilterKey
pattern PFKClassification = PatchFilterKey' "CLASSIFICATION"

pattern PFKCveId :: PatchFilterKey
pattern PFKCveId = PatchFilterKey' "CVE_ID"

pattern PFKEpoch :: PatchFilterKey
pattern PFKEpoch = PatchFilterKey' "EPOCH"

pattern PFKMsrcSeverity :: PatchFilterKey
pattern PFKMsrcSeverity = PatchFilterKey' "MSRC_SEVERITY"

pattern PFKName :: PatchFilterKey
pattern PFKName = PatchFilterKey' "NAME"

pattern PFKPatchId :: PatchFilterKey
pattern PFKPatchId = PatchFilterKey' "PATCH_ID"

pattern PFKPatchSet :: PatchFilterKey
pattern PFKPatchSet = PatchFilterKey' "PATCH_SET"

pattern PFKPriority :: PatchFilterKey
pattern PFKPriority = PatchFilterKey' "PRIORITY"

pattern PFKProduct :: PatchFilterKey
pattern PFKProduct = PatchFilterKey' "PRODUCT"

pattern PFKProductFamily :: PatchFilterKey
pattern PFKProductFamily = PatchFilterKey' "PRODUCT_FAMILY"

pattern PFKRelease :: PatchFilterKey
pattern PFKRelease = PatchFilterKey' "RELEASE"

pattern PFKRepository :: PatchFilterKey
pattern PFKRepository = PatchFilterKey' "REPOSITORY"

pattern PFKSection :: PatchFilterKey
pattern PFKSection = PatchFilterKey' "SECTION"

pattern PFKSecurity :: PatchFilterKey
pattern PFKSecurity = PatchFilterKey' "SECURITY"

pattern PFKSeverity :: PatchFilterKey
pattern PFKSeverity = PatchFilterKey' "SEVERITY"

pattern PFKVersion :: PatchFilterKey
pattern PFKVersion = PatchFilterKey' "VERSION"

{-# COMPLETE
  PFKAdvisoryId,
  PFKArch,
  PFKBugzillaId,
  PFKClassification,
  PFKCveId,
  PFKEpoch,
  PFKMsrcSeverity,
  PFKName,
  PFKPatchId,
  PFKPatchSet,
  PFKPriority,
  PFKProduct,
  PFKProductFamily,
  PFKRelease,
  PFKRepository,
  PFKSection,
  PFKSecurity,
  PFKSeverity,
  PFKVersion,
  PatchFilterKey'
  #-}

instance FromText PatchFilterKey where
  parser = (PatchFilterKey' . mk) <$> takeText

instance ToText PatchFilterKey where
  toText (PatchFilterKey' ci) = original ci

instance Hashable PatchFilterKey

instance NFData PatchFilterKey

instance ToByteString PatchFilterKey

instance ToQuery PatchFilterKey

instance ToHeader PatchFilterKey

instance ToJSON PatchFilterKey where
  toJSON = toJSONText

instance FromJSON PatchFilterKey where
  parseJSON = parseJSONText "PatchFilterKey"
