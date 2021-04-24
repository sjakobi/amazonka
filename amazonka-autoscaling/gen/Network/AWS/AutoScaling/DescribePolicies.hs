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
-- Module      : Network.AWS.AutoScaling.DescribePolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the policies for the specified Auto Scaling group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribePolicies
  ( -- * Creating a Request
    describePolicies,
    DescribePolicies,

    -- * Request Lenses
    dpsNextToken,
    dpsPolicyTypes,
    dpsPolicyNames,
    dpsAutoScalingGroupName,
    dpsMaxRecords,

    -- * Destructuring the Response
    describePoliciesResponse,
    DescribePoliciesResponse,

    -- * Response Lenses
    dprrsNextToken,
    dprrsScalingPolicies,
    dprrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describePolicies' smart constructor.
data DescribePolicies = DescribePolicies'
  { _dpsNextToken ::
      !(Maybe Text),
    _dpsPolicyTypes :: !(Maybe [Text]),
    _dpsPolicyNames :: !(Maybe [Text]),
    _dpsAutoScalingGroupName ::
      !(Maybe Text),
    _dpsMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpsNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dpsPolicyTypes' - One or more policy types. The valid values are @SimpleScaling@ , @StepScaling@ , and @TargetTrackingScaling@ .
--
-- * 'dpsPolicyNames' - The names of one or more policies. If you omit this parameter, all policies are described. If a group name is provided, the results are limited to that group. This list is limited to 50 items. If you specify an unknown policy name, it is ignored with no error.
--
-- * 'dpsAutoScalingGroupName' - The name of the Auto Scaling group.
--
-- * 'dpsMaxRecords' - The maximum number of items to be returned with each call. The default value is @50@ and the maximum value is @100@ .
describePolicies ::
  DescribePolicies
describePolicies =
  DescribePolicies'
    { _dpsNextToken = Nothing,
      _dpsPolicyTypes = Nothing,
      _dpsPolicyNames = Nothing,
      _dpsAutoScalingGroupName = Nothing,
      _dpsMaxRecords = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dpsNextToken :: Lens' DescribePolicies (Maybe Text)
dpsNextToken = lens _dpsNextToken (\s a -> s {_dpsNextToken = a})

-- | One or more policy types. The valid values are @SimpleScaling@ , @StepScaling@ , and @TargetTrackingScaling@ .
dpsPolicyTypes :: Lens' DescribePolicies [Text]
dpsPolicyTypes = lens _dpsPolicyTypes (\s a -> s {_dpsPolicyTypes = a}) . _Default . _Coerce

-- | The names of one or more policies. If you omit this parameter, all policies are described. If a group name is provided, the results are limited to that group. This list is limited to 50 items. If you specify an unknown policy name, it is ignored with no error.
dpsPolicyNames :: Lens' DescribePolicies [Text]
dpsPolicyNames = lens _dpsPolicyNames (\s a -> s {_dpsPolicyNames = a}) . _Default . _Coerce

-- | The name of the Auto Scaling group.
dpsAutoScalingGroupName :: Lens' DescribePolicies (Maybe Text)
dpsAutoScalingGroupName = lens _dpsAutoScalingGroupName (\s a -> s {_dpsAutoScalingGroupName = a})

-- | The maximum number of items to be returned with each call. The default value is @50@ and the maximum value is @100@ .
dpsMaxRecords :: Lens' DescribePolicies (Maybe Int)
dpsMaxRecords = lens _dpsMaxRecords (\s a -> s {_dpsMaxRecords = a})

instance AWSPager DescribePolicies where
  page rq rs
    | stop (rs ^. dprrsNextToken) = Nothing
    | stop (rs ^. dprrsScalingPolicies) = Nothing
    | otherwise =
      Just $ rq & dpsNextToken .~ rs ^. dprrsNextToken

instance AWSRequest DescribePolicies where
  type Rs DescribePolicies = DescribePoliciesResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribePoliciesResult"
      ( \s h x ->
          DescribePoliciesResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "ScalingPolicies" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePolicies

instance NFData DescribePolicies

instance ToHeaders DescribePolicies where
  toHeaders = const mempty

instance ToPath DescribePolicies where
  toPath = const "/"

instance ToQuery DescribePolicies where
  toQuery DescribePolicies' {..} =
    mconcat
      [ "Action" =: ("DescribePolicies" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "NextToken" =: _dpsNextToken,
        "PolicyTypes"
          =: toQuery (toQueryList "member" <$> _dpsPolicyTypes),
        "PolicyNames"
          =: toQuery (toQueryList "member" <$> _dpsPolicyNames),
        "AutoScalingGroupName" =: _dpsAutoScalingGroupName,
        "MaxRecords" =: _dpsMaxRecords
      ]

-- | /See:/ 'describePoliciesResponse' smart constructor.
data DescribePoliciesResponse = DescribePoliciesResponse'
  { _dprrsNextToken ::
      !(Maybe Text),
    _dprrsScalingPolicies ::
      !( Maybe
           [ScalingPolicy]
       ),
    _dprrsResponseStatus ::
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

-- | Creates a value of 'DescribePoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprrsNextToken' - A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- * 'dprrsScalingPolicies' - The scaling policies.
--
-- * 'dprrsResponseStatus' - -- | The response status code.
describePoliciesResponse ::
  -- | 'dprrsResponseStatus'
  Int ->
  DescribePoliciesResponse
describePoliciesResponse pResponseStatus_ =
  DescribePoliciesResponse'
    { _dprrsNextToken =
        Nothing,
      _dprrsScalingPolicies = Nothing,
      _dprrsResponseStatus = pResponseStatus_
    }

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
dprrsNextToken :: Lens' DescribePoliciesResponse (Maybe Text)
dprrsNextToken = lens _dprrsNextToken (\s a -> s {_dprrsNextToken = a})

-- | The scaling policies.
dprrsScalingPolicies :: Lens' DescribePoliciesResponse [ScalingPolicy]
dprrsScalingPolicies = lens _dprrsScalingPolicies (\s a -> s {_dprrsScalingPolicies = a}) . _Default . _Coerce

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DescribePoliciesResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DescribePoliciesResponse
