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
-- Module      : Network.AWS.EC2.DescribeFleetInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the running instances for the specified EC2 Fleet.
--
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html#monitor-ec2-fleet Monitoring your EC2 Fleet> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.DescribeFleetInstances
  ( -- * Creating a Request
    describeFleetInstances,
    DescribeFleetInstances,

    -- * Request Lenses
    dfisNextToken,
    dfisDryRun,
    dfisMaxResults,
    dfisFilters,
    dfisFleetId,

    -- * Destructuring the Response
    describeFleetInstancesResponse,
    DescribeFleetInstancesResponse,

    -- * Response Lenses
    dfirrsNextToken,
    dfirrsFleetId,
    dfirrsActiveInstances,
    dfirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeFleetInstances' smart constructor.
data DescribeFleetInstances = DescribeFleetInstances'
  { _dfisNextToken ::
      !(Maybe Text),
    _dfisDryRun ::
      !(Maybe Bool),
    _dfisMaxResults ::
      !(Maybe Int),
    _dfisFilters ::
      !(Maybe [Filter]),
    _dfisFleetId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeFleetInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfisNextToken' - The token for the next set of results.
--
-- * 'dfisDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dfisMaxResults' - The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'dfisFilters' - The filters.     * @instance-type@ - The instance type.
--
-- * 'dfisFleetId' - The ID of the EC2 Fleet.
describeFleetInstances ::
  -- | 'dfisFleetId'
  Text ->
  DescribeFleetInstances
describeFleetInstances pFleetId_ =
  DescribeFleetInstances'
    { _dfisNextToken = Nothing,
      _dfisDryRun = Nothing,
      _dfisMaxResults = Nothing,
      _dfisFilters = Nothing,
      _dfisFleetId = pFleetId_
    }

-- | The token for the next set of results.
dfisNextToken :: Lens' DescribeFleetInstances (Maybe Text)
dfisNextToken = lens _dfisNextToken (\s a -> s {_dfisNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dfisDryRun :: Lens' DescribeFleetInstances (Maybe Bool)
dfisDryRun = lens _dfisDryRun (\s a -> s {_dfisDryRun = a})

-- | The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
dfisMaxResults :: Lens' DescribeFleetInstances (Maybe Int)
dfisMaxResults = lens _dfisMaxResults (\s a -> s {_dfisMaxResults = a})

-- | The filters.     * @instance-type@ - The instance type.
dfisFilters :: Lens' DescribeFleetInstances [Filter]
dfisFilters = lens _dfisFilters (\s a -> s {_dfisFilters = a}) . _Default . _Coerce

-- | The ID of the EC2 Fleet.
dfisFleetId :: Lens' DescribeFleetInstances Text
dfisFleetId = lens _dfisFleetId (\s a -> s {_dfisFleetId = a})

instance AWSRequest DescribeFleetInstances where
  type
    Rs DescribeFleetInstances =
      DescribeFleetInstancesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeFleetInstancesResponse'
            <$> (x .@? "nextToken")
            <*> (x .@? "fleetId")
            <*> ( x .@? "activeInstanceSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeFleetInstances

instance NFData DescribeFleetInstances

instance ToHeaders DescribeFleetInstances where
  toHeaders = const mempty

instance ToPath DescribeFleetInstances where
  toPath = const "/"

instance ToQuery DescribeFleetInstances where
  toQuery DescribeFleetInstances' {..} =
    mconcat
      [ "Action"
          =: ("DescribeFleetInstances" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dfisNextToken,
        "DryRun" =: _dfisDryRun,
        "MaxResults" =: _dfisMaxResults,
        toQuery (toQueryList "Filter" <$> _dfisFilters),
        "FleetId" =: _dfisFleetId
      ]

-- | /See:/ 'describeFleetInstancesResponse' smart constructor.
data DescribeFleetInstancesResponse = DescribeFleetInstancesResponse'
  { _dfirrsNextToken ::
      !( Maybe
           Text
       ),
    _dfirrsFleetId ::
      !( Maybe
           Text
       ),
    _dfirrsActiveInstances ::
      !( Maybe
           [ActiveInstance]
       ),
    _dfirrsResponseStatus ::
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

-- | Creates a value of 'DescribeFleetInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfirrsNextToken' - The token for the next set of results.
--
-- * 'dfirrsFleetId' - The ID of the EC2 Fleet.
--
-- * 'dfirrsActiveInstances' - The running instances. This list is refreshed periodically and might be out of date.
--
-- * 'dfirrsResponseStatus' - -- | The response status code.
describeFleetInstancesResponse ::
  -- | 'dfirrsResponseStatus'
  Int ->
  DescribeFleetInstancesResponse
describeFleetInstancesResponse pResponseStatus_ =
  DescribeFleetInstancesResponse'
    { _dfirrsNextToken =
        Nothing,
      _dfirrsFleetId = Nothing,
      _dfirrsActiveInstances = Nothing,
      _dfirrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results.
dfirrsNextToken :: Lens' DescribeFleetInstancesResponse (Maybe Text)
dfirrsNextToken = lens _dfirrsNextToken (\s a -> s {_dfirrsNextToken = a})

-- | The ID of the EC2 Fleet.
dfirrsFleetId :: Lens' DescribeFleetInstancesResponse (Maybe Text)
dfirrsFleetId = lens _dfirrsFleetId (\s a -> s {_dfirrsFleetId = a})

-- | The running instances. This list is refreshed periodically and might be out of date.
dfirrsActiveInstances :: Lens' DescribeFleetInstancesResponse [ActiveInstance]
dfirrsActiveInstances = lens _dfirrsActiveInstances (\s a -> s {_dfirrsActiveInstances = a}) . _Default . _Coerce

-- | -- | The response status code.
dfirrsResponseStatus :: Lens' DescribeFleetInstancesResponse Int
dfirrsResponseStatus = lens _dfirrsResponseStatus (\s a -> s {_dfirrsResponseStatus = a})

instance NFData DescribeFleetInstancesResponse
