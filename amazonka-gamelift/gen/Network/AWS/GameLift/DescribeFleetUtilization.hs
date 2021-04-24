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
-- Module      : Network.AWS.GameLift.DescribeFleetUtilization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves utilization statistics for one or more fleets. These statistics provide insight into how available hosting resources are currently being used. To get statistics on available hosting resources, see 'DescribeFleetCapacity' .
--
--
-- You can request utilization data for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a 'FleetUtilization' object is returned for each requested fleet ID, unless the fleet identifier is not found.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html Setting up GameLift Fleets>
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet GameLift Metrics for Fleets>
--
-- __Related operations__
--
--     * 'CreateFleet'
--
--     * 'ListFleets'
--
--     * 'DeleteFleet'
--
--     * Describe fleets:
--
--     * 'DescribeFleetAttributes'
--
--     * 'DescribeFleetCapacity'
--
--     * 'DescribeFleetPortSettings'
--
--     * 'DescribeFleetUtilization'
--
--     * 'DescribeRuntimeConfiguration'
--
--     * 'DescribeEC2InstanceLimits'
--
--     * 'DescribeFleetEvents'
--
--
--
--     * 'UpdateFleetAttributes'
--
--     * 'StartFleetActions' or 'StopFleetActions'
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.DescribeFleetUtilization
  ( -- * Creating a Request
    describeFleetUtilization,
    DescribeFleetUtilization,

    -- * Request Lenses
    dfuNextToken,
    dfuFleetIds,
    dfuLimit,

    -- * Destructuring the Response
    describeFleetUtilizationResponse,
    DescribeFleetUtilizationResponse,

    -- * Response Lenses
    dfurrsNextToken,
    dfurrsFleetUtilization,
    dfurrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'describeFleetUtilization' smart constructor.
data DescribeFleetUtilization = DescribeFleetUtilization'
  { _dfuNextToken ::
      !(Maybe Text),
    _dfuFleetIds ::
      !(Maybe (List1 Text)),
    _dfuLimit ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeFleetUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfuNextToken' - Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.
--
-- * 'dfuFleetIds' - A unique identifier for a fleet(s) to retrieve utilization data for. You can use either the fleet ID or ARN value. To retrieve attributes for all current fleets, do not include this parameter. If the list of fleet identifiers includes fleets that don't currently exist, the request succeeds but no attributes for that fleet are returned.
--
-- * 'dfuLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.
describeFleetUtilization ::
  DescribeFleetUtilization
describeFleetUtilization =
  DescribeFleetUtilization'
    { _dfuNextToken = Nothing,
      _dfuFleetIds = Nothing,
      _dfuLimit = Nothing
    }

-- | Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.
dfuNextToken :: Lens' DescribeFleetUtilization (Maybe Text)
dfuNextToken = lens _dfuNextToken (\s a -> s {_dfuNextToken = a})

-- | A unique identifier for a fleet(s) to retrieve utilization data for. You can use either the fleet ID or ARN value. To retrieve attributes for all current fleets, do not include this parameter. If the list of fleet identifiers includes fleets that don't currently exist, the request succeeds but no attributes for that fleet are returned.
dfuFleetIds :: Lens' DescribeFleetUtilization (Maybe (NonEmpty Text))
dfuFleetIds = lens _dfuFleetIds (\s a -> s {_dfuFleetIds = a}) . mapping _List1

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.
dfuLimit :: Lens' DescribeFleetUtilization (Maybe Natural)
dfuLimit = lens _dfuLimit (\s a -> s {_dfuLimit = a}) . mapping _Nat

instance AWSPager DescribeFleetUtilization where
  page rq rs
    | stop (rs ^. dfurrsNextToken) = Nothing
    | stop (rs ^. dfurrsFleetUtilization) = Nothing
    | otherwise =
      Just $ rq & dfuNextToken .~ rs ^. dfurrsNextToken

instance AWSRequest DescribeFleetUtilization where
  type
    Rs DescribeFleetUtilization =
      DescribeFleetUtilizationResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeFleetUtilizationResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "FleetUtilization" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeFleetUtilization

instance NFData DescribeFleetUtilization

instance ToHeaders DescribeFleetUtilization where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.DescribeFleetUtilization" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeFleetUtilization where
  toJSON DescribeFleetUtilization' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dfuNextToken,
            ("FleetIds" .=) <$> _dfuFleetIds,
            ("Limit" .=) <$> _dfuLimit
          ]
      )

instance ToPath DescribeFleetUtilization where
  toPath = const "/"

instance ToQuery DescribeFleetUtilization where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeFleetUtilizationResponse' smart constructor.
data DescribeFleetUtilizationResponse = DescribeFleetUtilizationResponse'
  { _dfurrsNextToken ::
      !( Maybe
           Text
       ),
    _dfurrsFleetUtilization ::
      !( Maybe
           [FleetUtilization]
       ),
    _dfurrsResponseStatus ::
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

-- | Creates a value of 'DescribeFleetUtilizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfurrsNextToken' - Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'dfurrsFleetUtilization' - A collection of objects containing utilization information for each requested fleet ID.
--
-- * 'dfurrsResponseStatus' - -- | The response status code.
describeFleetUtilizationResponse ::
  -- | 'dfurrsResponseStatus'
  Int ->
  DescribeFleetUtilizationResponse
describeFleetUtilizationResponse pResponseStatus_ =
  DescribeFleetUtilizationResponse'
    { _dfurrsNextToken =
        Nothing,
      _dfurrsFleetUtilization = Nothing,
      _dfurrsResponseStatus = pResponseStatus_
    }

-- | Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
dfurrsNextToken :: Lens' DescribeFleetUtilizationResponse (Maybe Text)
dfurrsNextToken = lens _dfurrsNextToken (\s a -> s {_dfurrsNextToken = a})

-- | A collection of objects containing utilization information for each requested fleet ID.
dfurrsFleetUtilization :: Lens' DescribeFleetUtilizationResponse [FleetUtilization]
dfurrsFleetUtilization = lens _dfurrsFleetUtilization (\s a -> s {_dfurrsFleetUtilization = a}) . _Default . _Coerce

-- | -- | The response status code.
dfurrsResponseStatus :: Lens' DescribeFleetUtilizationResponse Int
dfurrsResponseStatus = lens _dfurrsResponseStatus (\s a -> s {_dfurrsResponseStatus = a})

instance NFData DescribeFleetUtilizationResponse
