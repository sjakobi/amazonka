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
-- Module      : Network.AWS.EC2.DisassociateVPCCidrBlock
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a CIDR block from a VPC. To disassociate the CIDR block, you must specify its association ID. You can get the association ID by using 'DescribeVpcs' . You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it.
--
--
-- You cannot disassociate the CIDR block with which you originally created the VPC (the primary CIDR block).
module Network.AWS.EC2.DisassociateVPCCidrBlock
  ( -- * Creating a Request
    disassociateVPCCidrBlock,
    DisassociateVPCCidrBlock,

    -- * Request Lenses
    dvcbAssociationId,

    -- * Destructuring the Response
    disassociateVPCCidrBlockResponse,
    DisassociateVPCCidrBlockResponse,

    -- * Response Lenses
    dvcbrrsIPv6CidrBlockAssociation,
    dvcbrrsCidrBlockAssociation,
    dvcbrrsVPCId,
    dvcbrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateVPCCidrBlock' smart constructor.
newtype DisassociateVPCCidrBlock = DisassociateVPCCidrBlock'
  { _dvcbAssociationId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateVPCCidrBlock' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvcbAssociationId' - The association ID for the CIDR block.
disassociateVPCCidrBlock ::
  -- | 'dvcbAssociationId'
  Text ->
  DisassociateVPCCidrBlock
disassociateVPCCidrBlock pAssociationId_ =
  DisassociateVPCCidrBlock'
    { _dvcbAssociationId =
        pAssociationId_
    }

-- | The association ID for the CIDR block.
dvcbAssociationId :: Lens' DisassociateVPCCidrBlock Text
dvcbAssociationId = lens _dvcbAssociationId (\s a -> s {_dvcbAssociationId = a})

instance AWSRequest DisassociateVPCCidrBlock where
  type
    Rs DisassociateVPCCidrBlock =
      DisassociateVPCCidrBlockResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DisassociateVPCCidrBlockResponse'
            <$> (x .@? "ipv6CidrBlockAssociation")
            <*> (x .@? "cidrBlockAssociation")
            <*> (x .@? "vpcId")
            <*> (pure (fromEnum s))
      )

instance Hashable DisassociateVPCCidrBlock

instance NFData DisassociateVPCCidrBlock

instance ToHeaders DisassociateVPCCidrBlock where
  toHeaders = const mempty

instance ToPath DisassociateVPCCidrBlock where
  toPath = const "/"

instance ToQuery DisassociateVPCCidrBlock where
  toQuery DisassociateVPCCidrBlock' {..} =
    mconcat
      [ "Action"
          =: ("DisassociateVpcCidrBlock" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "AssociationId" =: _dvcbAssociationId
      ]

-- | /See:/ 'disassociateVPCCidrBlockResponse' smart constructor.
data DisassociateVPCCidrBlockResponse = DisassociateVPCCidrBlockResponse'
  { _dvcbrrsIPv6CidrBlockAssociation ::
      !( Maybe
           VPCIPv6CidrBlockAssociation
       ),
    _dvcbrrsCidrBlockAssociation ::
      !( Maybe
           VPCCidrBlockAssociation
       ),
    _dvcbrrsVPCId ::
      !( Maybe
           Text
       ),
    _dvcbrrsResponseStatus ::
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

-- | Creates a value of 'DisassociateVPCCidrBlockResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvcbrrsIPv6CidrBlockAssociation' - Information about the IPv6 CIDR block association.
--
-- * 'dvcbrrsCidrBlockAssociation' - Information about the IPv4 CIDR block association.
--
-- * 'dvcbrrsVPCId' - The ID of the VPC.
--
-- * 'dvcbrrsResponseStatus' - -- | The response status code.
disassociateVPCCidrBlockResponse ::
  -- | 'dvcbrrsResponseStatus'
  Int ->
  DisassociateVPCCidrBlockResponse
disassociateVPCCidrBlockResponse pResponseStatus_ =
  DisassociateVPCCidrBlockResponse'
    { _dvcbrrsIPv6CidrBlockAssociation =
        Nothing,
      _dvcbrrsCidrBlockAssociation = Nothing,
      _dvcbrrsVPCId = Nothing,
      _dvcbrrsResponseStatus = pResponseStatus_
    }

-- | Information about the IPv6 CIDR block association.
dvcbrrsIPv6CidrBlockAssociation :: Lens' DisassociateVPCCidrBlockResponse (Maybe VPCIPv6CidrBlockAssociation)
dvcbrrsIPv6CidrBlockAssociation = lens _dvcbrrsIPv6CidrBlockAssociation (\s a -> s {_dvcbrrsIPv6CidrBlockAssociation = a})

-- | Information about the IPv4 CIDR block association.
dvcbrrsCidrBlockAssociation :: Lens' DisassociateVPCCidrBlockResponse (Maybe VPCCidrBlockAssociation)
dvcbrrsCidrBlockAssociation = lens _dvcbrrsCidrBlockAssociation (\s a -> s {_dvcbrrsCidrBlockAssociation = a})

-- | The ID of the VPC.
dvcbrrsVPCId :: Lens' DisassociateVPCCidrBlockResponse (Maybe Text)
dvcbrrsVPCId = lens _dvcbrrsVPCId (\s a -> s {_dvcbrrsVPCId = a})

-- | -- | The response status code.
dvcbrrsResponseStatus :: Lens' DisassociateVPCCidrBlockResponse Int
dvcbrrsResponseStatus = lens _dvcbrrsResponseStatus (\s a -> s {_dvcbrrsResponseStatus = a})

instance NFData DisassociateVPCCidrBlockResponse
