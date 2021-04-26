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
-- Module      : Network.AWS.CodeBuild.Types.ReportCodeCoverageSortByType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportCodeCoverageSortByType
  ( ReportCodeCoverageSortByType
      ( ..,
        ReportCodeCoverageSortByTypeFILEPATH,
        ReportCodeCoverageSortByTypeLINECOVERAGEPERCENTAGE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportCodeCoverageSortByType = ReportCodeCoverageSortByType'
  { fromReportCodeCoverageSortByType ::
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

pattern ReportCodeCoverageSortByTypeFILEPATH :: ReportCodeCoverageSortByType
pattern ReportCodeCoverageSortByTypeFILEPATH = ReportCodeCoverageSortByType' "FILE_PATH"

pattern ReportCodeCoverageSortByTypeLINECOVERAGEPERCENTAGE :: ReportCodeCoverageSortByType
pattern ReportCodeCoverageSortByTypeLINECOVERAGEPERCENTAGE = ReportCodeCoverageSortByType' "LINE_COVERAGE_PERCENTAGE"

{-# COMPLETE
  ReportCodeCoverageSortByTypeFILEPATH,
  ReportCodeCoverageSortByTypeLINECOVERAGEPERCENTAGE,
  ReportCodeCoverageSortByType'
  #-}

instance Prelude.FromText ReportCodeCoverageSortByType where
  parser = ReportCodeCoverageSortByType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportCodeCoverageSortByType where
  toText (ReportCodeCoverageSortByType' x) = x

instance Prelude.Hashable ReportCodeCoverageSortByType

instance Prelude.NFData ReportCodeCoverageSortByType

instance Prelude.ToByteString ReportCodeCoverageSortByType

instance Prelude.ToQuery ReportCodeCoverageSortByType

instance Prelude.ToHeader ReportCodeCoverageSortByType

instance Prelude.ToJSON ReportCodeCoverageSortByType where
  toJSON = Prelude.toJSONText
