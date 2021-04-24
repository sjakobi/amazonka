{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        RCCSBTFilePath,
        RCCSBTLineCoveragePercentage
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportCodeCoverageSortByType
  = ReportCodeCoverageSortByType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RCCSBTFilePath :: ReportCodeCoverageSortByType
pattern RCCSBTFilePath = ReportCodeCoverageSortByType' "FILE_PATH"

pattern RCCSBTLineCoveragePercentage :: ReportCodeCoverageSortByType
pattern RCCSBTLineCoveragePercentage = ReportCodeCoverageSortByType' "LINE_COVERAGE_PERCENTAGE"

{-# COMPLETE
  RCCSBTFilePath,
  RCCSBTLineCoveragePercentage,
  ReportCodeCoverageSortByType'
  #-}

instance FromText ReportCodeCoverageSortByType where
  parser = (ReportCodeCoverageSortByType' . mk) <$> takeText

instance ToText ReportCodeCoverageSortByType where
  toText (ReportCodeCoverageSortByType' ci) = original ci

instance Hashable ReportCodeCoverageSortByType

instance NFData ReportCodeCoverageSortByType

instance ToByteString ReportCodeCoverageSortByType

instance ToQuery ReportCodeCoverageSortByType

instance ToHeader ReportCodeCoverageSortByType

instance ToJSON ReportCodeCoverageSortByType where
  toJSON = toJSONText
