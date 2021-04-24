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
-- Module      : Network.AWS.EC2.DescribeTrafficMirrorFilters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more Traffic Mirror filters.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTrafficMirrorFilters
  ( -- * Creating a Request
    describeTrafficMirrorFilters,
    DescribeTrafficMirrorFilters,

    -- * Request Lenses
    dtmfsNextToken,
    dtmfsDryRun,
    dtmfsMaxResults,
    dtmfsTrafficMirrorFilterIds,
    dtmfsFilters,

    -- * Destructuring the Response
    describeTrafficMirrorFiltersResponse,
    DescribeTrafficMirrorFiltersResponse,

    -- * Response Lenses
    dtmfrtrsTrafficMirrorFilters,
    dtmfrtrsNextToken,
    dtmfrtrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTrafficMirrorFilters' smart constructor.
data DescribeTrafficMirrorFilters = DescribeTrafficMirrorFilters'
  { _dtmfsNextToken ::
      !(Maybe Text),
    _dtmfsDryRun ::
      !(Maybe Bool),
    _dtmfsMaxResults ::
      !(Maybe Nat),
    _dtmfsTrafficMirrorFilterIds ::
      !( Maybe
           [Text]
       ),
    _dtmfsFilters ::
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

-- | Creates a value of 'DescribeTrafficMirrorFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmfsNextToken' - The token for the next page of results.
--
-- * 'dtmfsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtmfsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtmfsTrafficMirrorFilterIds' - The ID of the Traffic Mirror filter.
--
-- * 'dtmfsFilters' - One or more filters. The possible values are:     * @description@ : The Traffic Mirror filter description.     * @traffic-mirror-filter-id@ : The ID of the Traffic Mirror filter.
describeTrafficMirrorFilters ::
  DescribeTrafficMirrorFilters
describeTrafficMirrorFilters =
  DescribeTrafficMirrorFilters'
    { _dtmfsNextToken =
        Nothing,
      _dtmfsDryRun = Nothing,
      _dtmfsMaxResults = Nothing,
      _dtmfsTrafficMirrorFilterIds = Nothing,
      _dtmfsFilters = Nothing
    }

-- | The token for the next page of results.
dtmfsNextToken :: Lens' DescribeTrafficMirrorFilters (Maybe Text)
dtmfsNextToken = lens _dtmfsNextToken (\s a -> s {_dtmfsNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtmfsDryRun :: Lens' DescribeTrafficMirrorFilters (Maybe Bool)
dtmfsDryRun = lens _dtmfsDryRun (\s a -> s {_dtmfsDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtmfsMaxResults :: Lens' DescribeTrafficMirrorFilters (Maybe Natural)
dtmfsMaxResults = lens _dtmfsMaxResults (\s a -> s {_dtmfsMaxResults = a}) . mapping _Nat

-- | The ID of the Traffic Mirror filter.
dtmfsTrafficMirrorFilterIds :: Lens' DescribeTrafficMirrorFilters [Text]
dtmfsTrafficMirrorFilterIds = lens _dtmfsTrafficMirrorFilterIds (\s a -> s {_dtmfsTrafficMirrorFilterIds = a}) . _Default . _Coerce

-- | One or more filters. The possible values are:     * @description@ : The Traffic Mirror filter description.     * @traffic-mirror-filter-id@ : The ID of the Traffic Mirror filter.
dtmfsFilters :: Lens' DescribeTrafficMirrorFilters [Filter]
dtmfsFilters = lens _dtmfsFilters (\s a -> s {_dtmfsFilters = a}) . _Default . _Coerce

instance AWSPager DescribeTrafficMirrorFilters where
  page rq rs
    | stop (rs ^. dtmfrtrsNextToken) = Nothing
    | stop (rs ^. dtmfrtrsTrafficMirrorFilters) = Nothing
    | otherwise =
      Just $ rq & dtmfsNextToken .~ rs ^. dtmfrtrsNextToken

instance AWSRequest DescribeTrafficMirrorFilters where
  type
    Rs DescribeTrafficMirrorFilters =
      DescribeTrafficMirrorFiltersResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTrafficMirrorFiltersResponse'
            <$> ( x .@? "trafficMirrorFilterSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTrafficMirrorFilters

instance NFData DescribeTrafficMirrorFilters

instance ToHeaders DescribeTrafficMirrorFilters where
  toHeaders = const mempty

instance ToPath DescribeTrafficMirrorFilters where
  toPath = const "/"

instance ToQuery DescribeTrafficMirrorFilters where
  toQuery DescribeTrafficMirrorFilters' {..} =
    mconcat
      [ "Action"
          =: ("DescribeTrafficMirrorFilters" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtmfsNextToken,
        "DryRun" =: _dtmfsDryRun,
        "MaxResults" =: _dtmfsMaxResults,
        toQuery
          ( toQueryList "TrafficMirrorFilterId"
              <$> _dtmfsTrafficMirrorFilterIds
          ),
        toQuery (toQueryList "Filter" <$> _dtmfsFilters)
      ]

-- | /See:/ 'describeTrafficMirrorFiltersResponse' smart constructor.
data DescribeTrafficMirrorFiltersResponse = DescribeTrafficMirrorFiltersResponse'
  { _dtmfrtrsTrafficMirrorFilters ::
      !( Maybe
           [TrafficMirrorFilter]
       ),
    _dtmfrtrsNextToken ::
      !( Maybe
           Text
       ),
    _dtmfrtrsResponseStatus ::
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

-- | Creates a value of 'DescribeTrafficMirrorFiltersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmfrtrsTrafficMirrorFilters' - Information about one or more Traffic Mirror filters.
--
-- * 'dtmfrtrsNextToken' - The token to use to retrieve the next page of results. The value is @null@ when there are no more results to return.
--
-- * 'dtmfrtrsResponseStatus' - -- | The response status code.
describeTrafficMirrorFiltersResponse ::
  -- | 'dtmfrtrsResponseStatus'
  Int ->
  DescribeTrafficMirrorFiltersResponse
describeTrafficMirrorFiltersResponse pResponseStatus_ =
  DescribeTrafficMirrorFiltersResponse'
    { _dtmfrtrsTrafficMirrorFilters =
        Nothing,
      _dtmfrtrsNextToken = Nothing,
      _dtmfrtrsResponseStatus =
        pResponseStatus_
    }

-- | Information about one or more Traffic Mirror filters.
dtmfrtrsTrafficMirrorFilters :: Lens' DescribeTrafficMirrorFiltersResponse [TrafficMirrorFilter]
dtmfrtrsTrafficMirrorFilters = lens _dtmfrtrsTrafficMirrorFilters (\s a -> s {_dtmfrtrsTrafficMirrorFilters = a}) . _Default . _Coerce

-- | The token to use to retrieve the next page of results. The value is @null@ when there are no more results to return.
dtmfrtrsNextToken :: Lens' DescribeTrafficMirrorFiltersResponse (Maybe Text)
dtmfrtrsNextToken = lens _dtmfrtrsNextToken (\s a -> s {_dtmfrtrsNextToken = a})

-- | -- | The response status code.
dtmfrtrsResponseStatus :: Lens' DescribeTrafficMirrorFiltersResponse Int
dtmfrtrsResponseStatus = lens _dtmfrtrsResponseStatus (\s a -> s {_dtmfrtrsResponseStatus = a})

instance NFData DescribeTrafficMirrorFiltersResponse
