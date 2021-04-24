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
-- Module      : Network.AWS.EC2.DeleteVPCEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes one or more specified VPC endpoints. You can delete any of the following types of VPC endpoints.
--
--
--     * Gateway endpoint,
--
--     * Gateway Load Balancer endpoint,
--
--     * Interface endpoint
--
--
--
-- The following rules apply when you delete a VPC endpoint:
--
--     * When you delete a gateway endpoint, we delete the endpoint routes in the route tables that are associated with the endpoint.
--
--     * When you delete a Gateway Load Balancer endpoint, we delete the endpoint network interfaces.
--
-- You can only delete Gateway Load Balancer endpoints when the routes that are associated with the endpoint are deleted.
--
--     * When you delete an interface endpoint, we delete the endpoint network interfaces.
module Network.AWS.EC2.DeleteVPCEndpoints
  ( -- * Creating a Request
    deleteVPCEndpoints,
    DeleteVPCEndpoints,

    -- * Request Lenses
    dveDryRun,
    dveVPCEndpointIds,

    -- * Destructuring the Response
    deleteVPCEndpointsResponse,
    DeleteVPCEndpointsResponse,

    -- * Response Lenses
    dverrsUnsuccessful,
    dverrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DeleteVpcEndpoints.
--
--
--
-- /See:/ 'deleteVPCEndpoints' smart constructor.
data DeleteVPCEndpoints = DeleteVPCEndpoints'
  { _dveDryRun ::
      !(Maybe Bool),
    _dveVPCEndpointIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteVPCEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dveDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dveVPCEndpointIds' - One or more VPC endpoint IDs.
deleteVPCEndpoints ::
  DeleteVPCEndpoints
deleteVPCEndpoints =
  DeleteVPCEndpoints'
    { _dveDryRun = Nothing,
      _dveVPCEndpointIds = mempty
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dveDryRun :: Lens' DeleteVPCEndpoints (Maybe Bool)
dveDryRun = lens _dveDryRun (\s a -> s {_dveDryRun = a})

-- | One or more VPC endpoint IDs.
dveVPCEndpointIds :: Lens' DeleteVPCEndpoints [Text]
dveVPCEndpointIds = lens _dveVPCEndpointIds (\s a -> s {_dveVPCEndpointIds = a}) . _Coerce

instance AWSRequest DeleteVPCEndpoints where
  type
    Rs DeleteVPCEndpoints =
      DeleteVPCEndpointsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteVPCEndpointsResponse'
            <$> ( x .@? "unsuccessful" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteVPCEndpoints

instance NFData DeleteVPCEndpoints

instance ToHeaders DeleteVPCEndpoints where
  toHeaders = const mempty

instance ToPath DeleteVPCEndpoints where
  toPath = const "/"

instance ToQuery DeleteVPCEndpoints where
  toQuery DeleteVPCEndpoints' {..} =
    mconcat
      [ "Action" =: ("DeleteVpcEndpoints" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dveDryRun,
        toQueryList "VpcEndpointId" _dveVPCEndpointIds
      ]

-- | Contains the output of DeleteVpcEndpoints.
--
--
--
-- /See:/ 'deleteVPCEndpointsResponse' smart constructor.
data DeleteVPCEndpointsResponse = DeleteVPCEndpointsResponse'
  { _dverrsUnsuccessful ::
      !( Maybe
           [UnsuccessfulItem]
       ),
    _dverrsResponseStatus ::
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

-- | Creates a value of 'DeleteVPCEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dverrsUnsuccessful' - Information about the VPC endpoints that were not successfully deleted.
--
-- * 'dverrsResponseStatus' - -- | The response status code.
deleteVPCEndpointsResponse ::
  -- | 'dverrsResponseStatus'
  Int ->
  DeleteVPCEndpointsResponse
deleteVPCEndpointsResponse pResponseStatus_ =
  DeleteVPCEndpointsResponse'
    { _dverrsUnsuccessful =
        Nothing,
      _dverrsResponseStatus = pResponseStatus_
    }

-- | Information about the VPC endpoints that were not successfully deleted.
dverrsUnsuccessful :: Lens' DeleteVPCEndpointsResponse [UnsuccessfulItem]
dverrsUnsuccessful = lens _dverrsUnsuccessful (\s a -> s {_dverrsUnsuccessful = a}) . _Default . _Coerce

-- | -- | The response status code.
dverrsResponseStatus :: Lens' DeleteVPCEndpointsResponse Int
dverrsResponseStatus = lens _dverrsResponseStatus (\s a -> s {_dverrsResponseStatus = a})

instance NFData DeleteVPCEndpointsResponse
