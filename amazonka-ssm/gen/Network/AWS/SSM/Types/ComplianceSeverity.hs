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
-- Module      : Network.AWS.SSM.Types.ComplianceSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ComplianceSeverity
  ( ComplianceSeverity
      ( ..,
        ComplianceSeverityCRITICAL,
        ComplianceSeverityHIGH,
        ComplianceSeverityINFORMATIONAL,
        ComplianceSeverityLOW,
        ComplianceSeverityMEDIUM,
        ComplianceSeverityUNSPECIFIED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ComplianceSeverity = ComplianceSeverity'
  { fromComplianceSeverity ::
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

pattern ComplianceSeverityCRITICAL :: ComplianceSeverity
pattern ComplianceSeverityCRITICAL = ComplianceSeverity' "CRITICAL"

pattern ComplianceSeverityHIGH :: ComplianceSeverity
pattern ComplianceSeverityHIGH = ComplianceSeverity' "HIGH"

pattern ComplianceSeverityINFORMATIONAL :: ComplianceSeverity
pattern ComplianceSeverityINFORMATIONAL = ComplianceSeverity' "INFORMATIONAL"

pattern ComplianceSeverityLOW :: ComplianceSeverity
pattern ComplianceSeverityLOW = ComplianceSeverity' "LOW"

pattern ComplianceSeverityMEDIUM :: ComplianceSeverity
pattern ComplianceSeverityMEDIUM = ComplianceSeverity' "MEDIUM"

pattern ComplianceSeverityUNSPECIFIED :: ComplianceSeverity
pattern ComplianceSeverityUNSPECIFIED = ComplianceSeverity' "UNSPECIFIED"

{-# COMPLETE
  ComplianceSeverityCRITICAL,
  ComplianceSeverityHIGH,
  ComplianceSeverityINFORMATIONAL,
  ComplianceSeverityLOW,
  ComplianceSeverityMEDIUM,
  ComplianceSeverityUNSPECIFIED,
  ComplianceSeverity'
  #-}

instance Prelude.FromText ComplianceSeverity where
  parser = ComplianceSeverity' Prelude.<$> Prelude.takeText

instance Prelude.ToText ComplianceSeverity where
  toText (ComplianceSeverity' x) = x

instance Prelude.Hashable ComplianceSeverity

instance Prelude.NFData ComplianceSeverity

instance Prelude.ToByteString ComplianceSeverity

instance Prelude.ToQuery ComplianceSeverity

instance Prelude.ToHeader ComplianceSeverity

instance Prelude.ToJSON ComplianceSeverity where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ComplianceSeverity where
  parseJSON = Prelude.parseJSONText "ComplianceSeverity"
