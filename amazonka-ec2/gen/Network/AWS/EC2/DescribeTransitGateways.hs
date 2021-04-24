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
-- Module      : Network.AWS.EC2.DescribeTransitGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more transit gateways. By default, all transit gateways are described. Alternatively, you can filter the results.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTransitGateways
  ( -- * Creating a Request
    describeTransitGateways,
    DescribeTransitGateways,

    -- * Request Lenses
    dtgNextToken,
    dtgDryRun,
    dtgMaxResults,
    dtgTransitGatewayIds,
    dtgFilters,

    -- * Destructuring the Response
    describeTransitGatewaysResponse,
    DescribeTransitGatewaysResponse,

    -- * Response Lenses
    dtgrtrsNextToken,
    dtgrtrsTransitGateways,
    dtgrtrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTransitGateways' smart constructor.
data DescribeTransitGateways = DescribeTransitGateways'
  { _dtgNextToken ::
      !(Maybe Text),
    _dtgDryRun ::
      !(Maybe Bool),
    _dtgMaxResults ::
      !(Maybe Nat),
    _dtgTransitGatewayIds ::
      !(Maybe [Text]),
    _dtgFilters ::
      !(Maybe [Filter])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeTransitGateways' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgNextToken' - The token for the next page of results.
--
-- * 'dtgDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtgTransitGatewayIds' - The IDs of the transit gateways.
--
-- * 'dtgFilters' - One or more filters. The possible values are:     * @options.propagation-default-route-table-id@ - The ID of the default propagation route table.     * @options.amazon-side-asn@ - The private ASN for the Amazon side of a BGP session.     * @options.association-default-route-table-id@ - The ID of the default association route table.     * @options.auto-accept-shared-attachments@ - Indicates whether there is automatic acceptance of attachment requests (@enable@ | @disable@ ).     * @options.default-route-table-association@ - Indicates whether resource attachments are automatically associated with the default association route table (@enable@ | @disable@ ).     * @options.default-route-table-propagation@ - Indicates whether resource attachments automatically propagate routes to the default propagation route table (@enable@ | @disable@ ).     * @options.dns-support@ - Indicates whether DNS support is enabled (@enable@ | @disable@ ).     * @options.vpn-ecmp-support@ - Indicates whether Equal Cost Multipath Protocol support is enabled (@enable@ | @disable@ ).     * @owner-id@ - The ID of the AWS account that owns the transit gateway.     * @state@ - The state of the transit gateway (@available@ | @deleted@ | @deleting@ | @modifying@ | @pending@ ).     * @transit-gateway-id@ - The ID of the transit gateway.
describeTransitGateways ::
  DescribeTransitGateways
describeTransitGateways =
  DescribeTransitGateways'
    { _dtgNextToken = Nothing,
      _dtgDryRun = Nothing,
      _dtgMaxResults = Nothing,
      _dtgTransitGatewayIds = Nothing,
      _dtgFilters = Nothing
    }

-- | The token for the next page of results.
dtgNextToken :: Lens' DescribeTransitGateways (Maybe Text)
dtgNextToken = lens _dtgNextToken (\s a -> s {_dtgNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgDryRun :: Lens' DescribeTransitGateways (Maybe Bool)
dtgDryRun = lens _dtgDryRun (\s a -> s {_dtgDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtgMaxResults :: Lens' DescribeTransitGateways (Maybe Natural)
dtgMaxResults = lens _dtgMaxResults (\s a -> s {_dtgMaxResults = a}) . mapping _Nat

-- | The IDs of the transit gateways.
dtgTransitGatewayIds :: Lens' DescribeTransitGateways [Text]
dtgTransitGatewayIds = lens _dtgTransitGatewayIds (\s a -> s {_dtgTransitGatewayIds = a}) . _Default . _Coerce

-- | One or more filters. The possible values are:     * @options.propagation-default-route-table-id@ - The ID of the default propagation route table.     * @options.amazon-side-asn@ - The private ASN for the Amazon side of a BGP session.     * @options.association-default-route-table-id@ - The ID of the default association route table.     * @options.auto-accept-shared-attachments@ - Indicates whether there is automatic acceptance of attachment requests (@enable@ | @disable@ ).     * @options.default-route-table-association@ - Indicates whether resource attachments are automatically associated with the default association route table (@enable@ | @disable@ ).     * @options.default-route-table-propagation@ - Indicates whether resource attachments automatically propagate routes to the default propagation route table (@enable@ | @disable@ ).     * @options.dns-support@ - Indicates whether DNS support is enabled (@enable@ | @disable@ ).     * @options.vpn-ecmp-support@ - Indicates whether Equal Cost Multipath Protocol support is enabled (@enable@ | @disable@ ).     * @owner-id@ - The ID of the AWS account that owns the transit gateway.     * @state@ - The state of the transit gateway (@available@ | @deleted@ | @deleting@ | @modifying@ | @pending@ ).     * @transit-gateway-id@ - The ID of the transit gateway.
dtgFilters :: Lens' DescribeTransitGateways [Filter]
dtgFilters = lens _dtgFilters (\s a -> s {_dtgFilters = a}) . _Default . _Coerce

instance AWSPager DescribeTransitGateways where
  page rq rs
    | stop (rs ^. dtgrtrsNextToken) = Nothing
    | stop (rs ^. dtgrtrsTransitGateways) = Nothing
    | otherwise =
      Just $ rq & dtgNextToken .~ rs ^. dtgrtrsNextToken

instance AWSRequest DescribeTransitGateways where
  type
    Rs DescribeTransitGateways =
      DescribeTransitGatewaysResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTransitGatewaysResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "transitGatewaySet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTransitGateways

instance NFData DescribeTransitGateways

instance ToHeaders DescribeTransitGateways where
  toHeaders = const mempty

instance ToPath DescribeTransitGateways where
  toPath = const "/"

instance ToQuery DescribeTransitGateways where
  toQuery DescribeTransitGateways' {..} =
    mconcat
      [ "Action"
          =: ("DescribeTransitGateways" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtgNextToken,
        "DryRun" =: _dtgDryRun,
        "MaxResults" =: _dtgMaxResults,
        toQuery
          ( toQueryList "TransitGatewayIds"
              <$> _dtgTransitGatewayIds
          ),
        toQuery (toQueryList "Filter" <$> _dtgFilters)
      ]

-- | /See:/ 'describeTransitGatewaysResponse' smart constructor.
data DescribeTransitGatewaysResponse = DescribeTransitGatewaysResponse'
  { _dtgrtrsNextToken ::
      !( Maybe
           Text
       ),
    _dtgrtrsTransitGateways ::
      !( Maybe
           [TransitGateway]
       ),
    _dtgrtrsResponseStatus ::
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

-- | Creates a value of 'DescribeTransitGatewaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgrtrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dtgrtrsTransitGateways' - Information about the transit gateways.
--
-- * 'dtgrtrsResponseStatus' - -- | The response status code.
describeTransitGatewaysResponse ::
  -- | 'dtgrtrsResponseStatus'
  Int ->
  DescribeTransitGatewaysResponse
describeTransitGatewaysResponse pResponseStatus_ =
  DescribeTransitGatewaysResponse'
    { _dtgrtrsNextToken =
        Nothing,
      _dtgrtrsTransitGateways = Nothing,
      _dtgrtrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dtgrtrsNextToken :: Lens' DescribeTransitGatewaysResponse (Maybe Text)
dtgrtrsNextToken = lens _dtgrtrsNextToken (\s a -> s {_dtgrtrsNextToken = a})

-- | Information about the transit gateways.
dtgrtrsTransitGateways :: Lens' DescribeTransitGatewaysResponse [TransitGateway]
dtgrtrsTransitGateways = lens _dtgrtrsTransitGateways (\s a -> s {_dtgrtrsTransitGateways = a}) . _Default . _Coerce

-- | -- | The response status code.
dtgrtrsResponseStatus :: Lens' DescribeTransitGatewaysResponse Int
dtgrtrsResponseStatus = lens _dtgrtrsResponseStatus (\s a -> s {_dtgrtrsResponseStatus = a})

instance NFData DescribeTransitGatewaysResponse
