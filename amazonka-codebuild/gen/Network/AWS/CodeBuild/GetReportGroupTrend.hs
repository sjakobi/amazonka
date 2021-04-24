{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.GetReportGroupTrend
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Analyzes and accumulates test report values for the specified test reports.
module Network.AWS.CodeBuild.GetReportGroupTrend
  ( -- * Creating a Request
    getReportGroupTrend,
    GetReportGroupTrend,

    -- * Request Lenses
    grgtNumOfReports,
    grgtReportGroupARN,
    grgtTrendField,

    -- * Destructuring the Response
    getReportGroupTrendResponse,
    GetReportGroupTrendResponse,

    -- * Response Lenses
    grgtrrsRawData,
    grgtrrsStats,
    grgtrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getReportGroupTrend' smart constructor.
data GetReportGroupTrend = GetReportGroupTrend'
  { _grgtNumOfReports ::
      !(Maybe Nat),
    _grgtReportGroupARN :: !Text,
    _grgtTrendField ::
      !ReportGroupTrendFieldType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetReportGroupTrend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grgtNumOfReports' - The number of reports to analyze. This operation always retrieves the most recent reports. If this parameter is omitted, the most recent 100 reports are analyzed.
--
-- * 'grgtReportGroupARN' - The ARN of the report group that contains the reports to analyze.
--
-- * 'grgtTrendField' - The test report value to accumulate. This must be one of the following values:     * Test reports:    *     * DURATION    * Accumulate the test run times for the specified reports.     * PASS_RATE    * Accumulate the percentage of tests that passed for the specified test reports.     * TOTAL    * Accumulate the total number of tests for the specified test reports.     * Code coverage reports:    *     * BRANCH_COVERAGE    * Accumulate the branch coverage percentages for the specified test reports.     * BRANCHES_COVERED    * Accumulate the branches covered values for the specified test reports.     * BRANCHES_MISSED    * Accumulate the branches missed values for the specified test reports.     * LINE_COVERAGE    * Accumulate the line coverage percentages for the specified test reports.     * LINES_COVERED    * Accumulate the lines covered values for the specified test reports.     * LINES_MISSED    * Accumulate the lines not covered values for the specified test reports.
getReportGroupTrend ::
  -- | 'grgtReportGroupARN'
  Text ->
  -- | 'grgtTrendField'
  ReportGroupTrendFieldType ->
  GetReportGroupTrend
getReportGroupTrend pReportGroupARN_ pTrendField_ =
  GetReportGroupTrend'
    { _grgtNumOfReports = Nothing,
      _grgtReportGroupARN = pReportGroupARN_,
      _grgtTrendField = pTrendField_
    }

-- | The number of reports to analyze. This operation always retrieves the most recent reports. If this parameter is omitted, the most recent 100 reports are analyzed.
grgtNumOfReports :: Lens' GetReportGroupTrend (Maybe Natural)
grgtNumOfReports = lens _grgtNumOfReports (\s a -> s {_grgtNumOfReports = a}) . mapping _Nat

-- | The ARN of the report group that contains the reports to analyze.
grgtReportGroupARN :: Lens' GetReportGroupTrend Text
grgtReportGroupARN = lens _grgtReportGroupARN (\s a -> s {_grgtReportGroupARN = a})

-- | The test report value to accumulate. This must be one of the following values:     * Test reports:    *     * DURATION    * Accumulate the test run times for the specified reports.     * PASS_RATE    * Accumulate the percentage of tests that passed for the specified test reports.     * TOTAL    * Accumulate the total number of tests for the specified test reports.     * Code coverage reports:    *     * BRANCH_COVERAGE    * Accumulate the branch coverage percentages for the specified test reports.     * BRANCHES_COVERED    * Accumulate the branches covered values for the specified test reports.     * BRANCHES_MISSED    * Accumulate the branches missed values for the specified test reports.     * LINE_COVERAGE    * Accumulate the line coverage percentages for the specified test reports.     * LINES_COVERED    * Accumulate the lines covered values for the specified test reports.     * LINES_MISSED    * Accumulate the lines not covered values for the specified test reports.
grgtTrendField :: Lens' GetReportGroupTrend ReportGroupTrendFieldType
grgtTrendField = lens _grgtTrendField (\s a -> s {_grgtTrendField = a})

instance AWSRequest GetReportGroupTrend where
  type
    Rs GetReportGroupTrend =
      GetReportGroupTrendResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          GetReportGroupTrendResponse'
            <$> (x .?> "rawData" .!@ mempty)
            <*> (x .?> "stats")
            <*> (pure (fromEnum s))
      )

instance Hashable GetReportGroupTrend

instance NFData GetReportGroupTrend

instance ToHeaders GetReportGroupTrend where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeBuild_20161006.GetReportGroupTrend" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetReportGroupTrend where
  toJSON GetReportGroupTrend' {..} =
    object
      ( catMaybes
          [ ("numOfReports" .=) <$> _grgtNumOfReports,
            Just ("reportGroupArn" .= _grgtReportGroupARN),
            Just ("trendField" .= _grgtTrendField)
          ]
      )

instance ToPath GetReportGroupTrend where
  toPath = const "/"

instance ToQuery GetReportGroupTrend where
  toQuery = const mempty

-- | /See:/ 'getReportGroupTrendResponse' smart constructor.
data GetReportGroupTrendResponse = GetReportGroupTrendResponse'
  { _grgtrrsRawData ::
      !( Maybe
           [ReportWithRawData]
       ),
    _grgtrrsStats ::
      !( Maybe
           ReportGroupTrendStats
       ),
    _grgtrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetReportGroupTrendResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grgtrrsRawData' - An array that contains the raw data for each report.
--
-- * 'grgtrrsStats' - Contains the accumulated trend data.
--
-- * 'grgtrrsResponseStatus' - -- | The response status code.
getReportGroupTrendResponse ::
  -- | 'grgtrrsResponseStatus'
  Int ->
  GetReportGroupTrendResponse
getReportGroupTrendResponse pResponseStatus_ =
  GetReportGroupTrendResponse'
    { _grgtrrsRawData =
        Nothing,
      _grgtrrsStats = Nothing,
      _grgtrrsResponseStatus = pResponseStatus_
    }

-- | An array that contains the raw data for each report.
grgtrrsRawData :: Lens' GetReportGroupTrendResponse [ReportWithRawData]
grgtrrsRawData = lens _grgtrrsRawData (\s a -> s {_grgtrrsRawData = a}) . _Default . _Coerce

-- | Contains the accumulated trend data.
grgtrrsStats :: Lens' GetReportGroupTrendResponse (Maybe ReportGroupTrendStats)
grgtrrsStats = lens _grgtrrsStats (\s a -> s {_grgtrrsStats = a})

-- | -- | The response status code.
grgtrrsResponseStatus :: Lens' GetReportGroupTrendResponse Int
grgtrrsResponseStatus = lens _grgtrrsResponseStatus (\s a -> s {_grgtrrsResponseStatus = a})

instance NFData GetReportGroupTrendResponse
