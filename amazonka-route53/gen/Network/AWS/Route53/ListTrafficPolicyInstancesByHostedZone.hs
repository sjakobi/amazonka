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
-- Module      : Network.AWS.Route53.ListTrafficPolicyInstancesByHostedZone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the traffic policy instances that you created in a specified hosted zone.
--
--
-- Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the @MaxItems@ parameter to list them in groups of up to 100.
module Network.AWS.Route53.ListTrafficPolicyInstancesByHostedZone
  ( -- * Creating a Request
    listTrafficPolicyInstancesByHostedZone,
    ListTrafficPolicyInstancesByHostedZone,

    -- * Request Lenses
    ltpibhzTrafficPolicyInstanceNameMarker,
    ltpibhzTrafficPolicyInstanceTypeMarker,
    ltpibhzMaxItems,
    ltpibhzHostedZoneId,

    -- * Destructuring the Response
    listTrafficPolicyInstancesByHostedZoneResponse,
    ListTrafficPolicyInstancesByHostedZoneResponse,

    -- * Response Lenses
    ltpibhzrrsTrafficPolicyInstanceNameMarker,
    ltpibhzrrsTrafficPolicyInstanceTypeMarker,
    ltpibhzrrsResponseStatus,
    ltpibhzrrsTrafficPolicyInstances,
    ltpibhzrrsIsTruncated,
    ltpibhzrrsMaxItems,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request for the traffic policy instances that you created in a specified hosted zone.
--
--
--
-- /See:/ 'listTrafficPolicyInstancesByHostedZone' smart constructor.
data ListTrafficPolicyInstancesByHostedZone = ListTrafficPolicyInstancesByHostedZone'
  { _ltpibhzTrafficPolicyInstanceNameMarker ::
      !( Maybe
           Text
       ),
    _ltpibhzTrafficPolicyInstanceTypeMarker ::
      !( Maybe
           RecordType
       ),
    _ltpibhzMaxItems ::
      !( Maybe
           Text
       ),
    _ltpibhzHostedZoneId ::
      !ResourceId
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTrafficPolicyInstancesByHostedZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltpibhzTrafficPolicyInstanceNameMarker' - If the value of @IsTruncated@ in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstances@ request. For the value of @trafficpolicyinstancename@ , specify the value of @TrafficPolicyInstanceNameMarker@ from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
--
-- * 'ltpibhzTrafficPolicyInstanceTypeMarker' - If the value of @IsTruncated@ in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstances@ request. For the value of @trafficpolicyinstancetype@ , specify the value of @TrafficPolicyInstanceTypeMarker@ from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
--
-- * 'ltpibhzMaxItems' - The maximum number of traffic policy instances to be included in the response body for this request. If you have more than @MaxItems@ traffic policy instances, the value of the @IsTruncated@ element in the response is @true@ , and the values of @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.
--
-- * 'ltpibhzHostedZoneId' - The ID of the hosted zone that you want to list traffic policy instances for.
listTrafficPolicyInstancesByHostedZone ::
  -- | 'ltpibhzHostedZoneId'
  ResourceId ->
  ListTrafficPolicyInstancesByHostedZone
listTrafficPolicyInstancesByHostedZone pHostedZoneId_ =
  ListTrafficPolicyInstancesByHostedZone'
    { _ltpibhzTrafficPolicyInstanceNameMarker =
        Nothing,
      _ltpibhzTrafficPolicyInstanceTypeMarker =
        Nothing,
      _ltpibhzMaxItems = Nothing,
      _ltpibhzHostedZoneId =
        pHostedZoneId_
    }

-- | If the value of @IsTruncated@ in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstances@ request. For the value of @trafficpolicyinstancename@ , specify the value of @TrafficPolicyInstanceNameMarker@ from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
ltpibhzTrafficPolicyInstanceNameMarker :: Lens' ListTrafficPolicyInstancesByHostedZone (Maybe Text)
ltpibhzTrafficPolicyInstanceNameMarker = lens _ltpibhzTrafficPolicyInstanceNameMarker (\s a -> s {_ltpibhzTrafficPolicyInstanceNameMarker = a})

-- | If the value of @IsTruncated@ in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstances@ request. For the value of @trafficpolicyinstancetype@ , specify the value of @TrafficPolicyInstanceTypeMarker@ from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
ltpibhzTrafficPolicyInstanceTypeMarker :: Lens' ListTrafficPolicyInstancesByHostedZone (Maybe RecordType)
ltpibhzTrafficPolicyInstanceTypeMarker = lens _ltpibhzTrafficPolicyInstanceTypeMarker (\s a -> s {_ltpibhzTrafficPolicyInstanceTypeMarker = a})

-- | The maximum number of traffic policy instances to be included in the response body for this request. If you have more than @MaxItems@ traffic policy instances, the value of the @IsTruncated@ element in the response is @true@ , and the values of @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.
ltpibhzMaxItems :: Lens' ListTrafficPolicyInstancesByHostedZone (Maybe Text)
ltpibhzMaxItems = lens _ltpibhzMaxItems (\s a -> s {_ltpibhzMaxItems = a})

-- | The ID of the hosted zone that you want to list traffic policy instances for.
ltpibhzHostedZoneId :: Lens' ListTrafficPolicyInstancesByHostedZone ResourceId
ltpibhzHostedZoneId = lens _ltpibhzHostedZoneId (\s a -> s {_ltpibhzHostedZoneId = a})

instance
  AWSRequest
    ListTrafficPolicyInstancesByHostedZone
  where
  type
    Rs ListTrafficPolicyInstancesByHostedZone =
      ListTrafficPolicyInstancesByHostedZoneResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListTrafficPolicyInstancesByHostedZoneResponse'
            <$> (x .@? "TrafficPolicyInstanceNameMarker")
            <*> (x .@? "TrafficPolicyInstanceTypeMarker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "TrafficPolicyInstances" .!@ mempty
                    >>= parseXMLList "TrafficPolicyInstance"
                )
            <*> (x .@ "IsTruncated")
            <*> (x .@ "MaxItems")
      )

instance
  Hashable
    ListTrafficPolicyInstancesByHostedZone

instance
  NFData
    ListTrafficPolicyInstancesByHostedZone

instance
  ToHeaders
    ListTrafficPolicyInstancesByHostedZone
  where
  toHeaders = const mempty

instance
  ToPath
    ListTrafficPolicyInstancesByHostedZone
  where
  toPath =
    const
      "/2013-04-01/trafficpolicyinstances/hostedzone"

instance
  ToQuery
    ListTrafficPolicyInstancesByHostedZone
  where
  toQuery ListTrafficPolicyInstancesByHostedZone' {..} =
    mconcat
      [ "trafficpolicyinstancename"
          =: _ltpibhzTrafficPolicyInstanceNameMarker,
        "trafficpolicyinstancetype"
          =: _ltpibhzTrafficPolicyInstanceTypeMarker,
        "maxitems" =: _ltpibhzMaxItems,
        "id" =: _ltpibhzHostedZoneId
      ]

-- | A complex type that contains the response information for the request.
--
--
--
-- /See:/ 'listTrafficPolicyInstancesByHostedZoneResponse' smart constructor.
data ListTrafficPolicyInstancesByHostedZoneResponse = ListTrafficPolicyInstancesByHostedZoneResponse'
  { _ltpibhzrrsTrafficPolicyInstanceNameMarker ::
      !( Maybe
           Text
       ),
    _ltpibhzrrsTrafficPolicyInstanceTypeMarker ::
      !( Maybe
           RecordType
       ),
    _ltpibhzrrsResponseStatus ::
      !Int,
    _ltpibhzrrsTrafficPolicyInstances ::
      ![TrafficPolicyInstance],
    _ltpibhzrrsIsTruncated ::
      !Bool,
    _ltpibhzrrsMaxItems ::
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

-- | Creates a value of 'ListTrafficPolicyInstancesByHostedZoneResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltpibhzrrsTrafficPolicyInstanceNameMarker' - If @IsTruncated@ is @true@ , @TrafficPolicyInstanceNameMarker@ is the name of the first traffic policy instance in the next group of traffic policy instances.
--
-- * 'ltpibhzrrsTrafficPolicyInstanceTypeMarker' - If @IsTruncated@ is true, @TrafficPolicyInstanceTypeMarker@ is the DNS type of the resource record sets that are associated with the first traffic policy instance in the next group of traffic policy instances.
--
-- * 'ltpibhzrrsResponseStatus' - -- | The response status code.
--
-- * 'ltpibhzrrsTrafficPolicyInstances' - A list that contains one @TrafficPolicyInstance@ element for each traffic policy instance that matches the elements in the request.
--
-- * 'ltpibhzrrsIsTruncated' - A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get the next group of traffic policy instances by submitting another @ListTrafficPolicyInstancesByHostedZone@ request and specifying the values of @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ in the corresponding request parameters.
--
-- * 'ltpibhzrrsMaxItems' - The value that you specified for the @MaxItems@ parameter in the @ListTrafficPolicyInstancesByHostedZone@ request that produced the current response.
listTrafficPolicyInstancesByHostedZoneResponse ::
  -- | 'ltpibhzrrsResponseStatus'
  Int ->
  -- | 'ltpibhzrrsIsTruncated'
  Bool ->
  -- | 'ltpibhzrrsMaxItems'
  Text ->
  ListTrafficPolicyInstancesByHostedZoneResponse
listTrafficPolicyInstancesByHostedZoneResponse
  pResponseStatus_
  pIsTruncated_
  pMaxItems_ =
    ListTrafficPolicyInstancesByHostedZoneResponse'
      { _ltpibhzrrsTrafficPolicyInstanceNameMarker =
          Nothing,
        _ltpibhzrrsTrafficPolicyInstanceTypeMarker =
          Nothing,
        _ltpibhzrrsResponseStatus =
          pResponseStatus_,
        _ltpibhzrrsTrafficPolicyInstances =
          mempty,
        _ltpibhzrrsIsTruncated =
          pIsTruncated_,
        _ltpibhzrrsMaxItems =
          pMaxItems_
      }

-- | If @IsTruncated@ is @true@ , @TrafficPolicyInstanceNameMarker@ is the name of the first traffic policy instance in the next group of traffic policy instances.
ltpibhzrrsTrafficPolicyInstanceNameMarker :: Lens' ListTrafficPolicyInstancesByHostedZoneResponse (Maybe Text)
ltpibhzrrsTrafficPolicyInstanceNameMarker = lens _ltpibhzrrsTrafficPolicyInstanceNameMarker (\s a -> s {_ltpibhzrrsTrafficPolicyInstanceNameMarker = a})

-- | If @IsTruncated@ is true, @TrafficPolicyInstanceTypeMarker@ is the DNS type of the resource record sets that are associated with the first traffic policy instance in the next group of traffic policy instances.
ltpibhzrrsTrafficPolicyInstanceTypeMarker :: Lens' ListTrafficPolicyInstancesByHostedZoneResponse (Maybe RecordType)
ltpibhzrrsTrafficPolicyInstanceTypeMarker = lens _ltpibhzrrsTrafficPolicyInstanceTypeMarker (\s a -> s {_ltpibhzrrsTrafficPolicyInstanceTypeMarker = a})

-- | -- | The response status code.
ltpibhzrrsResponseStatus :: Lens' ListTrafficPolicyInstancesByHostedZoneResponse Int
ltpibhzrrsResponseStatus = lens _ltpibhzrrsResponseStatus (\s a -> s {_ltpibhzrrsResponseStatus = a})

-- | A list that contains one @TrafficPolicyInstance@ element for each traffic policy instance that matches the elements in the request.
ltpibhzrrsTrafficPolicyInstances :: Lens' ListTrafficPolicyInstancesByHostedZoneResponse [TrafficPolicyInstance]
ltpibhzrrsTrafficPolicyInstances = lens _ltpibhzrrsTrafficPolicyInstances (\s a -> s {_ltpibhzrrsTrafficPolicyInstances = a}) . _Coerce

-- | A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get the next group of traffic policy instances by submitting another @ListTrafficPolicyInstancesByHostedZone@ request and specifying the values of @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ in the corresponding request parameters.
ltpibhzrrsIsTruncated :: Lens' ListTrafficPolicyInstancesByHostedZoneResponse Bool
ltpibhzrrsIsTruncated = lens _ltpibhzrrsIsTruncated (\s a -> s {_ltpibhzrrsIsTruncated = a})

-- | The value that you specified for the @MaxItems@ parameter in the @ListTrafficPolicyInstancesByHostedZone@ request that produced the current response.
ltpibhzrrsMaxItems :: Lens' ListTrafficPolicyInstancesByHostedZoneResponse Text
ltpibhzrrsMaxItems = lens _ltpibhzrrsMaxItems (\s a -> s {_ltpibhzrrsMaxItems = a})

instance
  NFData
    ListTrafficPolicyInstancesByHostedZoneResponse
