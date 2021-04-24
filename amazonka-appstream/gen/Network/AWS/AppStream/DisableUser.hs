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
-- Module      : Network.AWS.AppStream.DisableUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user.
module Network.AWS.AppStream.DisableUser
  ( -- * Creating a Request
    disableUser,
    DisableUser,

    -- * Request Lenses
    disUserName,
    disAuthenticationType,

    -- * Destructuring the Response
    disableUserResponse,
    DisableUserResponse,

    -- * Response Lenses
    durrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disableUser' smart constructor.
data DisableUser = DisableUser'
  { _disUserName ::
      !(Sensitive Text),
    _disAuthenticationType :: !AuthenticationType
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DisableUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disUserName' - The email address of the user.
--
-- * 'disAuthenticationType' - The authentication type for the user. You must specify USERPOOL.
disableUser ::
  -- | 'disUserName'
  Text ->
  -- | 'disAuthenticationType'
  AuthenticationType ->
  DisableUser
disableUser pUserName_ pAuthenticationType_ =
  DisableUser'
    { _disUserName =
        _Sensitive # pUserName_,
      _disAuthenticationType = pAuthenticationType_
    }

-- | The email address of the user.
disUserName :: Lens' DisableUser Text
disUserName = lens _disUserName (\s a -> s {_disUserName = a}) . _Sensitive

-- | The authentication type for the user. You must specify USERPOOL.
disAuthenticationType :: Lens' DisableUser AuthenticationType
disAuthenticationType = lens _disAuthenticationType (\s a -> s {_disAuthenticationType = a})

instance AWSRequest DisableUser where
  type Rs DisableUser = DisableUserResponse
  request = postJSON appStream
  response =
    receiveEmpty
      ( \s h x ->
          DisableUserResponse' <$> (pure (fromEnum s))
      )

instance Hashable DisableUser

instance NFData DisableUser

instance ToHeaders DisableUser where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DisableUser" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisableUser where
  toJSON DisableUser' {..} =
    object
      ( catMaybes
          [ Just ("UserName" .= _disUserName),
            Just
              ("AuthenticationType" .= _disAuthenticationType)
          ]
      )

instance ToPath DisableUser where
  toPath = const "/"

instance ToQuery DisableUser where
  toQuery = const mempty

-- | /See:/ 'disableUserResponse' smart constructor.
newtype DisableUserResponse = DisableUserResponse'
  { _durrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'durrsResponseStatus' - -- | The response status code.
disableUserResponse ::
  -- | 'durrsResponseStatus'
  Int ->
  DisableUserResponse
disableUserResponse pResponseStatus_ =
  DisableUserResponse'
    { _durrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
durrsResponseStatus :: Lens' DisableUserResponse Int
durrsResponseStatus = lens _durrsResponseStatus (\s a -> s {_durrsResponseStatus = a})

instance NFData DisableUserResponse
