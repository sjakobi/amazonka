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
-- Module      : Network.AWS.IoT.Types.AuditFindingSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditFindingSeverity
  ( AuditFindingSeverity
      ( ..,
        AuditFindingSeverityCRITICAL,
        AuditFindingSeverityHIGH,
        AuditFindingSeverityLOW,
        AuditFindingSeverityMEDIUM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditFindingSeverity = AuditFindingSeverity'
  { fromAuditFindingSeverity ::
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

pattern AuditFindingSeverityCRITICAL :: AuditFindingSeverity
pattern AuditFindingSeverityCRITICAL = AuditFindingSeverity' "CRITICAL"

pattern AuditFindingSeverityHIGH :: AuditFindingSeverity
pattern AuditFindingSeverityHIGH = AuditFindingSeverity' "HIGH"

pattern AuditFindingSeverityLOW :: AuditFindingSeverity
pattern AuditFindingSeverityLOW = AuditFindingSeverity' "LOW"

pattern AuditFindingSeverityMEDIUM :: AuditFindingSeverity
pattern AuditFindingSeverityMEDIUM = AuditFindingSeverity' "MEDIUM"

{-# COMPLETE
  AuditFindingSeverityCRITICAL,
  AuditFindingSeverityHIGH,
  AuditFindingSeverityLOW,
  AuditFindingSeverityMEDIUM,
  AuditFindingSeverity'
  #-}

instance Prelude.FromText AuditFindingSeverity where
  parser = AuditFindingSeverity' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuditFindingSeverity where
  toText (AuditFindingSeverity' x) = x

instance Prelude.Hashable AuditFindingSeverity

instance Prelude.NFData AuditFindingSeverity

instance Prelude.ToByteString AuditFindingSeverity

instance Prelude.ToQuery AuditFindingSeverity

instance Prelude.ToHeader AuditFindingSeverity

instance Prelude.FromJSON AuditFindingSeverity where
  parseJSON = Prelude.parseJSONText "AuditFindingSeverity"
