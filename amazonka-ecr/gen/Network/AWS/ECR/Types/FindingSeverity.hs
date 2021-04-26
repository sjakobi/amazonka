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
-- Module      : Network.AWS.ECR.Types.FindingSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.FindingSeverity
  ( FindingSeverity
      ( ..,
        FindingSeverityCRITICAL,
        FindingSeverityHIGH,
        FindingSeverityINFORMATIONAL,
        FindingSeverityLOW,
        FindingSeverityMEDIUM,
        FindingSeverityUNDEFINED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FindingSeverity = FindingSeverity'
  { fromFindingSeverity ::
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

pattern FindingSeverityCRITICAL :: FindingSeverity
pattern FindingSeverityCRITICAL = FindingSeverity' "CRITICAL"

pattern FindingSeverityHIGH :: FindingSeverity
pattern FindingSeverityHIGH = FindingSeverity' "HIGH"

pattern FindingSeverityINFORMATIONAL :: FindingSeverity
pattern FindingSeverityINFORMATIONAL = FindingSeverity' "INFORMATIONAL"

pattern FindingSeverityLOW :: FindingSeverity
pattern FindingSeverityLOW = FindingSeverity' "LOW"

pattern FindingSeverityMEDIUM :: FindingSeverity
pattern FindingSeverityMEDIUM = FindingSeverity' "MEDIUM"

pattern FindingSeverityUNDEFINED :: FindingSeverity
pattern FindingSeverityUNDEFINED = FindingSeverity' "UNDEFINED"

{-# COMPLETE
  FindingSeverityCRITICAL,
  FindingSeverityHIGH,
  FindingSeverityINFORMATIONAL,
  FindingSeverityLOW,
  FindingSeverityMEDIUM,
  FindingSeverityUNDEFINED,
  FindingSeverity'
  #-}

instance Prelude.FromText FindingSeverity where
  parser = FindingSeverity' Prelude.<$> Prelude.takeText

instance Prelude.ToText FindingSeverity where
  toText (FindingSeverity' x) = x

instance Prelude.Hashable FindingSeverity

instance Prelude.NFData FindingSeverity

instance Prelude.ToByteString FindingSeverity

instance Prelude.ToQuery FindingSeverity

instance Prelude.ToHeader FindingSeverity

instance Prelude.FromJSON FindingSeverity where
  parseJSON = Prelude.parseJSONText "FindingSeverity"
