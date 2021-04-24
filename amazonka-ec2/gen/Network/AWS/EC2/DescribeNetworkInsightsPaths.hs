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
-- Module      : Network.AWS.EC2.DescribeNetworkInsightsPaths
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your paths.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeNetworkInsightsPaths
  ( -- * Creating a Request
    describeNetworkInsightsPaths,
    DescribeNetworkInsightsPaths,

    -- * Request Lenses
    dnipsNextToken,
    dnipsDryRun,
    dnipsMaxResults,
    dnipsNetworkInsightsPathIds,
    dnipsFilters,

    -- * Destructuring the Response
    describeNetworkInsightsPathsResponse,
    DescribeNetworkInsightsPathsResponse,

    -- * Response Lenses
    describenetworkinsightspathsresponseersNextToken,
    describenetworkinsightspathsresponseersNetworkInsightsPaths,
    describenetworkinsightspathsresponseersResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeNetworkInsightsPaths' smart constructor.
data DescribeNetworkInsightsPaths = DescribeNetworkInsightsPaths'
  { _dnipsNextToken ::
      !(Maybe Text),
    _dnipsDryRun ::
      !(Maybe Bool),
    _dnipsMaxResults ::
      !(Maybe Nat),
    _dnipsNetworkInsightsPathIds ::
      !( Maybe
           [Text]
       ),
    _dnipsFilters ::
      !( Maybe
           [Filter]
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

-- | Creates a value of 'DescribeNetworkInsightsPaths' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnipsNextToken' - The token for the next page of results.
--
-- * 'dnipsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dnipsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dnipsNetworkInsightsPathIds' - The IDs of the paths.
--
-- * 'dnipsFilters' - The filters. The following are possible values:     * Destination - The ID of the resource.     * DestinationPort - The destination port.     * Name - The path name.     * Protocol - The protocol.     * Source - The ID of the resource.
describeNetworkInsightsPaths ::
  DescribeNetworkInsightsPaths
describeNetworkInsightsPaths =
  DescribeNetworkInsightsPaths'
    { _dnipsNextToken =
        Nothing,
      _dnipsDryRun = Nothing,
      _dnipsMaxResults = Nothing,
      _dnipsNetworkInsightsPathIds = Nothing,
      _dnipsFilters = Nothing
    }

-- | The token for the next page of results.
dnipsNextToken :: Lens' DescribeNetworkInsightsPaths (Maybe Text)
dnipsNextToken = lens _dnipsNextToken (\s a -> s {_dnipsNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dnipsDryRun :: Lens' DescribeNetworkInsightsPaths (Maybe Bool)
dnipsDryRun = lens _dnipsDryRun (\s a -> s {_dnipsDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dnipsMaxResults :: Lens' DescribeNetworkInsightsPaths (Maybe Natural)
dnipsMaxResults = lens _dnipsMaxResults (\s a -> s {_dnipsMaxResults = a}) . mapping _Nat

-- | The IDs of the paths.
dnipsNetworkInsightsPathIds :: Lens' DescribeNetworkInsightsPaths [Text]
dnipsNetworkInsightsPathIds = lens _dnipsNetworkInsightsPathIds (\s a -> s {_dnipsNetworkInsightsPathIds = a}) . _Default . _Coerce

-- | The filters. The following are possible values:     * Destination - The ID of the resource.     * DestinationPort - The destination port.     * Name - The path name.     * Protocol - The protocol.     * Source - The ID of the resource.
dnipsFilters :: Lens' DescribeNetworkInsightsPaths [Filter]
dnipsFilters = lens _dnipsFilters (\s a -> s {_dnipsFilters = a}) . _Default . _Coerce

instance AWSPager DescribeNetworkInsightsPaths where
  page rq rs
    | stop
        ( rs
            ^. describenetworkinsightspathsresponseersNextToken
        ) =
      Nothing
    | stop
        ( rs
            ^. describenetworkinsightspathsresponseersNetworkInsightsPaths
        ) =
      Nothing
    | otherwise =
      Just $
        rq
          & dnipsNextToken
          .~ rs
          ^. describenetworkinsightspathsresponseersNextToken

instance AWSRequest DescribeNetworkInsightsPaths where
  type
    Rs DescribeNetworkInsightsPaths =
      DescribeNetworkInsightsPathsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeNetworkInsightsPathsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "networkInsightsPathSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeNetworkInsightsPaths

instance NFData DescribeNetworkInsightsPaths

instance ToHeaders DescribeNetworkInsightsPaths where
  toHeaders = const mempty

instance ToPath DescribeNetworkInsightsPaths where
  toPath = const "/"

instance ToQuery DescribeNetworkInsightsPaths where
  toQuery DescribeNetworkInsightsPaths' {..} =
    mconcat
      [ "Action"
          =: ("DescribeNetworkInsightsPaths" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dnipsNextToken,
        "DryRun" =: _dnipsDryRun,
        "MaxResults" =: _dnipsMaxResults,
        toQuery
          ( toQueryList "NetworkInsightsPathId"
              <$> _dnipsNetworkInsightsPathIds
          ),
        toQuery (toQueryList "Filter" <$> _dnipsFilters)
      ]

-- | /See:/ 'describeNetworkInsightsPathsResponse' smart constructor.
data DescribeNetworkInsightsPathsResponse = DescribeNetworkInsightsPathsResponse'
  { _describenetworkinsightspathsresponseersNextToken ::
      !( Maybe
           Text
       ),
    _describenetworkinsightspathsresponseersNetworkInsightsPaths ::
      !( Maybe
           [NetworkInsightsPath]
       ),
    _describenetworkinsightspathsresponseersResponseStatus ::
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

-- | Creates a value of 'DescribeNetworkInsightsPathsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'describenetworkinsightspathsresponseersNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'describenetworkinsightspathsresponseersNetworkInsightsPaths' - Information about the paths.
--
-- * 'describenetworkinsightspathsresponseersResponseStatus' - -- | The response status code.
describeNetworkInsightsPathsResponse ::
  -- | 'describenetworkinsightspathsresponseersResponseStatus'
  Int ->
  DescribeNetworkInsightsPathsResponse
describeNetworkInsightsPathsResponse pResponseStatus_ =
  DescribeNetworkInsightsPathsResponse'
    { _describenetworkinsightspathsresponseersNextToken =
        Nothing,
      _describenetworkinsightspathsresponseersNetworkInsightsPaths =
        Nothing,
      _describenetworkinsightspathsresponseersResponseStatus =
        pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
describenetworkinsightspathsresponseersNextToken :: Lens' DescribeNetworkInsightsPathsResponse (Maybe Text)
describenetworkinsightspathsresponseersNextToken = lens _describenetworkinsightspathsresponseersNextToken (\s a -> s {_describenetworkinsightspathsresponseersNextToken = a})

-- | Information about the paths.
describenetworkinsightspathsresponseersNetworkInsightsPaths :: Lens' DescribeNetworkInsightsPathsResponse [NetworkInsightsPath]
describenetworkinsightspathsresponseersNetworkInsightsPaths = lens _describenetworkinsightspathsresponseersNetworkInsightsPaths (\s a -> s {_describenetworkinsightspathsresponseersNetworkInsightsPaths = a}) . _Default . _Coerce

-- | -- | The response status code.
describenetworkinsightspathsresponseersResponseStatus :: Lens' DescribeNetworkInsightsPathsResponse Int
describenetworkinsightspathsresponseersResponseStatus = lens _describenetworkinsightspathsresponseersResponseStatus (\s a -> s {_describenetworkinsightspathsresponseersResponseStatus = a})

instance NFData DescribeNetworkInsightsPathsResponse
