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
-- Module      : Network.AWS.CodeBuild.Types.ReportGroupTrendFieldType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportGroupTrendFieldType
  ( ReportGroupTrendFieldType
      ( ..,
        ReportGroupTrendFieldTypeBRANCHCOVERAGE,
        ReportGroupTrendFieldTypeBRANCHESCOVERED,
        ReportGroupTrendFieldTypeBRANCHESMISSED,
        ReportGroupTrendFieldTypeDURATION,
        ReportGroupTrendFieldTypeLINECOVERAGE,
        ReportGroupTrendFieldTypeLINESCOVERED,
        ReportGroupTrendFieldTypeLINESMISSED,
        ReportGroupTrendFieldTypePASSRATE,
        ReportGroupTrendFieldTypeTOTAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportGroupTrendFieldType = ReportGroupTrendFieldType'
  { fromReportGroupTrendFieldType ::
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

pattern ReportGroupTrendFieldTypeBRANCHCOVERAGE :: ReportGroupTrendFieldType
pattern ReportGroupTrendFieldTypeBRANCHCOVERAGE = ReportGroupTrendFieldType' "BRANCH_COVERAGE"

pattern ReportGroupTrendFieldTypeBRANCHESCOVERED :: ReportGroupTrendFieldType
pattern ReportGroupTrendFieldTypeBRANCHESCOVERED = ReportGroupTrendFieldType' "BRANCHES_COVERED"

pattern ReportGroupTrendFieldTypeBRANCHESMISSED :: ReportGroupTrendFieldType
pattern ReportGroupTrendFieldTypeBRANCHESMISSED = ReportGroupTrendFieldType' "BRANCHES_MISSED"

pattern ReportGroupTrendFieldTypeDURATION :: ReportGroupTrendFieldType
pattern ReportGroupTrendFieldTypeDURATION = ReportGroupTrendFieldType' "DURATION"

pattern ReportGroupTrendFieldTypeLINECOVERAGE :: ReportGroupTrendFieldType
pattern ReportGroupTrendFieldTypeLINECOVERAGE = ReportGroupTrendFieldType' "LINE_COVERAGE"

pattern ReportGroupTrendFieldTypeLINESCOVERED :: ReportGroupTrendFieldType
pattern ReportGroupTrendFieldTypeLINESCOVERED = ReportGroupTrendFieldType' "LINES_COVERED"

pattern ReportGroupTrendFieldTypeLINESMISSED :: ReportGroupTrendFieldType
pattern ReportGroupTrendFieldTypeLINESMISSED = ReportGroupTrendFieldType' "LINES_MISSED"

pattern ReportGroupTrendFieldTypePASSRATE :: ReportGroupTrendFieldType
pattern ReportGroupTrendFieldTypePASSRATE = ReportGroupTrendFieldType' "PASS_RATE"

pattern ReportGroupTrendFieldTypeTOTAL :: ReportGroupTrendFieldType
pattern ReportGroupTrendFieldTypeTOTAL = ReportGroupTrendFieldType' "TOTAL"

{-# COMPLETE
  ReportGroupTrendFieldTypeBRANCHCOVERAGE,
  ReportGroupTrendFieldTypeBRANCHESCOVERED,
  ReportGroupTrendFieldTypeBRANCHESMISSED,
  ReportGroupTrendFieldTypeDURATION,
  ReportGroupTrendFieldTypeLINECOVERAGE,
  ReportGroupTrendFieldTypeLINESCOVERED,
  ReportGroupTrendFieldTypeLINESMISSED,
  ReportGroupTrendFieldTypePASSRATE,
  ReportGroupTrendFieldTypeTOTAL,
  ReportGroupTrendFieldType'
  #-}

instance Prelude.FromText ReportGroupTrendFieldType where
  parser = ReportGroupTrendFieldType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportGroupTrendFieldType where
  toText (ReportGroupTrendFieldType' x) = x

instance Prelude.Hashable ReportGroupTrendFieldType

instance Prelude.NFData ReportGroupTrendFieldType

instance Prelude.ToByteString ReportGroupTrendFieldType

instance Prelude.ToQuery ReportGroupTrendFieldType

instance Prelude.ToHeader ReportGroupTrendFieldType

instance Prelude.ToJSON ReportGroupTrendFieldType where
  toJSON = Prelude.toJSONText
