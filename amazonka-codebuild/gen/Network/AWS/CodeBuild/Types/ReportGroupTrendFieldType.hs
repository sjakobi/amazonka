{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        BranchCoverage,
        BranchesCovered,
        BranchesMissed,
        Duration,
        LineCoverage,
        LinesCovered,
        LinesMissed,
        PassRate,
        Total
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportGroupTrendFieldType
  = ReportGroupTrendFieldType'
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

pattern BranchCoverage :: ReportGroupTrendFieldType
pattern BranchCoverage = ReportGroupTrendFieldType' "BRANCH_COVERAGE"

pattern BranchesCovered :: ReportGroupTrendFieldType
pattern BranchesCovered = ReportGroupTrendFieldType' "BRANCHES_COVERED"

pattern BranchesMissed :: ReportGroupTrendFieldType
pattern BranchesMissed = ReportGroupTrendFieldType' "BRANCHES_MISSED"

pattern Duration :: ReportGroupTrendFieldType
pattern Duration = ReportGroupTrendFieldType' "DURATION"

pattern LineCoverage :: ReportGroupTrendFieldType
pattern LineCoverage = ReportGroupTrendFieldType' "LINE_COVERAGE"

pattern LinesCovered :: ReportGroupTrendFieldType
pattern LinesCovered = ReportGroupTrendFieldType' "LINES_COVERED"

pattern LinesMissed :: ReportGroupTrendFieldType
pattern LinesMissed = ReportGroupTrendFieldType' "LINES_MISSED"

pattern PassRate :: ReportGroupTrendFieldType
pattern PassRate = ReportGroupTrendFieldType' "PASS_RATE"

pattern Total :: ReportGroupTrendFieldType
pattern Total = ReportGroupTrendFieldType' "TOTAL"

{-# COMPLETE
  BranchCoverage,
  BranchesCovered,
  BranchesMissed,
  Duration,
  LineCoverage,
  LinesCovered,
  LinesMissed,
  PassRate,
  Total,
  ReportGroupTrendFieldType'
  #-}

instance FromText ReportGroupTrendFieldType where
  parser = (ReportGroupTrendFieldType' . mk) <$> takeText

instance ToText ReportGroupTrendFieldType where
  toText (ReportGroupTrendFieldType' ci) = original ci

instance Hashable ReportGroupTrendFieldType

instance NFData ReportGroupTrendFieldType

instance ToByteString ReportGroupTrendFieldType

instance ToQuery ReportGroupTrendFieldType

instance ToHeader ReportGroupTrendFieldType

instance ToJSON ReportGroupTrendFieldType where
  toJSON = toJSONText
