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
-- Module      : Network.AWS.Route53.ListTrafficPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the latest version for every traffic policy that is associated with the current AWS account. Policies are listed in the order that they were created in.
--
--
-- For information about how of deleting a traffic policy affects the response from @ListTrafficPolicies@ , see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteTrafficPolicy.html DeleteTrafficPolicy> .
module Network.AWS.Route53.ListTrafficPolicies
  ( -- * Creating a Request
    listTrafficPolicies,
    ListTrafficPolicies,

    -- * Request Lenses
    ltpMaxItems,
    ltpTrafficPolicyIdMarker,

    -- * Destructuring the Response
    listTrafficPoliciesResponse,
    ListTrafficPoliciesResponse,

    -- * Response Lenses
    ltprrsResponseStatus,
    ltprrsTrafficPolicySummaries,
    ltprrsIsTruncated,
    ltprrsTrafficPolicyIdMarker,
    ltprrsMaxItems,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A complex type that contains the information about the request to list the traffic policies that are associated with the current AWS account.
--
--
--
-- /See:/ 'listTrafficPolicies' smart constructor.
data ListTrafficPolicies = ListTrafficPolicies'
  { _ltpMaxItems ::
      !(Maybe Text),
    _ltpTrafficPolicyIdMarker ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTrafficPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltpMaxItems' - (Optional) The maximum number of traffic policies that you want Amazon Route 53 to return in response to this request. If you have more than @MaxItems@ traffic policies, the value of @IsTruncated@ in the response is @true@ , and the value of @TrafficPolicyIdMarker@ is the ID of the first traffic policy that Route 53 will return if you submit another request.
--
-- * 'ltpTrafficPolicyIdMarker' - (Conditional) For your first request to @ListTrafficPolicies@ , don't include the @TrafficPolicyIdMarker@ parameter. If you have more traffic policies than the value of @MaxItems@ , @ListTrafficPolicies@ returns only the first @MaxItems@ traffic policies. To get the next group of policies, submit another request to @ListTrafficPolicies@ . For the value of @TrafficPolicyIdMarker@ , specify the value of @TrafficPolicyIdMarker@ that was returned in the previous response.
listTrafficPolicies ::
  ListTrafficPolicies
listTrafficPolicies =
  ListTrafficPolicies'
    { _ltpMaxItems = Nothing,
      _ltpTrafficPolicyIdMarker = Nothing
    }

-- | (Optional) The maximum number of traffic policies that you want Amazon Route 53 to return in response to this request. If you have more than @MaxItems@ traffic policies, the value of @IsTruncated@ in the response is @true@ , and the value of @TrafficPolicyIdMarker@ is the ID of the first traffic policy that Route 53 will return if you submit another request.
ltpMaxItems :: Lens' ListTrafficPolicies (Maybe Text)
ltpMaxItems = lens _ltpMaxItems (\s a -> s {_ltpMaxItems = a})

-- | (Conditional) For your first request to @ListTrafficPolicies@ , don't include the @TrafficPolicyIdMarker@ parameter. If you have more traffic policies than the value of @MaxItems@ , @ListTrafficPolicies@ returns only the first @MaxItems@ traffic policies. To get the next group of policies, submit another request to @ListTrafficPolicies@ . For the value of @TrafficPolicyIdMarker@ , specify the value of @TrafficPolicyIdMarker@ that was returned in the previous response.
ltpTrafficPolicyIdMarker :: Lens' ListTrafficPolicies (Maybe Text)
ltpTrafficPolicyIdMarker = lens _ltpTrafficPolicyIdMarker (\s a -> s {_ltpTrafficPolicyIdMarker = a})

instance AWSRequest ListTrafficPolicies where
  type
    Rs ListTrafficPolicies =
      ListTrafficPoliciesResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListTrafficPoliciesResponse'
            <$> (pure (fromEnum s))
            <*> ( x .@? "TrafficPolicySummaries" .!@ mempty
                    >>= parseXMLList "TrafficPolicySummary"
                )
            <*> (x .@ "IsTruncated")
            <*> (x .@ "TrafficPolicyIdMarker")
            <*> (x .@ "MaxItems")
      )

instance Hashable ListTrafficPolicies

instance NFData ListTrafficPolicies

instance ToHeaders ListTrafficPolicies where
  toHeaders = const mempty

instance ToPath ListTrafficPolicies where
  toPath = const "/2013-04-01/trafficpolicies"

instance ToQuery ListTrafficPolicies where
  toQuery ListTrafficPolicies' {..} =
    mconcat
      [ "maxitems" =: _ltpMaxItems,
        "trafficpolicyid" =: _ltpTrafficPolicyIdMarker
      ]

-- | A complex type that contains the response information for the request.
--
--
--
-- /See:/ 'listTrafficPoliciesResponse' smart constructor.
data ListTrafficPoliciesResponse = ListTrafficPoliciesResponse'
  { _ltprrsResponseStatus ::
      !Int,
    _ltprrsTrafficPolicySummaries ::
      ![TrafficPolicySummary],
    _ltprrsIsTruncated ::
      !Bool,
    _ltprrsTrafficPolicyIdMarker ::
      !Text,
    _ltprrsMaxItems ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTrafficPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltprrsResponseStatus' - -- | The response status code.
--
-- * 'ltprrsTrafficPolicySummaries' - A list that contains one @TrafficPolicySummary@ element for each traffic policy that was created by the current AWS account.
--
-- * 'ltprrsIsTruncated' - A flag that indicates whether there are more traffic policies to be listed. If the response was truncated, you can get the next group of traffic policies by submitting another @ListTrafficPolicies@ request and specifying the value of @TrafficPolicyIdMarker@ in the @TrafficPolicyIdMarker@ request parameter.
--
-- * 'ltprrsTrafficPolicyIdMarker' - If the value of @IsTruncated@ is @true@ , @TrafficPolicyIdMarker@ is the ID of the first traffic policy in the next group of @MaxItems@ traffic policies.
--
-- * 'ltprrsMaxItems' - The value that you specified for the @MaxItems@ parameter in the @ListTrafficPolicies@ request that produced the current response.
listTrafficPoliciesResponse ::
  -- | 'ltprrsResponseStatus'
  Int ->
  -- | 'ltprrsIsTruncated'
  Bool ->
  -- | 'ltprrsTrafficPolicyIdMarker'
  Text ->
  -- | 'ltprrsMaxItems'
  Text ->
  ListTrafficPoliciesResponse
listTrafficPoliciesResponse
  pResponseStatus_
  pIsTruncated_
  pTrafficPolicyIdMarker_
  pMaxItems_ =
    ListTrafficPoliciesResponse'
      { _ltprrsResponseStatus =
          pResponseStatus_,
        _ltprrsTrafficPolicySummaries = mempty,
        _ltprrsIsTruncated = pIsTruncated_,
        _ltprrsTrafficPolicyIdMarker =
          pTrafficPolicyIdMarker_,
        _ltprrsMaxItems = pMaxItems_
      }

-- | -- | The response status code.
ltprrsResponseStatus :: Lens' ListTrafficPoliciesResponse Int
ltprrsResponseStatus = lens _ltprrsResponseStatus (\s a -> s {_ltprrsResponseStatus = a})

-- | A list that contains one @TrafficPolicySummary@ element for each traffic policy that was created by the current AWS account.
ltprrsTrafficPolicySummaries :: Lens' ListTrafficPoliciesResponse [TrafficPolicySummary]
ltprrsTrafficPolicySummaries = lens _ltprrsTrafficPolicySummaries (\s a -> s {_ltprrsTrafficPolicySummaries = a}) . _Coerce

-- | A flag that indicates whether there are more traffic policies to be listed. If the response was truncated, you can get the next group of traffic policies by submitting another @ListTrafficPolicies@ request and specifying the value of @TrafficPolicyIdMarker@ in the @TrafficPolicyIdMarker@ request parameter.
ltprrsIsTruncated :: Lens' ListTrafficPoliciesResponse Bool
ltprrsIsTruncated = lens _ltprrsIsTruncated (\s a -> s {_ltprrsIsTruncated = a})

-- | If the value of @IsTruncated@ is @true@ , @TrafficPolicyIdMarker@ is the ID of the first traffic policy in the next group of @MaxItems@ traffic policies.
ltprrsTrafficPolicyIdMarker :: Lens' ListTrafficPoliciesResponse Text
ltprrsTrafficPolicyIdMarker = lens _ltprrsTrafficPolicyIdMarker (\s a -> s {_ltprrsTrafficPolicyIdMarker = a})

-- | The value that you specified for the @MaxItems@ parameter in the @ListTrafficPolicies@ request that produced the current response.
ltprrsMaxItems :: Lens' ListTrafficPoliciesResponse Text
ltprrsMaxItems = lens _ltprrsMaxItems (\s a -> s {_ltprrsMaxItems = a})

instance NFData ListTrafficPoliciesResponse
