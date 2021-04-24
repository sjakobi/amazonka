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
-- Module      : Network.AWS.MQ.DeleteUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an ActiveMQ user.
module Network.AWS.MQ.DeleteUser
  ( -- * Creating a Request
    deleteUser,
    DeleteUser,

    -- * Request Lenses
    delUsername,
    delBrokerId,

    -- * Destructuring the Response
    deleteUserResponse,
    DeleteUserResponse,

    -- * Response Lenses
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteUser' smart constructor.
data DeleteUser = DeleteUser'
  { _delUsername :: !Text,
    _delBrokerId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delUsername' - The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
--
-- * 'delBrokerId' - The unique ID that Amazon MQ generates for the broker.
deleteUser ::
  -- | 'delUsername'
  Text ->
  -- | 'delBrokerId'
  Text ->
  DeleteUser
deleteUser pUsername_ pBrokerId_ =
  DeleteUser'
    { _delUsername = pUsername_,
      _delBrokerId = pBrokerId_
    }

-- | The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
delUsername :: Lens' DeleteUser Text
delUsername = lens _delUsername (\s a -> s {_delUsername = a})

-- | The unique ID that Amazon MQ generates for the broker.
delBrokerId :: Lens' DeleteUser Text
delBrokerId = lens _delBrokerId (\s a -> s {_delBrokerId = a})

instance AWSRequest DeleteUser where
  type Rs DeleteUser = DeleteUserResponse
  request = delete mq
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
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteUser where
  toPath DeleteUser' {..} =
    mconcat
      [ "/v1/brokers/",
        toBS _delBrokerId,
        "/users/",
        toBS _delUsername
      ]

instance ToQuery DeleteUser where
  toQuery = const mempty

-- | /See:/ 'deleteUserResponse' smart constructor.
newtype DeleteUserResponse = DeleteUserResponse'
  { _drsResponseStatus ::
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
-- * 'drsResponseStatus' - -- | The response status code.
deleteUserResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DeleteUserResponse
deleteUserResponse pResponseStatus_ =
  DeleteUserResponse'
    { _drsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteUserResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DeleteUserResponse
