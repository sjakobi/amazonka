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
-- Module      : Network.AWS.GameLift.DescribeScalingPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all scaling policies applied to a fleet.
--
--
-- To get a fleet's scaling policies, specify the fleet ID. You can filter this request by policy status, such as to retrieve only active scaling policies. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, set of 'ScalingPolicy' objects is returned for the fleet.
--
-- A fleet may have all of its scaling policies suspended ('StopFleetActions' ). This operation does not affect the status of the scaling policies, which remains ACTIVE. To see whether a fleet's scaling policies are in force or suspended, call 'DescribeFleetAttributes' and check the stopped actions.
--
--     * 'DescribeFleetCapacity'
--
--     * 'UpdateFleetCapacity'
--
--     * 'DescribeEC2InstanceLimits'
--
--     * Manage scaling policies:
--
--     * 'PutScalingPolicy' (auto-scaling)
--
--     * 'DescribeScalingPolicies' (auto-scaling)
--
--     * 'DeleteScalingPolicy' (auto-scaling)
--
--
--
--     * Manage fleet actions:
--
--     * 'StartFleetActions'
--
--     * 'StopFleetActions'
--
--
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.DescribeScalingPolicies
  ( -- * Creating a Request
    describeScalingPolicies,
    DescribeScalingPolicies,

    -- * Request Lenses
    dspNextToken,
    dspStatusFilter,
    dspLimit,
    dspFleetId,

    -- * Destructuring the Response
    describeScalingPoliciesResponse,
    DescribeScalingPoliciesResponse,

    -- * Response Lenses
    dsprrsNextToken,
    dsprrsScalingPolicies,
    dsprrsResponseStatus,
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
-- /See:/ 'describeScalingPolicies' smart constructor.
data DescribeScalingPolicies = DescribeScalingPolicies'
  { _dspNextToken ::
      !(Maybe Text),
    _dspStatusFilter ::
      !( Maybe
           ScalingStatusType
       ),
    _dspLimit ::
      !(Maybe Nat),
    _dspFleetId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeScalingPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dspNextToken' - Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- * 'dspStatusFilter' - Scaling policy status to filter results on. A scaling policy is only in force when in an @ACTIVE@ status.     * __ACTIVE__ -- The scaling policy is currently in force.     * __UPDATEREQUESTED__ -- A request to update the scaling policy has been received.     * __UPDATING__ -- A change is being made to the scaling policy.     * __DELETEREQUESTED__ -- A request to delete the scaling policy has been received.     * __DELETING__ -- The scaling policy is being deleted.     * __DELETED__ -- The scaling policy has been deleted.     * __ERROR__ -- An error occurred in creating the policy. It should be removed and recreated.
--
-- * 'dspLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
--
-- * 'dspFleetId' - A unique identifier for a fleet to retrieve scaling policies for. You can use either the fleet ID or ARN value.
describeScalingPolicies ::
  -- | 'dspFleetId'
  Text ->
  DescribeScalingPolicies
describeScalingPolicies pFleetId_ =
  DescribeScalingPolicies'
    { _dspNextToken = Nothing,
      _dspStatusFilter = Nothing,
      _dspLimit = Nothing,
      _dspFleetId = pFleetId_
    }

-- | Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
dspNextToken :: Lens' DescribeScalingPolicies (Maybe Text)
dspNextToken = lens _dspNextToken (\s a -> s {_dspNextToken = a})

-- | Scaling policy status to filter results on. A scaling policy is only in force when in an @ACTIVE@ status.     * __ACTIVE__ -- The scaling policy is currently in force.     * __UPDATEREQUESTED__ -- A request to update the scaling policy has been received.     * __UPDATING__ -- A change is being made to the scaling policy.     * __DELETEREQUESTED__ -- A request to delete the scaling policy has been received.     * __DELETING__ -- The scaling policy is being deleted.     * __DELETED__ -- The scaling policy has been deleted.     * __ERROR__ -- An error occurred in creating the policy. It should be removed and recreated.
dspStatusFilter :: Lens' DescribeScalingPolicies (Maybe ScalingStatusType)
dspStatusFilter = lens _dspStatusFilter (\s a -> s {_dspStatusFilter = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
dspLimit :: Lens' DescribeScalingPolicies (Maybe Natural)
dspLimit = lens _dspLimit (\s a -> s {_dspLimit = a}) . mapping _Nat

-- | A unique identifier for a fleet to retrieve scaling policies for. You can use either the fleet ID or ARN value.
dspFleetId :: Lens' DescribeScalingPolicies Text
dspFleetId = lens _dspFleetId (\s a -> s {_dspFleetId = a})

instance AWSPager DescribeScalingPolicies where
  page rq rs
    | stop (rs ^. dsprrsNextToken) = Nothing
    | stop (rs ^. dsprrsScalingPolicies) = Nothing
    | otherwise =
      Just $ rq & dspNextToken .~ rs ^. dsprrsNextToken

instance AWSRequest DescribeScalingPolicies where
  type
    Rs DescribeScalingPolicies =
      DescribeScalingPoliciesResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeScalingPoliciesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ScalingPolicies" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScalingPolicies

instance NFData DescribeScalingPolicies

instance ToHeaders DescribeScalingPolicies where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.DescribeScalingPolicies" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeScalingPolicies where
  toJSON DescribeScalingPolicies' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dspNextToken,
            ("StatusFilter" .=) <$> _dspStatusFilter,
            ("Limit" .=) <$> _dspLimit,
            Just ("FleetId" .= _dspFleetId)
          ]
      )

instance ToPath DescribeScalingPolicies where
  toPath = const "/"

instance ToQuery DescribeScalingPolicies where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeScalingPoliciesResponse' smart constructor.
data DescribeScalingPoliciesResponse = DescribeScalingPoliciesResponse'
  { _dsprrsNextToken ::
      !( Maybe
           Text
       ),
    _dsprrsScalingPolicies ::
      !( Maybe
           [ScalingPolicy]
       ),
    _dsprrsResponseStatus ::
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

-- | Creates a value of 'DescribeScalingPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsprrsNextToken' - Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'dsprrsScalingPolicies' - A collection of objects containing the scaling policies matching the request.
--
-- * 'dsprrsResponseStatus' - -- | The response status code.
describeScalingPoliciesResponse ::
  -- | 'dsprrsResponseStatus'
  Int ->
  DescribeScalingPoliciesResponse
describeScalingPoliciesResponse pResponseStatus_ =
  DescribeScalingPoliciesResponse'
    { _dsprrsNextToken =
        Nothing,
      _dsprrsScalingPolicies = Nothing,
      _dsprrsResponseStatus = pResponseStatus_
    }

-- | Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
dsprrsNextToken :: Lens' DescribeScalingPoliciesResponse (Maybe Text)
dsprrsNextToken = lens _dsprrsNextToken (\s a -> s {_dsprrsNextToken = a})

-- | A collection of objects containing the scaling policies matching the request.
dsprrsScalingPolicies :: Lens' DescribeScalingPoliciesResponse [ScalingPolicy]
dsprrsScalingPolicies = lens _dsprrsScalingPolicies (\s a -> s {_dsprrsScalingPolicies = a}) . _Default . _Coerce

-- | -- | The response status code.
dsprrsResponseStatus :: Lens' DescribeScalingPoliciesResponse Int
dsprrsResponseStatus = lens _dsprrsResponseStatus (\s a -> s {_dsprrsResponseStatus = a})

instance NFData DescribeScalingPoliciesResponse
