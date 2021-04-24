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
-- Module      : Network.AWS.WorkDocs.DeleteUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified user from a Simple AD or Microsoft AD directory.
module Network.AWS.WorkDocs.DeleteUser
  ( -- * Creating a Request
    deleteUser,
    DeleteUser,

    -- * Request Lenses
    delAuthenticationToken,
    delUserId,

    -- * Destructuring the Response
    deleteUserResponse,
    DeleteUserResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'deleteUser' smart constructor.
data DeleteUser = DeleteUser'
  { _delAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _delUserId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delAuthenticationToken' - Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
--
-- * 'delUserId' - The ID of the user.
deleteUser ::
  -- | 'delUserId'
  Text ->
  DeleteUser
deleteUser pUserId_ =
  DeleteUser'
    { _delAuthenticationToken = Nothing,
      _delUserId = pUserId_
    }

-- | Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
delAuthenticationToken :: Lens' DeleteUser (Maybe Text)
delAuthenticationToken = lens _delAuthenticationToken (\s a -> s {_delAuthenticationToken = a}) . mapping _Sensitive

-- | The ID of the user.
delUserId :: Lens' DeleteUser Text
delUserId = lens _delUserId (\s a -> s {_delUserId = a})

instance AWSRequest DeleteUser where
  type Rs DeleteUser = DeleteUserResponse
  request = delete workDocs
  response = receiveNull DeleteUserResponse'

instance Hashable DeleteUser

instance NFData DeleteUser

instance ToHeaders DeleteUser where
  toHeaders DeleteUser' {..} =
    mconcat
      [ "Authentication" =# _delAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath DeleteUser where
  toPath DeleteUser' {..} =
    mconcat ["/api/v1/users/", toBS _delUserId]

instance ToQuery DeleteUser where
  toQuery = const mempty

-- | /See:/ 'deleteUserResponse' smart constructor.
data DeleteUserResponse = DeleteUserResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteUserResponse' with the minimum fields required to make a request.
deleteUserResponse ::
  DeleteUserResponse
deleteUserResponse = DeleteUserResponse'

instance NFData DeleteUserResponse
