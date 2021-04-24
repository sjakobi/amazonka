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
-- Module      : Network.AWS.StorageGateway.SetLocalConsolePassword
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the password for your VM local console. When you log in to the local console for the first time, you log in to the VM with the default credentials. We recommend that you set a new password. You don't need to know the default password to set a new password.
module Network.AWS.StorageGateway.SetLocalConsolePassword
  ( -- * Creating a Request
    setLocalConsolePassword,
    SetLocalConsolePassword,

    -- * Request Lenses
    slcpGatewayARN,
    slcpLocalConsolePassword,

    -- * Destructuring the Response
    setLocalConsolePasswordResponse,
    SetLocalConsolePasswordResponse,

    -- * Response Lenses
    slcprrsGatewayARN,
    slcprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | SetLocalConsolePasswordInput
--
--
--
-- /See:/ 'setLocalConsolePassword' smart constructor.
data SetLocalConsolePassword = SetLocalConsolePassword'
  { _slcpGatewayARN ::
      !Text,
    _slcpLocalConsolePassword ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetLocalConsolePassword' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slcpGatewayARN' - Undocumented member.
--
-- * 'slcpLocalConsolePassword' - The password you want to set for your VM local console.
setLocalConsolePassword ::
  -- | 'slcpGatewayARN'
  Text ->
  -- | 'slcpLocalConsolePassword'
  Text ->
  SetLocalConsolePassword
setLocalConsolePassword
  pGatewayARN_
  pLocalConsolePassword_ =
    SetLocalConsolePassword'
      { _slcpGatewayARN =
          pGatewayARN_,
        _slcpLocalConsolePassword =
          _Sensitive # pLocalConsolePassword_
      }

-- | Undocumented member.
slcpGatewayARN :: Lens' SetLocalConsolePassword Text
slcpGatewayARN = lens _slcpGatewayARN (\s a -> s {_slcpGatewayARN = a})

-- | The password you want to set for your VM local console.
slcpLocalConsolePassword :: Lens' SetLocalConsolePassword Text
slcpLocalConsolePassword = lens _slcpLocalConsolePassword (\s a -> s {_slcpLocalConsolePassword = a}) . _Sensitive

instance AWSRequest SetLocalConsolePassword where
  type
    Rs SetLocalConsolePassword =
      SetLocalConsolePasswordResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          SetLocalConsolePasswordResponse'
            <$> (x .?> "GatewayARN") <*> (pure (fromEnum s))
      )

instance Hashable SetLocalConsolePassword

instance NFData SetLocalConsolePassword

instance ToHeaders SetLocalConsolePassword where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.SetLocalConsolePassword" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SetLocalConsolePassword where
  toJSON SetLocalConsolePassword' {..} =
    object
      ( catMaybes
          [ Just ("GatewayARN" .= _slcpGatewayARN),
            Just
              ( "LocalConsolePassword"
                  .= _slcpLocalConsolePassword
              )
          ]
      )

instance ToPath SetLocalConsolePassword where
  toPath = const "/"

instance ToQuery SetLocalConsolePassword where
  toQuery = const mempty

-- | /See:/ 'setLocalConsolePasswordResponse' smart constructor.
data SetLocalConsolePasswordResponse = SetLocalConsolePasswordResponse'
  { _slcprrsGatewayARN ::
      !( Maybe
           Text
       ),
    _slcprrsResponseStatus ::
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

-- | Creates a value of 'SetLocalConsolePasswordResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slcprrsGatewayARN' - Undocumented member.
--
-- * 'slcprrsResponseStatus' - -- | The response status code.
setLocalConsolePasswordResponse ::
  -- | 'slcprrsResponseStatus'
  Int ->
  SetLocalConsolePasswordResponse
setLocalConsolePasswordResponse pResponseStatus_ =
  SetLocalConsolePasswordResponse'
    { _slcprrsGatewayARN =
        Nothing,
      _slcprrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
slcprrsGatewayARN :: Lens' SetLocalConsolePasswordResponse (Maybe Text)
slcprrsGatewayARN = lens _slcprrsGatewayARN (\s a -> s {_slcprrsGatewayARN = a})

-- | -- | The response status code.
slcprrsResponseStatus :: Lens' SetLocalConsolePasswordResponse Int
slcprrsResponseStatus = lens _slcprrsResponseStatus (\s a -> s {_slcprrsResponseStatus = a})

instance NFData SetLocalConsolePasswordResponse
