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
-- Module      : Network.AWS.EC2.GetCapacityReservationUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets usage information about a Capacity Reservation. If the Capacity Reservation is shared, it shows usage information for the Capacity Reservation owner and each AWS account that is currently using the shared capacity. If the Capacity Reservation is not shared, it shows only the Capacity Reservation owner's usage.
module Network.AWS.EC2.GetCapacityReservationUsage
  ( -- * Creating a Request
    getCapacityReservationUsage,
    GetCapacityReservationUsage,

    -- * Request Lenses
    gcruNextToken,
    gcruDryRun,
    gcruMaxResults,
    gcruCapacityReservationId,

    -- * Destructuring the Response
    getCapacityReservationUsageResponse,
    GetCapacityReservationUsageResponse,

    -- * Response Lenses
    gcrurrsInstanceUsages,
    gcrurrsNextToken,
    gcrurrsInstanceType,
    gcrurrsAvailableInstanceCount,
    gcrurrsState,
    gcrurrsCapacityReservationId,
    gcrurrsTotalInstanceCount,
    gcrurrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCapacityReservationUsage' smart constructor.
data GetCapacityReservationUsage = GetCapacityReservationUsage'
  { _gcruNextToken ::
      !(Maybe Text),
    _gcruDryRun ::
      !(Maybe Bool),
    _gcruMaxResults ::
      !(Maybe Nat),
    _gcruCapacityReservationId ::
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

-- | Creates a value of 'GetCapacityReservationUsage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcruNextToken' - The token to use to retrieve the next page of results.
--
-- * 'gcruDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gcruMaxResults' - The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned @nextToken@ value. This value can be between 5 and 500. If @maxResults@ is given a larger value than 500, you receive an error. Valid range: Minimum value of 1. Maximum value of 1000.
--
-- * 'gcruCapacityReservationId' - The ID of the Capacity Reservation.
getCapacityReservationUsage ::
  -- | 'gcruCapacityReservationId'
  Text ->
  GetCapacityReservationUsage
getCapacityReservationUsage pCapacityReservationId_ =
  GetCapacityReservationUsage'
    { _gcruNextToken =
        Nothing,
      _gcruDryRun = Nothing,
      _gcruMaxResults = Nothing,
      _gcruCapacityReservationId =
        pCapacityReservationId_
    }

-- | The token to use to retrieve the next page of results.
gcruNextToken :: Lens' GetCapacityReservationUsage (Maybe Text)
gcruNextToken = lens _gcruNextToken (\s a -> s {_gcruNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gcruDryRun :: Lens' GetCapacityReservationUsage (Maybe Bool)
gcruDryRun = lens _gcruDryRun (\s a -> s {_gcruDryRun = a})

-- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned @nextToken@ value. This value can be between 5 and 500. If @maxResults@ is given a larger value than 500, you receive an error. Valid range: Minimum value of 1. Maximum value of 1000.
gcruMaxResults :: Lens' GetCapacityReservationUsage (Maybe Natural)
gcruMaxResults = lens _gcruMaxResults (\s a -> s {_gcruMaxResults = a}) . mapping _Nat

-- | The ID of the Capacity Reservation.
gcruCapacityReservationId :: Lens' GetCapacityReservationUsage Text
gcruCapacityReservationId = lens _gcruCapacityReservationId (\s a -> s {_gcruCapacityReservationId = a})

instance AWSRequest GetCapacityReservationUsage where
  type
    Rs GetCapacityReservationUsage =
      GetCapacityReservationUsageResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetCapacityReservationUsageResponse'
            <$> ( x .@? "instanceUsageSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "nextToken")
            <*> (x .@? "instanceType")
            <*> (x .@? "availableInstanceCount")
            <*> (x .@? "state")
            <*> (x .@? "capacityReservationId")
            <*> (x .@? "totalInstanceCount")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCapacityReservationUsage

instance NFData GetCapacityReservationUsage

instance ToHeaders GetCapacityReservationUsage where
  toHeaders = const mempty

instance ToPath GetCapacityReservationUsage where
  toPath = const "/"

instance ToQuery GetCapacityReservationUsage where
  toQuery GetCapacityReservationUsage' {..} =
    mconcat
      [ "Action"
          =: ("GetCapacityReservationUsage" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _gcruNextToken,
        "DryRun" =: _gcruDryRun,
        "MaxResults" =: _gcruMaxResults,
        "CapacityReservationId"
          =: _gcruCapacityReservationId
      ]

-- | /See:/ 'getCapacityReservationUsageResponse' smart constructor.
data GetCapacityReservationUsageResponse = GetCapacityReservationUsageResponse'
  { _gcrurrsInstanceUsages ::
      !( Maybe
           [InstanceUsage]
       ),
    _gcrurrsNextToken ::
      !( Maybe
           Text
       ),
    _gcrurrsInstanceType ::
      !( Maybe
           Text
       ),
    _gcrurrsAvailableInstanceCount ::
      !( Maybe
           Int
       ),
    _gcrurrsState ::
      !( Maybe
           CapacityReservationState
       ),
    _gcrurrsCapacityReservationId ::
      !( Maybe
           Text
       ),
    _gcrurrsTotalInstanceCount ::
      !( Maybe
           Int
       ),
    _gcrurrsResponseStatus ::
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

-- | Creates a value of 'GetCapacityReservationUsageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrurrsInstanceUsages' - Information about the Capacity Reservation usage.
--
-- * 'gcrurrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'gcrurrsInstanceType' - The type of instance for which the Capacity Reservation reserves capacity.
--
-- * 'gcrurrsAvailableInstanceCount' - The remaining capacity. Indicates the number of instances that can be launched in the Capacity Reservation.
--
-- * 'gcrurrsState' - The current state of the Capacity Reservation. A Capacity Reservation can be in one of the following states:     * @active@ - The Capacity Reservation is active and the capacity is available for your use.     * @expired@ - The Capacity Reservation expired automatically at the date and time specified in your request. The reserved capacity is no longer available for your use.     * @cancelled@ - The Capacity Reservation was cancelled. The reserved capacity is no longer available for your use.     * @pending@ - The Capacity Reservation request was successful but the capacity provisioning is still pending.     * @failed@ - The Capacity Reservation request has failed. A request might fail due to invalid request parameters, capacity constraints, or instance limit constraints. Failed requests are retained for 60 minutes.
--
-- * 'gcrurrsCapacityReservationId' - The ID of the Capacity Reservation.
--
-- * 'gcrurrsTotalInstanceCount' - The number of instances for which the Capacity Reservation reserves capacity.
--
-- * 'gcrurrsResponseStatus' - -- | The response status code.
getCapacityReservationUsageResponse ::
  -- | 'gcrurrsResponseStatus'
  Int ->
  GetCapacityReservationUsageResponse
getCapacityReservationUsageResponse pResponseStatus_ =
  GetCapacityReservationUsageResponse'
    { _gcrurrsInstanceUsages =
        Nothing,
      _gcrurrsNextToken = Nothing,
      _gcrurrsInstanceType = Nothing,
      _gcrurrsAvailableInstanceCount =
        Nothing,
      _gcrurrsState = Nothing,
      _gcrurrsCapacityReservationId =
        Nothing,
      _gcrurrsTotalInstanceCount = Nothing,
      _gcrurrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the Capacity Reservation usage.
gcrurrsInstanceUsages :: Lens' GetCapacityReservationUsageResponse [InstanceUsage]
gcrurrsInstanceUsages = lens _gcrurrsInstanceUsages (\s a -> s {_gcrurrsInstanceUsages = a}) . _Default . _Coerce

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
gcrurrsNextToken :: Lens' GetCapacityReservationUsageResponse (Maybe Text)
gcrurrsNextToken = lens _gcrurrsNextToken (\s a -> s {_gcrurrsNextToken = a})

-- | The type of instance for which the Capacity Reservation reserves capacity.
gcrurrsInstanceType :: Lens' GetCapacityReservationUsageResponse (Maybe Text)
gcrurrsInstanceType = lens _gcrurrsInstanceType (\s a -> s {_gcrurrsInstanceType = a})

-- | The remaining capacity. Indicates the number of instances that can be launched in the Capacity Reservation.
gcrurrsAvailableInstanceCount :: Lens' GetCapacityReservationUsageResponse (Maybe Int)
gcrurrsAvailableInstanceCount = lens _gcrurrsAvailableInstanceCount (\s a -> s {_gcrurrsAvailableInstanceCount = a})

-- | The current state of the Capacity Reservation. A Capacity Reservation can be in one of the following states:     * @active@ - The Capacity Reservation is active and the capacity is available for your use.     * @expired@ - The Capacity Reservation expired automatically at the date and time specified in your request. The reserved capacity is no longer available for your use.     * @cancelled@ - The Capacity Reservation was cancelled. The reserved capacity is no longer available for your use.     * @pending@ - The Capacity Reservation request was successful but the capacity provisioning is still pending.     * @failed@ - The Capacity Reservation request has failed. A request might fail due to invalid request parameters, capacity constraints, or instance limit constraints. Failed requests are retained for 60 minutes.
gcrurrsState :: Lens' GetCapacityReservationUsageResponse (Maybe CapacityReservationState)
gcrurrsState = lens _gcrurrsState (\s a -> s {_gcrurrsState = a})

-- | The ID of the Capacity Reservation.
gcrurrsCapacityReservationId :: Lens' GetCapacityReservationUsageResponse (Maybe Text)
gcrurrsCapacityReservationId = lens _gcrurrsCapacityReservationId (\s a -> s {_gcrurrsCapacityReservationId = a})

-- | The number of instances for which the Capacity Reservation reserves capacity.
gcrurrsTotalInstanceCount :: Lens' GetCapacityReservationUsageResponse (Maybe Int)
gcrurrsTotalInstanceCount = lens _gcrurrsTotalInstanceCount (\s a -> s {_gcrurrsTotalInstanceCount = a})

-- | -- | The response status code.
gcrurrsResponseStatus :: Lens' GetCapacityReservationUsageResponse Int
gcrurrsResponseStatus = lens _gcrurrsResponseStatus (\s a -> s {_gcrurrsResponseStatus = a})

instance NFData GetCapacityReservationUsageResponse
