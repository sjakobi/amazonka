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
-- Module      : Network.AWS.EC2.AssociateVPCCidrBlock
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a CIDR block with your VPC. You can associate a secondary IPv4 CIDR block, an Amazon-provided IPv6 CIDR block, or an IPv6 CIDR block from an IPv6 address pool that you provisioned through bring your own IP addresses (<https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html BYOIP> ). The IPv6 CIDR block size is fixed at /56.
--
--
-- You must specify one of the following in the request: an IPv4 CIDR block, an IPv6 pool, or an Amazon-provided IPv6 CIDR block.
--
-- For more information about associating CIDR blocks with your VPC and applicable restrictions, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html#VPC_Sizing VPC and Subnet Sizing> in the /Amazon Virtual Private Cloud User Guide/ .
module Network.AWS.EC2.AssociateVPCCidrBlock
  ( -- * Creating a Request
    associateVPCCidrBlock,
    AssociateVPCCidrBlock,

    -- * Request Lenses
    avcbIPv6Pool,
    avcbIPv6CidrBlock,
    avcbIPv6CidrBlockNetworkBorderGroup,
    avcbAmazonProvidedIPv6CidrBlock,
    avcbCidrBlock,
    avcbVPCId,

    -- * Destructuring the Response
    associateVPCCidrBlockResponse,
    AssociateVPCCidrBlockResponse,

    -- * Response Lenses
    avcbrrsIPv6CidrBlockAssociation,
    avcbrrsCidrBlockAssociation,
    avcbrrsVPCId,
    avcbrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateVPCCidrBlock' smart constructor.
data AssociateVPCCidrBlock = AssociateVPCCidrBlock'
  { _avcbIPv6Pool ::
      !(Maybe Text),
    _avcbIPv6CidrBlock ::
      !(Maybe Text),
    _avcbIPv6CidrBlockNetworkBorderGroup ::
      !(Maybe Text),
    _avcbAmazonProvidedIPv6CidrBlock ::
      !(Maybe Bool),
    _avcbCidrBlock ::
      !(Maybe Text),
    _avcbVPCId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AssociateVPCCidrBlock' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avcbIPv6Pool' - The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.
--
-- * 'avcbIPv6CidrBlock' - An IPv6 CIDR block from the IPv6 address pool. You must also specify @Ipv6Pool@ in the request. To let Amazon choose the IPv6 CIDR block for you, omit this parameter.
--
-- * 'avcbIPv6CidrBlockNetworkBorderGroup' - The name of the location from which we advertise the IPV6 CIDR block. Use this parameter to limit the CIDR block to this location. You must set @AmazonProvidedIpv6CidrBlock@ to @true@ to use this parameter. You can have one IPv6 CIDR block association per network border group.
--
-- * 'avcbAmazonProvidedIPv6CidrBlock' - Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block.
--
-- * 'avcbCidrBlock' - An IPv4 CIDR block to associate with the VPC.
--
-- * 'avcbVPCId' - The ID of the VPC.
associateVPCCidrBlock ::
  -- | 'avcbVPCId'
  Text ->
  AssociateVPCCidrBlock
associateVPCCidrBlock pVPCId_ =
  AssociateVPCCidrBlock'
    { _avcbIPv6Pool = Nothing,
      _avcbIPv6CidrBlock = Nothing,
      _avcbIPv6CidrBlockNetworkBorderGroup = Nothing,
      _avcbAmazonProvidedIPv6CidrBlock = Nothing,
      _avcbCidrBlock = Nothing,
      _avcbVPCId = pVPCId_
    }

-- | The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.
avcbIPv6Pool :: Lens' AssociateVPCCidrBlock (Maybe Text)
avcbIPv6Pool = lens _avcbIPv6Pool (\s a -> s {_avcbIPv6Pool = a})

-- | An IPv6 CIDR block from the IPv6 address pool. You must also specify @Ipv6Pool@ in the request. To let Amazon choose the IPv6 CIDR block for you, omit this parameter.
avcbIPv6CidrBlock :: Lens' AssociateVPCCidrBlock (Maybe Text)
avcbIPv6CidrBlock = lens _avcbIPv6CidrBlock (\s a -> s {_avcbIPv6CidrBlock = a})

-- | The name of the location from which we advertise the IPV6 CIDR block. Use this parameter to limit the CIDR block to this location. You must set @AmazonProvidedIpv6CidrBlock@ to @true@ to use this parameter. You can have one IPv6 CIDR block association per network border group.
avcbIPv6CidrBlockNetworkBorderGroup :: Lens' AssociateVPCCidrBlock (Maybe Text)
avcbIPv6CidrBlockNetworkBorderGroup = lens _avcbIPv6CidrBlockNetworkBorderGroup (\s a -> s {_avcbIPv6CidrBlockNetworkBorderGroup = a})

-- | Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block.
avcbAmazonProvidedIPv6CidrBlock :: Lens' AssociateVPCCidrBlock (Maybe Bool)
avcbAmazonProvidedIPv6CidrBlock = lens _avcbAmazonProvidedIPv6CidrBlock (\s a -> s {_avcbAmazonProvidedIPv6CidrBlock = a})

-- | An IPv4 CIDR block to associate with the VPC.
avcbCidrBlock :: Lens' AssociateVPCCidrBlock (Maybe Text)
avcbCidrBlock = lens _avcbCidrBlock (\s a -> s {_avcbCidrBlock = a})

-- | The ID of the VPC.
avcbVPCId :: Lens' AssociateVPCCidrBlock Text
avcbVPCId = lens _avcbVPCId (\s a -> s {_avcbVPCId = a})

instance AWSRequest AssociateVPCCidrBlock where
  type
    Rs AssociateVPCCidrBlock =
      AssociateVPCCidrBlockResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AssociateVPCCidrBlockResponse'
            <$> (x .@? "ipv6CidrBlockAssociation")
            <*> (x .@? "cidrBlockAssociation")
            <*> (x .@? "vpcId")
            <*> (pure (fromEnum s))
      )

instance Hashable AssociateVPCCidrBlock

instance NFData AssociateVPCCidrBlock

instance ToHeaders AssociateVPCCidrBlock where
  toHeaders = const mempty

instance ToPath AssociateVPCCidrBlock where
  toPath = const "/"

instance ToQuery AssociateVPCCidrBlock where
  toQuery AssociateVPCCidrBlock' {..} =
    mconcat
      [ "Action" =: ("AssociateVpcCidrBlock" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "Ipv6Pool" =: _avcbIPv6Pool,
        "Ipv6CidrBlock" =: _avcbIPv6CidrBlock,
        "Ipv6CidrBlockNetworkBorderGroup"
          =: _avcbIPv6CidrBlockNetworkBorderGroup,
        "AmazonProvidedIpv6CidrBlock"
          =: _avcbAmazonProvidedIPv6CidrBlock,
        "CidrBlock" =: _avcbCidrBlock,
        "VpcId" =: _avcbVPCId
      ]

-- | /See:/ 'associateVPCCidrBlockResponse' smart constructor.
data AssociateVPCCidrBlockResponse = AssociateVPCCidrBlockResponse'
  { _avcbrrsIPv6CidrBlockAssociation ::
      !( Maybe
           VPCIPv6CidrBlockAssociation
       ),
    _avcbrrsCidrBlockAssociation ::
      !( Maybe
           VPCCidrBlockAssociation
       ),
    _avcbrrsVPCId ::
      !( Maybe
           Text
       ),
    _avcbrrsResponseStatus ::
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

-- | Creates a value of 'AssociateVPCCidrBlockResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avcbrrsIPv6CidrBlockAssociation' - Information about the IPv6 CIDR block association.
--
-- * 'avcbrrsCidrBlockAssociation' - Information about the IPv4 CIDR block association.
--
-- * 'avcbrrsVPCId' - The ID of the VPC.
--
-- * 'avcbrrsResponseStatus' - -- | The response status code.
associateVPCCidrBlockResponse ::
  -- | 'avcbrrsResponseStatus'
  Int ->
  AssociateVPCCidrBlockResponse
associateVPCCidrBlockResponse pResponseStatus_ =
  AssociateVPCCidrBlockResponse'
    { _avcbrrsIPv6CidrBlockAssociation =
        Nothing,
      _avcbrrsCidrBlockAssociation = Nothing,
      _avcbrrsVPCId = Nothing,
      _avcbrrsResponseStatus = pResponseStatus_
    }

-- | Information about the IPv6 CIDR block association.
avcbrrsIPv6CidrBlockAssociation :: Lens' AssociateVPCCidrBlockResponse (Maybe VPCIPv6CidrBlockAssociation)
avcbrrsIPv6CidrBlockAssociation = lens _avcbrrsIPv6CidrBlockAssociation (\s a -> s {_avcbrrsIPv6CidrBlockAssociation = a})

-- | Information about the IPv4 CIDR block association.
avcbrrsCidrBlockAssociation :: Lens' AssociateVPCCidrBlockResponse (Maybe VPCCidrBlockAssociation)
avcbrrsCidrBlockAssociation = lens _avcbrrsCidrBlockAssociation (\s a -> s {_avcbrrsCidrBlockAssociation = a})

-- | The ID of the VPC.
avcbrrsVPCId :: Lens' AssociateVPCCidrBlockResponse (Maybe Text)
avcbrrsVPCId = lens _avcbrrsVPCId (\s a -> s {_avcbrrsVPCId = a})

-- | -- | The response status code.
avcbrrsResponseStatus :: Lens' AssociateVPCCidrBlockResponse Int
avcbrrsResponseStatus = lens _avcbrrsResponseStatus (\s a -> s {_avcbrrsResponseStatus = a})

instance NFData AssociateVPCCidrBlockResponse
