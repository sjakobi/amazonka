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
-- Module      : Network.AWS.SSM.Types.PatchComplianceLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchComplianceLevel
  ( PatchComplianceLevel
      ( ..,
        PatchComplianceLevelCRITICAL,
        PatchComplianceLevelHIGH,
        PatchComplianceLevelINFORMATIONAL,
        PatchComplianceLevelLOW,
        PatchComplianceLevelMEDIUM,
        PatchComplianceLevelUNSPECIFIED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PatchComplianceLevel = PatchComplianceLevel'
  { fromPatchComplianceLevel ::
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

pattern PatchComplianceLevelCRITICAL :: PatchComplianceLevel
pattern PatchComplianceLevelCRITICAL = PatchComplianceLevel' "CRITICAL"

pattern PatchComplianceLevelHIGH :: PatchComplianceLevel
pattern PatchComplianceLevelHIGH = PatchComplianceLevel' "HIGH"

pattern PatchComplianceLevelINFORMATIONAL :: PatchComplianceLevel
pattern PatchComplianceLevelINFORMATIONAL = PatchComplianceLevel' "INFORMATIONAL"

pattern PatchComplianceLevelLOW :: PatchComplianceLevel
pattern PatchComplianceLevelLOW = PatchComplianceLevel' "LOW"

pattern PatchComplianceLevelMEDIUM :: PatchComplianceLevel
pattern PatchComplianceLevelMEDIUM = PatchComplianceLevel' "MEDIUM"

pattern PatchComplianceLevelUNSPECIFIED :: PatchComplianceLevel
pattern PatchComplianceLevelUNSPECIFIED = PatchComplianceLevel' "UNSPECIFIED"

{-# COMPLETE
  PatchComplianceLevelCRITICAL,
  PatchComplianceLevelHIGH,
  PatchComplianceLevelINFORMATIONAL,
  PatchComplianceLevelLOW,
  PatchComplianceLevelMEDIUM,
  PatchComplianceLevelUNSPECIFIED,
  PatchComplianceLevel'
  #-}

instance Prelude.FromText PatchComplianceLevel where
  parser = PatchComplianceLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText PatchComplianceLevel where
  toText (PatchComplianceLevel' x) = x

instance Prelude.Hashable PatchComplianceLevel

instance Prelude.NFData PatchComplianceLevel

instance Prelude.ToByteString PatchComplianceLevel

instance Prelude.ToQuery PatchComplianceLevel

instance Prelude.ToHeader PatchComplianceLevel

instance Prelude.ToJSON PatchComplianceLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PatchComplianceLevel where
  parseJSON = Prelude.parseJSONText "PatchComplianceLevel"
