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
-- Module      : Network.AWS.CognitoIdentityProvider.AdminDisableUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the specified user.
--
--
-- Calling this action requires developer credentials.
module Network.AWS.CognitoIdentityProvider.AdminDisableUser
  ( -- * Creating a Request
    adminDisableUser,
    AdminDisableUser,

    -- * Request Lenses
    aUserPoolId,
    aUsername,

    -- * Destructuring the Response
    adminDisableUserResponse,
    AdminDisableUserResponse,

    -- * Response Lenses
    adurrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to disable any user as an administrator.
--
--
--
-- /See:/ 'adminDisableUser' smart constructor.
data AdminDisableUser = AdminDisableUser'
  { _aUserPoolId ::
      !Text,
    _aUsername :: !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdminDisableUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aUserPoolId' - The user pool ID for the user pool where you want to disable the user.
--
-- * 'aUsername' - The user name of the user you wish to disable.
adminDisableUser ::
  -- | 'aUserPoolId'
  Text ->
  -- | 'aUsername'
  Text ->
  AdminDisableUser
adminDisableUser pUserPoolId_ pUsername_ =
  AdminDisableUser'
    { _aUserPoolId = pUserPoolId_,
      _aUsername = _Sensitive # pUsername_
    }

-- | The user pool ID for the user pool where you want to disable the user.
aUserPoolId :: Lens' AdminDisableUser Text
aUserPoolId = lens _aUserPoolId (\s a -> s {_aUserPoolId = a})

-- | The user name of the user you wish to disable.
aUsername :: Lens' AdminDisableUser Text
aUsername = lens _aUsername (\s a -> s {_aUsername = a}) . _Sensitive

instance AWSRequest AdminDisableUser where
  type Rs AdminDisableUser = AdminDisableUserResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveEmpty
      ( \s h x ->
          AdminDisableUserResponse' <$> (pure (fromEnum s))
      )

instance Hashable AdminDisableUser

instance NFData AdminDisableUser

instance ToHeaders AdminDisableUser where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.AdminDisableUser" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AdminDisableUser where
  toJSON AdminDisableUser' {..} =
    object
      ( catMaybes
          [ Just ("UserPoolId" .= _aUserPoolId),
            Just ("Username" .= _aUsername)
          ]
      )

instance ToPath AdminDisableUser where
  toPath = const "/"

instance ToQuery AdminDisableUser where
  toQuery = const mempty

-- | Represents the response received from the server to disable the user as an administrator.
--
--
--
-- /See:/ 'adminDisableUserResponse' smart constructor.
newtype AdminDisableUserResponse = AdminDisableUserResponse'
  { _adurrsResponseStatus ::
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

-- | Creates a value of 'AdminDisableUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adurrsResponseStatus' - -- | The response status code.
adminDisableUserResponse ::
  -- | 'adurrsResponseStatus'
  Int ->
  AdminDisableUserResponse
adminDisableUserResponse pResponseStatus_ =
  AdminDisableUserResponse'
    { _adurrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
adurrsResponseStatus :: Lens' AdminDisableUserResponse Int
adurrsResponseStatus = lens _adurrsResponseStatus (\s a -> s {_adurrsResponseStatus = a})

instance NFData AdminDisableUserResponse
