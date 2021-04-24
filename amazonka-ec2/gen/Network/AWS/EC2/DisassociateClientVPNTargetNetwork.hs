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
-- Module      : Network.AWS.EC2.DisassociateClientVPNTargetNetwork
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a target network from the specified Client VPN endpoint. When you disassociate the last target network from a Client VPN, the following happens:
--
--
--     * The route that was automatically added for the VPC is deleted
--
--     * All active client connections are terminated
--
--     * New client connections are disallowed
--
--     * The Client VPN endpoint's status changes to @pending-associate@
module Network.AWS.EC2.DisassociateClientVPNTargetNetwork
  ( -- * Creating a Request
    disassociateClientVPNTargetNetwork,
    DisassociateClientVPNTargetNetwork,

    -- * Request Lenses
    dcvtnDryRun,
    dcvtnClientVPNEndpointId,
    dcvtnAssociationId,

    -- * Destructuring the Response
    disassociateClientVPNTargetNetworkResponse,
    DisassociateClientVPNTargetNetworkResponse,

    -- * Response Lenses
    dcvtnrrsStatus,
    dcvtnrrsAssociationId,
    dcvtnrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateClientVPNTargetNetwork' smart constructor.
data DisassociateClientVPNTargetNetwork = DisassociateClientVPNTargetNetwork'
  { _dcvtnDryRun ::
      !( Maybe
           Bool
       ),
    _dcvtnClientVPNEndpointId ::
      !Text,
    _dcvtnAssociationId ::
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

-- | Creates a value of 'DisassociateClientVPNTargetNetwork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvtnDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dcvtnClientVPNEndpointId' - The ID of the Client VPN endpoint from which to disassociate the target network.
--
-- * 'dcvtnAssociationId' - The ID of the target network association.
disassociateClientVPNTargetNetwork ::
  -- | 'dcvtnClientVPNEndpointId'
  Text ->
  -- | 'dcvtnAssociationId'
  Text ->
  DisassociateClientVPNTargetNetwork
disassociateClientVPNTargetNetwork
  pClientVPNEndpointId_
  pAssociationId_ =
    DisassociateClientVPNTargetNetwork'
      { _dcvtnDryRun =
          Nothing,
        _dcvtnClientVPNEndpointId =
          pClientVPNEndpointId_,
        _dcvtnAssociationId = pAssociationId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dcvtnDryRun :: Lens' DisassociateClientVPNTargetNetwork (Maybe Bool)
dcvtnDryRun = lens _dcvtnDryRun (\s a -> s {_dcvtnDryRun = a})

-- | The ID of the Client VPN endpoint from which to disassociate the target network.
dcvtnClientVPNEndpointId :: Lens' DisassociateClientVPNTargetNetwork Text
dcvtnClientVPNEndpointId = lens _dcvtnClientVPNEndpointId (\s a -> s {_dcvtnClientVPNEndpointId = a})

-- | The ID of the target network association.
dcvtnAssociationId :: Lens' DisassociateClientVPNTargetNetwork Text
dcvtnAssociationId = lens _dcvtnAssociationId (\s a -> s {_dcvtnAssociationId = a})

instance
  AWSRequest
    DisassociateClientVPNTargetNetwork
  where
  type
    Rs DisassociateClientVPNTargetNetwork =
      DisassociateClientVPNTargetNetworkResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DisassociateClientVPNTargetNetworkResponse'
            <$> (x .@? "status")
            <*> (x .@? "associationId")
            <*> (pure (fromEnum s))
      )

instance Hashable DisassociateClientVPNTargetNetwork

instance NFData DisassociateClientVPNTargetNetwork

instance ToHeaders DisassociateClientVPNTargetNetwork where
  toHeaders = const mempty

instance ToPath DisassociateClientVPNTargetNetwork where
  toPath = const "/"

instance ToQuery DisassociateClientVPNTargetNetwork where
  toQuery DisassociateClientVPNTargetNetwork' {..} =
    mconcat
      [ "Action"
          =: ("DisassociateClientVpnTargetNetwork" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dcvtnDryRun,
        "ClientVpnEndpointId" =: _dcvtnClientVPNEndpointId,
        "AssociationId" =: _dcvtnAssociationId
      ]

-- | /See:/ 'disassociateClientVPNTargetNetworkResponse' smart constructor.
data DisassociateClientVPNTargetNetworkResponse = DisassociateClientVPNTargetNetworkResponse'
  { _dcvtnrrsStatus ::
      !( Maybe
           AssociationStatus
       ),
    _dcvtnrrsAssociationId ::
      !( Maybe
           Text
       ),
    _dcvtnrrsResponseStatus ::
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

-- | Creates a value of 'DisassociateClientVPNTargetNetworkResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvtnrrsStatus' - The current state of the target network association.
--
-- * 'dcvtnrrsAssociationId' - The ID of the target network association.
--
-- * 'dcvtnrrsResponseStatus' - -- | The response status code.
disassociateClientVPNTargetNetworkResponse ::
  -- | 'dcvtnrrsResponseStatus'
  Int ->
  DisassociateClientVPNTargetNetworkResponse
disassociateClientVPNTargetNetworkResponse
  pResponseStatus_ =
    DisassociateClientVPNTargetNetworkResponse'
      { _dcvtnrrsStatus =
          Nothing,
        _dcvtnrrsAssociationId =
          Nothing,
        _dcvtnrrsResponseStatus =
          pResponseStatus_
      }

-- | The current state of the target network association.
dcvtnrrsStatus :: Lens' DisassociateClientVPNTargetNetworkResponse (Maybe AssociationStatus)
dcvtnrrsStatus = lens _dcvtnrrsStatus (\s a -> s {_dcvtnrrsStatus = a})

-- | The ID of the target network association.
dcvtnrrsAssociationId :: Lens' DisassociateClientVPNTargetNetworkResponse (Maybe Text)
dcvtnrrsAssociationId = lens _dcvtnrrsAssociationId (\s a -> s {_dcvtnrrsAssociationId = a})

-- | -- | The response status code.
dcvtnrrsResponseStatus :: Lens' DisassociateClientVPNTargetNetworkResponse Int
dcvtnrrsResponseStatus = lens _dcvtnrrsResponseStatus (\s a -> s {_dcvtnrrsResponseStatus = a})

instance
  NFData
    DisassociateClientVPNTargetNetworkResponse
