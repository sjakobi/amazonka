{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.CodeCoverage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.CodeCoverage where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains code coverage report information.
--
--
-- Line coverage measures how many statements your tests cover. A statement is a single instruction, not including comments, conditionals, etc.
--
-- Branch coverage determines if your tests cover every possible branch of a control structure, such as an @if@ or @case@ statement.
--
--
-- /See:/ 'codeCoverage' smart constructor.
data CodeCoverage = CodeCoverage'
  { _ccBranchesMissed ::
      !(Maybe Nat),
    _ccLinesCovered :: !(Maybe Nat),
    _ccBranchesCovered :: !(Maybe Nat),
    _ccFilePath :: !(Maybe Text),
    _ccReportARN :: !(Maybe Text),
    _ccId :: !(Maybe Text),
    _ccExpired :: !(Maybe POSIX),
    _ccLineCoveragePercentage :: !(Maybe Double),
    _ccLinesMissed :: !(Maybe Nat),
    _ccBranchCoveragePercentage ::
      !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CodeCoverage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccBranchesMissed' - The number of conditional branches that are not covered by your tests.
--
-- * 'ccLinesCovered' - The number of lines that are covered by your tests.
--
-- * 'ccBranchesCovered' - The number of conditional branches that are covered by your tests.
--
-- * 'ccFilePath' - The path of the test report file.
--
-- * 'ccReportARN' - The ARN of the report.
--
-- * 'ccId' - The identifier of the code coverage report.
--
-- * 'ccExpired' - The date and time that the tests were run.
--
-- * 'ccLineCoveragePercentage' - The percentage of lines that are covered by your tests.
--
-- * 'ccLinesMissed' - The number of lines that are not covered by your tests.
--
-- * 'ccBranchCoveragePercentage' - The percentage of branches that are covered by your tests.
codeCoverage ::
  CodeCoverage
codeCoverage =
  CodeCoverage'
    { _ccBranchesMissed = Nothing,
      _ccLinesCovered = Nothing,
      _ccBranchesCovered = Nothing,
      _ccFilePath = Nothing,
      _ccReportARN = Nothing,
      _ccId = Nothing,
      _ccExpired = Nothing,
      _ccLineCoveragePercentage = Nothing,
      _ccLinesMissed = Nothing,
      _ccBranchCoveragePercentage = Nothing
    }

-- | The number of conditional branches that are not covered by your tests.
ccBranchesMissed :: Lens' CodeCoverage (Maybe Natural)
ccBranchesMissed = lens _ccBranchesMissed (\s a -> s {_ccBranchesMissed = a}) . mapping _Nat

-- | The number of lines that are covered by your tests.
ccLinesCovered :: Lens' CodeCoverage (Maybe Natural)
ccLinesCovered = lens _ccLinesCovered (\s a -> s {_ccLinesCovered = a}) . mapping _Nat

-- | The number of conditional branches that are covered by your tests.
ccBranchesCovered :: Lens' CodeCoverage (Maybe Natural)
ccBranchesCovered = lens _ccBranchesCovered (\s a -> s {_ccBranchesCovered = a}) . mapping _Nat

-- | The path of the test report file.
ccFilePath :: Lens' CodeCoverage (Maybe Text)
ccFilePath = lens _ccFilePath (\s a -> s {_ccFilePath = a})

-- | The ARN of the report.
ccReportARN :: Lens' CodeCoverage (Maybe Text)
ccReportARN = lens _ccReportARN (\s a -> s {_ccReportARN = a})

-- | The identifier of the code coverage report.
ccId :: Lens' CodeCoverage (Maybe Text)
ccId = lens _ccId (\s a -> s {_ccId = a})

-- | The date and time that the tests were run.
ccExpired :: Lens' CodeCoverage (Maybe UTCTime)
ccExpired = lens _ccExpired (\s a -> s {_ccExpired = a}) . mapping _Time

-- | The percentage of lines that are covered by your tests.
ccLineCoveragePercentage :: Lens' CodeCoverage (Maybe Double)
ccLineCoveragePercentage = lens _ccLineCoveragePercentage (\s a -> s {_ccLineCoveragePercentage = a})

-- | The number of lines that are not covered by your tests.
ccLinesMissed :: Lens' CodeCoverage (Maybe Natural)
ccLinesMissed = lens _ccLinesMissed (\s a -> s {_ccLinesMissed = a}) . mapping _Nat

-- | The percentage of branches that are covered by your tests.
ccBranchCoveragePercentage :: Lens' CodeCoverage (Maybe Double)
ccBranchCoveragePercentage = lens _ccBranchCoveragePercentage (\s a -> s {_ccBranchCoveragePercentage = a})

instance FromJSON CodeCoverage where
  parseJSON =
    withObject
      "CodeCoverage"
      ( \x ->
          CodeCoverage'
            <$> (x .:? "branchesMissed")
            <*> (x .:? "linesCovered")
            <*> (x .:? "branchesCovered")
            <*> (x .:? "filePath")
            <*> (x .:? "reportARN")
            <*> (x .:? "id")
            <*> (x .:? "expired")
            <*> (x .:? "lineCoveragePercentage")
            <*> (x .:? "linesMissed")
            <*> (x .:? "branchCoveragePercentage")
      )

instance Hashable CodeCoverage

instance NFData CodeCoverage
