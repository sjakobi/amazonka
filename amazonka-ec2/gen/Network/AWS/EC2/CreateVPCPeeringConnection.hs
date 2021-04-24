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
-- Module      : Network.AWS.EC2.CreateVPCPeeringConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection. The accepter VPC can belong to another AWS account and can be in a different Region to the requester VPC. The requester VPC and accepter VPC cannot have overlapping CIDR blocks.
--
--
-- The owner of the accepter VPC must accept the peering request to activate the peering connection. The VPC peering connection request expires after 7 days, after which it cannot be accepted or rejected.
--
-- If you create a VPC peering connection request between VPCs with overlapping CIDR blocks, the VPC peering connection has a status of @failed@ .
module Network.AWS.EC2.CreateVPCPeeringConnection
  ( -- * Creating a Request
    createVPCPeeringConnection,
    CreateVPCPeeringConnection,

    -- * Request Lenses
    cvpcpcTagSpecifications,
    cvpcpcDryRun,
    cvpcpcPeerOwnerId,
    cvpcpcVPCId,
    cvpcpcPeerRegion,
    cvpcpcPeerVPCId,

    -- * Destructuring the Response
    createVPCPeeringConnectionResponse,
    CreateVPCPeeringConnectionResponse,

    -- * Response Lenses
    cvpcrrsVPCPeeringConnection,
    cvpcrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createVPCPeeringConnection' smart constructor.
data CreateVPCPeeringConnection = CreateVPCPeeringConnection'
  { _cvpcpcTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _cvpcpcDryRun ::
      !(Maybe Bool),
    _cvpcpcPeerOwnerId ::
      !(Maybe Text),
    _cvpcpcVPCId ::
      !(Maybe Text),
    _cvpcpcPeerRegion ::
      !(Maybe Text),
    _cvpcpcPeerVPCId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateVPCPeeringConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvpcpcTagSpecifications' - The tags to assign to the peering connection.
--
-- * 'cvpcpcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cvpcpcPeerOwnerId' - The AWS account ID of the owner of the accepter VPC. Default: Your AWS account ID
--
-- * 'cvpcpcVPCId' - The ID of the requester VPC. You must specify this parameter in the request.
--
-- * 'cvpcpcPeerRegion' - The Region code for the accepter VPC, if the accepter VPC is located in a Region other than the Region in which you make the request. Default: The Region in which you make the request.
--
-- * 'cvpcpcPeerVPCId' - The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.
createVPCPeeringConnection ::
  CreateVPCPeeringConnection
createVPCPeeringConnection =
  CreateVPCPeeringConnection'
    { _cvpcpcTagSpecifications =
        Nothing,
      _cvpcpcDryRun = Nothing,
      _cvpcpcPeerOwnerId = Nothing,
      _cvpcpcVPCId = Nothing,
      _cvpcpcPeerRegion = Nothing,
      _cvpcpcPeerVPCId = Nothing
    }

-- | The tags to assign to the peering connection.
cvpcpcTagSpecifications :: Lens' CreateVPCPeeringConnection [TagSpecification]
cvpcpcTagSpecifications = lens _cvpcpcTagSpecifications (\s a -> s {_cvpcpcTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cvpcpcDryRun :: Lens' CreateVPCPeeringConnection (Maybe Bool)
cvpcpcDryRun = lens _cvpcpcDryRun (\s a -> s {_cvpcpcDryRun = a})

-- | The AWS account ID of the owner of the accepter VPC. Default: Your AWS account ID
cvpcpcPeerOwnerId :: Lens' CreateVPCPeeringConnection (Maybe Text)
cvpcpcPeerOwnerId = lens _cvpcpcPeerOwnerId (\s a -> s {_cvpcpcPeerOwnerId = a})

-- | The ID of the requester VPC. You must specify this parameter in the request.
cvpcpcVPCId :: Lens' CreateVPCPeeringConnection (Maybe Text)
cvpcpcVPCId = lens _cvpcpcVPCId (\s a -> s {_cvpcpcVPCId = a})

-- | The Region code for the accepter VPC, if the accepter VPC is located in a Region other than the Region in which you make the request. Default: The Region in which you make the request.
cvpcpcPeerRegion :: Lens' CreateVPCPeeringConnection (Maybe Text)
cvpcpcPeerRegion = lens _cvpcpcPeerRegion (\s a -> s {_cvpcpcPeerRegion = a})

-- | The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.
cvpcpcPeerVPCId :: Lens' CreateVPCPeeringConnection (Maybe Text)
cvpcpcPeerVPCId = lens _cvpcpcPeerVPCId (\s a -> s {_cvpcpcPeerVPCId = a})

instance AWSRequest CreateVPCPeeringConnection where
  type
    Rs CreateVPCPeeringConnection =
      CreateVPCPeeringConnectionResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateVPCPeeringConnectionResponse'
            <$> (x .@? "vpcPeeringConnection")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateVPCPeeringConnection

instance NFData CreateVPCPeeringConnection

instance ToHeaders CreateVPCPeeringConnection where
  toHeaders = const mempty

instance ToPath CreateVPCPeeringConnection where
  toPath = const "/"

instance ToQuery CreateVPCPeeringConnection where
  toQuery CreateVPCPeeringConnection' {..} =
    mconcat
      [ "Action"
          =: ("CreateVpcPeeringConnection" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _cvpcpcTagSpecifications
          ),
        "DryRun" =: _cvpcpcDryRun,
        "PeerOwnerId" =: _cvpcpcPeerOwnerId,
        "VpcId" =: _cvpcpcVPCId,
        "PeerRegion" =: _cvpcpcPeerRegion,
        "PeerVpcId" =: _cvpcpcPeerVPCId
      ]

-- | /See:/ 'createVPCPeeringConnectionResponse' smart constructor.
data CreateVPCPeeringConnectionResponse = CreateVPCPeeringConnectionResponse'
  { _cvpcrrsVPCPeeringConnection ::
      !( Maybe
           VPCPeeringConnection
       ),
    _cvpcrrsResponseStatus ::
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

-- | Creates a value of 'CreateVPCPeeringConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvpcrrsVPCPeeringConnection' - Information about the VPC peering connection.
--
-- * 'cvpcrrsResponseStatus' - -- | The response status code.
createVPCPeeringConnectionResponse ::
  -- | 'cvpcrrsResponseStatus'
  Int ->
  CreateVPCPeeringConnectionResponse
createVPCPeeringConnectionResponse pResponseStatus_ =
  CreateVPCPeeringConnectionResponse'
    { _cvpcrrsVPCPeeringConnection =
        Nothing,
      _cvpcrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the VPC peering connection.
cvpcrrsVPCPeeringConnection :: Lens' CreateVPCPeeringConnectionResponse (Maybe VPCPeeringConnection)
cvpcrrsVPCPeeringConnection = lens _cvpcrrsVPCPeeringConnection (\s a -> s {_cvpcrrsVPCPeeringConnection = a})

-- | -- | The response status code.
cvpcrrsResponseStatus :: Lens' CreateVPCPeeringConnectionResponse Int
cvpcrrsResponseStatus = lens _cvpcrrsResponseStatus (\s a -> s {_cvpcrrsResponseStatus = a})

instance NFData CreateVPCPeeringConnectionResponse
