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
-- Module      : Network.AWS.Route53.ListTrafficPolicyInstancesByPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the traffic policy instances that you created by using a specify traffic policy version.
--
--
-- Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the @MaxItems@ parameter to list them in groups of up to 100.
module Network.AWS.Route53.ListTrafficPolicyInstancesByPolicy
  ( -- * Creating a Request
    listTrafficPolicyInstancesByPolicy,
    ListTrafficPolicyInstancesByPolicy,

    -- * Request Lenses
    ltpibpTrafficPolicyInstanceNameMarker,
    ltpibpTrafficPolicyInstanceTypeMarker,
    ltpibpHostedZoneIdMarker,
    ltpibpMaxItems,
    ltpibpTrafficPolicyId,
    ltpibpTrafficPolicyVersion,

    -- * Destructuring the Response
    listTrafficPolicyInstancesByPolicyResponse,
    ListTrafficPolicyInstancesByPolicyResponse,

    -- * Response Lenses
    ltpibprrsTrafficPolicyInstanceNameMarker,
    ltpibprrsTrafficPolicyInstanceTypeMarker,
    ltpibprrsHostedZoneIdMarker,
    ltpibprrsResponseStatus,
    ltpibprrsTrafficPolicyInstances,
    ltpibprrsIsTruncated,
    ltpibprrsMaxItems,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A complex type that contains the information about the request to list your traffic policy instances.
--
--
--
-- /See:/ 'listTrafficPolicyInstancesByPolicy' smart constructor.
data ListTrafficPolicyInstancesByPolicy = ListTrafficPolicyInstancesByPolicy'
  { _ltpibpTrafficPolicyInstanceNameMarker ::
      !( Maybe
           Text
       ),
    _ltpibpTrafficPolicyInstanceTypeMarker ::
      !( Maybe
           RecordType
       ),
    _ltpibpHostedZoneIdMarker ::
      !( Maybe
           ResourceId
       ),
    _ltpibpMaxItems ::
      !( Maybe
           Text
       ),
    _ltpibpTrafficPolicyId ::
      !Text,
    _ltpibpTrafficPolicyVersion ::
      !Nat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTrafficPolicyInstancesByPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltpibpTrafficPolicyInstanceNameMarker' - If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstancesByPolicy@ request. For the value of @trafficpolicyinstancename@ , specify the value of @TrafficPolicyInstanceNameMarker@ from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
--
-- * 'ltpibpTrafficPolicyInstanceTypeMarker' - If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstancesByPolicy@ request. For the value of @trafficpolicyinstancetype@ , specify the value of @TrafficPolicyInstanceTypeMarker@ from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
--
-- * 'ltpibpHostedZoneIdMarker' - If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstancesByPolicy@ request.  For the value of @hostedzoneid@ , specify the value of @HostedZoneIdMarker@ from the previous response, which is the hosted zone ID of the first traffic policy instance that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
--
-- * 'ltpibpMaxItems' - The maximum number of traffic policy instances to be included in the response body for this request. If you have more than @MaxItems@ traffic policy instances, the value of the @IsTruncated@ element in the response is @true@ , and the values of @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.
--
-- * 'ltpibpTrafficPolicyId' - The ID of the traffic policy for which you want to list traffic policy instances.
--
-- * 'ltpibpTrafficPolicyVersion' - The version of the traffic policy for which you want to list traffic policy instances. The version must be associated with the traffic policy that is specified by @TrafficPolicyId@ .
listTrafficPolicyInstancesByPolicy ::
  -- | 'ltpibpTrafficPolicyId'
  Text ->
  -- | 'ltpibpTrafficPolicyVersion'
  Natural ->
  ListTrafficPolicyInstancesByPolicy
listTrafficPolicyInstancesByPolicy
  pTrafficPolicyId_
  pTrafficPolicyVersion_ =
    ListTrafficPolicyInstancesByPolicy'
      { _ltpibpTrafficPolicyInstanceNameMarker =
          Nothing,
        _ltpibpTrafficPolicyInstanceTypeMarker =
          Nothing,
        _ltpibpHostedZoneIdMarker = Nothing,
        _ltpibpMaxItems = Nothing,
        _ltpibpTrafficPolicyId =
          pTrafficPolicyId_,
        _ltpibpTrafficPolicyVersion =
          _Nat # pTrafficPolicyVersion_
      }

-- | If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstancesByPolicy@ request. For the value of @trafficpolicyinstancename@ , specify the value of @TrafficPolicyInstanceNameMarker@ from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
ltpibpTrafficPolicyInstanceNameMarker :: Lens' ListTrafficPolicyInstancesByPolicy (Maybe Text)
ltpibpTrafficPolicyInstanceNameMarker = lens _ltpibpTrafficPolicyInstanceNameMarker (\s a -> s {_ltpibpTrafficPolicyInstanceNameMarker = a})

-- | If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstancesByPolicy@ request. For the value of @trafficpolicyinstancetype@ , specify the value of @TrafficPolicyInstanceTypeMarker@ from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
ltpibpTrafficPolicyInstanceTypeMarker :: Lens' ListTrafficPolicyInstancesByPolicy (Maybe RecordType)
ltpibpTrafficPolicyInstanceTypeMarker = lens _ltpibpTrafficPolicyInstanceTypeMarker (\s a -> s {_ltpibpTrafficPolicyInstanceTypeMarker = a})

-- | If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstancesByPolicy@ request.  For the value of @hostedzoneid@ , specify the value of @HostedZoneIdMarker@ from the previous response, which is the hosted zone ID of the first traffic policy instance that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
ltpibpHostedZoneIdMarker :: Lens' ListTrafficPolicyInstancesByPolicy (Maybe ResourceId)
ltpibpHostedZoneIdMarker = lens _ltpibpHostedZoneIdMarker (\s a -> s {_ltpibpHostedZoneIdMarker = a})

-- | The maximum number of traffic policy instances to be included in the response body for this request. If you have more than @MaxItems@ traffic policy instances, the value of the @IsTruncated@ element in the response is @true@ , and the values of @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.
ltpibpMaxItems :: Lens' ListTrafficPolicyInstancesByPolicy (Maybe Text)
ltpibpMaxItems = lens _ltpibpMaxItems (\s a -> s {_ltpibpMaxItems = a})

-- | The ID of the traffic policy for which you want to list traffic policy instances.
ltpibpTrafficPolicyId :: Lens' ListTrafficPolicyInstancesByPolicy Text
ltpibpTrafficPolicyId = lens _ltpibpTrafficPolicyId (\s a -> s {_ltpibpTrafficPolicyId = a})

-- | The version of the traffic policy for which you want to list traffic policy instances. The version must be associated with the traffic policy that is specified by @TrafficPolicyId@ .
ltpibpTrafficPolicyVersion :: Lens' ListTrafficPolicyInstancesByPolicy Natural
ltpibpTrafficPolicyVersion = lens _ltpibpTrafficPolicyVersion (\s a -> s {_ltpibpTrafficPolicyVersion = a}) . _Nat

instance
  AWSRequest
    ListTrafficPolicyInstancesByPolicy
  where
  type
    Rs ListTrafficPolicyInstancesByPolicy =
      ListTrafficPolicyInstancesByPolicyResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListTrafficPolicyInstancesByPolicyResponse'
            <$> (x .@? "TrafficPolicyInstanceNameMarker")
            <*> (x .@? "TrafficPolicyInstanceTypeMarker")
            <*> (x .@? "HostedZoneIdMarker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "TrafficPolicyInstances" .!@ mempty
                    >>= parseXMLList "TrafficPolicyInstance"
                )
            <*> (x .@ "IsTruncated")
            <*> (x .@ "MaxItems")
      )

instance Hashable ListTrafficPolicyInstancesByPolicy

instance NFData ListTrafficPolicyInstancesByPolicy

instance ToHeaders ListTrafficPolicyInstancesByPolicy where
  toHeaders = const mempty

instance ToPath ListTrafficPolicyInstancesByPolicy where
  toPath =
    const
      "/2013-04-01/trafficpolicyinstances/trafficpolicy"

instance ToQuery ListTrafficPolicyInstancesByPolicy where
  toQuery ListTrafficPolicyInstancesByPolicy' {..} =
    mconcat
      [ "trafficpolicyinstancename"
          =: _ltpibpTrafficPolicyInstanceNameMarker,
        "trafficpolicyinstancetype"
          =: _ltpibpTrafficPolicyInstanceTypeMarker,
        "hostedzoneid" =: _ltpibpHostedZoneIdMarker,
        "maxitems" =: _ltpibpMaxItems,
        "id" =: _ltpibpTrafficPolicyId,
        "version" =: _ltpibpTrafficPolicyVersion
      ]

-- | A complex type that contains the response information for the request.
--
--
--
-- /See:/ 'listTrafficPolicyInstancesByPolicyResponse' smart constructor.
data ListTrafficPolicyInstancesByPolicyResponse = ListTrafficPolicyInstancesByPolicyResponse'
  { _ltpibprrsTrafficPolicyInstanceNameMarker ::
      !( Maybe
           Text
       ),
    _ltpibprrsTrafficPolicyInstanceTypeMarker ::
      !( Maybe
           RecordType
       ),
    _ltpibprrsHostedZoneIdMarker ::
      !( Maybe
           ResourceId
       ),
    _ltpibprrsResponseStatus ::
      !Int,
    _ltpibprrsTrafficPolicyInstances ::
      ![TrafficPolicyInstance],
    _ltpibprrsIsTruncated ::
      !Bool,
    _ltpibprrsMaxItems ::
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

-- | Creates a value of 'ListTrafficPolicyInstancesByPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltpibprrsTrafficPolicyInstanceNameMarker' - If @IsTruncated@ is @true@ , @TrafficPolicyInstanceNameMarker@ is the name of the first traffic policy instance in the next group of @MaxItems@ traffic policy instances.
--
-- * 'ltpibprrsTrafficPolicyInstanceTypeMarker' - If @IsTruncated@ is @true@ , @TrafficPolicyInstanceTypeMarker@ is the DNS type of the resource record sets that are associated with the first traffic policy instance in the next group of @MaxItems@ traffic policy instances.
--
-- * 'ltpibprrsHostedZoneIdMarker' - If @IsTruncated@ is @true@ , @HostedZoneIdMarker@ is the ID of the hosted zone of the first traffic policy instance in the next group of traffic policy instances.
--
-- * 'ltpibprrsResponseStatus' - -- | The response status code.
--
-- * 'ltpibprrsTrafficPolicyInstances' - A list that contains one @TrafficPolicyInstance@ element for each traffic policy instance that matches the elements in the request.
--
-- * 'ltpibprrsIsTruncated' - A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get the next group of traffic policy instances by calling @ListTrafficPolicyInstancesByPolicy@ again and specifying the values of the @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ elements in the corresponding request parameters.
--
-- * 'ltpibprrsMaxItems' - The value that you specified for the @MaxItems@ parameter in the call to @ListTrafficPolicyInstancesByPolicy@ that produced the current response.
listTrafficPolicyInstancesByPolicyResponse ::
  -- | 'ltpibprrsResponseStatus'
  Int ->
  -- | 'ltpibprrsIsTruncated'
  Bool ->
  -- | 'ltpibprrsMaxItems'
  Text ->
  ListTrafficPolicyInstancesByPolicyResponse
listTrafficPolicyInstancesByPolicyResponse
  pResponseStatus_
  pIsTruncated_
  pMaxItems_ =
    ListTrafficPolicyInstancesByPolicyResponse'
      { _ltpibprrsTrafficPolicyInstanceNameMarker =
          Nothing,
        _ltpibprrsTrafficPolicyInstanceTypeMarker =
          Nothing,
        _ltpibprrsHostedZoneIdMarker =
          Nothing,
        _ltpibprrsResponseStatus =
          pResponseStatus_,
        _ltpibprrsTrafficPolicyInstances =
          mempty,
        _ltpibprrsIsTruncated =
          pIsTruncated_,
        _ltpibprrsMaxItems = pMaxItems_
      }

-- | If @IsTruncated@ is @true@ , @TrafficPolicyInstanceNameMarker@ is the name of the first traffic policy instance in the next group of @MaxItems@ traffic policy instances.
ltpibprrsTrafficPolicyInstanceNameMarker :: Lens' ListTrafficPolicyInstancesByPolicyResponse (Maybe Text)
ltpibprrsTrafficPolicyInstanceNameMarker = lens _ltpibprrsTrafficPolicyInstanceNameMarker (\s a -> s {_ltpibprrsTrafficPolicyInstanceNameMarker = a})

-- | If @IsTruncated@ is @true@ , @TrafficPolicyInstanceTypeMarker@ is the DNS type of the resource record sets that are associated with the first traffic policy instance in the next group of @MaxItems@ traffic policy instances.
ltpibprrsTrafficPolicyInstanceTypeMarker :: Lens' ListTrafficPolicyInstancesByPolicyResponse (Maybe RecordType)
ltpibprrsTrafficPolicyInstanceTypeMarker = lens _ltpibprrsTrafficPolicyInstanceTypeMarker (\s a -> s {_ltpibprrsTrafficPolicyInstanceTypeMarker = a})

-- | If @IsTruncated@ is @true@ , @HostedZoneIdMarker@ is the ID of the hosted zone of the first traffic policy instance in the next group of traffic policy instances.
ltpibprrsHostedZoneIdMarker :: Lens' ListTrafficPolicyInstancesByPolicyResponse (Maybe ResourceId)
ltpibprrsHostedZoneIdMarker = lens _ltpibprrsHostedZoneIdMarker (\s a -> s {_ltpibprrsHostedZoneIdMarker = a})

-- | -- | The response status code.
ltpibprrsResponseStatus :: Lens' ListTrafficPolicyInstancesByPolicyResponse Int
ltpibprrsResponseStatus = lens _ltpibprrsResponseStatus (\s a -> s {_ltpibprrsResponseStatus = a})

-- | A list that contains one @TrafficPolicyInstance@ element for each traffic policy instance that matches the elements in the request.
ltpibprrsTrafficPolicyInstances :: Lens' ListTrafficPolicyInstancesByPolicyResponse [TrafficPolicyInstance]
ltpibprrsTrafficPolicyInstances = lens _ltpibprrsTrafficPolicyInstances (\s a -> s {_ltpibprrsTrafficPolicyInstances = a}) . _Coerce

-- | A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get the next group of traffic policy instances by calling @ListTrafficPolicyInstancesByPolicy@ again and specifying the values of the @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ elements in the corresponding request parameters.
ltpibprrsIsTruncated :: Lens' ListTrafficPolicyInstancesByPolicyResponse Bool
ltpibprrsIsTruncated = lens _ltpibprrsIsTruncated (\s a -> s {_ltpibprrsIsTruncated = a})

-- | The value that you specified for the @MaxItems@ parameter in the call to @ListTrafficPolicyInstancesByPolicy@ that produced the current response.
ltpibprrsMaxItems :: Lens' ListTrafficPolicyInstancesByPolicyResponse Text
ltpibprrsMaxItems = lens _ltpibprrsMaxItems (\s a -> s {_ltpibprrsMaxItems = a})

instance
  NFData
    ListTrafficPolicyInstancesByPolicyResponse
