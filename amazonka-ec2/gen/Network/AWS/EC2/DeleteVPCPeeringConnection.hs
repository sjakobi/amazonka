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
-- Module      : Network.AWS.EC2.DeleteVPCPeeringConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a VPC peering connection. Either the owner of the requester VPC or the owner of the accepter VPC can delete the VPC peering connection if it's in the @active@ state. The owner of the requester VPC can delete a VPC peering connection in the @pending-acceptance@ state. You cannot delete a VPC peering connection that's in the @failed@ state.
module Network.AWS.EC2.DeleteVPCPeeringConnection
  ( -- * Creating a Request
    deleteVPCPeeringConnection,
    DeleteVPCPeeringConnection,

    -- * Request Lenses
    dvpcpcDryRun,
    dvpcpcVPCPeeringConnectionId,

    -- * Destructuring the Response
    deleteVPCPeeringConnectionResponse,
    DeleteVPCPeeringConnectionResponse,

    -- * Response Lenses
    dvpcpcrrsReturn,
    dvpcpcrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteVPCPeeringConnection' smart constructor.
data DeleteVPCPeeringConnection = DeleteVPCPeeringConnection'
  { _dvpcpcDryRun ::
      !(Maybe Bool),
    _dvpcpcVPCPeeringConnectionId ::
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

-- | Creates a value of 'DeleteVPCPeeringConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpcpcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dvpcpcVPCPeeringConnectionId' - The ID of the VPC peering connection.
deleteVPCPeeringConnection ::
  -- | 'dvpcpcVPCPeeringConnectionId'
  Text ->
  DeleteVPCPeeringConnection
deleteVPCPeeringConnection pVPCPeeringConnectionId_ =
  DeleteVPCPeeringConnection'
    { _dvpcpcDryRun =
        Nothing,
      _dvpcpcVPCPeeringConnectionId =
        pVPCPeeringConnectionId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dvpcpcDryRun :: Lens' DeleteVPCPeeringConnection (Maybe Bool)
dvpcpcDryRun = lens _dvpcpcDryRun (\s a -> s {_dvpcpcDryRun = a})

-- | The ID of the VPC peering connection.
dvpcpcVPCPeeringConnectionId :: Lens' DeleteVPCPeeringConnection Text
dvpcpcVPCPeeringConnectionId = lens _dvpcpcVPCPeeringConnectionId (\s a -> s {_dvpcpcVPCPeeringConnectionId = a})

instance AWSRequest DeleteVPCPeeringConnection where
  type
    Rs DeleteVPCPeeringConnection =
      DeleteVPCPeeringConnectionResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteVPCPeeringConnectionResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable DeleteVPCPeeringConnection

instance NFData DeleteVPCPeeringConnection

instance ToHeaders DeleteVPCPeeringConnection where
  toHeaders = const mempty

instance ToPath DeleteVPCPeeringConnection where
  toPath = const "/"

instance ToQuery DeleteVPCPeeringConnection where
  toQuery DeleteVPCPeeringConnection' {..} =
    mconcat
      [ "Action"
          =: ("DeleteVpcPeeringConnection" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dvpcpcDryRun,
        "VpcPeeringConnectionId"
          =: _dvpcpcVPCPeeringConnectionId
      ]

-- | /See:/ 'deleteVPCPeeringConnectionResponse' smart constructor.
data DeleteVPCPeeringConnectionResponse = DeleteVPCPeeringConnectionResponse'
  { _dvpcpcrrsReturn ::
      !( Maybe
           Bool
       ),
    _dvpcpcrrsResponseStatus ::
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

-- | Creates a value of 'DeleteVPCPeeringConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpcpcrrsReturn' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- * 'dvpcpcrrsResponseStatus' - -- | The response status code.
deleteVPCPeeringConnectionResponse ::
  -- | 'dvpcpcrrsResponseStatus'
  Int ->
  DeleteVPCPeeringConnectionResponse
deleteVPCPeeringConnectionResponse pResponseStatus_ =
  DeleteVPCPeeringConnectionResponse'
    { _dvpcpcrrsReturn =
        Nothing,
      _dvpcpcrrsResponseStatus =
        pResponseStatus_
    }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
dvpcpcrrsReturn :: Lens' DeleteVPCPeeringConnectionResponse (Maybe Bool)
dvpcpcrrsReturn = lens _dvpcpcrrsReturn (\s a -> s {_dvpcpcrrsReturn = a})

-- | -- | The response status code.
dvpcpcrrsResponseStatus :: Lens' DeleteVPCPeeringConnectionResponse Int
dvpcpcrrsResponseStatus = lens _dvpcpcrrsResponseStatus (\s a -> s {_dvpcpcrrsResponseStatus = a})

instance NFData DeleteVPCPeeringConnectionResponse
