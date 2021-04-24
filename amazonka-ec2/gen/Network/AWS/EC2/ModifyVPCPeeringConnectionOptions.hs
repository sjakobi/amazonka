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
-- Module      : Network.AWS.EC2.ModifyVPCPeeringConnectionOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the VPC peering connection options on one side of a VPC peering connection. You can do the following:
--
--
--     * Enable/disable communication over the peering connection between an EC2-Classic instance that's linked to your VPC (using ClassicLink) and instances in the peer VPC.
--
--     * Enable/disable communication over the peering connection between instances in your VPC and an EC2-Classic instance that's linked to the peer VPC.
--
--     * Enable/disable the ability to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.
--
--
--
-- If the peered VPCs are in the same AWS account, you can enable DNS resolution for queries from the local VPC. This ensures that queries from the local VPC resolve to private IP addresses in the peer VPC. This option is not available if the peered VPCs are in different AWS accounts or different Regions. For peered VPCs in different AWS accounts, each AWS account owner must initiate a separate request to modify the peering connection options. For inter-region peering connections, you must use the Region for the requester VPC to modify the requester VPC peering options and the Region for the accepter VPC to modify the accepter VPC peering options. To verify which VPCs are the accepter and the requester for a VPC peering connection, use the 'DescribeVpcPeeringConnections' command.
module Network.AWS.EC2.ModifyVPCPeeringConnectionOptions
  ( -- * Creating a Request
    modifyVPCPeeringConnectionOptions,
    ModifyVPCPeeringConnectionOptions,

    -- * Request Lenses
    mvpcoDryRun,
    mvpcoAccepterPeeringConnectionOptions,
    mvpcoRequesterPeeringConnectionOptions,
    mvpcoVPCPeeringConnectionId,

    -- * Destructuring the Response
    modifyVPCPeeringConnectionOptionsResponse,
    ModifyVPCPeeringConnectionOptionsResponse,

    -- * Response Lenses
    mvpcorrsAccepterPeeringConnectionOptions,
    mvpcorrsRequesterPeeringConnectionOptions,
    mvpcorrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyVPCPeeringConnectionOptions' smart constructor.
data ModifyVPCPeeringConnectionOptions = ModifyVPCPeeringConnectionOptions'
  { _mvpcoDryRun ::
      !( Maybe
           Bool
       ),
    _mvpcoAccepterPeeringConnectionOptions ::
      !( Maybe
           PeeringConnectionOptionsRequest
       ),
    _mvpcoRequesterPeeringConnectionOptions ::
      !( Maybe
           PeeringConnectionOptionsRequest
       ),
    _mvpcoVPCPeeringConnectionId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyVPCPeeringConnectionOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvpcoDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mvpcoAccepterPeeringConnectionOptions' - The VPC peering connection options for the accepter VPC.
--
-- * 'mvpcoRequesterPeeringConnectionOptions' - The VPC peering connection options for the requester VPC.
--
-- * 'mvpcoVPCPeeringConnectionId' - The ID of the VPC peering connection.
modifyVPCPeeringConnectionOptions ::
  -- | 'mvpcoVPCPeeringConnectionId'
  Text ->
  ModifyVPCPeeringConnectionOptions
modifyVPCPeeringConnectionOptions
  pVPCPeeringConnectionId_ =
    ModifyVPCPeeringConnectionOptions'
      { _mvpcoDryRun =
          Nothing,
        _mvpcoAccepterPeeringConnectionOptions =
          Nothing,
        _mvpcoRequesterPeeringConnectionOptions =
          Nothing,
        _mvpcoVPCPeeringConnectionId =
          pVPCPeeringConnectionId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mvpcoDryRun :: Lens' ModifyVPCPeeringConnectionOptions (Maybe Bool)
mvpcoDryRun = lens _mvpcoDryRun (\s a -> s {_mvpcoDryRun = a})

-- | The VPC peering connection options for the accepter VPC.
mvpcoAccepterPeeringConnectionOptions :: Lens' ModifyVPCPeeringConnectionOptions (Maybe PeeringConnectionOptionsRequest)
mvpcoAccepterPeeringConnectionOptions = lens _mvpcoAccepterPeeringConnectionOptions (\s a -> s {_mvpcoAccepterPeeringConnectionOptions = a})

-- | The VPC peering connection options for the requester VPC.
mvpcoRequesterPeeringConnectionOptions :: Lens' ModifyVPCPeeringConnectionOptions (Maybe PeeringConnectionOptionsRequest)
mvpcoRequesterPeeringConnectionOptions = lens _mvpcoRequesterPeeringConnectionOptions (\s a -> s {_mvpcoRequesterPeeringConnectionOptions = a})

-- | The ID of the VPC peering connection.
mvpcoVPCPeeringConnectionId :: Lens' ModifyVPCPeeringConnectionOptions Text
mvpcoVPCPeeringConnectionId = lens _mvpcoVPCPeeringConnectionId (\s a -> s {_mvpcoVPCPeeringConnectionId = a})

instance AWSRequest ModifyVPCPeeringConnectionOptions where
  type
    Rs ModifyVPCPeeringConnectionOptions =
      ModifyVPCPeeringConnectionOptionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyVPCPeeringConnectionOptionsResponse'
            <$> (x .@? "accepterPeeringConnectionOptions")
            <*> (x .@? "requesterPeeringConnectionOptions")
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyVPCPeeringConnectionOptions

instance NFData ModifyVPCPeeringConnectionOptions

instance ToHeaders ModifyVPCPeeringConnectionOptions where
  toHeaders = const mempty

instance ToPath ModifyVPCPeeringConnectionOptions where
  toPath = const "/"

instance ToQuery ModifyVPCPeeringConnectionOptions where
  toQuery ModifyVPCPeeringConnectionOptions' {..} =
    mconcat
      [ "Action"
          =: ("ModifyVpcPeeringConnectionOptions" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _mvpcoDryRun,
        "AccepterPeeringConnectionOptions"
          =: _mvpcoAccepterPeeringConnectionOptions,
        "RequesterPeeringConnectionOptions"
          =: _mvpcoRequesterPeeringConnectionOptions,
        "VpcPeeringConnectionId"
          =: _mvpcoVPCPeeringConnectionId
      ]

-- | /See:/ 'modifyVPCPeeringConnectionOptionsResponse' smart constructor.
data ModifyVPCPeeringConnectionOptionsResponse = ModifyVPCPeeringConnectionOptionsResponse'
  { _mvpcorrsAccepterPeeringConnectionOptions ::
      !( Maybe
           PeeringConnectionOptions
       ),
    _mvpcorrsRequesterPeeringConnectionOptions ::
      !( Maybe
           PeeringConnectionOptions
       ),
    _mvpcorrsResponseStatus ::
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

-- | Creates a value of 'ModifyVPCPeeringConnectionOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvpcorrsAccepterPeeringConnectionOptions' - Information about the VPC peering connection options for the accepter VPC.
--
-- * 'mvpcorrsRequesterPeeringConnectionOptions' - Information about the VPC peering connection options for the requester VPC.
--
-- * 'mvpcorrsResponseStatus' - -- | The response status code.
modifyVPCPeeringConnectionOptionsResponse ::
  -- | 'mvpcorrsResponseStatus'
  Int ->
  ModifyVPCPeeringConnectionOptionsResponse
modifyVPCPeeringConnectionOptionsResponse
  pResponseStatus_ =
    ModifyVPCPeeringConnectionOptionsResponse'
      { _mvpcorrsAccepterPeeringConnectionOptions =
          Nothing,
        _mvpcorrsRequesterPeeringConnectionOptions =
          Nothing,
        _mvpcorrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the VPC peering connection options for the accepter VPC.
mvpcorrsAccepterPeeringConnectionOptions :: Lens' ModifyVPCPeeringConnectionOptionsResponse (Maybe PeeringConnectionOptions)
mvpcorrsAccepterPeeringConnectionOptions = lens _mvpcorrsAccepterPeeringConnectionOptions (\s a -> s {_mvpcorrsAccepterPeeringConnectionOptions = a})

-- | Information about the VPC peering connection options for the requester VPC.
mvpcorrsRequesterPeeringConnectionOptions :: Lens' ModifyVPCPeeringConnectionOptionsResponse (Maybe PeeringConnectionOptions)
mvpcorrsRequesterPeeringConnectionOptions = lens _mvpcorrsRequesterPeeringConnectionOptions (\s a -> s {_mvpcorrsRequesterPeeringConnectionOptions = a})

-- | -- | The response status code.
mvpcorrsResponseStatus :: Lens' ModifyVPCPeeringConnectionOptionsResponse Int
mvpcorrsResponseStatus = lens _mvpcorrsResponseStatus (\s a -> s {_mvpcorrsResponseStatus = a})

instance
  NFData
    ModifyVPCPeeringConnectionOptionsResponse
