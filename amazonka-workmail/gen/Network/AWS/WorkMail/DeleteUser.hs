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
-- Module      : Network.AWS.WorkMail.DeleteUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user from Amazon WorkMail and all subsequent systems. Before you can delete a user, the user state must be @DISABLED@ . Use the 'DescribeUser' action to confirm the user state.
--
--
-- Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for 30 days before they are permanently removed.
module Network.AWS.WorkMail.DeleteUser
  ( -- * Creating a Request
    deleteUser,
    DeleteUser,

    -- * Request Lenses
    duuOrganizationId,
    duuUserId,

    -- * Destructuring the Response
    deleteUserResponse,
    DeleteUserResponse,

    -- * Response Lenses
    delrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'deleteUser' smart constructor.
data DeleteUser = DeleteUser'
  { _duuOrganizationId ::
      !Text,
    _duuUserId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duuOrganizationId' - The organization that contains the user to be deleted.
--
-- * 'duuUserId' - The identifier of the user to be deleted.
deleteUser ::
  -- | 'duuOrganizationId'
  Text ->
  -- | 'duuUserId'
  Text ->
  DeleteUser
deleteUser pOrganizationId_ pUserId_ =
  DeleteUser'
    { _duuOrganizationId = pOrganizationId_,
      _duuUserId = pUserId_
    }

-- | The organization that contains the user to be deleted.
duuOrganizationId :: Lens' DeleteUser Text
duuOrganizationId = lens _duuOrganizationId (\s a -> s {_duuOrganizationId = a})

-- | The identifier of the user to be deleted.
duuUserId :: Lens' DeleteUser Text
duuUserId = lens _duuUserId (\s a -> s {_duuUserId = a})

instance AWSRequest DeleteUser where
  type Rs DeleteUser = DeleteUserResponse
  request = postJSON workMail
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
              =# ("WorkMailService.DeleteUser" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteUser where
  toJSON DeleteUser' {..} =
    object
      ( catMaybes
          [ Just ("OrganizationId" .= _duuOrganizationId),
            Just ("UserId" .= _duuUserId)
          ]
      )

instance ToPath DeleteUser where
  toPath = const "/"

instance ToQuery DeleteUser where
  toQuery = const mempty

-- | /See:/ 'deleteUserResponse' smart constructor.
newtype DeleteUserResponse = DeleteUserResponse'
  { _delrsResponseStatus ::
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
-- * 'delrsResponseStatus' - -- | The response status code.
deleteUserResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteUserResponse
deleteUserResponse pResponseStatus_ =
  DeleteUserResponse'
    { _delrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteUserResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteUserResponse
