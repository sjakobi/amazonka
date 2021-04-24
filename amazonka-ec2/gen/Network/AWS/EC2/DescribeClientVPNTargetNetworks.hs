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
-- Module      : Network.AWS.EC2.DescribeClientVPNTargetNetworks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the target networks associated with the specified Client VPN endpoint.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeClientVPNTargetNetworks
  ( -- * Creating a Request
    describeClientVPNTargetNetworks,
    DescribeClientVPNTargetNetworks,

    -- * Request Lenses
    dcvpntnNextToken,
    dcvpntnDryRun,
    dcvpntnMaxResults,
    dcvpntnAssociationIds,
    dcvpntnFilters,
    dcvpntnClientVPNEndpointId,

    -- * Destructuring the Response
    describeClientVPNTargetNetworksResponse,
    DescribeClientVPNTargetNetworksResponse,

    -- * Response Lenses
    dcvpntnrrsNextToken,
    dcvpntnrrsClientVPNTargetNetworks,
    dcvpntnrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeClientVPNTargetNetworks' smart constructor.
data DescribeClientVPNTargetNetworks = DescribeClientVPNTargetNetworks'
  { _dcvpntnNextToken ::
      !( Maybe
           Text
       ),
    _dcvpntnDryRun ::
      !( Maybe
           Bool
       ),
    _dcvpntnMaxResults ::
      !( Maybe
           Nat
       ),
    _dcvpntnAssociationIds ::
      !( Maybe
           [Text]
       ),
    _dcvpntnFilters ::
      !( Maybe
           [Filter]
       ),
    _dcvpntnClientVPNEndpointId ::
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

-- | Creates a value of 'DescribeClientVPNTargetNetworks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvpntnNextToken' - The token to retrieve the next page of results.
--
-- * 'dcvpntnDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dcvpntnMaxResults' - The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
--
-- * 'dcvpntnAssociationIds' - The IDs of the target network associations.
--
-- * 'dcvpntnFilters' - One or more filters. Filter names and values are case-sensitive.     * @association-id@ - The ID of the association.     * @target-network-id@ - The ID of the subnet specified as the target network.     * @vpc-id@ - The ID of the VPC in which the target network is located.
--
-- * 'dcvpntnClientVPNEndpointId' - The ID of the Client VPN endpoint.
describeClientVPNTargetNetworks ::
  -- | 'dcvpntnClientVPNEndpointId'
  Text ->
  DescribeClientVPNTargetNetworks
describeClientVPNTargetNetworks pClientVPNEndpointId_ =
  DescribeClientVPNTargetNetworks'
    { _dcvpntnNextToken =
        Nothing,
      _dcvpntnDryRun = Nothing,
      _dcvpntnMaxResults = Nothing,
      _dcvpntnAssociationIds = Nothing,
      _dcvpntnFilters = Nothing,
      _dcvpntnClientVPNEndpointId =
        pClientVPNEndpointId_
    }

-- | The token to retrieve the next page of results.
dcvpntnNextToken :: Lens' DescribeClientVPNTargetNetworks (Maybe Text)
dcvpntnNextToken = lens _dcvpntnNextToken (\s a -> s {_dcvpntnNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dcvpntnDryRun :: Lens' DescribeClientVPNTargetNetworks (Maybe Bool)
dcvpntnDryRun = lens _dcvpntnDryRun (\s a -> s {_dcvpntnDryRun = a})

-- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
dcvpntnMaxResults :: Lens' DescribeClientVPNTargetNetworks (Maybe Natural)
dcvpntnMaxResults = lens _dcvpntnMaxResults (\s a -> s {_dcvpntnMaxResults = a}) . mapping _Nat

-- | The IDs of the target network associations.
dcvpntnAssociationIds :: Lens' DescribeClientVPNTargetNetworks [Text]
dcvpntnAssociationIds = lens _dcvpntnAssociationIds (\s a -> s {_dcvpntnAssociationIds = a}) . _Default . _Coerce

-- | One or more filters. Filter names and values are case-sensitive.     * @association-id@ - The ID of the association.     * @target-network-id@ - The ID of the subnet specified as the target network.     * @vpc-id@ - The ID of the VPC in which the target network is located.
dcvpntnFilters :: Lens' DescribeClientVPNTargetNetworks [Filter]
dcvpntnFilters = lens _dcvpntnFilters (\s a -> s {_dcvpntnFilters = a}) . _Default . _Coerce

-- | The ID of the Client VPN endpoint.
dcvpntnClientVPNEndpointId :: Lens' DescribeClientVPNTargetNetworks Text
dcvpntnClientVPNEndpointId = lens _dcvpntnClientVPNEndpointId (\s a -> s {_dcvpntnClientVPNEndpointId = a})

instance AWSPager DescribeClientVPNTargetNetworks where
  page rq rs
    | stop (rs ^. dcvpntnrrsNextToken) = Nothing
    | stop (rs ^. dcvpntnrrsClientVPNTargetNetworks) =
      Nothing
    | otherwise =
      Just $
        rq
          & dcvpntnNextToken .~ rs ^. dcvpntnrrsNextToken

instance AWSRequest DescribeClientVPNTargetNetworks where
  type
    Rs DescribeClientVPNTargetNetworks =
      DescribeClientVPNTargetNetworksResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeClientVPNTargetNetworksResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "clientVpnTargetNetworks" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClientVPNTargetNetworks

instance NFData DescribeClientVPNTargetNetworks

instance ToHeaders DescribeClientVPNTargetNetworks where
  toHeaders = const mempty

instance ToPath DescribeClientVPNTargetNetworks where
  toPath = const "/"

instance ToQuery DescribeClientVPNTargetNetworks where
  toQuery DescribeClientVPNTargetNetworks' {..} =
    mconcat
      [ "Action"
          =: ("DescribeClientVpnTargetNetworks" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dcvpntnNextToken,
        "DryRun" =: _dcvpntnDryRun,
        "MaxResults" =: _dcvpntnMaxResults,
        toQuery
          ( toQueryList "AssociationIds"
              <$> _dcvpntnAssociationIds
          ),
        toQuery (toQueryList "Filter" <$> _dcvpntnFilters),
        "ClientVpnEndpointId" =: _dcvpntnClientVPNEndpointId
      ]

-- | /See:/ 'describeClientVPNTargetNetworksResponse' smart constructor.
data DescribeClientVPNTargetNetworksResponse = DescribeClientVPNTargetNetworksResponse'
  { _dcvpntnrrsNextToken ::
      !( Maybe
           Text
       ),
    _dcvpntnrrsClientVPNTargetNetworks ::
      !( Maybe
           [TargetNetwork]
       ),
    _dcvpntnrrsResponseStatus ::
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

-- | Creates a value of 'DescribeClientVPNTargetNetworksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvpntnrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dcvpntnrrsClientVPNTargetNetworks' - Information about the associated target networks.
--
-- * 'dcvpntnrrsResponseStatus' - -- | The response status code.
describeClientVPNTargetNetworksResponse ::
  -- | 'dcvpntnrrsResponseStatus'
  Int ->
  DescribeClientVPNTargetNetworksResponse
describeClientVPNTargetNetworksResponse
  pResponseStatus_ =
    DescribeClientVPNTargetNetworksResponse'
      { _dcvpntnrrsNextToken =
          Nothing,
        _dcvpntnrrsClientVPNTargetNetworks =
          Nothing,
        _dcvpntnrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dcvpntnrrsNextToken :: Lens' DescribeClientVPNTargetNetworksResponse (Maybe Text)
dcvpntnrrsNextToken = lens _dcvpntnrrsNextToken (\s a -> s {_dcvpntnrrsNextToken = a})

-- | Information about the associated target networks.
dcvpntnrrsClientVPNTargetNetworks :: Lens' DescribeClientVPNTargetNetworksResponse [TargetNetwork]
dcvpntnrrsClientVPNTargetNetworks = lens _dcvpntnrrsClientVPNTargetNetworks (\s a -> s {_dcvpntnrrsClientVPNTargetNetworks = a}) . _Default . _Coerce

-- | -- | The response status code.
dcvpntnrrsResponseStatus :: Lens' DescribeClientVPNTargetNetworksResponse Int
dcvpntnrrsResponseStatus = lens _dcvpntnrrsResponseStatus (\s a -> s {_dcvpntnrrsResponseStatus = a})

instance
  NFData
    DescribeClientVPNTargetNetworksResponse
