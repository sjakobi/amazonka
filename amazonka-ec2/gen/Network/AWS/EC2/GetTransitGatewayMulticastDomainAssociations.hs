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
-- Module      : Network.AWS.EC2.GetTransitGatewayMulticastDomainAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the associations for the transit gateway multicast domain.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.GetTransitGatewayMulticastDomainAssociations
  ( -- * Creating a Request
    getTransitGatewayMulticastDomainAssociations,
    GetTransitGatewayMulticastDomainAssociations,

    -- * Request Lenses
    gtgmdaNextToken,
    gtgmdaDryRun,
    gtgmdaTransitGatewayMulticastDomainId,
    gtgmdaMaxResults,
    gtgmdaFilters,

    -- * Destructuring the Response
    getTransitGatewayMulticastDomainAssociationsResponse,
    GetTransitGatewayMulticastDomainAssociationsResponse,

    -- * Response Lenses
    gtgmdarrsNextToken,
    gtgmdarrsMulticastDomainAssociations,
    gtgmdarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTransitGatewayMulticastDomainAssociations' smart constructor.
data GetTransitGatewayMulticastDomainAssociations = GetTransitGatewayMulticastDomainAssociations'
  { _gtgmdaNextToken ::
      !( Maybe
           Text
       ),
    _gtgmdaDryRun ::
      !( Maybe
           Bool
       ),
    _gtgmdaTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _gtgmdaMaxResults ::
      !( Maybe
           Nat
       ),
    _gtgmdaFilters ::
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

-- | Creates a value of 'GetTransitGatewayMulticastDomainAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgmdaNextToken' - The token for the next page of results.
--
-- * 'gtgmdaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gtgmdaTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'gtgmdaMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'gtgmdaFilters' - One or more filters. The possible values are:     * @resource-id@ - The ID of the resource.     * @resource-type@ - The type of resource. The valid value is: @vpc@ .     * @state@ - The state of the subnet association. Valid values are @associated@ | @associating@ | @disassociated@ | @disassociating@ .     * @subnet-id@ - The ID of the subnet.     * @transit-gateway-attachment-id@ - The id of the transit gateway attachment.
getTransitGatewayMulticastDomainAssociations ::
  GetTransitGatewayMulticastDomainAssociations
getTransitGatewayMulticastDomainAssociations =
  GetTransitGatewayMulticastDomainAssociations'
    { _gtgmdaNextToken =
        Nothing,
      _gtgmdaDryRun = Nothing,
      _gtgmdaTransitGatewayMulticastDomainId =
        Nothing,
      _gtgmdaMaxResults = Nothing,
      _gtgmdaFilters = Nothing
    }

-- | The token for the next page of results.
gtgmdaNextToken :: Lens' GetTransitGatewayMulticastDomainAssociations (Maybe Text)
gtgmdaNextToken = lens _gtgmdaNextToken (\s a -> s {_gtgmdaNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gtgmdaDryRun :: Lens' GetTransitGatewayMulticastDomainAssociations (Maybe Bool)
gtgmdaDryRun = lens _gtgmdaDryRun (\s a -> s {_gtgmdaDryRun = a})

-- | The ID of the transit gateway multicast domain.
gtgmdaTransitGatewayMulticastDomainId :: Lens' GetTransitGatewayMulticastDomainAssociations (Maybe Text)
gtgmdaTransitGatewayMulticastDomainId = lens _gtgmdaTransitGatewayMulticastDomainId (\s a -> s {_gtgmdaTransitGatewayMulticastDomainId = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
gtgmdaMaxResults :: Lens' GetTransitGatewayMulticastDomainAssociations (Maybe Natural)
gtgmdaMaxResults = lens _gtgmdaMaxResults (\s a -> s {_gtgmdaMaxResults = a}) . mapping _Nat

-- | One or more filters. The possible values are:     * @resource-id@ - The ID of the resource.     * @resource-type@ - The type of resource. The valid value is: @vpc@ .     * @state@ - The state of the subnet association. Valid values are @associated@ | @associating@ | @disassociated@ | @disassociating@ .     * @subnet-id@ - The ID of the subnet.     * @transit-gateway-attachment-id@ - The id of the transit gateway attachment.
gtgmdaFilters :: Lens' GetTransitGatewayMulticastDomainAssociations [Filter]
gtgmdaFilters = lens _gtgmdaFilters (\s a -> s {_gtgmdaFilters = a}) . _Default . _Coerce

instance
  AWSPager
    GetTransitGatewayMulticastDomainAssociations
  where
  page rq rs
    | stop (rs ^. gtgmdarrsNextToken) = Nothing
    | stop (rs ^. gtgmdarrsMulticastDomainAssociations) =
      Nothing
    | otherwise =
      Just $
        rq
          & gtgmdaNextToken .~ rs ^. gtgmdarrsNextToken

instance
  AWSRequest
    GetTransitGatewayMulticastDomainAssociations
  where
  type
    Rs GetTransitGatewayMulticastDomainAssociations =
      GetTransitGatewayMulticastDomainAssociationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetTransitGatewayMulticastDomainAssociationsResponse'
            <$> (x .@? "nextToken")
              <*> ( x .@? "multicastDomainAssociations" .!@ mempty
                      >>= may (parseXMLList "item")
                  )
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetTransitGatewayMulticastDomainAssociations

instance
  NFData
    GetTransitGatewayMulticastDomainAssociations

instance
  ToHeaders
    GetTransitGatewayMulticastDomainAssociations
  where
  toHeaders = const mempty

instance
  ToPath
    GetTransitGatewayMulticastDomainAssociations
  where
  toPath = const "/"

instance
  ToQuery
    GetTransitGatewayMulticastDomainAssociations
  where
  toQuery
    GetTransitGatewayMulticastDomainAssociations' {..} =
      mconcat
        [ "Action"
            =: ( "GetTransitGatewayMulticastDomainAssociations" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "NextToken" =: _gtgmdaNextToken,
          "DryRun" =: _gtgmdaDryRun,
          "TransitGatewayMulticastDomainId"
            =: _gtgmdaTransitGatewayMulticastDomainId,
          "MaxResults" =: _gtgmdaMaxResults,
          toQuery (toQueryList "Filter" <$> _gtgmdaFilters)
        ]

-- | /See:/ 'getTransitGatewayMulticastDomainAssociationsResponse' smart constructor.
data GetTransitGatewayMulticastDomainAssociationsResponse = GetTransitGatewayMulticastDomainAssociationsResponse'
  { _gtgmdarrsNextToken ::
      !( Maybe
           Text
       ),
    _gtgmdarrsMulticastDomainAssociations ::
      !( Maybe
           [TransitGatewayMulticastDomainAssociation]
       ),
    _gtgmdarrsResponseStatus ::
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

-- | Creates a value of 'GetTransitGatewayMulticastDomainAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgmdarrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'gtgmdarrsMulticastDomainAssociations' - Information about the multicast domain associations.
--
-- * 'gtgmdarrsResponseStatus' - -- | The response status code.
getTransitGatewayMulticastDomainAssociationsResponse ::
  -- | 'gtgmdarrsResponseStatus'
  Int ->
  GetTransitGatewayMulticastDomainAssociationsResponse
getTransitGatewayMulticastDomainAssociationsResponse
  pResponseStatus_ =
    GetTransitGatewayMulticastDomainAssociationsResponse'
      { _gtgmdarrsNextToken =
          Nothing,
        _gtgmdarrsMulticastDomainAssociations =
          Nothing,
        _gtgmdarrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
gtgmdarrsNextToken :: Lens' GetTransitGatewayMulticastDomainAssociationsResponse (Maybe Text)
gtgmdarrsNextToken = lens _gtgmdarrsNextToken (\s a -> s {_gtgmdarrsNextToken = a})

-- | Information about the multicast domain associations.
gtgmdarrsMulticastDomainAssociations :: Lens' GetTransitGatewayMulticastDomainAssociationsResponse [TransitGatewayMulticastDomainAssociation]
gtgmdarrsMulticastDomainAssociations = lens _gtgmdarrsMulticastDomainAssociations (\s a -> s {_gtgmdarrsMulticastDomainAssociations = a}) . _Default . _Coerce

-- | -- | The response status code.
gtgmdarrsResponseStatus :: Lens' GetTransitGatewayMulticastDomainAssociationsResponse Int
gtgmdarrsResponseStatus = lens _gtgmdarrsResponseStatus (\s a -> s {_gtgmdarrsResponseStatus = a})

instance
  NFData
    GetTransitGatewayMulticastDomainAssociationsResponse
