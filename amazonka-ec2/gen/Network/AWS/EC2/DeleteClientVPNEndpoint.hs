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
-- Module      : Network.AWS.EC2.DeleteClientVPNEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Client VPN endpoint. You must disassociate all target networks before you can delete a Client VPN endpoint.
module Network.AWS.EC2.DeleteClientVPNEndpoint
  ( -- * Creating a Request
    deleteClientVPNEndpoint,
    DeleteClientVPNEndpoint,

    -- * Request Lenses
    dcvpneDryRun,
    dcvpneClientVPNEndpointId,

    -- * Destructuring the Response
    deleteClientVPNEndpointResponse,
    DeleteClientVPNEndpointResponse,

    -- * Response Lenses
    dcvpnerrsStatus,
    dcvpnerrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteClientVPNEndpoint' smart constructor.
data DeleteClientVPNEndpoint = DeleteClientVPNEndpoint'
  { _dcvpneDryRun ::
      !(Maybe Bool),
    _dcvpneClientVPNEndpointId ::
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

-- | Creates a value of 'DeleteClientVPNEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvpneDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dcvpneClientVPNEndpointId' - The ID of the Client VPN to be deleted.
deleteClientVPNEndpoint ::
  -- | 'dcvpneClientVPNEndpointId'
  Text ->
  DeleteClientVPNEndpoint
deleteClientVPNEndpoint pClientVPNEndpointId_ =
  DeleteClientVPNEndpoint'
    { _dcvpneDryRun = Nothing,
      _dcvpneClientVPNEndpointId = pClientVPNEndpointId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dcvpneDryRun :: Lens' DeleteClientVPNEndpoint (Maybe Bool)
dcvpneDryRun = lens _dcvpneDryRun (\s a -> s {_dcvpneDryRun = a})

-- | The ID of the Client VPN to be deleted.
dcvpneClientVPNEndpointId :: Lens' DeleteClientVPNEndpoint Text
dcvpneClientVPNEndpointId = lens _dcvpneClientVPNEndpointId (\s a -> s {_dcvpneClientVPNEndpointId = a})

instance AWSRequest DeleteClientVPNEndpoint where
  type
    Rs DeleteClientVPNEndpoint =
      DeleteClientVPNEndpointResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteClientVPNEndpointResponse'
            <$> (x .@? "status") <*> (pure (fromEnum s))
      )

instance Hashable DeleteClientVPNEndpoint

instance NFData DeleteClientVPNEndpoint

instance ToHeaders DeleteClientVPNEndpoint where
  toHeaders = const mempty

instance ToPath DeleteClientVPNEndpoint where
  toPath = const "/"

instance ToQuery DeleteClientVPNEndpoint where
  toQuery DeleteClientVPNEndpoint' {..} =
    mconcat
      [ "Action"
          =: ("DeleteClientVpnEndpoint" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dcvpneDryRun,
        "ClientVpnEndpointId" =: _dcvpneClientVPNEndpointId
      ]

-- | /See:/ 'deleteClientVPNEndpointResponse' smart constructor.
data DeleteClientVPNEndpointResponse = DeleteClientVPNEndpointResponse'
  { _dcvpnerrsStatus ::
      !( Maybe
           ClientVPNEndpointStatus
       ),
    _dcvpnerrsResponseStatus ::
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

-- | Creates a value of 'DeleteClientVPNEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvpnerrsStatus' - The current state of the Client VPN endpoint.
--
-- * 'dcvpnerrsResponseStatus' - -- | The response status code.
deleteClientVPNEndpointResponse ::
  -- | 'dcvpnerrsResponseStatus'
  Int ->
  DeleteClientVPNEndpointResponse
deleteClientVPNEndpointResponse pResponseStatus_ =
  DeleteClientVPNEndpointResponse'
    { _dcvpnerrsStatus =
        Nothing,
      _dcvpnerrsResponseStatus =
        pResponseStatus_
    }

-- | The current state of the Client VPN endpoint.
dcvpnerrsStatus :: Lens' DeleteClientVPNEndpointResponse (Maybe ClientVPNEndpointStatus)
dcvpnerrsStatus = lens _dcvpnerrsStatus (\s a -> s {_dcvpnerrsStatus = a})

-- | -- | The response status code.
dcvpnerrsResponseStatus :: Lens' DeleteClientVPNEndpointResponse Int
dcvpnerrsResponseStatus = lens _dcvpnerrsResponseStatus (\s a -> s {_dcvpnerrsResponseStatus = a})

instance NFData DeleteClientVPNEndpointResponse
