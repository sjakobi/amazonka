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
-- Module      : Network.AWS.GameLift.DeleteVPCPeeringConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a VPC peering connection. To delete the connection, you must have a valid authorization for the VPC peering connection that you want to delete. You can check for an authorization by calling 'DescribeVpcPeeringAuthorizations' or request a new one using 'CreateVpcPeeringAuthorization' .
--
--
-- Once a valid authorization exists, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Identify the connection to delete by the connection ID and fleet ID. If successful, the connection is removed.
--
--     * 'CreateVpcPeeringAuthorization'
--
--     * 'DescribeVpcPeeringAuthorizations'
--
--     * 'DeleteVpcPeeringAuthorization'
--
--     * 'CreateVpcPeeringConnection'
--
--     * 'DescribeVpcPeeringConnections'
--
--     * 'DeleteVpcPeeringConnection'
module Network.AWS.GameLift.DeleteVPCPeeringConnection
  ( -- * Creating a Request
    deleteVPCPeeringConnection,
    DeleteVPCPeeringConnection,

    -- * Request Lenses
    dvpcpcFleetId,
    dvpcpcVPCPeeringConnectionId,

    -- * Destructuring the Response
    deleteVPCPeeringConnectionResponse,
    DeleteVPCPeeringConnectionResponse,

    -- * Response Lenses
    dvpcpcrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'deleteVPCPeeringConnection' smart constructor.
data DeleteVPCPeeringConnection = DeleteVPCPeeringConnection'
  { _dvpcpcFleetId ::
      !Text,
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
-- * 'dvpcpcFleetId' - A unique identifier for a fleet. This fleet specified must match the fleet referenced in the VPC peering connection record. You can use either the fleet ID or ARN value.
--
-- * 'dvpcpcVPCPeeringConnectionId' - A unique identifier for a VPC peering connection. This value is included in the 'VpcPeeringConnection' object, which can be retrieved by calling 'DescribeVpcPeeringConnections' .
deleteVPCPeeringConnection ::
  -- | 'dvpcpcFleetId'
  Text ->
  -- | 'dvpcpcVPCPeeringConnectionId'
  Text ->
  DeleteVPCPeeringConnection
deleteVPCPeeringConnection
  pFleetId_
  pVPCPeeringConnectionId_ =
    DeleteVPCPeeringConnection'
      { _dvpcpcFleetId =
          pFleetId_,
        _dvpcpcVPCPeeringConnectionId =
          pVPCPeeringConnectionId_
      }

-- | A unique identifier for a fleet. This fleet specified must match the fleet referenced in the VPC peering connection record. You can use either the fleet ID or ARN value.
dvpcpcFleetId :: Lens' DeleteVPCPeeringConnection Text
dvpcpcFleetId = lens _dvpcpcFleetId (\s a -> s {_dvpcpcFleetId = a})

-- | A unique identifier for a VPC peering connection. This value is included in the 'VpcPeeringConnection' object, which can be retrieved by calling 'DescribeVpcPeeringConnections' .
dvpcpcVPCPeeringConnectionId :: Lens' DeleteVPCPeeringConnection Text
dvpcpcVPCPeeringConnectionId = lens _dvpcpcVPCPeeringConnectionId (\s a -> s {_dvpcpcVPCPeeringConnectionId = a})

instance AWSRequest DeleteVPCPeeringConnection where
  type
    Rs DeleteVPCPeeringConnection =
      DeleteVPCPeeringConnectionResponse
  request = postJSON gameLift
  response =
    receiveEmpty
      ( \s h x ->
          DeleteVPCPeeringConnectionResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteVPCPeeringConnection

instance NFData DeleteVPCPeeringConnection

instance ToHeaders DeleteVPCPeeringConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "GameLift.DeleteVpcPeeringConnection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteVPCPeeringConnection where
  toJSON DeleteVPCPeeringConnection' {..} =
    object
      ( catMaybes
          [ Just ("FleetId" .= _dvpcpcFleetId),
            Just
              ( "VpcPeeringConnectionId"
                  .= _dvpcpcVPCPeeringConnectionId
              )
          ]
      )

instance ToPath DeleteVPCPeeringConnection where
  toPath = const "/"

instance ToQuery DeleteVPCPeeringConnection where
  toQuery = const mempty

-- | /See:/ 'deleteVPCPeeringConnectionResponse' smart constructor.
newtype DeleteVPCPeeringConnectionResponse = DeleteVPCPeeringConnectionResponse'
  { _dvpcpcrrsResponseStatus ::
      Int
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
-- * 'dvpcpcrrsResponseStatus' - -- | The response status code.
deleteVPCPeeringConnectionResponse ::
  -- | 'dvpcpcrrsResponseStatus'
  Int ->
  DeleteVPCPeeringConnectionResponse
deleteVPCPeeringConnectionResponse pResponseStatus_ =
  DeleteVPCPeeringConnectionResponse'
    { _dvpcpcrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dvpcpcrrsResponseStatus :: Lens' DeleteVPCPeeringConnectionResponse Int
dvpcpcrrsResponseStatus = lens _dvpcpcrrsResponseStatus (\s a -> s {_dvpcpcrrsResponseStatus = a})

instance NFData DeleteVPCPeeringConnectionResponse
