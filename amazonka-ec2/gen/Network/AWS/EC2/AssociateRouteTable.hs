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
-- Module      : Network.AWS.EC2.AssociateRouteTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a subnet in your VPC or an internet gateway or virtual private gateway attached to your VPC with a route table in your VPC. This association causes traffic from the subnet or gateway to be routed according to the routes in the route table. The action returns an association ID, which you need in order to disassociate the route table later. A route table can be associated with multiple subnets.
--
--
-- For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html Route Tables> in the /Amazon Virtual Private Cloud User Guide/ .
module Network.AWS.EC2.AssociateRouteTable
  ( -- * Creating a Request
    associateRouteTable,
    AssociateRouteTable,

    -- * Request Lenses
    artDryRun,
    artSubnetId,
    artGatewayId,
    artRouteTableId,

    -- * Destructuring the Response
    associateRouteTableResponse,
    AssociateRouteTableResponse,

    -- * Response Lenses
    artrrsAssociationState,
    artrrsAssociationId,
    artrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateRouteTable' smart constructor.
data AssociateRouteTable = AssociateRouteTable'
  { _artDryRun ::
      !(Maybe Bool),
    _artSubnetId :: !(Maybe Text),
    _artGatewayId :: !(Maybe Text),
    _artRouteTableId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssociateRouteTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'artSubnetId' - The ID of the subnet.
--
-- * 'artGatewayId' - The ID of the internet gateway or virtual private gateway.
--
-- * 'artRouteTableId' - The ID of the route table.
associateRouteTable ::
  -- | 'artRouteTableId'
  Text ->
  AssociateRouteTable
associateRouteTable pRouteTableId_ =
  AssociateRouteTable'
    { _artDryRun = Nothing,
      _artSubnetId = Nothing,
      _artGatewayId = Nothing,
      _artRouteTableId = pRouteTableId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
artDryRun :: Lens' AssociateRouteTable (Maybe Bool)
artDryRun = lens _artDryRun (\s a -> s {_artDryRun = a})

-- | The ID of the subnet.
artSubnetId :: Lens' AssociateRouteTable (Maybe Text)
artSubnetId = lens _artSubnetId (\s a -> s {_artSubnetId = a})

-- | The ID of the internet gateway or virtual private gateway.
artGatewayId :: Lens' AssociateRouteTable (Maybe Text)
artGatewayId = lens _artGatewayId (\s a -> s {_artGatewayId = a})

-- | The ID of the route table.
artRouteTableId :: Lens' AssociateRouteTable Text
artRouteTableId = lens _artRouteTableId (\s a -> s {_artRouteTableId = a})

instance AWSRequest AssociateRouteTable where
  type
    Rs AssociateRouteTable =
      AssociateRouteTableResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AssociateRouteTableResponse'
            <$> (x .@? "associationState")
            <*> (x .@? "associationId")
            <*> (pure (fromEnum s))
      )

instance Hashable AssociateRouteTable

instance NFData AssociateRouteTable

instance ToHeaders AssociateRouteTable where
  toHeaders = const mempty

instance ToPath AssociateRouteTable where
  toPath = const "/"

instance ToQuery AssociateRouteTable where
  toQuery AssociateRouteTable' {..} =
    mconcat
      [ "Action" =: ("AssociateRouteTable" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _artDryRun,
        "SubnetId" =: _artSubnetId,
        "GatewayId" =: _artGatewayId,
        "RouteTableId" =: _artRouteTableId
      ]

-- | /See:/ 'associateRouteTableResponse' smart constructor.
data AssociateRouteTableResponse = AssociateRouteTableResponse'
  { _artrrsAssociationState ::
      !( Maybe
           RouteTableAssociationState
       ),
    _artrrsAssociationId ::
      !(Maybe Text),
    _artrrsResponseStatus ::
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

-- | Creates a value of 'AssociateRouteTableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artrrsAssociationState' - The state of the association.
--
-- * 'artrrsAssociationId' - The route table association ID. This ID is required for disassociating the route table.
--
-- * 'artrrsResponseStatus' - -- | The response status code.
associateRouteTableResponse ::
  -- | 'artrrsResponseStatus'
  Int ->
  AssociateRouteTableResponse
associateRouteTableResponse pResponseStatus_ =
  AssociateRouteTableResponse'
    { _artrrsAssociationState =
        Nothing,
      _artrrsAssociationId = Nothing,
      _artrrsResponseStatus = pResponseStatus_
    }

-- | The state of the association.
artrrsAssociationState :: Lens' AssociateRouteTableResponse (Maybe RouteTableAssociationState)
artrrsAssociationState = lens _artrrsAssociationState (\s a -> s {_artrrsAssociationState = a})

-- | The route table association ID. This ID is required for disassociating the route table.
artrrsAssociationId :: Lens' AssociateRouteTableResponse (Maybe Text)
artrrsAssociationId = lens _artrrsAssociationId (\s a -> s {_artrrsAssociationId = a})

-- | -- | The response status code.
artrrsResponseStatus :: Lens' AssociateRouteTableResponse Int
artrrsResponseStatus = lens _artrrsResponseStatus (\s a -> s {_artrrsResponseStatus = a})

instance NFData AssociateRouteTableResponse
