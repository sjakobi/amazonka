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
-- Module      : Network.AWS.EC2.DescribeNetworkInsightsAnalyses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your network insights analyses.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeNetworkInsightsAnalyses
  ( -- * Creating a Request
    describeNetworkInsightsAnalyses,
    DescribeNetworkInsightsAnalyses,

    -- * Request Lenses
    dniasAnalysisStartTime,
    dniasNetworkInsightsAnalysisIds,
    dniasNextToken,
    dniasDryRun,
    dniasMaxResults,
    dniasFilters,
    dniasNetworkInsightsPathId,
    dniasAnalysisEndTime,

    -- * Destructuring the Response
    describeNetworkInsightsAnalysesResponse,
    DescribeNetworkInsightsAnalysesResponse,

    -- * Response Lenses
    desersNextToken,
    desersNetworkInsightsAnalyses,
    desersResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeNetworkInsightsAnalyses' smart constructor.
data DescribeNetworkInsightsAnalyses = DescribeNetworkInsightsAnalyses'
  { _dniasAnalysisStartTime ::
      !( Maybe
           ISO8601
       ),
    _dniasNetworkInsightsAnalysisIds ::
      !( Maybe
           [Text]
       ),
    _dniasNextToken ::
      !( Maybe
           Text
       ),
    _dniasDryRun ::
      !( Maybe
           Bool
       ),
    _dniasMaxResults ::
      !( Maybe
           Nat
       ),
    _dniasFilters ::
      !( Maybe
           [Filter]
       ),
    _dniasNetworkInsightsPathId ::
      !( Maybe
           Text
       ),
    _dniasAnalysisEndTime ::
      !( Maybe
           ISO8601
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeNetworkInsightsAnalyses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dniasAnalysisStartTime' - The time when the network insights analyses started.
--
-- * 'dniasNetworkInsightsAnalysisIds' - The ID of the network insights analyses. You must specify either analysis IDs or a path ID.
--
-- * 'dniasNextToken' - The token for the next page of results.
--
-- * 'dniasDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dniasMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dniasFilters' - The filters. The following are possible values:     * PathFound - A Boolean value that indicates whether a feasible path is found.     * Status - The status of the analysis (running | succeeded | failed).
--
-- * 'dniasNetworkInsightsPathId' - The ID of the path. You must specify either a path ID or analysis IDs.
--
-- * 'dniasAnalysisEndTime' - The time when the network insights analyses ended.
describeNetworkInsightsAnalyses ::
  DescribeNetworkInsightsAnalyses
describeNetworkInsightsAnalyses =
  DescribeNetworkInsightsAnalyses'
    { _dniasAnalysisStartTime =
        Nothing,
      _dniasNetworkInsightsAnalysisIds = Nothing,
      _dniasNextToken = Nothing,
      _dniasDryRun = Nothing,
      _dniasMaxResults = Nothing,
      _dniasFilters = Nothing,
      _dniasNetworkInsightsPathId = Nothing,
      _dniasAnalysisEndTime = Nothing
    }

-- | The time when the network insights analyses started.
dniasAnalysisStartTime :: Lens' DescribeNetworkInsightsAnalyses (Maybe UTCTime)
dniasAnalysisStartTime = lens _dniasAnalysisStartTime (\s a -> s {_dniasAnalysisStartTime = a}) . mapping _Time

-- | The ID of the network insights analyses. You must specify either analysis IDs or a path ID.
dniasNetworkInsightsAnalysisIds :: Lens' DescribeNetworkInsightsAnalyses [Text]
dniasNetworkInsightsAnalysisIds = lens _dniasNetworkInsightsAnalysisIds (\s a -> s {_dniasNetworkInsightsAnalysisIds = a}) . _Default . _Coerce

-- | The token for the next page of results.
dniasNextToken :: Lens' DescribeNetworkInsightsAnalyses (Maybe Text)
dniasNextToken = lens _dniasNextToken (\s a -> s {_dniasNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dniasDryRun :: Lens' DescribeNetworkInsightsAnalyses (Maybe Bool)
dniasDryRun = lens _dniasDryRun (\s a -> s {_dniasDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dniasMaxResults :: Lens' DescribeNetworkInsightsAnalyses (Maybe Natural)
dniasMaxResults = lens _dniasMaxResults (\s a -> s {_dniasMaxResults = a}) . mapping _Nat

-- | The filters. The following are possible values:     * PathFound - A Boolean value that indicates whether a feasible path is found.     * Status - The status of the analysis (running | succeeded | failed).
dniasFilters :: Lens' DescribeNetworkInsightsAnalyses [Filter]
dniasFilters = lens _dniasFilters (\s a -> s {_dniasFilters = a}) . _Default . _Coerce

-- | The ID of the path. You must specify either a path ID or analysis IDs.
dniasNetworkInsightsPathId :: Lens' DescribeNetworkInsightsAnalyses (Maybe Text)
dniasNetworkInsightsPathId = lens _dniasNetworkInsightsPathId (\s a -> s {_dniasNetworkInsightsPathId = a})

-- | The time when the network insights analyses ended.
dniasAnalysisEndTime :: Lens' DescribeNetworkInsightsAnalyses (Maybe UTCTime)
dniasAnalysisEndTime = lens _dniasAnalysisEndTime (\s a -> s {_dniasAnalysisEndTime = a}) . mapping _Time

instance AWSPager DescribeNetworkInsightsAnalyses where
  page rq rs
    | stop (rs ^. desersNextToken) = Nothing
    | stop (rs ^. desersNetworkInsightsAnalyses) =
      Nothing
    | otherwise =
      Just $ rq & dniasNextToken .~ rs ^. desersNextToken

instance AWSRequest DescribeNetworkInsightsAnalyses where
  type
    Rs DescribeNetworkInsightsAnalyses =
      DescribeNetworkInsightsAnalysesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeNetworkInsightsAnalysesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "networkInsightsAnalysisSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeNetworkInsightsAnalyses

instance NFData DescribeNetworkInsightsAnalyses

instance ToHeaders DescribeNetworkInsightsAnalyses where
  toHeaders = const mempty

instance ToPath DescribeNetworkInsightsAnalyses where
  toPath = const "/"

instance ToQuery DescribeNetworkInsightsAnalyses where
  toQuery DescribeNetworkInsightsAnalyses' {..} =
    mconcat
      [ "Action"
          =: ("DescribeNetworkInsightsAnalyses" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "AnalysisStartTime" =: _dniasAnalysisStartTime,
        toQuery
          ( toQueryList "NetworkInsightsAnalysisId"
              <$> _dniasNetworkInsightsAnalysisIds
          ),
        "NextToken" =: _dniasNextToken,
        "DryRun" =: _dniasDryRun,
        "MaxResults" =: _dniasMaxResults,
        toQuery (toQueryList "Filter" <$> _dniasFilters),
        "NetworkInsightsPathId"
          =: _dniasNetworkInsightsPathId,
        "AnalysisEndTime" =: _dniasAnalysisEndTime
      ]

-- | /See:/ 'describeNetworkInsightsAnalysesResponse' smart constructor.
data DescribeNetworkInsightsAnalysesResponse = DescribeNetworkInsightsAnalysesResponse'
  { _desersNextToken ::
      !( Maybe
           Text
       ),
    _desersNetworkInsightsAnalyses ::
      !( Maybe
           [NetworkInsightsAnalysis]
       ),
    _desersResponseStatus ::
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

-- | Creates a value of 'DescribeNetworkInsightsAnalysesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desersNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'desersNetworkInsightsAnalyses' - Information about the network insights analyses.
--
-- * 'desersResponseStatus' - -- | The response status code.
describeNetworkInsightsAnalysesResponse ::
  -- | 'desersResponseStatus'
  Int ->
  DescribeNetworkInsightsAnalysesResponse
describeNetworkInsightsAnalysesResponse
  pResponseStatus_ =
    DescribeNetworkInsightsAnalysesResponse'
      { _desersNextToken =
          Nothing,
        _desersNetworkInsightsAnalyses =
          Nothing,
        _desersResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
desersNextToken :: Lens' DescribeNetworkInsightsAnalysesResponse (Maybe Text)
desersNextToken = lens _desersNextToken (\s a -> s {_desersNextToken = a})

-- | Information about the network insights analyses.
desersNetworkInsightsAnalyses :: Lens' DescribeNetworkInsightsAnalysesResponse [NetworkInsightsAnalysis]
desersNetworkInsightsAnalyses = lens _desersNetworkInsightsAnalyses (\s a -> s {_desersNetworkInsightsAnalyses = a}) . _Default . _Coerce

-- | -- | The response status code.
desersResponseStatus :: Lens' DescribeNetworkInsightsAnalysesResponse Int
desersResponseStatus = lens _desersResponseStatus (\s a -> s {_desersResponseStatus = a})

instance
  NFData
    DescribeNetworkInsightsAnalysesResponse
