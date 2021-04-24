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
-- Module      : Network.AWS.EC2.DeleteTransitGatewayMulticastDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified transit gateway multicast domain.
module Network.AWS.EC2.DeleteTransitGatewayMulticastDomain
  ( -- * Creating a Request
    deleteTransitGatewayMulticastDomain,
    DeleteTransitGatewayMulticastDomain,

    -- * Request Lenses
    deleDryRun,
    deleTransitGatewayMulticastDomainId,

    -- * Destructuring the Response
    deleteTransitGatewayMulticastDomainResponse,
    DeleteTransitGatewayMulticastDomainResponse,

    -- * Response Lenses
    dtgmdrrsTransitGatewayMulticastDomain,
    dtgmdrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTransitGatewayMulticastDomain' smart constructor.
data DeleteTransitGatewayMulticastDomain = DeleteTransitGatewayMulticastDomain'
  { _deleDryRun ::
      !( Maybe
           Bool
       ),
    _deleTransitGatewayMulticastDomainId ::
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

-- | Creates a value of 'DeleteTransitGatewayMulticastDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deleDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'deleTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
deleteTransitGatewayMulticastDomain ::
  -- | 'deleTransitGatewayMulticastDomainId'
  Text ->
  DeleteTransitGatewayMulticastDomain
deleteTransitGatewayMulticastDomain
  pTransitGatewayMulticastDomainId_ =
    DeleteTransitGatewayMulticastDomain'
      { _deleDryRun =
          Nothing,
        _deleTransitGatewayMulticastDomainId =
          pTransitGatewayMulticastDomainId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
deleDryRun :: Lens' DeleteTransitGatewayMulticastDomain (Maybe Bool)
deleDryRun = lens _deleDryRun (\s a -> s {_deleDryRun = a})

-- | The ID of the transit gateway multicast domain.
deleTransitGatewayMulticastDomainId :: Lens' DeleteTransitGatewayMulticastDomain Text
deleTransitGatewayMulticastDomainId = lens _deleTransitGatewayMulticastDomainId (\s a -> s {_deleTransitGatewayMulticastDomainId = a})

instance
  AWSRequest
    DeleteTransitGatewayMulticastDomain
  where
  type
    Rs DeleteTransitGatewayMulticastDomain =
      DeleteTransitGatewayMulticastDomainResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTransitGatewayMulticastDomainResponse'
            <$> (x .@? "transitGatewayMulticastDomain")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteTransitGatewayMulticastDomain

instance NFData DeleteTransitGatewayMulticastDomain

instance
  ToHeaders
    DeleteTransitGatewayMulticastDomain
  where
  toHeaders = const mempty

instance ToPath DeleteTransitGatewayMulticastDomain where
  toPath = const "/"

instance ToQuery DeleteTransitGatewayMulticastDomain where
  toQuery DeleteTransitGatewayMulticastDomain' {..} =
    mconcat
      [ "Action"
          =: ( "DeleteTransitGatewayMulticastDomain" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _deleDryRun,
        "TransitGatewayMulticastDomainId"
          =: _deleTransitGatewayMulticastDomainId
      ]

-- | /See:/ 'deleteTransitGatewayMulticastDomainResponse' smart constructor.
data DeleteTransitGatewayMulticastDomainResponse = DeleteTransitGatewayMulticastDomainResponse'
  { _dtgmdrrsTransitGatewayMulticastDomain ::
      !( Maybe
           TransitGatewayMulticastDomain
       ),
    _dtgmdrrsResponseStatus ::
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

-- | Creates a value of 'DeleteTransitGatewayMulticastDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgmdrrsTransitGatewayMulticastDomain' - Information about the deleted transit gateway multicast domain.
--
-- * 'dtgmdrrsResponseStatus' - -- | The response status code.
deleteTransitGatewayMulticastDomainResponse ::
  -- | 'dtgmdrrsResponseStatus'
  Int ->
  DeleteTransitGatewayMulticastDomainResponse
deleteTransitGatewayMulticastDomainResponse
  pResponseStatus_ =
    DeleteTransitGatewayMulticastDomainResponse'
      { _dtgmdrrsTransitGatewayMulticastDomain =
          Nothing,
        _dtgmdrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the deleted transit gateway multicast domain.
dtgmdrrsTransitGatewayMulticastDomain :: Lens' DeleteTransitGatewayMulticastDomainResponse (Maybe TransitGatewayMulticastDomain)
dtgmdrrsTransitGatewayMulticastDomain = lens _dtgmdrrsTransitGatewayMulticastDomain (\s a -> s {_dtgmdrrsTransitGatewayMulticastDomain = a})

-- | -- | The response status code.
dtgmdrrsResponseStatus :: Lens' DeleteTransitGatewayMulticastDomainResponse Int
dtgmdrrsResponseStatus = lens _dtgmdrrsResponseStatus (\s a -> s {_dtgmdrrsResponseStatus = a})

instance
  NFData
    DeleteTransitGatewayMulticastDomainResponse
