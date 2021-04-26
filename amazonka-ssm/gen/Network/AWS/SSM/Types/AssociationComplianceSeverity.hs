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
-- Module      : Network.AWS.SSM.Types.AssociationComplianceSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationComplianceSeverity
  ( AssociationComplianceSeverity
      ( ..,
        AssociationComplianceSeverityCRITICAL,
        AssociationComplianceSeverityHIGH,
        AssociationComplianceSeverityLOW,
        AssociationComplianceSeverityMEDIUM,
        AssociationComplianceSeverityUNSPECIFIED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssociationComplianceSeverity = AssociationComplianceSeverity'
  { fromAssociationComplianceSeverity ::
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

pattern AssociationComplianceSeverityCRITICAL :: AssociationComplianceSeverity
pattern AssociationComplianceSeverityCRITICAL = AssociationComplianceSeverity' "CRITICAL"

pattern AssociationComplianceSeverityHIGH :: AssociationComplianceSeverity
pattern AssociationComplianceSeverityHIGH = AssociationComplianceSeverity' "HIGH"

pattern AssociationComplianceSeverityLOW :: AssociationComplianceSeverity
pattern AssociationComplianceSeverityLOW = AssociationComplianceSeverity' "LOW"

pattern AssociationComplianceSeverityMEDIUM :: AssociationComplianceSeverity
pattern AssociationComplianceSeverityMEDIUM = AssociationComplianceSeverity' "MEDIUM"

pattern AssociationComplianceSeverityUNSPECIFIED :: AssociationComplianceSeverity
pattern AssociationComplianceSeverityUNSPECIFIED = AssociationComplianceSeverity' "UNSPECIFIED"

{-# COMPLETE
  AssociationComplianceSeverityCRITICAL,
  AssociationComplianceSeverityHIGH,
  AssociationComplianceSeverityLOW,
  AssociationComplianceSeverityMEDIUM,
  AssociationComplianceSeverityUNSPECIFIED,
  AssociationComplianceSeverity'
  #-}

instance Prelude.FromText AssociationComplianceSeverity where
  parser = AssociationComplianceSeverity' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociationComplianceSeverity where
  toText (AssociationComplianceSeverity' x) = x

instance Prelude.Hashable AssociationComplianceSeverity

instance Prelude.NFData AssociationComplianceSeverity

instance Prelude.ToByteString AssociationComplianceSeverity

instance Prelude.ToQuery AssociationComplianceSeverity

instance Prelude.ToHeader AssociationComplianceSeverity

instance Prelude.ToJSON AssociationComplianceSeverity where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AssociationComplianceSeverity where
  parseJSON = Prelude.parseJSONText "AssociationComplianceSeverity"
