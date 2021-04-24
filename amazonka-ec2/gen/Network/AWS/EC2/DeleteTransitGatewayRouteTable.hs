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
-- Module      : Network.AWS.EC2.DeleteTransitGatewayRouteTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified transit gateway route table. You must disassociate the route table from any transit gateway route tables before you can delete it.
module Network.AWS.EC2.DeleteTransitGatewayRouteTable
  ( -- * Creating a Request
    deleteTransitGatewayRouteTable,
    DeleteTransitGatewayRouteTable,

    -- * Request Lenses
    dtgrtDryRun,
    dtgrtTransitGatewayRouteTableId,

    -- * Destructuring the Response
    deleteTransitGatewayRouteTableResponse,
    DeleteTransitGatewayRouteTableResponse,

    -- * Response Lenses
    dtgrtrtrsTransitGatewayRouteTable,
    dtgrtrtrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTransitGatewayRouteTable' smart constructor.
data DeleteTransitGatewayRouteTable = DeleteTransitGatewayRouteTable'
  { _dtgrtDryRun ::
      !( Maybe
           Bool
       ),
    _dtgrtTransitGatewayRouteTableId ::
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

-- | Creates a value of 'DeleteTransitGatewayRouteTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgrtDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgrtTransitGatewayRouteTableId' - The ID of the transit gateway route table.
deleteTransitGatewayRouteTable ::
  -- | 'dtgrtTransitGatewayRouteTableId'
  Text ->
  DeleteTransitGatewayRouteTable
deleteTransitGatewayRouteTable
  pTransitGatewayRouteTableId_ =
    DeleteTransitGatewayRouteTable'
      { _dtgrtDryRun =
          Nothing,
        _dtgrtTransitGatewayRouteTableId =
          pTransitGatewayRouteTableId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgrtDryRun :: Lens' DeleteTransitGatewayRouteTable (Maybe Bool)
dtgrtDryRun = lens _dtgrtDryRun (\s a -> s {_dtgrtDryRun = a})

-- | The ID of the transit gateway route table.
dtgrtTransitGatewayRouteTableId :: Lens' DeleteTransitGatewayRouteTable Text
dtgrtTransitGatewayRouteTableId = lens _dtgrtTransitGatewayRouteTableId (\s a -> s {_dtgrtTransitGatewayRouteTableId = a})

instance AWSRequest DeleteTransitGatewayRouteTable where
  type
    Rs DeleteTransitGatewayRouteTable =
      DeleteTransitGatewayRouteTableResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTransitGatewayRouteTableResponse'
            <$> (x .@? "transitGatewayRouteTable")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteTransitGatewayRouteTable

instance NFData DeleteTransitGatewayRouteTable

instance ToHeaders DeleteTransitGatewayRouteTable where
  toHeaders = const mempty

instance ToPath DeleteTransitGatewayRouteTable where
  toPath = const "/"

instance ToQuery DeleteTransitGatewayRouteTable where
  toQuery DeleteTransitGatewayRouteTable' {..} =
    mconcat
      [ "Action"
          =: ("DeleteTransitGatewayRouteTable" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dtgrtDryRun,
        "TransitGatewayRouteTableId"
          =: _dtgrtTransitGatewayRouteTableId
      ]

-- | /See:/ 'deleteTransitGatewayRouteTableResponse' smart constructor.
data DeleteTransitGatewayRouteTableResponse = DeleteTransitGatewayRouteTableResponse'
  { _dtgrtrtrsTransitGatewayRouteTable ::
      !( Maybe
           TransitGatewayRouteTable
       ),
    _dtgrtrtrsResponseStatus ::
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

-- | Creates a value of 'DeleteTransitGatewayRouteTableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgrtrtrsTransitGatewayRouteTable' - Information about the deleted transit gateway route table.
--
-- * 'dtgrtrtrsResponseStatus' - -- | The response status code.
deleteTransitGatewayRouteTableResponse ::
  -- | 'dtgrtrtrsResponseStatus'
  Int ->
  DeleteTransitGatewayRouteTableResponse
deleteTransitGatewayRouteTableResponse
  pResponseStatus_ =
    DeleteTransitGatewayRouteTableResponse'
      { _dtgrtrtrsTransitGatewayRouteTable =
          Nothing,
        _dtgrtrtrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the deleted transit gateway route table.
dtgrtrtrsTransitGatewayRouteTable :: Lens' DeleteTransitGatewayRouteTableResponse (Maybe TransitGatewayRouteTable)
dtgrtrtrsTransitGatewayRouteTable = lens _dtgrtrtrsTransitGatewayRouteTable (\s a -> s {_dtgrtrtrsTransitGatewayRouteTable = a})

-- | -- | The response status code.
dtgrtrtrsResponseStatus :: Lens' DeleteTransitGatewayRouteTableResponse Int
dtgrtrtrsResponseStatus = lens _dtgrtrtrsResponseStatus (\s a -> s {_dtgrtrtrsResponseStatus = a})

instance
  NFData
    DeleteTransitGatewayRouteTableResponse
