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
-- Module      : Network.AWS.EC2.DeleteTransitGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified transit gateway.
module Network.AWS.EC2.DeleteTransitGateway
  ( -- * Creating a Request
    deleteTransitGateway,
    DeleteTransitGateway,

    -- * Request Lenses
    dtgtDryRun,
    dtgtTransitGatewayId,

    -- * Destructuring the Response
    deleteTransitGatewayResponse,
    DeleteTransitGatewayResponse,

    -- * Response Lenses
    dtgrrsTransitGateway,
    dtgrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTransitGateway' smart constructor.
data DeleteTransitGateway = DeleteTransitGateway'
  { _dtgtDryRun ::
      !(Maybe Bool),
    _dtgtTransitGatewayId ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTransitGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgtDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgtTransitGatewayId' - The ID of the transit gateway.
deleteTransitGateway ::
  -- | 'dtgtTransitGatewayId'
  Text ->
  DeleteTransitGateway
deleteTransitGateway pTransitGatewayId_ =
  DeleteTransitGateway'
    { _dtgtDryRun = Nothing,
      _dtgtTransitGatewayId = pTransitGatewayId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgtDryRun :: Lens' DeleteTransitGateway (Maybe Bool)
dtgtDryRun = lens _dtgtDryRun (\s a -> s {_dtgtDryRun = a})

-- | The ID of the transit gateway.
dtgtTransitGatewayId :: Lens' DeleteTransitGateway Text
dtgtTransitGatewayId = lens _dtgtTransitGatewayId (\s a -> s {_dtgtTransitGatewayId = a})

instance AWSRequest DeleteTransitGateway where
  type
    Rs DeleteTransitGateway =
      DeleteTransitGatewayResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTransitGatewayResponse'
            <$> (x .@? "transitGateway") <*> (pure (fromEnum s))
      )

instance Hashable DeleteTransitGateway

instance NFData DeleteTransitGateway

instance ToHeaders DeleteTransitGateway where
  toHeaders = const mempty

instance ToPath DeleteTransitGateway where
  toPath = const "/"

instance ToQuery DeleteTransitGateway where
  toQuery DeleteTransitGateway' {..} =
    mconcat
      [ "Action" =: ("DeleteTransitGateway" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dtgtDryRun,
        "TransitGatewayId" =: _dtgtTransitGatewayId
      ]

-- | /See:/ 'deleteTransitGatewayResponse' smart constructor.
data DeleteTransitGatewayResponse = DeleteTransitGatewayResponse'
  { _dtgrrsTransitGateway ::
      !( Maybe
           TransitGateway
       ),
    _dtgrrsResponseStatus ::
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

-- | Creates a value of 'DeleteTransitGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgrrsTransitGateway' - Information about the deleted transit gateway.
--
-- * 'dtgrrsResponseStatus' - -- | The response status code.
deleteTransitGatewayResponse ::
  -- | 'dtgrrsResponseStatus'
  Int ->
  DeleteTransitGatewayResponse
deleteTransitGatewayResponse pResponseStatus_ =
  DeleteTransitGatewayResponse'
    { _dtgrrsTransitGateway =
        Nothing,
      _dtgrrsResponseStatus = pResponseStatus_
    }

-- | Information about the deleted transit gateway.
dtgrrsTransitGateway :: Lens' DeleteTransitGatewayResponse (Maybe TransitGateway)
dtgrrsTransitGateway = lens _dtgrrsTransitGateway (\s a -> s {_dtgrrsTransitGateway = a})

-- | -- | The response status code.
dtgrrsResponseStatus :: Lens' DeleteTransitGatewayResponse Int
dtgrrsResponseStatus = lens _dtgrrsResponseStatus (\s a -> s {_dtgrrsResponseStatus = a})

instance NFData DeleteTransitGatewayResponse
