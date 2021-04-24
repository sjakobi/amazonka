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
-- Module      : Network.AWS.EC2.DescribeScheduledInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified Scheduled Instances or all your Scheduled Instances.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeScheduledInstances
  ( -- * Creating a Request
    describeScheduledInstances,
    DescribeScheduledInstances,

    -- * Request Lenses
    dsiNextToken,
    dsiDryRun,
    dsiScheduledInstanceIds,
    dsiMaxResults,
    dsiSlotStartTimeRange,
    dsiFilters,

    -- * Destructuring the Response
    describeScheduledInstancesResponse,
    DescribeScheduledInstancesResponse,

    -- * Response Lenses
    dsirrsNextToken,
    dsirrsScheduledInstanceSet,
    dsirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeScheduledInstances.
--
--
--
-- /See:/ 'describeScheduledInstances' smart constructor.
data DescribeScheduledInstances = DescribeScheduledInstances'
  { _dsiNextToken ::
      !(Maybe Text),
    _dsiDryRun ::
      !(Maybe Bool),
    _dsiScheduledInstanceIds ::
      !(Maybe [Text]),
    _dsiMaxResults ::
      !(Maybe Int),
    _dsiSlotStartTimeRange ::
      !( Maybe
           SlotStartTimeRangeRequest
       ),
    _dsiFilters ::
      !(Maybe [Filter])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeScheduledInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiNextToken' - The token for the next set of results.
--
-- * 'dsiDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dsiScheduledInstanceIds' - The Scheduled Instance IDs.
--
-- * 'dsiMaxResults' - The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 100. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'dsiSlotStartTimeRange' - The time period for the first schedule to start.
--
-- * 'dsiFilters' - The filters.     * @availability-zone@ - The Availability Zone (for example, @us-west-2a@ ).     * @instance-type@ - The instance type (for example, @c4.large@ ).     * @network-platform@ - The network platform (@EC2-Classic@ or @EC2-VPC@ ).     * @platform@ - The platform (@Linux/UNIX@ or @Windows@ ).
describeScheduledInstances ::
  DescribeScheduledInstances
describeScheduledInstances =
  DescribeScheduledInstances'
    { _dsiNextToken =
        Nothing,
      _dsiDryRun = Nothing,
      _dsiScheduledInstanceIds = Nothing,
      _dsiMaxResults = Nothing,
      _dsiSlotStartTimeRange = Nothing,
      _dsiFilters = Nothing
    }

-- | The token for the next set of results.
dsiNextToken :: Lens' DescribeScheduledInstances (Maybe Text)
dsiNextToken = lens _dsiNextToken (\s a -> s {_dsiNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dsiDryRun :: Lens' DescribeScheduledInstances (Maybe Bool)
dsiDryRun = lens _dsiDryRun (\s a -> s {_dsiDryRun = a})

-- | The Scheduled Instance IDs.
dsiScheduledInstanceIds :: Lens' DescribeScheduledInstances [Text]
dsiScheduledInstanceIds = lens _dsiScheduledInstanceIds (\s a -> s {_dsiScheduledInstanceIds = a}) . _Default . _Coerce

-- | The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 100. To retrieve the remaining results, make another call with the returned @NextToken@ value.
dsiMaxResults :: Lens' DescribeScheduledInstances (Maybe Int)
dsiMaxResults = lens _dsiMaxResults (\s a -> s {_dsiMaxResults = a})

-- | The time period for the first schedule to start.
dsiSlotStartTimeRange :: Lens' DescribeScheduledInstances (Maybe SlotStartTimeRangeRequest)
dsiSlotStartTimeRange = lens _dsiSlotStartTimeRange (\s a -> s {_dsiSlotStartTimeRange = a})

-- | The filters.     * @availability-zone@ - The Availability Zone (for example, @us-west-2a@ ).     * @instance-type@ - The instance type (for example, @c4.large@ ).     * @network-platform@ - The network platform (@EC2-Classic@ or @EC2-VPC@ ).     * @platform@ - The platform (@Linux/UNIX@ or @Windows@ ).
dsiFilters :: Lens' DescribeScheduledInstances [Filter]
dsiFilters = lens _dsiFilters (\s a -> s {_dsiFilters = a}) . _Default . _Coerce

instance AWSPager DescribeScheduledInstances where
  page rq rs
    | stop (rs ^. dsirrsNextToken) = Nothing
    | stop (rs ^. dsirrsScheduledInstanceSet) = Nothing
    | otherwise =
      Just $ rq & dsiNextToken .~ rs ^. dsirrsNextToken

instance AWSRequest DescribeScheduledInstances where
  type
    Rs DescribeScheduledInstances =
      DescribeScheduledInstancesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeScheduledInstancesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "scheduledInstanceSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScheduledInstances

instance NFData DescribeScheduledInstances

instance ToHeaders DescribeScheduledInstances where
  toHeaders = const mempty

instance ToPath DescribeScheduledInstances where
  toPath = const "/"

instance ToQuery DescribeScheduledInstances where
  toQuery DescribeScheduledInstances' {..} =
    mconcat
      [ "Action"
          =: ("DescribeScheduledInstances" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dsiNextToken,
        "DryRun" =: _dsiDryRun,
        toQuery
          ( toQueryList "ScheduledInstanceId"
              <$> _dsiScheduledInstanceIds
          ),
        "MaxResults" =: _dsiMaxResults,
        "SlotStartTimeRange" =: _dsiSlotStartTimeRange,
        toQuery (toQueryList "Filter" <$> _dsiFilters)
      ]

-- | Contains the output of DescribeScheduledInstances.
--
--
--
-- /See:/ 'describeScheduledInstancesResponse' smart constructor.
data DescribeScheduledInstancesResponse = DescribeScheduledInstancesResponse'
  { _dsirrsNextToken ::
      !( Maybe
           Text
       ),
    _dsirrsScheduledInstanceSet ::
      !( Maybe
           [ScheduledInstance]
       ),
    _dsirrsResponseStatus ::
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

-- | Creates a value of 'DescribeScheduledInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsirrsNextToken' - The token required to retrieve the next set of results. This value is @null@ when there are no more results to return.
--
-- * 'dsirrsScheduledInstanceSet' - Information about the Scheduled Instances.
--
-- * 'dsirrsResponseStatus' - -- | The response status code.
describeScheduledInstancesResponse ::
  -- | 'dsirrsResponseStatus'
  Int ->
  DescribeScheduledInstancesResponse
describeScheduledInstancesResponse pResponseStatus_ =
  DescribeScheduledInstancesResponse'
    { _dsirrsNextToken =
        Nothing,
      _dsirrsScheduledInstanceSet = Nothing,
      _dsirrsResponseStatus =
        pResponseStatus_
    }

-- | The token required to retrieve the next set of results. This value is @null@ when there are no more results to return.
dsirrsNextToken :: Lens' DescribeScheduledInstancesResponse (Maybe Text)
dsirrsNextToken = lens _dsirrsNextToken (\s a -> s {_dsirrsNextToken = a})

-- | Information about the Scheduled Instances.
dsirrsScheduledInstanceSet :: Lens' DescribeScheduledInstancesResponse [ScheduledInstance]
dsirrsScheduledInstanceSet = lens _dsirrsScheduledInstanceSet (\s a -> s {_dsirrsScheduledInstanceSet = a}) . _Default . _Coerce

-- | -- | The response status code.
dsirrsResponseStatus :: Lens' DescribeScheduledInstancesResponse Int
dsirrsResponseStatus = lens _dsirrsResponseStatus (\s a -> s {_dsirrsResponseStatus = a})

instance NFData DescribeScheduledInstancesResponse
