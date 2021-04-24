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
-- Module      : Network.AWS.EC2.DescribeTransitGatewayMulticastDomains
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more transit gateway multicast domains.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTransitGatewayMulticastDomains
  ( -- * Creating a Request
    describeTransitGatewayMulticastDomains,
    DescribeTransitGatewayMulticastDomains,

    -- * Request Lenses
    dtgmdNextToken,
    dtgmdDryRun,
    dtgmdMaxResults,
    dtgmdFilters,
    dtgmdTransitGatewayMulticastDomainIds,

    -- * Destructuring the Response
    describeTransitGatewayMulticastDomainsResponse,
    DescribeTransitGatewayMulticastDomainsResponse,

    -- * Response Lenses
    dtgmdrtrsNextToken,
    dtgmdrtrsTransitGatewayMulticastDomains,
    dtgmdrtrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTransitGatewayMulticastDomains' smart constructor.
data DescribeTransitGatewayMulticastDomains = DescribeTransitGatewayMulticastDomains'
  { _dtgmdNextToken ::
      !( Maybe
           Text
       ),
    _dtgmdDryRun ::
      !( Maybe
           Bool
       ),
    _dtgmdMaxResults ::
      !( Maybe
           Nat
       ),
    _dtgmdFilters ::
      !( Maybe
           [Filter]
       ),
    _dtgmdTransitGatewayMulticastDomainIds ::
      !( Maybe
           [Text]
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

-- | Creates a value of 'DescribeTransitGatewayMulticastDomains' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgmdNextToken' - The token for the next page of results.
--
-- * 'dtgmdDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgmdMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtgmdFilters' - One or more filters. The possible values are:     * @state@ - The state of the transit gateway multicast domain. Valid values are @pending@ | @available@ | @deleting@ | @deleted@ .     * @transit-gateway-id@ - The ID of the transit gateway.     * @transit-gateway-multicast-domain-id@ - The ID of the transit gateway multicast domain.
--
-- * 'dtgmdTransitGatewayMulticastDomainIds' - The ID of the transit gateway multicast domain.
describeTransitGatewayMulticastDomains ::
  DescribeTransitGatewayMulticastDomains
describeTransitGatewayMulticastDomains =
  DescribeTransitGatewayMulticastDomains'
    { _dtgmdNextToken =
        Nothing,
      _dtgmdDryRun = Nothing,
      _dtgmdMaxResults = Nothing,
      _dtgmdFilters = Nothing,
      _dtgmdTransitGatewayMulticastDomainIds =
        Nothing
    }

-- | The token for the next page of results.
dtgmdNextToken :: Lens' DescribeTransitGatewayMulticastDomains (Maybe Text)
dtgmdNextToken = lens _dtgmdNextToken (\s a -> s {_dtgmdNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgmdDryRun :: Lens' DescribeTransitGatewayMulticastDomains (Maybe Bool)
dtgmdDryRun = lens _dtgmdDryRun (\s a -> s {_dtgmdDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtgmdMaxResults :: Lens' DescribeTransitGatewayMulticastDomains (Maybe Natural)
dtgmdMaxResults = lens _dtgmdMaxResults (\s a -> s {_dtgmdMaxResults = a}) . mapping _Nat

-- | One or more filters. The possible values are:     * @state@ - The state of the transit gateway multicast domain. Valid values are @pending@ | @available@ | @deleting@ | @deleted@ .     * @transit-gateway-id@ - The ID of the transit gateway.     * @transit-gateway-multicast-domain-id@ - The ID of the transit gateway multicast domain.
dtgmdFilters :: Lens' DescribeTransitGatewayMulticastDomains [Filter]
dtgmdFilters = lens _dtgmdFilters (\s a -> s {_dtgmdFilters = a}) . _Default . _Coerce

-- | The ID of the transit gateway multicast domain.
dtgmdTransitGatewayMulticastDomainIds :: Lens' DescribeTransitGatewayMulticastDomains [Text]
dtgmdTransitGatewayMulticastDomainIds = lens _dtgmdTransitGatewayMulticastDomainIds (\s a -> s {_dtgmdTransitGatewayMulticastDomainIds = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeTransitGatewayMulticastDomains
  where
  page rq rs
    | stop (rs ^. dtgmdrtrsNextToken) = Nothing
    | stop
        (rs ^. dtgmdrtrsTransitGatewayMulticastDomains) =
      Nothing
    | otherwise =
      Just $
        rq
          & dtgmdNextToken .~ rs ^. dtgmdrtrsNextToken

instance
  AWSRequest
    DescribeTransitGatewayMulticastDomains
  where
  type
    Rs DescribeTransitGatewayMulticastDomains =
      DescribeTransitGatewayMulticastDomainsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTransitGatewayMulticastDomainsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "transitGatewayMulticastDomains" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeTransitGatewayMulticastDomains

instance
  NFData
    DescribeTransitGatewayMulticastDomains

instance
  ToHeaders
    DescribeTransitGatewayMulticastDomains
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeTransitGatewayMulticastDomains
  where
  toPath = const "/"

instance
  ToQuery
    DescribeTransitGatewayMulticastDomains
  where
  toQuery DescribeTransitGatewayMulticastDomains' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeTransitGatewayMulticastDomains" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtgmdNextToken,
        "DryRun" =: _dtgmdDryRun,
        "MaxResults" =: _dtgmdMaxResults,
        toQuery (toQueryList "Filter" <$> _dtgmdFilters),
        toQuery
          ( toQueryList "TransitGatewayMulticastDomainIds"
              <$> _dtgmdTransitGatewayMulticastDomainIds
          )
      ]

-- | /See:/ 'describeTransitGatewayMulticastDomainsResponse' smart constructor.
data DescribeTransitGatewayMulticastDomainsResponse = DescribeTransitGatewayMulticastDomainsResponse'
  { _dtgmdrtrsNextToken ::
      !( Maybe
           Text
       ),
    _dtgmdrtrsTransitGatewayMulticastDomains ::
      !( Maybe
           [TransitGatewayMulticastDomain]
       ),
    _dtgmdrtrsResponseStatus ::
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

-- | Creates a value of 'DescribeTransitGatewayMulticastDomainsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgmdrtrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dtgmdrtrsTransitGatewayMulticastDomains' - Information about the transit gateway multicast domains.
--
-- * 'dtgmdrtrsResponseStatus' - -- | The response status code.
describeTransitGatewayMulticastDomainsResponse ::
  -- | 'dtgmdrtrsResponseStatus'
  Int ->
  DescribeTransitGatewayMulticastDomainsResponse
describeTransitGatewayMulticastDomainsResponse
  pResponseStatus_ =
    DescribeTransitGatewayMulticastDomainsResponse'
      { _dtgmdrtrsNextToken =
          Nothing,
        _dtgmdrtrsTransitGatewayMulticastDomains =
          Nothing,
        _dtgmdrtrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dtgmdrtrsNextToken :: Lens' DescribeTransitGatewayMulticastDomainsResponse (Maybe Text)
dtgmdrtrsNextToken = lens _dtgmdrtrsNextToken (\s a -> s {_dtgmdrtrsNextToken = a})

-- | Information about the transit gateway multicast domains.
dtgmdrtrsTransitGatewayMulticastDomains :: Lens' DescribeTransitGatewayMulticastDomainsResponse [TransitGatewayMulticastDomain]
dtgmdrtrsTransitGatewayMulticastDomains = lens _dtgmdrtrsTransitGatewayMulticastDomains (\s a -> s {_dtgmdrtrsTransitGatewayMulticastDomains = a}) . _Default . _Coerce

-- | -- | The response status code.
dtgmdrtrsResponseStatus :: Lens' DescribeTransitGatewayMulticastDomainsResponse Int
dtgmdrtrsResponseStatus = lens _dtgmdrtrsResponseStatus (\s a -> s {_dtgmdrtrsResponseStatus = a})

instance
  NFData
    DescribeTransitGatewayMulticastDomainsResponse
