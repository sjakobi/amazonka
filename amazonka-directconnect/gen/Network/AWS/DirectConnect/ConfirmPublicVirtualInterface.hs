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
-- Module      : Network.AWS.DirectConnect.ConfirmPublicVirtualInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts ownership of a public virtual interface created by another AWS account.
--
--
-- After the virtual interface owner makes this call, the specified virtual interface is created and made available to handle traffic.
module Network.AWS.DirectConnect.ConfirmPublicVirtualInterface
  ( -- * Creating a Request
    confirmPublicVirtualInterface,
    ConfirmPublicVirtualInterface,

    -- * Request Lenses
    cpviVirtualInterfaceId,

    -- * Destructuring the Response
    confirmPublicVirtualInterfaceResponse,
    ConfirmPublicVirtualInterfaceResponse,

    -- * Response Lenses
    cpvirrsVirtualInterfaceState,
    cpvirrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'confirmPublicVirtualInterface' smart constructor.
newtype ConfirmPublicVirtualInterface = ConfirmPublicVirtualInterface'
  { _cpviVirtualInterfaceId ::
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

-- | Creates a value of 'ConfirmPublicVirtualInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpviVirtualInterfaceId' - The ID of the virtual interface.
confirmPublicVirtualInterface ::
  -- | 'cpviVirtualInterfaceId'
  Text ->
  ConfirmPublicVirtualInterface
confirmPublicVirtualInterface pVirtualInterfaceId_ =
  ConfirmPublicVirtualInterface'
    { _cpviVirtualInterfaceId =
        pVirtualInterfaceId_
    }

-- | The ID of the virtual interface.
cpviVirtualInterfaceId :: Lens' ConfirmPublicVirtualInterface Text
cpviVirtualInterfaceId = lens _cpviVirtualInterfaceId (\s a -> s {_cpviVirtualInterfaceId = a})

instance AWSRequest ConfirmPublicVirtualInterface where
  type
    Rs ConfirmPublicVirtualInterface =
      ConfirmPublicVirtualInterfaceResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          ConfirmPublicVirtualInterfaceResponse'
            <$> (x .?> "virtualInterfaceState")
            <*> (pure (fromEnum s))
      )

instance Hashable ConfirmPublicVirtualInterface

instance NFData ConfirmPublicVirtualInterface

instance ToHeaders ConfirmPublicVirtualInterface where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.ConfirmPublicVirtualInterface" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ConfirmPublicVirtualInterface where
  toJSON ConfirmPublicVirtualInterface' {..} =
    object
      ( catMaybes
          [ Just
              ("virtualInterfaceId" .= _cpviVirtualInterfaceId)
          ]
      )

instance ToPath ConfirmPublicVirtualInterface where
  toPath = const "/"

instance ToQuery ConfirmPublicVirtualInterface where
  toQuery = const mempty

-- | /See:/ 'confirmPublicVirtualInterfaceResponse' smart constructor.
data ConfirmPublicVirtualInterfaceResponse = ConfirmPublicVirtualInterfaceResponse'
  { _cpvirrsVirtualInterfaceState ::
      !( Maybe
           VirtualInterfaceState
       ),
    _cpvirrsResponseStatus ::
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

-- | Creates a value of 'ConfirmPublicVirtualInterfaceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpvirrsVirtualInterfaceState' - The state of the virtual interface. The following are the possible values:     * @confirming@ : The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.     * @verifying@ : This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.     * @pending@ : A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.     * @available@ : A virtual interface that is able to forward traffic.     * @down@ : A virtual interface that is BGP down.     * @deleting@ : A virtual interface is in this state immediately after calling 'DeleteVirtualInterface' until it can no longer forward traffic.     * @deleted@ : A virtual interface that cannot forward traffic.     * @rejected@ : The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the @Confirming@ state is deleted by the virtual interface owner, the virtual interface enters the @Rejected@ state.     * @unknown@ : The state of the virtual interface is not available.
--
-- * 'cpvirrsResponseStatus' - -- | The response status code.
confirmPublicVirtualInterfaceResponse ::
  -- | 'cpvirrsResponseStatus'
  Int ->
  ConfirmPublicVirtualInterfaceResponse
confirmPublicVirtualInterfaceResponse
  pResponseStatus_ =
    ConfirmPublicVirtualInterfaceResponse'
      { _cpvirrsVirtualInterfaceState =
          Nothing,
        _cpvirrsResponseStatus =
          pResponseStatus_
      }

-- | The state of the virtual interface. The following are the possible values:     * @confirming@ : The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.     * @verifying@ : This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.     * @pending@ : A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.     * @available@ : A virtual interface that is able to forward traffic.     * @down@ : A virtual interface that is BGP down.     * @deleting@ : A virtual interface is in this state immediately after calling 'DeleteVirtualInterface' until it can no longer forward traffic.     * @deleted@ : A virtual interface that cannot forward traffic.     * @rejected@ : The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the @Confirming@ state is deleted by the virtual interface owner, the virtual interface enters the @Rejected@ state.     * @unknown@ : The state of the virtual interface is not available.
cpvirrsVirtualInterfaceState :: Lens' ConfirmPublicVirtualInterfaceResponse (Maybe VirtualInterfaceState)
cpvirrsVirtualInterfaceState = lens _cpvirrsVirtualInterfaceState (\s a -> s {_cpvirrsVirtualInterfaceState = a})

-- | -- | The response status code.
cpvirrsResponseStatus :: Lens' ConfirmPublicVirtualInterfaceResponse Int
cpvirrsResponseStatus = lens _cpvirrsResponseStatus (\s a -> s {_cpvirrsResponseStatus = a})

instance NFData ConfirmPublicVirtualInterfaceResponse
