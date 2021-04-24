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
-- Module      : Network.AWS.CodeBuild.DescribeCodeCoverages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves one or more code coverage reports.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeBuild.DescribeCodeCoverages
  ( -- * Creating a Request
    describeCodeCoverages,
    DescribeCodeCoverages,

    -- * Request Lenses
    dccSortOrder,
    dccNextToken,
    dccMaxLineCoveragePercentage,
    dccMaxResults,
    dccSortBy,
    dccMinLineCoveragePercentage,
    dccReportARN,

    -- * Destructuring the Response
    describeCodeCoveragesResponse,
    DescribeCodeCoveragesResponse,

    -- * Response Lenses
    dccrrsNextToken,
    dccrrsCodeCoverages,
    dccrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCodeCoverages' smart constructor.
data DescribeCodeCoverages = DescribeCodeCoverages'
  { _dccSortOrder ::
      !(Maybe SortOrderType),
    _dccNextToken ::
      !(Maybe Text),
    _dccMaxLineCoveragePercentage ::
      !(Maybe Double),
    _dccMaxResults ::
      !(Maybe Nat),
    _dccSortBy ::
      !( Maybe
           ReportCodeCoverageSortByType
       ),
    _dccMinLineCoveragePercentage ::
      !(Maybe Double),
    _dccReportARN :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCodeCoverages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccSortOrder' - Specifies if the results are sorted in ascending or descending order.
--
-- * 'dccNextToken' - The @nextToken@ value returned from a previous call to @DescribeCodeCoverages@ . This specifies the next item to return. To return the beginning of the list, exclude this parameter.
--
-- * 'dccMaxLineCoveragePercentage' - The maximum line coverage percentage to report.
--
-- * 'dccMaxResults' - The maximum number of results to return.
--
-- * 'dccSortBy' - Specifies how the results are sorted. Possible values are:     * FILE_PATH    * The results are sorted by file path.     * LINE_COVERAGE_PERCENTAGE    * The results are sorted by the percentage of lines that are covered.
--
-- * 'dccMinLineCoveragePercentage' - The minimum line coverage percentage to report.
--
-- * 'dccReportARN' - The ARN of the report for which test cases are returned.
describeCodeCoverages ::
  -- | 'dccReportARN'
  Text ->
  DescribeCodeCoverages
describeCodeCoverages pReportARN_ =
  DescribeCodeCoverages'
    { _dccSortOrder = Nothing,
      _dccNextToken = Nothing,
      _dccMaxLineCoveragePercentage = Nothing,
      _dccMaxResults = Nothing,
      _dccSortBy = Nothing,
      _dccMinLineCoveragePercentage = Nothing,
      _dccReportARN = pReportARN_
    }

-- | Specifies if the results are sorted in ascending or descending order.
dccSortOrder :: Lens' DescribeCodeCoverages (Maybe SortOrderType)
dccSortOrder = lens _dccSortOrder (\s a -> s {_dccSortOrder = a})

-- | The @nextToken@ value returned from a previous call to @DescribeCodeCoverages@ . This specifies the next item to return. To return the beginning of the list, exclude this parameter.
dccNextToken :: Lens' DescribeCodeCoverages (Maybe Text)
dccNextToken = lens _dccNextToken (\s a -> s {_dccNextToken = a})

-- | The maximum line coverage percentage to report.
dccMaxLineCoveragePercentage :: Lens' DescribeCodeCoverages (Maybe Double)
dccMaxLineCoveragePercentage = lens _dccMaxLineCoveragePercentage (\s a -> s {_dccMaxLineCoveragePercentage = a})

-- | The maximum number of results to return.
dccMaxResults :: Lens' DescribeCodeCoverages (Maybe Natural)
dccMaxResults = lens _dccMaxResults (\s a -> s {_dccMaxResults = a}) . mapping _Nat

-- | Specifies how the results are sorted. Possible values are:     * FILE_PATH    * The results are sorted by file path.     * LINE_COVERAGE_PERCENTAGE    * The results are sorted by the percentage of lines that are covered.
dccSortBy :: Lens' DescribeCodeCoverages (Maybe ReportCodeCoverageSortByType)
dccSortBy = lens _dccSortBy (\s a -> s {_dccSortBy = a})

-- | The minimum line coverage percentage to report.
dccMinLineCoveragePercentage :: Lens' DescribeCodeCoverages (Maybe Double)
dccMinLineCoveragePercentage = lens _dccMinLineCoveragePercentage (\s a -> s {_dccMinLineCoveragePercentage = a})

-- | The ARN of the report for which test cases are returned.
dccReportARN :: Lens' DescribeCodeCoverages Text
dccReportARN = lens _dccReportARN (\s a -> s {_dccReportARN = a})

instance AWSPager DescribeCodeCoverages where
  page rq rs
    | stop (rs ^. dccrrsNextToken) = Nothing
    | stop (rs ^. dccrrsCodeCoverages) = Nothing
    | otherwise =
      Just $ rq & dccNextToken .~ rs ^. dccrrsNextToken

instance AWSRequest DescribeCodeCoverages where
  type
    Rs DescribeCodeCoverages =
      DescribeCodeCoveragesResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          DescribeCodeCoveragesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "codeCoverages" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCodeCoverages

instance NFData DescribeCodeCoverages

instance ToHeaders DescribeCodeCoverages where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeBuild_20161006.DescribeCodeCoverages" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCodeCoverages where
  toJSON DescribeCodeCoverages' {..} =
    object
      ( catMaybes
          [ ("sortOrder" .=) <$> _dccSortOrder,
            ("nextToken" .=) <$> _dccNextToken,
            ("maxLineCoveragePercentage" .=)
              <$> _dccMaxLineCoveragePercentage,
            ("maxResults" .=) <$> _dccMaxResults,
            ("sortBy" .=) <$> _dccSortBy,
            ("minLineCoveragePercentage" .=)
              <$> _dccMinLineCoveragePercentage,
            Just ("reportArn" .= _dccReportARN)
          ]
      )

instance ToPath DescribeCodeCoverages where
  toPath = const "/"

instance ToQuery DescribeCodeCoverages where
  toQuery = const mempty

-- | /See:/ 'describeCodeCoveragesResponse' smart constructor.
data DescribeCodeCoveragesResponse = DescribeCodeCoveragesResponse'
  { _dccrrsNextToken ::
      !( Maybe
           Text
       ),
    _dccrrsCodeCoverages ::
      !( Maybe
           [CodeCoverage]
       ),
    _dccrrsResponseStatus ::
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

-- | Creates a value of 'DescribeCodeCoveragesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccrrsNextToken' - If there are more items to return, this contains a token that is passed to a subsequent call to @DescribeCodeCoverages@ to retrieve the next set of items.
--
-- * 'dccrrsCodeCoverages' - An array of @CodeCoverage@ objects that contain the results.
--
-- * 'dccrrsResponseStatus' - -- | The response status code.
describeCodeCoveragesResponse ::
  -- | 'dccrrsResponseStatus'
  Int ->
  DescribeCodeCoveragesResponse
describeCodeCoveragesResponse pResponseStatus_ =
  DescribeCodeCoveragesResponse'
    { _dccrrsNextToken =
        Nothing,
      _dccrrsCodeCoverages = Nothing,
      _dccrrsResponseStatus = pResponseStatus_
    }

-- | If there are more items to return, this contains a token that is passed to a subsequent call to @DescribeCodeCoverages@ to retrieve the next set of items.
dccrrsNextToken :: Lens' DescribeCodeCoveragesResponse (Maybe Text)
dccrrsNextToken = lens _dccrrsNextToken (\s a -> s {_dccrrsNextToken = a})

-- | An array of @CodeCoverage@ objects that contain the results.
dccrrsCodeCoverages :: Lens' DescribeCodeCoveragesResponse [CodeCoverage]
dccrrsCodeCoverages = lens _dccrrsCodeCoverages (\s a -> s {_dccrrsCodeCoverages = a}) . _Default . _Coerce

-- | -- | The response status code.
dccrrsResponseStatus :: Lens' DescribeCodeCoveragesResponse Int
dccrrsResponseStatus = lens _dccrrsResponseStatus (\s a -> s {_dccrrsResponseStatus = a})

instance NFData DescribeCodeCoveragesResponse
