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
-- Module      : Network.AWS.EC2.DescribeCustomerGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your VPN customer gateways.
--
--
-- For more information, see <https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html AWS Site-to-Site VPN> in the /AWS Site-to-Site VPN User Guide/ .
module Network.AWS.EC2.DescribeCustomerGateways
  ( -- * Creating a Request
    describeCustomerGateways,
    DescribeCustomerGateways,

    -- * Request Lenses
    describecustomergatewayseDryRun,
    describecustomergatewayseCustomerGatewayIds,
    describecustomergatewayseFilters,

    -- * Destructuring the Response
    describeCustomerGatewaysResponse,
    DescribeCustomerGatewaysResponse,

    -- * Response Lenses
    dcgrcrsCustomerGateways,
    dcgrcrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeCustomerGateways.
--
--
--
-- /See:/ 'describeCustomerGateways' smart constructor.
data DescribeCustomerGateways = DescribeCustomerGateways'
  { _describecustomergatewayseDryRun ::
      !(Maybe Bool),
    _describecustomergatewayseCustomerGatewayIds ::
      !(Maybe [Text]),
    _describecustomergatewayseFilters ::
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

-- | Creates a value of 'DescribeCustomerGateways' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'describecustomergatewayseDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'describecustomergatewayseCustomerGatewayIds' - One or more customer gateway IDs. Default: Describes all your customer gateways.
--
-- * 'describecustomergatewayseFilters' - One or more filters.     * @bgp-asn@ - The customer gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).     * @customer-gateway-id@ - The ID of the customer gateway.     * @ip-address@ - The IP address of the customer gateway's Internet-routable external interface.     * @state@ - The state of the customer gateway (@pending@ | @available@ | @deleting@ | @deleted@ ).     * @type@ - The type of customer gateway. Currently, the only supported type is @ipsec.1@ .     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describeCustomerGateways ::
  DescribeCustomerGateways
describeCustomerGateways =
  DescribeCustomerGateways'
    { _describecustomergatewayseDryRun =
        Nothing,
      _describecustomergatewayseCustomerGatewayIds =
        Nothing,
      _describecustomergatewayseFilters = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
describecustomergatewayseDryRun :: Lens' DescribeCustomerGateways (Maybe Bool)
describecustomergatewayseDryRun = lens _describecustomergatewayseDryRun (\s a -> s {_describecustomergatewayseDryRun = a})

-- | One or more customer gateway IDs. Default: Describes all your customer gateways.
describecustomergatewayseCustomerGatewayIds :: Lens' DescribeCustomerGateways [Text]
describecustomergatewayseCustomerGatewayIds = lens _describecustomergatewayseCustomerGatewayIds (\s a -> s {_describecustomergatewayseCustomerGatewayIds = a}) . _Default . _Coerce

-- | One or more filters.     * @bgp-asn@ - The customer gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).     * @customer-gateway-id@ - The ID of the customer gateway.     * @ip-address@ - The IP address of the customer gateway's Internet-routable external interface.     * @state@ - The state of the customer gateway (@pending@ | @available@ | @deleting@ | @deleted@ ).     * @type@ - The type of customer gateway. Currently, the only supported type is @ipsec.1@ .     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describecustomergatewayseFilters :: Lens' DescribeCustomerGateways [Filter]
describecustomergatewayseFilters = lens _describecustomergatewayseFilters (\s a -> s {_describecustomergatewayseFilters = a}) . _Default . _Coerce

instance AWSRequest DescribeCustomerGateways where
  type
    Rs DescribeCustomerGateways =
      DescribeCustomerGatewaysResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeCustomerGatewaysResponse'
            <$> ( x .@? "customerGatewaySet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCustomerGateways

instance NFData DescribeCustomerGateways

instance ToHeaders DescribeCustomerGateways where
  toHeaders = const mempty

instance ToPath DescribeCustomerGateways where
  toPath = const "/"

instance ToQuery DescribeCustomerGateways where
  toQuery DescribeCustomerGateways' {..} =
    mconcat
      [ "Action"
          =: ("DescribeCustomerGateways" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _describecustomergatewayseDryRun,
        toQuery
          ( toQueryList "CustomerGatewayId"
              <$> _describecustomergatewayseCustomerGatewayIds
          ),
        toQuery
          ( toQueryList "Filter"
              <$> _describecustomergatewayseFilters
          )
      ]

-- | Contains the output of DescribeCustomerGateways.
--
--
--
-- /See:/ 'describeCustomerGatewaysResponse' smart constructor.
data DescribeCustomerGatewaysResponse = DescribeCustomerGatewaysResponse'
  { _dcgrcrsCustomerGateways ::
      !( Maybe
           [CustomerGateway]
       ),
    _dcgrcrsResponseStatus ::
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

-- | Creates a value of 'DescribeCustomerGatewaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcgrcrsCustomerGateways' - Information about one or more customer gateways.
--
-- * 'dcgrcrsResponseStatus' - -- | The response status code.
describeCustomerGatewaysResponse ::
  -- | 'dcgrcrsResponseStatus'
  Int ->
  DescribeCustomerGatewaysResponse
describeCustomerGatewaysResponse pResponseStatus_ =
  DescribeCustomerGatewaysResponse'
    { _dcgrcrsCustomerGateways =
        Nothing,
      _dcgrcrsResponseStatus = pResponseStatus_
    }

-- | Information about one or more customer gateways.
dcgrcrsCustomerGateways :: Lens' DescribeCustomerGatewaysResponse [CustomerGateway]
dcgrcrsCustomerGateways = lens _dcgrcrsCustomerGateways (\s a -> s {_dcgrcrsCustomerGateways = a}) . _Default . _Coerce

-- | -- | The response status code.
dcgrcrsResponseStatus :: Lens' DescribeCustomerGatewaysResponse Int
dcgrcrsResponseStatus = lens _dcgrcrsResponseStatus (\s a -> s {_dcgrcrsResponseStatus = a})

instance NFData DescribeCustomerGatewaysResponse
