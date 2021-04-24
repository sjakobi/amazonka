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
-- Module      : Network.AWS.EC2.GetCoipPoolUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the allocations from the specified customer-owned address pool.
module Network.AWS.EC2.GetCoipPoolUsage
  ( -- * Creating a Request
    getCoipPoolUsage,
    GetCoipPoolUsage,

    -- * Request Lenses
    gcpuNextToken,
    gcpuDryRun,
    gcpuMaxResults,
    gcpuFilters,
    gcpuPoolId,

    -- * Destructuring the Response
    getCoipPoolUsageResponse,
    GetCoipPoolUsageResponse,

    -- * Response Lenses
    gcpurrsCoipAddressUsages,
    gcpurrsLocalGatewayRouteTableId,
    gcpurrsCoipPoolId,
    gcpurrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCoipPoolUsage' smart constructor.
data GetCoipPoolUsage = GetCoipPoolUsage'
  { _gcpuNextToken ::
      !(Maybe Text),
    _gcpuDryRun :: !(Maybe Bool),
    _gcpuMaxResults :: !(Maybe Nat),
    _gcpuFilters :: !(Maybe [Filter]),
    _gcpuPoolId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCoipPoolUsage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpuNextToken' - The token for the next page of results.
--
-- * 'gcpuDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gcpuMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'gcpuFilters' - The filters. The following are the possible values:     * @coip-address-usage.allocation-id@      * @coip-address-usage.aws-account-id@      * @coip-address-usage.aws-service@      * @coip-address-usage.co-ip@
--
-- * 'gcpuPoolId' - The ID of the address pool.
getCoipPoolUsage ::
  -- | 'gcpuPoolId'
  Text ->
  GetCoipPoolUsage
getCoipPoolUsage pPoolId_ =
  GetCoipPoolUsage'
    { _gcpuNextToken = Nothing,
      _gcpuDryRun = Nothing,
      _gcpuMaxResults = Nothing,
      _gcpuFilters = Nothing,
      _gcpuPoolId = pPoolId_
    }

-- | The token for the next page of results.
gcpuNextToken :: Lens' GetCoipPoolUsage (Maybe Text)
gcpuNextToken = lens _gcpuNextToken (\s a -> s {_gcpuNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gcpuDryRun :: Lens' GetCoipPoolUsage (Maybe Bool)
gcpuDryRun = lens _gcpuDryRun (\s a -> s {_gcpuDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
gcpuMaxResults :: Lens' GetCoipPoolUsage (Maybe Natural)
gcpuMaxResults = lens _gcpuMaxResults (\s a -> s {_gcpuMaxResults = a}) . mapping _Nat

-- | The filters. The following are the possible values:     * @coip-address-usage.allocation-id@      * @coip-address-usage.aws-account-id@      * @coip-address-usage.aws-service@      * @coip-address-usage.co-ip@
gcpuFilters :: Lens' GetCoipPoolUsage [Filter]
gcpuFilters = lens _gcpuFilters (\s a -> s {_gcpuFilters = a}) . _Default . _Coerce

-- | The ID of the address pool.
gcpuPoolId :: Lens' GetCoipPoolUsage Text
gcpuPoolId = lens _gcpuPoolId (\s a -> s {_gcpuPoolId = a})

instance AWSRequest GetCoipPoolUsage where
  type Rs GetCoipPoolUsage = GetCoipPoolUsageResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetCoipPoolUsageResponse'
            <$> ( x .@? "coipAddressUsageSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "localGatewayRouteTableId")
            <*> (x .@? "coipPoolId")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCoipPoolUsage

instance NFData GetCoipPoolUsage

instance ToHeaders GetCoipPoolUsage where
  toHeaders = const mempty

instance ToPath GetCoipPoolUsage where
  toPath = const "/"

instance ToQuery GetCoipPoolUsage where
  toQuery GetCoipPoolUsage' {..} =
    mconcat
      [ "Action" =: ("GetCoipPoolUsage" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _gcpuNextToken,
        "DryRun" =: _gcpuDryRun,
        "MaxResults" =: _gcpuMaxResults,
        toQuery (toQueryList "Filter" <$> _gcpuFilters),
        "PoolId" =: _gcpuPoolId
      ]

-- | /See:/ 'getCoipPoolUsageResponse' smart constructor.
data GetCoipPoolUsageResponse = GetCoipPoolUsageResponse'
  { _gcpurrsCoipAddressUsages ::
      !( Maybe
           [CoipAddressUsage]
       ),
    _gcpurrsLocalGatewayRouteTableId ::
      !(Maybe Text),
    _gcpurrsCoipPoolId ::
      !(Maybe Text),
    _gcpurrsResponseStatus ::
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

-- | Creates a value of 'GetCoipPoolUsageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpurrsCoipAddressUsages' - Information about the address usage.
--
-- * 'gcpurrsLocalGatewayRouteTableId' - The ID of the local gateway route table.
--
-- * 'gcpurrsCoipPoolId' - The ID of the customer-owned address pool.
--
-- * 'gcpurrsResponseStatus' - -- | The response status code.
getCoipPoolUsageResponse ::
  -- | 'gcpurrsResponseStatus'
  Int ->
  GetCoipPoolUsageResponse
getCoipPoolUsageResponse pResponseStatus_ =
  GetCoipPoolUsageResponse'
    { _gcpurrsCoipAddressUsages =
        Nothing,
      _gcpurrsLocalGatewayRouteTableId = Nothing,
      _gcpurrsCoipPoolId = Nothing,
      _gcpurrsResponseStatus = pResponseStatus_
    }

-- | Information about the address usage.
gcpurrsCoipAddressUsages :: Lens' GetCoipPoolUsageResponse [CoipAddressUsage]
gcpurrsCoipAddressUsages = lens _gcpurrsCoipAddressUsages (\s a -> s {_gcpurrsCoipAddressUsages = a}) . _Default . _Coerce

-- | The ID of the local gateway route table.
gcpurrsLocalGatewayRouteTableId :: Lens' GetCoipPoolUsageResponse (Maybe Text)
gcpurrsLocalGatewayRouteTableId = lens _gcpurrsLocalGatewayRouteTableId (\s a -> s {_gcpurrsLocalGatewayRouteTableId = a})

-- | The ID of the customer-owned address pool.
gcpurrsCoipPoolId :: Lens' GetCoipPoolUsageResponse (Maybe Text)
gcpurrsCoipPoolId = lens _gcpurrsCoipPoolId (\s a -> s {_gcpurrsCoipPoolId = a})

-- | -- | The response status code.
gcpurrsResponseStatus :: Lens' GetCoipPoolUsageResponse Int
gcpurrsResponseStatus = lens _gcpurrsResponseStatus (\s a -> s {_gcpurrsResponseStatus = a})

instance NFData GetCoipPoolUsageResponse
