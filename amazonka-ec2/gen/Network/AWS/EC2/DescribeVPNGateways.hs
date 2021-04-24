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
-- Module      : Network.AWS.EC2.DescribeVPNGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your virtual private gateways.
--
--
-- For more information, see <https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html AWS Site-to-Site VPN> in the /AWS Site-to-Site VPN User Guide/ .
module Network.AWS.EC2.DescribeVPNGateways
  ( -- * Creating a Request
    describeVPNGateways,
    DescribeVPNGateways,

    -- * Request Lenses
    dvgsDryRun,
    dvgsVPNGatewayIds,
    dvgsFilters,

    -- * Destructuring the Response
    describeVPNGatewaysResponse,
    DescribeVPNGatewaysResponse,

    -- * Response Lenses
    dvgrrsVPNGateways,
    dvgrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeVpnGateways.
--
--
--
-- /See:/ 'describeVPNGateways' smart constructor.
data DescribeVPNGateways = DescribeVPNGateways'
  { _dvgsDryRun ::
      !(Maybe Bool),
    _dvgsVPNGatewayIds ::
      !(Maybe [Text]),
    _dvgsFilters ::
      !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeVPNGateways' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvgsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dvgsVPNGatewayIds' - One or more virtual private gateway IDs. Default: Describes all your virtual private gateways.
--
-- * 'dvgsFilters' - One or more filters.     * @amazon-side-asn@ - The Autonomous System Number (ASN) for the Amazon side of the gateway.     * @attachment.state@ - The current state of the attachment between the gateway and the VPC (@attaching@ | @attached@ | @detaching@ | @detached@ ).     * @attachment.vpc-id@ - The ID of an attached VPC.     * @availability-zone@ - The Availability Zone for the virtual private gateway (if applicable).     * @state@ - The state of the virtual private gateway (@pending@ | @available@ | @deleting@ | @deleted@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @type@ - The type of virtual private gateway. Currently the only supported type is @ipsec.1@ .     * @vpn-gateway-id@ - The ID of the virtual private gateway.
describeVPNGateways ::
  DescribeVPNGateways
describeVPNGateways =
  DescribeVPNGateways'
    { _dvgsDryRun = Nothing,
      _dvgsVPNGatewayIds = Nothing,
      _dvgsFilters = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dvgsDryRun :: Lens' DescribeVPNGateways (Maybe Bool)
dvgsDryRun = lens _dvgsDryRun (\s a -> s {_dvgsDryRun = a})

-- | One or more virtual private gateway IDs. Default: Describes all your virtual private gateways.
dvgsVPNGatewayIds :: Lens' DescribeVPNGateways [Text]
dvgsVPNGatewayIds = lens _dvgsVPNGatewayIds (\s a -> s {_dvgsVPNGatewayIds = a}) . _Default . _Coerce

-- | One or more filters.     * @amazon-side-asn@ - The Autonomous System Number (ASN) for the Amazon side of the gateway.     * @attachment.state@ - The current state of the attachment between the gateway and the VPC (@attaching@ | @attached@ | @detaching@ | @detached@ ).     * @attachment.vpc-id@ - The ID of an attached VPC.     * @availability-zone@ - The Availability Zone for the virtual private gateway (if applicable).     * @state@ - The state of the virtual private gateway (@pending@ | @available@ | @deleting@ | @deleted@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @type@ - The type of virtual private gateway. Currently the only supported type is @ipsec.1@ .     * @vpn-gateway-id@ - The ID of the virtual private gateway.
dvgsFilters :: Lens' DescribeVPNGateways [Filter]
dvgsFilters = lens _dvgsFilters (\s a -> s {_dvgsFilters = a}) . _Default . _Coerce

instance AWSRequest DescribeVPNGateways where
  type
    Rs DescribeVPNGateways =
      DescribeVPNGatewaysResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeVPNGatewaysResponse'
            <$> ( x .@? "vpnGatewaySet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVPNGateways

instance NFData DescribeVPNGateways

instance ToHeaders DescribeVPNGateways where
  toHeaders = const mempty

instance ToPath DescribeVPNGateways where
  toPath = const "/"

instance ToQuery DescribeVPNGateways where
  toQuery DescribeVPNGateways' {..} =
    mconcat
      [ "Action" =: ("DescribeVpnGateways" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dvgsDryRun,
        toQuery
          (toQueryList "VpnGatewayId" <$> _dvgsVPNGatewayIds),
        toQuery (toQueryList "Filter" <$> _dvgsFilters)
      ]

-- | Contains the output of DescribeVpnGateways.
--
--
--
-- /See:/ 'describeVPNGatewaysResponse' smart constructor.
data DescribeVPNGatewaysResponse = DescribeVPNGatewaysResponse'
  { _dvgrrsVPNGateways ::
      !( Maybe
           [VPNGateway]
       ),
    _dvgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeVPNGatewaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvgrrsVPNGateways' - Information about one or more virtual private gateways.
--
-- * 'dvgrrsResponseStatus' - -- | The response status code.
describeVPNGatewaysResponse ::
  -- | 'dvgrrsResponseStatus'
  Int ->
  DescribeVPNGatewaysResponse
describeVPNGatewaysResponse pResponseStatus_ =
  DescribeVPNGatewaysResponse'
    { _dvgrrsVPNGateways =
        Nothing,
      _dvgrrsResponseStatus = pResponseStatus_
    }

-- | Information about one or more virtual private gateways.
dvgrrsVPNGateways :: Lens' DescribeVPNGatewaysResponse [VPNGateway]
dvgrrsVPNGateways = lens _dvgrrsVPNGateways (\s a -> s {_dvgrrsVPNGateways = a}) . _Default . _Coerce

-- | -- | The response status code.
dvgrrsResponseStatus :: Lens' DescribeVPNGatewaysResponse Int
dvgrrsResponseStatus = lens _dvgrrsResponseStatus (\s a -> s {_dvgrrsResponseStatus = a})

instance NFData DescribeVPNGatewaysResponse
