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
-- Module      : Network.AWS.EC2.DeleteCarrierGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a carrier gateway.
--
--
-- /Important:/ If you do not delete the route that contains the carrier gateway as the Target, the route is a blackhole route. For information about how to delete a route, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteRoute.html DeleteRoute> .
module Network.AWS.EC2.DeleteCarrierGateway
  ( -- * Creating a Request
    deleteCarrierGateway,
    DeleteCarrierGateway,

    -- * Request Lenses
    dcgDryRun,
    dcgCarrierGatewayId,

    -- * Destructuring the Response
    deleteCarrierGatewayResponse,
    DeleteCarrierGatewayResponse,

    -- * Response Lenses
    ddrsCarrierGateway,
    ddrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteCarrierGateway' smart constructor.
data DeleteCarrierGateway = DeleteCarrierGateway'
  { _dcgDryRun ::
      !(Maybe Bool),
    _dcgCarrierGatewayId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteCarrierGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcgDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dcgCarrierGatewayId' - The ID of the carrier gateway.
deleteCarrierGateway ::
  -- | 'dcgCarrierGatewayId'
  Text ->
  DeleteCarrierGateway
deleteCarrierGateway pCarrierGatewayId_ =
  DeleteCarrierGateway'
    { _dcgDryRun = Nothing,
      _dcgCarrierGatewayId = pCarrierGatewayId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dcgDryRun :: Lens' DeleteCarrierGateway (Maybe Bool)
dcgDryRun = lens _dcgDryRun (\s a -> s {_dcgDryRun = a})

-- | The ID of the carrier gateway.
dcgCarrierGatewayId :: Lens' DeleteCarrierGateway Text
dcgCarrierGatewayId = lens _dcgCarrierGatewayId (\s a -> s {_dcgCarrierGatewayId = a})

instance AWSRequest DeleteCarrierGateway where
  type
    Rs DeleteCarrierGateway =
      DeleteCarrierGatewayResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteCarrierGatewayResponse'
            <$> (x .@? "carrierGateway") <*> (pure (fromEnum s))
      )

instance Hashable DeleteCarrierGateway

instance NFData DeleteCarrierGateway

instance ToHeaders DeleteCarrierGateway where
  toHeaders = const mempty

instance ToPath DeleteCarrierGateway where
  toPath = const "/"

instance ToQuery DeleteCarrierGateway where
  toQuery DeleteCarrierGateway' {..} =
    mconcat
      [ "Action" =: ("DeleteCarrierGateway" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dcgDryRun,
        "CarrierGatewayId" =: _dcgCarrierGatewayId
      ]

-- | /See:/ 'deleteCarrierGatewayResponse' smart constructor.
data DeleteCarrierGatewayResponse = DeleteCarrierGatewayResponse'
  { _ddrsCarrierGateway ::
      !( Maybe
           CarrierGateway
       ),
    _ddrsResponseStatus ::
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

-- | Creates a value of 'DeleteCarrierGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrsCarrierGateway' - Information about the carrier gateway.
--
-- * 'ddrsResponseStatus' - -- | The response status code.
deleteCarrierGatewayResponse ::
  -- | 'ddrsResponseStatus'
  Int ->
  DeleteCarrierGatewayResponse
deleteCarrierGatewayResponse pResponseStatus_ =
  DeleteCarrierGatewayResponse'
    { _ddrsCarrierGateway =
        Nothing,
      _ddrsResponseStatus = pResponseStatus_
    }

-- | Information about the carrier gateway.
ddrsCarrierGateway :: Lens' DeleteCarrierGatewayResponse (Maybe CarrierGateway)
ddrsCarrierGateway = lens _ddrsCarrierGateway (\s a -> s {_ddrsCarrierGateway = a})

-- | -- | The response status code.
ddrsResponseStatus :: Lens' DeleteCarrierGatewayResponse Int
ddrsResponseStatus = lens _ddrsResponseStatus (\s a -> s {_ddrsResponseStatus = a})

instance NFData DeleteCarrierGatewayResponse
