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
-- Module      : Network.AWS.EC2.AssociateClientVPNTargetNetwork
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a target network with a Client VPN endpoint. A target network is a subnet in a VPC. You can associate multiple subnets from the same VPC with a Client VPN endpoint. You can associate only one subnet in each Availability Zone. We recommend that you associate at least two subnets to provide Availability Zone redundancy.
--
--
-- If you specified a VPC when you created the Client VPN endpoint or if you have previous subnet associations, the specified subnet must be in the same VPC. To specify a subnet that's in a different VPC, you must first modify the Client VPN endpoint ('ModifyClientVpnEndpoint' ) and change the VPC that's associated with it.
module Network.AWS.EC2.AssociateClientVPNTargetNetwork
  ( -- * Creating a Request
    associateClientVPNTargetNetwork,
    AssociateClientVPNTargetNetwork,

    -- * Request Lenses
    acvtnDryRun,
    acvtnClientToken,
    acvtnClientVPNEndpointId,
    acvtnSubnetId,

    -- * Destructuring the Response
    associateClientVPNTargetNetworkResponse,
    AssociateClientVPNTargetNetworkResponse,

    -- * Response Lenses
    acvtnrrsStatus,
    acvtnrrsAssociationId,
    acvtnrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateClientVPNTargetNetwork' smart constructor.
data AssociateClientVPNTargetNetwork = AssociateClientVPNTargetNetwork'
  { _acvtnDryRun ::
      !( Maybe
           Bool
       ),
    _acvtnClientToken ::
      !( Maybe
           Text
       ),
    _acvtnClientVPNEndpointId ::
      !Text,
    _acvtnSubnetId ::
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

-- | Creates a value of 'AssociateClientVPNTargetNetwork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvtnDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'acvtnClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- * 'acvtnClientVPNEndpointId' - The ID of the Client VPN endpoint.
--
-- * 'acvtnSubnetId' - The ID of the subnet to associate with the Client VPN endpoint.
associateClientVPNTargetNetwork ::
  -- | 'acvtnClientVPNEndpointId'
  Text ->
  -- | 'acvtnSubnetId'
  Text ->
  AssociateClientVPNTargetNetwork
associateClientVPNTargetNetwork
  pClientVPNEndpointId_
  pSubnetId_ =
    AssociateClientVPNTargetNetwork'
      { _acvtnDryRun =
          Nothing,
        _acvtnClientToken = Nothing,
        _acvtnClientVPNEndpointId =
          pClientVPNEndpointId_,
        _acvtnSubnetId = pSubnetId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
acvtnDryRun :: Lens' AssociateClientVPNTargetNetwork (Maybe Bool)
acvtnDryRun = lens _acvtnDryRun (\s a -> s {_acvtnDryRun = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
acvtnClientToken :: Lens' AssociateClientVPNTargetNetwork (Maybe Text)
acvtnClientToken = lens _acvtnClientToken (\s a -> s {_acvtnClientToken = a})

-- | The ID of the Client VPN endpoint.
acvtnClientVPNEndpointId :: Lens' AssociateClientVPNTargetNetwork Text
acvtnClientVPNEndpointId = lens _acvtnClientVPNEndpointId (\s a -> s {_acvtnClientVPNEndpointId = a})

-- | The ID of the subnet to associate with the Client VPN endpoint.
acvtnSubnetId :: Lens' AssociateClientVPNTargetNetwork Text
acvtnSubnetId = lens _acvtnSubnetId (\s a -> s {_acvtnSubnetId = a})

instance AWSRequest AssociateClientVPNTargetNetwork where
  type
    Rs AssociateClientVPNTargetNetwork =
      AssociateClientVPNTargetNetworkResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AssociateClientVPNTargetNetworkResponse'
            <$> (x .@? "status")
            <*> (x .@? "associationId")
            <*> (pure (fromEnum s))
      )

instance Hashable AssociateClientVPNTargetNetwork

instance NFData AssociateClientVPNTargetNetwork

instance ToHeaders AssociateClientVPNTargetNetwork where
  toHeaders = const mempty

instance ToPath AssociateClientVPNTargetNetwork where
  toPath = const "/"

instance ToQuery AssociateClientVPNTargetNetwork where
  toQuery AssociateClientVPNTargetNetwork' {..} =
    mconcat
      [ "Action"
          =: ("AssociateClientVpnTargetNetwork" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _acvtnDryRun,
        "ClientToken" =: _acvtnClientToken,
        "ClientVpnEndpointId" =: _acvtnClientVPNEndpointId,
        "SubnetId" =: _acvtnSubnetId
      ]

-- | /See:/ 'associateClientVPNTargetNetworkResponse' smart constructor.
data AssociateClientVPNTargetNetworkResponse = AssociateClientVPNTargetNetworkResponse'
  { _acvtnrrsStatus ::
      !( Maybe
           AssociationStatus
       ),
    _acvtnrrsAssociationId ::
      !( Maybe
           Text
       ),
    _acvtnrrsResponseStatus ::
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

-- | Creates a value of 'AssociateClientVPNTargetNetworkResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvtnrrsStatus' - The current state of the target network association.
--
-- * 'acvtnrrsAssociationId' - The unique ID of the target network association.
--
-- * 'acvtnrrsResponseStatus' - -- | The response status code.
associateClientVPNTargetNetworkResponse ::
  -- | 'acvtnrrsResponseStatus'
  Int ->
  AssociateClientVPNTargetNetworkResponse
associateClientVPNTargetNetworkResponse
  pResponseStatus_ =
    AssociateClientVPNTargetNetworkResponse'
      { _acvtnrrsStatus =
          Nothing,
        _acvtnrrsAssociationId = Nothing,
        _acvtnrrsResponseStatus =
          pResponseStatus_
      }

-- | The current state of the target network association.
acvtnrrsStatus :: Lens' AssociateClientVPNTargetNetworkResponse (Maybe AssociationStatus)
acvtnrrsStatus = lens _acvtnrrsStatus (\s a -> s {_acvtnrrsStatus = a})

-- | The unique ID of the target network association.
acvtnrrsAssociationId :: Lens' AssociateClientVPNTargetNetworkResponse (Maybe Text)
acvtnrrsAssociationId = lens _acvtnrrsAssociationId (\s a -> s {_acvtnrrsAssociationId = a})

-- | -- | The response status code.
acvtnrrsResponseStatus :: Lens' AssociateClientVPNTargetNetworkResponse Int
acvtnrrsResponseStatus = lens _acvtnrrsResponseStatus (\s a -> s {_acvtnrrsResponseStatus = a})

instance
  NFData
    AssociateClientVPNTargetNetworkResponse
