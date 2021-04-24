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
-- Module      : Network.AWS.CognitoIdentityProvider.AdminDeleteUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user as an administrator. Works on any user.
--
--
-- Calling this action requires developer credentials.
module Network.AWS.CognitoIdentityProvider.AdminDeleteUser
  ( -- * Creating a Request
    adminDeleteUser,
    AdminDeleteUser,

    -- * Request Lenses
    aduUserPoolId,
    aduUsername,

    -- * Destructuring the Response
    adminDeleteUserResponse,
    AdminDeleteUserResponse,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to delete a user as an administrator.
--
--
--
-- /See:/ 'adminDeleteUser' smart constructor.
data AdminDeleteUser = AdminDeleteUser'
  { _aduUserPoolId ::
      !Text,
    _aduUsername :: !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdminDeleteUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aduUserPoolId' - The user pool ID for the user pool where you want to delete the user.
--
-- * 'aduUsername' - The user name of the user you wish to delete.
adminDeleteUser ::
  -- | 'aduUserPoolId'
  Text ->
  -- | 'aduUsername'
  Text ->
  AdminDeleteUser
adminDeleteUser pUserPoolId_ pUsername_ =
  AdminDeleteUser'
    { _aduUserPoolId = pUserPoolId_,
      _aduUsername = _Sensitive # pUsername_
    }

-- | The user pool ID for the user pool where you want to delete the user.
aduUserPoolId :: Lens' AdminDeleteUser Text
aduUserPoolId = lens _aduUserPoolId (\s a -> s {_aduUserPoolId = a})

-- | The user name of the user you wish to delete.
aduUsername :: Lens' AdminDeleteUser Text
aduUsername = lens _aduUsername (\s a -> s {_aduUsername = a}) . _Sensitive

instance AWSRequest AdminDeleteUser where
  type Rs AdminDeleteUser = AdminDeleteUserResponse
  request = postJSON cognitoIdentityProvider
  response = receiveNull AdminDeleteUserResponse'

instance Hashable AdminDeleteUser

instance NFData AdminDeleteUser

instance ToHeaders AdminDeleteUser where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.AdminDeleteUser" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AdminDeleteUser where
  toJSON AdminDeleteUser' {..} =
    object
      ( catMaybes
          [ Just ("UserPoolId" .= _aduUserPoolId),
            Just ("Username" .= _aduUsername)
          ]
      )

instance ToPath AdminDeleteUser where
  toPath = const "/"

instance ToQuery AdminDeleteUser where
  toQuery = const mempty

-- | /See:/ 'adminDeleteUserResponse' smart constructor.
data AdminDeleteUserResponse = AdminDeleteUserResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AdminDeleteUserResponse' with the minimum fields required to make a request.
adminDeleteUserResponse ::
  AdminDeleteUserResponse
adminDeleteUserResponse = AdminDeleteUserResponse'

instance NFData AdminDeleteUserResponse
