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
-- Module      : Network.AWS.EC2.DescribeFleets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified EC2 Fleets or all of your EC2 Fleets.
--
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html#monitor-ec2-fleet Monitoring your EC2 Fleet> in the /Amazon EC2 User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeFleets
  ( -- * Creating a Request
    describeFleets,
    DescribeFleets,

    -- * Request Lenses
    dfsNextToken,
    dfsDryRun,
    dfsMaxResults,
    dfsFilters,
    dfsFleetIds,

    -- * Destructuring the Response
    describeFleetsResponse,
    DescribeFleetsResponse,

    -- * Response Lenses
    dfrfrsNextToken,
    dfrfrsFleets,
    dfrfrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeFleets' smart constructor.
data DescribeFleets = DescribeFleets'
  { _dfsNextToken ::
      !(Maybe Text),
    _dfsDryRun :: !(Maybe Bool),
    _dfsMaxResults :: !(Maybe Int),
    _dfsFilters :: !(Maybe [Filter]),
    _dfsFleetIds :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeFleets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsNextToken' - The token for the next set of results.
--
-- * 'dfsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dfsMaxResults' - The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'dfsFilters' - The filters.     * @activity-status@ - The progress of the EC2 Fleet ( @error@ | @pending-fulfillment@ | @pending-termination@ | @fulfilled@ ).     * @excess-capacity-termination-policy@ - Indicates whether to terminate running instances if the target capacity is decreased below the current EC2 Fleet size (@true@ | @false@ ).     * @fleet-state@ - The state of the EC2 Fleet (@submitted@ | @active@ | @deleted@ | @failed@ | @deleted-running@ | @deleted-terminating@ | @modifying@ ).     * @replace-unhealthy-instances@ - Indicates whether EC2 Fleet should replace unhealthy instances (@true@ | @false@ ).     * @type@ - The type of request (@instant@ | @request@ | @maintain@ ).
--
-- * 'dfsFleetIds' - The ID of the EC2 Fleets.
describeFleets ::
  DescribeFleets
describeFleets =
  DescribeFleets'
    { _dfsNextToken = Nothing,
      _dfsDryRun = Nothing,
      _dfsMaxResults = Nothing,
      _dfsFilters = Nothing,
      _dfsFleetIds = Nothing
    }

-- | The token for the next set of results.
dfsNextToken :: Lens' DescribeFleets (Maybe Text)
dfsNextToken = lens _dfsNextToken (\s a -> s {_dfsNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dfsDryRun :: Lens' DescribeFleets (Maybe Bool)
dfsDryRun = lens _dfsDryRun (\s a -> s {_dfsDryRun = a})

-- | The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
dfsMaxResults :: Lens' DescribeFleets (Maybe Int)
dfsMaxResults = lens _dfsMaxResults (\s a -> s {_dfsMaxResults = a})

-- | The filters.     * @activity-status@ - The progress of the EC2 Fleet ( @error@ | @pending-fulfillment@ | @pending-termination@ | @fulfilled@ ).     * @excess-capacity-termination-policy@ - Indicates whether to terminate running instances if the target capacity is decreased below the current EC2 Fleet size (@true@ | @false@ ).     * @fleet-state@ - The state of the EC2 Fleet (@submitted@ | @active@ | @deleted@ | @failed@ | @deleted-running@ | @deleted-terminating@ | @modifying@ ).     * @replace-unhealthy-instances@ - Indicates whether EC2 Fleet should replace unhealthy instances (@true@ | @false@ ).     * @type@ - The type of request (@instant@ | @request@ | @maintain@ ).
dfsFilters :: Lens' DescribeFleets [Filter]
dfsFilters = lens _dfsFilters (\s a -> s {_dfsFilters = a}) . _Default . _Coerce

-- | The ID of the EC2 Fleets.
dfsFleetIds :: Lens' DescribeFleets [Text]
dfsFleetIds = lens _dfsFleetIds (\s a -> s {_dfsFleetIds = a}) . _Default . _Coerce

instance AWSPager DescribeFleets where
  page rq rs
    | stop (rs ^. dfrfrsNextToken) = Nothing
    | stop (rs ^. dfrfrsFleets) = Nothing
    | otherwise =
      Just $ rq & dfsNextToken .~ rs ^. dfrfrsNextToken

instance AWSRequest DescribeFleets where
  type Rs DescribeFleets = DescribeFleetsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeFleetsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "fleetSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeFleets

instance NFData DescribeFleets

instance ToHeaders DescribeFleets where
  toHeaders = const mempty

instance ToPath DescribeFleets where
  toPath = const "/"

instance ToQuery DescribeFleets where
  toQuery DescribeFleets' {..} =
    mconcat
      [ "Action" =: ("DescribeFleets" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dfsNextToken,
        "DryRun" =: _dfsDryRun,
        "MaxResults" =: _dfsMaxResults,
        toQuery (toQueryList "Filter" <$> _dfsFilters),
        toQuery (toQueryList "FleetId" <$> _dfsFleetIds)
      ]

-- | /See:/ 'describeFleetsResponse' smart constructor.
data DescribeFleetsResponse = DescribeFleetsResponse'
  { _dfrfrsNextToken ::
      !(Maybe Text),
    _dfrfrsFleets ::
      !(Maybe [FleetData]),
    _dfrfrsResponseStatus ::
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

-- | Creates a value of 'DescribeFleetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfrfrsNextToken' - The token for the next set of results.
--
-- * 'dfrfrsFleets' - Information about the EC2 Fleets.
--
-- * 'dfrfrsResponseStatus' - -- | The response status code.
describeFleetsResponse ::
  -- | 'dfrfrsResponseStatus'
  Int ->
  DescribeFleetsResponse
describeFleetsResponse pResponseStatus_ =
  DescribeFleetsResponse'
    { _dfrfrsNextToken = Nothing,
      _dfrfrsFleets = Nothing,
      _dfrfrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results.
dfrfrsNextToken :: Lens' DescribeFleetsResponse (Maybe Text)
dfrfrsNextToken = lens _dfrfrsNextToken (\s a -> s {_dfrfrsNextToken = a})

-- | Information about the EC2 Fleets.
dfrfrsFleets :: Lens' DescribeFleetsResponse [FleetData]
dfrfrsFleets = lens _dfrfrsFleets (\s a -> s {_dfrfrsFleets = a}) . _Default . _Coerce

-- | -- | The response status code.
dfrfrsResponseStatus :: Lens' DescribeFleetsResponse Int
dfrfrsResponseStatus = lens _dfrfrsResponseStatus (\s a -> s {_dfrfrsResponseStatus = a})

instance NFData DescribeFleetsResponse
