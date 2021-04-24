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
-- Module      : Network.AWS.EC2.SearchTransitGatewayMulticastGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches one or more transit gateway multicast groups and returns the group membership information.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.SearchTransitGatewayMulticastGroups
  ( -- * Creating a Request
    searchTransitGatewayMulticastGroups,
    SearchTransitGatewayMulticastGroups,

    -- * Request Lenses
    stgmgNextToken,
    stgmgDryRun,
    stgmgTransitGatewayMulticastDomainId,
    stgmgMaxResults,
    stgmgFilters,

    -- * Destructuring the Response
    searchTransitGatewayMulticastGroupsResponse,
    SearchTransitGatewayMulticastGroupsResponse,

    -- * Response Lenses
    stgmgrrsNextToken,
    stgmgrrsMulticastGroups,
    stgmgrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchTransitGatewayMulticastGroups' smart constructor.
data SearchTransitGatewayMulticastGroups = SearchTransitGatewayMulticastGroups'
  { _stgmgNextToken ::
      !( Maybe
           Text
       ),
    _stgmgDryRun ::
      !( Maybe
           Bool
       ),
    _stgmgTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _stgmgMaxResults ::
      !( Maybe
           Nat
       ),
    _stgmgFilters ::
      !( Maybe
           [Filter]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SearchTransitGatewayMulticastGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stgmgNextToken' - The token for the next page of results.
--
-- * 'stgmgDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'stgmgTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'stgmgMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'stgmgFilters' - One or more filters. The possible values are:     * @group-ip-address@ - The IP address of the transit gateway multicast group.     * @is-group-member@ - The resource is a group member. Valid values are @true@ | @false@ .     * @is-group-source@ - The resource is a group source. Valid values are @true@ | @false@ .     * @member-type@ - The member type. Valid values are @igmp@ | @static@ .     * @resource-id@ - The ID of the resource.     * @resource-type@ - The type of resource. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @tgw-peering@ .     * @source-type@ - The source type. Valid values are @igmp@ | @static@ .     * @state@ - The state of the subnet association. Valid values are @associated@ | @associated@ | @disassociated@ | @disassociating@ .     * @subnet-id@ - The ID of the subnet.     * @transit-gateway-attachment-id@ - The id of the transit gateway attachment.
searchTransitGatewayMulticastGroups ::
  SearchTransitGatewayMulticastGroups
searchTransitGatewayMulticastGroups =
  SearchTransitGatewayMulticastGroups'
    { _stgmgNextToken =
        Nothing,
      _stgmgDryRun = Nothing,
      _stgmgTransitGatewayMulticastDomainId =
        Nothing,
      _stgmgMaxResults = Nothing,
      _stgmgFilters = Nothing
    }

-- | The token for the next page of results.
stgmgNextToken :: Lens' SearchTransitGatewayMulticastGroups (Maybe Text)
stgmgNextToken = lens _stgmgNextToken (\s a -> s {_stgmgNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
stgmgDryRun :: Lens' SearchTransitGatewayMulticastGroups (Maybe Bool)
stgmgDryRun = lens _stgmgDryRun (\s a -> s {_stgmgDryRun = a})

-- | The ID of the transit gateway multicast domain.
stgmgTransitGatewayMulticastDomainId :: Lens' SearchTransitGatewayMulticastGroups (Maybe Text)
stgmgTransitGatewayMulticastDomainId = lens _stgmgTransitGatewayMulticastDomainId (\s a -> s {_stgmgTransitGatewayMulticastDomainId = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
stgmgMaxResults :: Lens' SearchTransitGatewayMulticastGroups (Maybe Natural)
stgmgMaxResults = lens _stgmgMaxResults (\s a -> s {_stgmgMaxResults = a}) . mapping _Nat

-- | One or more filters. The possible values are:     * @group-ip-address@ - The IP address of the transit gateway multicast group.     * @is-group-member@ - The resource is a group member. Valid values are @true@ | @false@ .     * @is-group-source@ - The resource is a group source. Valid values are @true@ | @false@ .     * @member-type@ - The member type. Valid values are @igmp@ | @static@ .     * @resource-id@ - The ID of the resource.     * @resource-type@ - The type of resource. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @tgw-peering@ .     * @source-type@ - The source type. Valid values are @igmp@ | @static@ .     * @state@ - The state of the subnet association. Valid values are @associated@ | @associated@ | @disassociated@ | @disassociating@ .     * @subnet-id@ - The ID of the subnet.     * @transit-gateway-attachment-id@ - The id of the transit gateway attachment.
stgmgFilters :: Lens' SearchTransitGatewayMulticastGroups [Filter]
stgmgFilters = lens _stgmgFilters (\s a -> s {_stgmgFilters = a}) . _Default . _Coerce

instance AWSPager SearchTransitGatewayMulticastGroups where
  page rq rs
    | stop (rs ^. stgmgrrsNextToken) = Nothing
    | stop (rs ^. stgmgrrsMulticastGroups) = Nothing
    | otherwise =
      Just $ rq & stgmgNextToken .~ rs ^. stgmgrrsNextToken

instance
  AWSRequest
    SearchTransitGatewayMulticastGroups
  where
  type
    Rs SearchTransitGatewayMulticastGroups =
      SearchTransitGatewayMulticastGroupsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          SearchTransitGatewayMulticastGroupsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "multicastGroups" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable SearchTransitGatewayMulticastGroups

instance NFData SearchTransitGatewayMulticastGroups

instance
  ToHeaders
    SearchTransitGatewayMulticastGroups
  where
  toHeaders = const mempty

instance ToPath SearchTransitGatewayMulticastGroups where
  toPath = const "/"

instance ToQuery SearchTransitGatewayMulticastGroups where
  toQuery SearchTransitGatewayMulticastGroups' {..} =
    mconcat
      [ "Action"
          =: ( "SearchTransitGatewayMulticastGroups" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _stgmgNextToken,
        "DryRun" =: _stgmgDryRun,
        "TransitGatewayMulticastDomainId"
          =: _stgmgTransitGatewayMulticastDomainId,
        "MaxResults" =: _stgmgMaxResults,
        toQuery (toQueryList "Filter" <$> _stgmgFilters)
      ]

-- | /See:/ 'searchTransitGatewayMulticastGroupsResponse' smart constructor.
data SearchTransitGatewayMulticastGroupsResponse = SearchTransitGatewayMulticastGroupsResponse'
  { _stgmgrrsNextToken ::
      !( Maybe
           Text
       ),
    _stgmgrrsMulticastGroups ::
      !( Maybe
           [TransitGatewayMulticastGroup]
       ),
    _stgmgrrsResponseStatus ::
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

-- | Creates a value of 'SearchTransitGatewayMulticastGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stgmgrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'stgmgrrsMulticastGroups' - Information about the transit gateway multicast group.
--
-- * 'stgmgrrsResponseStatus' - -- | The response status code.
searchTransitGatewayMulticastGroupsResponse ::
  -- | 'stgmgrrsResponseStatus'
  Int ->
  SearchTransitGatewayMulticastGroupsResponse
searchTransitGatewayMulticastGroupsResponse
  pResponseStatus_ =
    SearchTransitGatewayMulticastGroupsResponse'
      { _stgmgrrsNextToken =
          Nothing,
        _stgmgrrsMulticastGroups =
          Nothing,
        _stgmgrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
stgmgrrsNextToken :: Lens' SearchTransitGatewayMulticastGroupsResponse (Maybe Text)
stgmgrrsNextToken = lens _stgmgrrsNextToken (\s a -> s {_stgmgrrsNextToken = a})

-- | Information about the transit gateway multicast group.
stgmgrrsMulticastGroups :: Lens' SearchTransitGatewayMulticastGroupsResponse [TransitGatewayMulticastGroup]
stgmgrrsMulticastGroups = lens _stgmgrrsMulticastGroups (\s a -> s {_stgmgrrsMulticastGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
stgmgrrsResponseStatus :: Lens' SearchTransitGatewayMulticastGroupsResponse Int
stgmgrrsResponseStatus = lens _stgmgrrsResponseStatus (\s a -> s {_stgmgrrsResponseStatus = a})

instance
  NFData
    SearchTransitGatewayMulticastGroupsResponse
