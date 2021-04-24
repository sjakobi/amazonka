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
-- Module      : Network.AWS.DirectConnect.DeleteVirtualInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a virtual interface.
module Network.AWS.DirectConnect.DeleteVirtualInterface
  ( -- * Creating a Request
    deleteVirtualInterface,
    DeleteVirtualInterface,

    -- * Request Lenses
    dviVirtualInterfaceId,

    -- * Destructuring the Response
    deleteVirtualInterfaceResponse,
    DeleteVirtualInterfaceResponse,

    -- * Response Lenses
    delrsVirtualInterfaceState,
    delrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteVirtualInterface' smart constructor.
newtype DeleteVirtualInterface = DeleteVirtualInterface'
  { _dviVirtualInterfaceId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteVirtualInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dviVirtualInterfaceId' - The ID of the virtual interface.
deleteVirtualInterface ::
  -- | 'dviVirtualInterfaceId'
  Text ->
  DeleteVirtualInterface
deleteVirtualInterface pVirtualInterfaceId_ =
  DeleteVirtualInterface'
    { _dviVirtualInterfaceId =
        pVirtualInterfaceId_
    }

-- | The ID of the virtual interface.
dviVirtualInterfaceId :: Lens' DeleteVirtualInterface Text
dviVirtualInterfaceId = lens _dviVirtualInterfaceId (\s a -> s {_dviVirtualInterfaceId = a})

instance AWSRequest DeleteVirtualInterface where
  type
    Rs DeleteVirtualInterface =
      DeleteVirtualInterfaceResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DeleteVirtualInterfaceResponse'
            <$> (x .?> "virtualInterfaceState")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteVirtualInterface

instance NFData DeleteVirtualInterface

instance ToHeaders DeleteVirtualInterface where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.DeleteVirtualInterface" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteVirtualInterface where
  toJSON DeleteVirtualInterface' {..} =
    object
      ( catMaybes
          [ Just
              ("virtualInterfaceId" .= _dviVirtualInterfaceId)
          ]
      )

instance ToPath DeleteVirtualInterface where
  toPath = const "/"

instance ToQuery DeleteVirtualInterface where
  toQuery = const mempty

-- | /See:/ 'deleteVirtualInterfaceResponse' smart constructor.
data DeleteVirtualInterfaceResponse = DeleteVirtualInterfaceResponse'
  { _delrsVirtualInterfaceState ::
      !( Maybe
           VirtualInterfaceState
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

-- | Creates a value of 'DeleteVirtualInterfaceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsVirtualInterfaceState' - The state of the virtual interface. The following are the possible values:     * @confirming@ : The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.     * @verifying@ : This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.     * @pending@ : A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.     * @available@ : A virtual interface that is able to forward traffic.     * @down@ : A virtual interface that is BGP down.     * @deleting@ : A virtual interface is in this state immediately after calling 'DeleteVirtualInterface' until it can no longer forward traffic.     * @deleted@ : A virtual interface that cannot forward traffic.     * @rejected@ : The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the @Confirming@ state is deleted by the virtual interface owner, the virtual interface enters the @Rejected@ state.     * @unknown@ : The state of the virtual interface is not available.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteVirtualInterfaceResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteVirtualInterfaceResponse
deleteVirtualInterfaceResponse pResponseStatus_ =
  DeleteVirtualInterfaceResponse'
    { _delrsVirtualInterfaceState =
        Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | The state of the virtual interface. The following are the possible values:     * @confirming@ : The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.     * @verifying@ : This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.     * @pending@ : A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.     * @available@ : A virtual interface that is able to forward traffic.     * @down@ : A virtual interface that is BGP down.     * @deleting@ : A virtual interface is in this state immediately after calling 'DeleteVirtualInterface' until it can no longer forward traffic.     * @deleted@ : A virtual interface that cannot forward traffic.     * @rejected@ : The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the @Confirming@ state is deleted by the virtual interface owner, the virtual interface enters the @Rejected@ state.     * @unknown@ : The state of the virtual interface is not available.
delrsVirtualInterfaceState :: Lens' DeleteVirtualInterfaceResponse (Maybe VirtualInterfaceState)
delrsVirtualInterfaceState = lens _delrsVirtualInterfaceState (\s a -> s {_delrsVirtualInterfaceState = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteVirtualInterfaceResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteVirtualInterfaceResponse
