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
-- Module      : Network.AWS.EC2.CreateVPNGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a virtual private gateway. A virtual private gateway is the endpoint on the VPC side of your VPN connection. You can create a virtual private gateway before creating the VPC itself.
--
--
-- For more information, see <https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html AWS Site-to-Site VPN> in the /AWS Site-to-Site VPN User Guide/ .
module Network.AWS.EC2.CreateVPNGateway
  ( -- * Creating a Request
    createVPNGateway,
    CreateVPNGateway,

    -- * Request Lenses
    cvgTagSpecifications,
    cvgDryRun,
    cvgAvailabilityZone,
    cvgAmazonSideASN,
    cvgType,

    -- * Destructuring the Response
    createVPNGatewayResponse,
    CreateVPNGatewayResponse,

    -- * Response Lenses
    cvgrrsVPNGateway,
    cvgrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for CreateVpnGateway.
--
--
--
-- /See:/ 'createVPNGateway' smart constructor.
data CreateVPNGateway = CreateVPNGateway'
  { _cvgTagSpecifications ::
      !(Maybe [TagSpecification]),
    _cvgDryRun :: !(Maybe Bool),
    _cvgAvailabilityZone :: !(Maybe Text),
    _cvgAmazonSideASN :: !(Maybe Integer),
    _cvgType :: !GatewayType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateVPNGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvgTagSpecifications' - The tags to apply to the virtual private gateway.
--
-- * 'cvgDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cvgAvailabilityZone' - The Availability Zone for the virtual private gateway.
--
-- * 'cvgAmazonSideASN' - A private Autonomous System Number (ASN) for the Amazon side of a BGP session. If you're using a 16-bit ASN, it must be in the 64512 to 65534 range. If you're using a 32-bit ASN, it must be in the 4200000000 to 4294967294 range. Default: 64512
--
-- * 'cvgType' - The type of VPN connection this virtual private gateway supports.
createVPNGateway ::
  -- | 'cvgType'
  GatewayType ->
  CreateVPNGateway
createVPNGateway pType_ =
  CreateVPNGateway'
    { _cvgTagSpecifications = Nothing,
      _cvgDryRun = Nothing,
      _cvgAvailabilityZone = Nothing,
      _cvgAmazonSideASN = Nothing,
      _cvgType = pType_
    }

-- | The tags to apply to the virtual private gateway.
cvgTagSpecifications :: Lens' CreateVPNGateway [TagSpecification]
cvgTagSpecifications = lens _cvgTagSpecifications (\s a -> s {_cvgTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cvgDryRun :: Lens' CreateVPNGateway (Maybe Bool)
cvgDryRun = lens _cvgDryRun (\s a -> s {_cvgDryRun = a})

-- | The Availability Zone for the virtual private gateway.
cvgAvailabilityZone :: Lens' CreateVPNGateway (Maybe Text)
cvgAvailabilityZone = lens _cvgAvailabilityZone (\s a -> s {_cvgAvailabilityZone = a})

-- | A private Autonomous System Number (ASN) for the Amazon side of a BGP session. If you're using a 16-bit ASN, it must be in the 64512 to 65534 range. If you're using a 32-bit ASN, it must be in the 4200000000 to 4294967294 range. Default: 64512
cvgAmazonSideASN :: Lens' CreateVPNGateway (Maybe Integer)
cvgAmazonSideASN = lens _cvgAmazonSideASN (\s a -> s {_cvgAmazonSideASN = a})

-- | The type of VPN connection this virtual private gateway supports.
cvgType :: Lens' CreateVPNGateway GatewayType
cvgType = lens _cvgType (\s a -> s {_cvgType = a})

instance AWSRequest CreateVPNGateway where
  type Rs CreateVPNGateway = CreateVPNGatewayResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateVPNGatewayResponse'
            <$> (x .@? "vpnGateway") <*> (pure (fromEnum s))
      )

instance Hashable CreateVPNGateway

instance NFData CreateVPNGateway

instance ToHeaders CreateVPNGateway where
  toHeaders = const mempty

instance ToPath CreateVPNGateway where
  toPath = const "/"

instance ToQuery CreateVPNGateway where
  toQuery CreateVPNGateway' {..} =
    mconcat
      [ "Action" =: ("CreateVpnGateway" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _cvgTagSpecifications
          ),
        "DryRun" =: _cvgDryRun,
        "AvailabilityZone" =: _cvgAvailabilityZone,
        "AmazonSideAsn" =: _cvgAmazonSideASN,
        "Type" =: _cvgType
      ]

-- | Contains the output of CreateVpnGateway.
--
--
--
-- /See:/ 'createVPNGatewayResponse' smart constructor.
data CreateVPNGatewayResponse = CreateVPNGatewayResponse'
  { _cvgrrsVPNGateway ::
      !(Maybe VPNGateway),
    _cvgrrsResponseStatus ::
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

-- | Creates a value of 'CreateVPNGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvgrrsVPNGateway' - Information about the virtual private gateway.
--
-- * 'cvgrrsResponseStatus' - -- | The response status code.
createVPNGatewayResponse ::
  -- | 'cvgrrsResponseStatus'
  Int ->
  CreateVPNGatewayResponse
createVPNGatewayResponse pResponseStatus_ =
  CreateVPNGatewayResponse'
    { _cvgrrsVPNGateway =
        Nothing,
      _cvgrrsResponseStatus = pResponseStatus_
    }

-- | Information about the virtual private gateway.
cvgrrsVPNGateway :: Lens' CreateVPNGatewayResponse (Maybe VPNGateway)
cvgrrsVPNGateway = lens _cvgrrsVPNGateway (\s a -> s {_cvgrrsVPNGateway = a})

-- | -- | The response status code.
cvgrrsResponseStatus :: Lens' CreateVPNGatewayResponse Int
cvgrrsResponseStatus = lens _cvgrrsResponseStatus (\s a -> s {_cvgrrsResponseStatus = a})

instance NFData CreateVPNGatewayResponse
