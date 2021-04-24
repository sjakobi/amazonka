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
-- Module      : Network.AWS.AppStream.DeleteUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user from the user pool.
module Network.AWS.AppStream.DeleteUser
  ( -- * Creating a Request
    deleteUser,
    DeleteUser,

    -- * Request Lenses
    dUserName,
    dAuthenticationType,

    -- * Destructuring the Response
    deleteUserResponse,
    DeleteUserResponse,

    -- * Response Lenses
    ddrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteUser' smart constructor.
data DeleteUser = DeleteUser'
  { _dUserName ::
      !(Sensitive Text),
    _dAuthenticationType :: !AuthenticationType
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dUserName' - The email address of the user.
--
-- * 'dAuthenticationType' - The authentication type for the user. You must specify USERPOOL.
deleteUser ::
  -- | 'dUserName'
  Text ->
  -- | 'dAuthenticationType'
  AuthenticationType ->
  DeleteUser
deleteUser pUserName_ pAuthenticationType_ =
  DeleteUser'
    { _dUserName = _Sensitive # pUserName_,
      _dAuthenticationType = pAuthenticationType_
    }

-- | The email address of the user.
dUserName :: Lens' DeleteUser Text
dUserName = lens _dUserName (\s a -> s {_dUserName = a}) . _Sensitive

-- | The authentication type for the user. You must specify USERPOOL.
dAuthenticationType :: Lens' DeleteUser AuthenticationType
dAuthenticationType = lens _dAuthenticationType (\s a -> s {_dAuthenticationType = a})

instance AWSRequest DeleteUser where
  type Rs DeleteUser = DeleteUserResponse
  request = postJSON appStream
  response =
    receiveEmpty
      ( \s h x ->
          DeleteUserResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteUser

instance NFData DeleteUser

instance ToHeaders DeleteUser where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("PhotonAdminProxyService.DeleteUser" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteUser where
  toJSON DeleteUser' {..} =
    object
      ( catMaybes
          [ Just ("UserName" .= _dUserName),
            Just ("AuthenticationType" .= _dAuthenticationType)
          ]
      )

instance ToPath DeleteUser where
  toPath = const "/"

instance ToQuery DeleteUser where
  toQuery = const mempty

-- | /See:/ 'deleteUserResponse' smart constructor.
newtype DeleteUserResponse = DeleteUserResponse'
  { _ddrsResponseStatus ::
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

-- | Creates a value of 'DeleteUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrsResponseStatus' - -- | The response status code.
deleteUserResponse ::
  -- | 'ddrsResponseStatus'
  Int ->
  DeleteUserResponse
deleteUserResponse pResponseStatus_ =
  DeleteUserResponse'
    { _ddrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ddrsResponseStatus :: Lens' DeleteUserResponse Int
ddrsResponseStatus = lens _ddrsResponseStatus (\s a -> s {_ddrsResponseStatus = a})

instance NFData DeleteUserResponse
