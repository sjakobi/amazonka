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
-- Module      : Network.AWS.Route53.ListTrafficPolicyInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the traffic policy instances that you created by using the current AWS account.
--
--
-- Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the @MaxItems@ parameter to list them in groups of up to 100.
module Network.AWS.Route53.ListTrafficPolicyInstances
  ( -- * Creating a Request
    listTrafficPolicyInstances,
    ListTrafficPolicyInstances,

    -- * Request Lenses
    ltpiTrafficPolicyInstanceNameMarker,
    ltpiTrafficPolicyInstanceTypeMarker,
    ltpiHostedZoneIdMarker,
    ltpiMaxItems,

    -- * Destructuring the Response
    listTrafficPolicyInstancesResponse,
    ListTrafficPolicyInstancesResponse,

    -- * Response Lenses
    ltpirrsTrafficPolicyInstanceNameMarker,
    ltpirrsTrafficPolicyInstanceTypeMarker,
    ltpirrsHostedZoneIdMarker,
    ltpirrsResponseStatus,
    ltpirrsTrafficPolicyInstances,
    ltpirrsIsTruncated,
    ltpirrsMaxItems,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request to get information about the traffic policy instances that you created by using the current AWS account.
--
--
--
-- /See:/ 'listTrafficPolicyInstances' smart constructor.
data ListTrafficPolicyInstances = ListTrafficPolicyInstances'
  { _ltpiTrafficPolicyInstanceNameMarker ::
      !(Maybe Text),
    _ltpiTrafficPolicyInstanceTypeMarker ::
      !( Maybe
           RecordType
       ),
    _ltpiHostedZoneIdMarker ::
      !( Maybe
           ResourceId
       ),
    _ltpiMaxItems ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTrafficPolicyInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltpiTrafficPolicyInstanceNameMarker' - If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstances@ request. For the value of @trafficpolicyinstancename@ , specify the value of @TrafficPolicyInstanceNameMarker@ from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
--
-- * 'ltpiTrafficPolicyInstanceTypeMarker' - If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstances@ request. For the value of @trafficpolicyinstancetype@ , specify the value of @TrafficPolicyInstanceTypeMarker@ from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
--
-- * 'ltpiHostedZoneIdMarker' - If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstances@ request. For the value of @HostedZoneId@ , specify the value of @HostedZoneIdMarker@ from the previous response, which is the hosted zone ID of the first traffic policy instance in the next group of traffic policy instances. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
--
-- * 'ltpiMaxItems' - The maximum number of traffic policy instances that you want Amazon Route 53 to return in response to a @ListTrafficPolicyInstances@ request. If you have more than @MaxItems@ traffic policy instances, the value of the @IsTruncated@ element in the response is @true@ , and the values of @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ represent the first traffic policy instance in the next group of @MaxItems@ traffic policy instances.
listTrafficPolicyInstances ::
  ListTrafficPolicyInstances
listTrafficPolicyInstances =
  ListTrafficPolicyInstances'
    { _ltpiTrafficPolicyInstanceNameMarker =
        Nothing,
      _ltpiTrafficPolicyInstanceTypeMarker = Nothing,
      _ltpiHostedZoneIdMarker = Nothing,
      _ltpiMaxItems = Nothing
    }

-- | If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstances@ request. For the value of @trafficpolicyinstancename@ , specify the value of @TrafficPolicyInstanceNameMarker@ from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
ltpiTrafficPolicyInstanceNameMarker :: Lens' ListTrafficPolicyInstances (Maybe Text)
ltpiTrafficPolicyInstanceNameMarker = lens _ltpiTrafficPolicyInstanceNameMarker (\s a -> s {_ltpiTrafficPolicyInstanceNameMarker = a})

-- | If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstances@ request. For the value of @trafficpolicyinstancetype@ , specify the value of @TrafficPolicyInstanceTypeMarker@ from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
ltpiTrafficPolicyInstanceTypeMarker :: Lens' ListTrafficPolicyInstances (Maybe RecordType)
ltpiTrafficPolicyInstanceTypeMarker = lens _ltpiTrafficPolicyInstanceTypeMarker (\s a -> s {_ltpiTrafficPolicyInstanceTypeMarker = a})

-- | If the value of @IsTruncated@ in the previous response was @true@ , you have more traffic policy instances. To get more traffic policy instances, submit another @ListTrafficPolicyInstances@ request. For the value of @HostedZoneId@ , specify the value of @HostedZoneIdMarker@ from the previous response, which is the hosted zone ID of the first traffic policy instance in the next group of traffic policy instances. If the value of @IsTruncated@ in the previous response was @false@ , there are no more traffic policy instances to get.
ltpiHostedZoneIdMarker :: Lens' ListTrafficPolicyInstances (Maybe ResourceId)
ltpiHostedZoneIdMarker = lens _ltpiHostedZoneIdMarker (\s a -> s {_ltpiHostedZoneIdMarker = a})

-- | The maximum number of traffic policy instances that you want Amazon Route 53 to return in response to a @ListTrafficPolicyInstances@ request. If you have more than @MaxItems@ traffic policy instances, the value of the @IsTruncated@ element in the response is @true@ , and the values of @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ represent the first traffic policy instance in the next group of @MaxItems@ traffic policy instances.
ltpiMaxItems :: Lens' ListTrafficPolicyInstances (Maybe Text)
ltpiMaxItems = lens _ltpiMaxItems (\s a -> s {_ltpiMaxItems = a})

instance AWSRequest ListTrafficPolicyInstances where
  type
    Rs ListTrafficPolicyInstances =
      ListTrafficPolicyInstancesResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListTrafficPolicyInstancesResponse'
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

instance Hashable ListTrafficPolicyInstances

instance NFData ListTrafficPolicyInstances

instance ToHeaders ListTrafficPolicyInstances where
  toHeaders = const mempty

instance ToPath ListTrafficPolicyInstances where
  toPath = const "/2013-04-01/trafficpolicyinstances"

instance ToQuery ListTrafficPolicyInstances where
  toQuery ListTrafficPolicyInstances' {..} =
    mconcat
      [ "trafficpolicyinstancename"
          =: _ltpiTrafficPolicyInstanceNameMarker,
        "trafficpolicyinstancetype"
          =: _ltpiTrafficPolicyInstanceTypeMarker,
        "hostedzoneid" =: _ltpiHostedZoneIdMarker,
        "maxitems" =: _ltpiMaxItems
      ]

-- | A complex type that contains the response information for the request.
--
--
--
-- /See:/ 'listTrafficPolicyInstancesResponse' smart constructor.
data ListTrafficPolicyInstancesResponse = ListTrafficPolicyInstancesResponse'
  { _ltpirrsTrafficPolicyInstanceNameMarker ::
      !( Maybe
           Text
       ),
    _ltpirrsTrafficPolicyInstanceTypeMarker ::
      !( Maybe
           RecordType
       ),
    _ltpirrsHostedZoneIdMarker ::
      !( Maybe
           ResourceId
       ),
    _ltpirrsResponseStatus ::
      !Int,
    _ltpirrsTrafficPolicyInstances ::
      ![TrafficPolicyInstance],
    _ltpirrsIsTruncated ::
      !Bool,
    _ltpirrsMaxItems ::
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

-- | Creates a value of 'ListTrafficPolicyInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltpirrsTrafficPolicyInstanceNameMarker' - If @IsTruncated@ is @true@ , @TrafficPolicyInstanceNameMarker@ is the name of the first traffic policy instance that Route 53 will return if you submit another @ListTrafficPolicyInstances@ request.
--
-- * 'ltpirrsTrafficPolicyInstanceTypeMarker' - If @IsTruncated@ is @true@ , @TrafficPolicyInstanceTypeMarker@ is the DNS type of the resource record sets that are associated with the first traffic policy instance that Amazon Route 53 will return if you submit another @ListTrafficPolicyInstances@ request.
--
-- * 'ltpirrsHostedZoneIdMarker' - If @IsTruncated@ is @true@ , @HostedZoneIdMarker@ is the ID of the hosted zone of the first traffic policy instance that Route 53 will return if you submit another @ListTrafficPolicyInstances@ request.
--
-- * 'ltpirrsResponseStatus' - -- | The response status code.
--
-- * 'ltpirrsTrafficPolicyInstances' - A list that contains one @TrafficPolicyInstance@ element for each traffic policy instance that matches the elements in the request.
--
-- * 'ltpirrsIsTruncated' - A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get more traffic policy instances by calling @ListTrafficPolicyInstances@ again and specifying the values of the @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ in the corresponding request parameters.
--
-- * 'ltpirrsMaxItems' - The value that you specified for the @MaxItems@ parameter in the call to @ListTrafficPolicyInstances@ that produced the current response.
listTrafficPolicyInstancesResponse ::
  -- | 'ltpirrsResponseStatus'
  Int ->
  -- | 'ltpirrsIsTruncated'
  Bool ->
  -- | 'ltpirrsMaxItems'
  Text ->
  ListTrafficPolicyInstancesResponse
listTrafficPolicyInstancesResponse
  pResponseStatus_
  pIsTruncated_
  pMaxItems_ =
    ListTrafficPolicyInstancesResponse'
      { _ltpirrsTrafficPolicyInstanceNameMarker =
          Nothing,
        _ltpirrsTrafficPolicyInstanceTypeMarker =
          Nothing,
        _ltpirrsHostedZoneIdMarker = Nothing,
        _ltpirrsResponseStatus =
          pResponseStatus_,
        _ltpirrsTrafficPolicyInstances = mempty,
        _ltpirrsIsTruncated = pIsTruncated_,
        _ltpirrsMaxItems = pMaxItems_
      }

-- | If @IsTruncated@ is @true@ , @TrafficPolicyInstanceNameMarker@ is the name of the first traffic policy instance that Route 53 will return if you submit another @ListTrafficPolicyInstances@ request.
ltpirrsTrafficPolicyInstanceNameMarker :: Lens' ListTrafficPolicyInstancesResponse (Maybe Text)
ltpirrsTrafficPolicyInstanceNameMarker = lens _ltpirrsTrafficPolicyInstanceNameMarker (\s a -> s {_ltpirrsTrafficPolicyInstanceNameMarker = a})

-- | If @IsTruncated@ is @true@ , @TrafficPolicyInstanceTypeMarker@ is the DNS type of the resource record sets that are associated with the first traffic policy instance that Amazon Route 53 will return if you submit another @ListTrafficPolicyInstances@ request.
ltpirrsTrafficPolicyInstanceTypeMarker :: Lens' ListTrafficPolicyInstancesResponse (Maybe RecordType)
ltpirrsTrafficPolicyInstanceTypeMarker = lens _ltpirrsTrafficPolicyInstanceTypeMarker (\s a -> s {_ltpirrsTrafficPolicyInstanceTypeMarker = a})

-- | If @IsTruncated@ is @true@ , @HostedZoneIdMarker@ is the ID of the hosted zone of the first traffic policy instance that Route 53 will return if you submit another @ListTrafficPolicyInstances@ request.
ltpirrsHostedZoneIdMarker :: Lens' ListTrafficPolicyInstancesResponse (Maybe ResourceId)
ltpirrsHostedZoneIdMarker = lens _ltpirrsHostedZoneIdMarker (\s a -> s {_ltpirrsHostedZoneIdMarker = a})

-- | -- | The response status code.
ltpirrsResponseStatus :: Lens' ListTrafficPolicyInstancesResponse Int
ltpirrsResponseStatus = lens _ltpirrsResponseStatus (\s a -> s {_ltpirrsResponseStatus = a})

-- | A list that contains one @TrafficPolicyInstance@ element for each traffic policy instance that matches the elements in the request.
ltpirrsTrafficPolicyInstances :: Lens' ListTrafficPolicyInstancesResponse [TrafficPolicyInstance]
ltpirrsTrafficPolicyInstances = lens _ltpirrsTrafficPolicyInstances (\s a -> s {_ltpirrsTrafficPolicyInstances = a}) . _Coerce

-- | A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get more traffic policy instances by calling @ListTrafficPolicyInstances@ again and specifying the values of the @HostedZoneIdMarker@ , @TrafficPolicyInstanceNameMarker@ , and @TrafficPolicyInstanceTypeMarker@ in the corresponding request parameters.
ltpirrsIsTruncated :: Lens' ListTrafficPolicyInstancesResponse Bool
ltpirrsIsTruncated = lens _ltpirrsIsTruncated (\s a -> s {_ltpirrsIsTruncated = a})

-- | The value that you specified for the @MaxItems@ parameter in the call to @ListTrafficPolicyInstances@ that produced the current response.
ltpirrsMaxItems :: Lens' ListTrafficPolicyInstancesResponse Text
ltpirrsMaxItems = lens _ltpirrsMaxItems (\s a -> s {_ltpirrsMaxItems = a})

instance NFData ListTrafficPolicyInstancesResponse
