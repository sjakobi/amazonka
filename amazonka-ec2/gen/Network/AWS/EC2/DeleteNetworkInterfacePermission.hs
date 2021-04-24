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
-- Module      : Network.AWS.EC2.DeleteNetworkInterfacePermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a permission for a network interface. By default, you cannot delete the permission if the account for which you're removing the permission has attached the network interface to an instance. However, you can force delete the permission, regardless of any attachment.
module Network.AWS.EC2.DeleteNetworkInterfacePermission
  ( -- * Creating a Request
    deleteNetworkInterfacePermission,
    DeleteNetworkInterfacePermission,

    -- * Request Lenses
    delDryRun,
    delForce,
    delNetworkInterfacePermissionId,

    -- * Destructuring the Response
    deleteNetworkInterfacePermissionResponse,
    DeleteNetworkInterfacePermissionResponse,

    -- * Response Lenses
    delrsReturn,
    delrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DeleteNetworkInterfacePermission.
--
--
--
-- /See:/ 'deleteNetworkInterfacePermission' smart constructor.
data DeleteNetworkInterfacePermission = DeleteNetworkInterfacePermission'
  { _delDryRun ::
      !( Maybe
           Bool
       ),
    _delForce ::
      !( Maybe
           Bool
       ),
    _delNetworkInterfacePermissionId ::
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

-- | Creates a value of 'DeleteNetworkInterfacePermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'delForce' - Specify @true@ to remove the permission even if the network interface is attached to an instance.
--
-- * 'delNetworkInterfacePermissionId' - The ID of the network interface permission.
deleteNetworkInterfacePermission ::
  -- | 'delNetworkInterfacePermissionId'
  Text ->
  DeleteNetworkInterfacePermission
deleteNetworkInterfacePermission
  pNetworkInterfacePermissionId_ =
    DeleteNetworkInterfacePermission'
      { _delDryRun =
          Nothing,
        _delForce = Nothing,
        _delNetworkInterfacePermissionId =
          pNetworkInterfacePermissionId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
delDryRun :: Lens' DeleteNetworkInterfacePermission (Maybe Bool)
delDryRun = lens _delDryRun (\s a -> s {_delDryRun = a})

-- | Specify @true@ to remove the permission even if the network interface is attached to an instance.
delForce :: Lens' DeleteNetworkInterfacePermission (Maybe Bool)
delForce = lens _delForce (\s a -> s {_delForce = a})

-- | The ID of the network interface permission.
delNetworkInterfacePermissionId :: Lens' DeleteNetworkInterfacePermission Text
delNetworkInterfacePermissionId = lens _delNetworkInterfacePermissionId (\s a -> s {_delNetworkInterfacePermissionId = a})

instance AWSRequest DeleteNetworkInterfacePermission where
  type
    Rs DeleteNetworkInterfacePermission =
      DeleteNetworkInterfacePermissionResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteNetworkInterfacePermissionResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable DeleteNetworkInterfacePermission

instance NFData DeleteNetworkInterfacePermission

instance ToHeaders DeleteNetworkInterfacePermission where
  toHeaders = const mempty

instance ToPath DeleteNetworkInterfacePermission where
  toPath = const "/"

instance ToQuery DeleteNetworkInterfacePermission where
  toQuery DeleteNetworkInterfacePermission' {..} =
    mconcat
      [ "Action"
          =: ("DeleteNetworkInterfacePermission" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _delDryRun,
        "Force" =: _delForce,
        "NetworkInterfacePermissionId"
          =: _delNetworkInterfacePermissionId
      ]

-- | Contains the output for DeleteNetworkInterfacePermission.
--
--
--
-- /See:/ 'deleteNetworkInterfacePermissionResponse' smart constructor.
data DeleteNetworkInterfacePermissionResponse = DeleteNetworkInterfacePermissionResponse'
  { _delrsReturn ::
      !( Maybe
           Bool
       ),
    _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteNetworkInterfacePermissionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsReturn' - Returns @true@ if the request succeeds, otherwise returns an error.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteNetworkInterfacePermissionResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteNetworkInterfacePermissionResponse
deleteNetworkInterfacePermissionResponse
  pResponseStatus_ =
    DeleteNetworkInterfacePermissionResponse'
      { _delrsReturn =
          Nothing,
        _delrsResponseStatus =
          pResponseStatus_
      }

-- | Returns @true@ if the request succeeds, otherwise returns an error.
delrsReturn :: Lens' DeleteNetworkInterfacePermissionResponse (Maybe Bool)
delrsReturn = lens _delrsReturn (\s a -> s {_delrsReturn = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteNetworkInterfacePermissionResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance
  NFData
    DeleteNetworkInterfacePermissionResponse
