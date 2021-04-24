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
-- Module      : Network.AWS.DirectConnect.ConfirmPrivateVirtualInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts ownership of a private virtual interface created by another AWS account.
--
--
-- After the virtual interface owner makes this call, the virtual interface is created and attached to the specified virtual private gateway or Direct Connect gateway, and is made available to handle traffic.
module Network.AWS.DirectConnect.ConfirmPrivateVirtualInterface
  ( -- * Creating a Request
    confirmPrivateVirtualInterface,
    ConfirmPrivateVirtualInterface,

    -- * Request Lenses
    cVirtualGatewayId,
    cDirectConnectGatewayId,
    cVirtualInterfaceId,

    -- * Destructuring the Response
    confirmPrivateVirtualInterfaceResponse,
    ConfirmPrivateVirtualInterfaceResponse,

    -- * Response Lenses
    crsVirtualInterfaceState,
    crsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'confirmPrivateVirtualInterface' smart constructor.
data ConfirmPrivateVirtualInterface = ConfirmPrivateVirtualInterface'
  { _cVirtualGatewayId ::
      !( Maybe
           Text
       ),
    _cDirectConnectGatewayId ::
      !( Maybe
           Text
       ),
    _cVirtualInterfaceId ::
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

-- | Creates a value of 'ConfirmPrivateVirtualInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cVirtualGatewayId' - The ID of the virtual private gateway.
--
-- * 'cDirectConnectGatewayId' - The ID of the Direct Connect gateway.
--
-- * 'cVirtualInterfaceId' - The ID of the virtual interface.
confirmPrivateVirtualInterface ::
  -- | 'cVirtualInterfaceId'
  Text ->
  ConfirmPrivateVirtualInterface
confirmPrivateVirtualInterface pVirtualInterfaceId_ =
  ConfirmPrivateVirtualInterface'
    { _cVirtualGatewayId =
        Nothing,
      _cDirectConnectGatewayId = Nothing,
      _cVirtualInterfaceId = pVirtualInterfaceId_
    }

-- | The ID of the virtual private gateway.
cVirtualGatewayId :: Lens' ConfirmPrivateVirtualInterface (Maybe Text)
cVirtualGatewayId = lens _cVirtualGatewayId (\s a -> s {_cVirtualGatewayId = a})

-- | The ID of the Direct Connect gateway.
cDirectConnectGatewayId :: Lens' ConfirmPrivateVirtualInterface (Maybe Text)
cDirectConnectGatewayId = lens _cDirectConnectGatewayId (\s a -> s {_cDirectConnectGatewayId = a})

-- | The ID of the virtual interface.
cVirtualInterfaceId :: Lens' ConfirmPrivateVirtualInterface Text
cVirtualInterfaceId = lens _cVirtualInterfaceId (\s a -> s {_cVirtualInterfaceId = a})

instance AWSRequest ConfirmPrivateVirtualInterface where
  type
    Rs ConfirmPrivateVirtualInterface =
      ConfirmPrivateVirtualInterfaceResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          ConfirmPrivateVirtualInterfaceResponse'
            <$> (x .?> "virtualInterfaceState")
            <*> (pure (fromEnum s))
      )

instance Hashable ConfirmPrivateVirtualInterface

instance NFData ConfirmPrivateVirtualInterface

instance ToHeaders ConfirmPrivateVirtualInterface where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.ConfirmPrivateVirtualInterface" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ConfirmPrivateVirtualInterface where
  toJSON ConfirmPrivateVirtualInterface' {..} =
    object
      ( catMaybes
          [ ("virtualGatewayId" .=) <$> _cVirtualGatewayId,
            ("directConnectGatewayId" .=)
              <$> _cDirectConnectGatewayId,
            Just ("virtualInterfaceId" .= _cVirtualInterfaceId)
          ]
      )

instance ToPath ConfirmPrivateVirtualInterface where
  toPath = const "/"

instance ToQuery ConfirmPrivateVirtualInterface where
  toQuery = const mempty

-- | /See:/ 'confirmPrivateVirtualInterfaceResponse' smart constructor.
data ConfirmPrivateVirtualInterfaceResponse = ConfirmPrivateVirtualInterfaceResponse'
  { _crsVirtualInterfaceState ::
      !( Maybe
           VirtualInterfaceState
       ),
    _crsResponseStatus ::
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

-- | Creates a value of 'ConfirmPrivateVirtualInterfaceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsVirtualInterfaceState' - The state of the virtual interface. The following are the possible values:     * @confirming@ : The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.     * @verifying@ : This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.     * @pending@ : A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.     * @available@ : A virtual interface that is able to forward traffic.     * @down@ : A virtual interface that is BGP down.     * @deleting@ : A virtual interface is in this state immediately after calling 'DeleteVirtualInterface' until it can no longer forward traffic.     * @deleted@ : A virtual interface that cannot forward traffic.     * @rejected@ : The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the @Confirming@ state is deleted by the virtual interface owner, the virtual interface enters the @Rejected@ state.     * @unknown@ : The state of the virtual interface is not available.
--
-- * 'crsResponseStatus' - -- | The response status code.
confirmPrivateVirtualInterfaceResponse ::
  -- | 'crsResponseStatus'
  Int ->
  ConfirmPrivateVirtualInterfaceResponse
confirmPrivateVirtualInterfaceResponse
  pResponseStatus_ =
    ConfirmPrivateVirtualInterfaceResponse'
      { _crsVirtualInterfaceState =
          Nothing,
        _crsResponseStatus =
          pResponseStatus_
      }

-- | The state of the virtual interface. The following are the possible values:     * @confirming@ : The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.     * @verifying@ : This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.     * @pending@ : A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.     * @available@ : A virtual interface that is able to forward traffic.     * @down@ : A virtual interface that is BGP down.     * @deleting@ : A virtual interface is in this state immediately after calling 'DeleteVirtualInterface' until it can no longer forward traffic.     * @deleted@ : A virtual interface that cannot forward traffic.     * @rejected@ : The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the @Confirming@ state is deleted by the virtual interface owner, the virtual interface enters the @Rejected@ state.     * @unknown@ : The state of the virtual interface is not available.
crsVirtualInterfaceState :: Lens' ConfirmPrivateVirtualInterfaceResponse (Maybe VirtualInterfaceState)
crsVirtualInterfaceState = lens _crsVirtualInterfaceState (\s a -> s {_crsVirtualInterfaceState = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' ConfirmPrivateVirtualInterfaceResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance
  NFData
    ConfirmPrivateVirtualInterfaceResponse
