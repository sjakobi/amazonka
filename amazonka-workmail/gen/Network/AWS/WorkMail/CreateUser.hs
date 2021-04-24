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
-- Module      : Network.AWS.WorkMail.CreateUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user who can be used in Amazon WorkMail by calling the 'RegisterToWorkMail' operation.
module Network.AWS.WorkMail.CreateUser
  ( -- * Creating a Request
    createUser,
    CreateUser,

    -- * Request Lenses
    cuOrganizationId,
    cuName,
    cuDisplayName,
    cuPassword,

    -- * Destructuring the Response
    createUserResponse,
    CreateUserResponse,

    -- * Response Lenses
    currsUserId,
    currsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'createUser' smart constructor.
data CreateUser = CreateUser'
  { _cuOrganizationId ::
      !Text,
    _cuName :: !Text,
    _cuDisplayName :: !Text,
    _cuPassword :: !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuOrganizationId' - The identifier of the organization for which the user is created.
--
-- * 'cuName' - The name for the new user. WorkMail directory user names have a maximum length of 64. All others have a maximum length of 20.
--
-- * 'cuDisplayName' - The display name for the new user.
--
-- * 'cuPassword' - The password for the new user.
createUser ::
  -- | 'cuOrganizationId'
  Text ->
  -- | 'cuName'
  Text ->
  -- | 'cuDisplayName'
  Text ->
  -- | 'cuPassword'
  Text ->
  CreateUser
createUser
  pOrganizationId_
  pName_
  pDisplayName_
  pPassword_ =
    CreateUser'
      { _cuOrganizationId = pOrganizationId_,
        _cuName = pName_,
        _cuDisplayName = pDisplayName_,
        _cuPassword = _Sensitive # pPassword_
      }

-- | The identifier of the organization for which the user is created.
cuOrganizationId :: Lens' CreateUser Text
cuOrganizationId = lens _cuOrganizationId (\s a -> s {_cuOrganizationId = a})

-- | The name for the new user. WorkMail directory user names have a maximum length of 64. All others have a maximum length of 20.
cuName :: Lens' CreateUser Text
cuName = lens _cuName (\s a -> s {_cuName = a})

-- | The display name for the new user.
cuDisplayName :: Lens' CreateUser Text
cuDisplayName = lens _cuDisplayName (\s a -> s {_cuDisplayName = a})

-- | The password for the new user.
cuPassword :: Lens' CreateUser Text
cuPassword = lens _cuPassword (\s a -> s {_cuPassword = a}) . _Sensitive

instance AWSRequest CreateUser where
  type Rs CreateUser = CreateUserResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          CreateUserResponse'
            <$> (x .?> "UserId") <*> (pure (fromEnum s))
      )

instance Hashable CreateUser

instance NFData CreateUser

instance ToHeaders CreateUser where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.CreateUser" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateUser where
  toJSON CreateUser' {..} =
    object
      ( catMaybes
          [ Just ("OrganizationId" .= _cuOrganizationId),
            Just ("Name" .= _cuName),
            Just ("DisplayName" .= _cuDisplayName),
            Just ("Password" .= _cuPassword)
          ]
      )

instance ToPath CreateUser where
  toPath = const "/"

instance ToQuery CreateUser where
  toQuery = const mempty

-- | /See:/ 'createUserResponse' smart constructor.
data CreateUserResponse = CreateUserResponse'
  { _currsUserId ::
      !(Maybe Text),
    _currsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'currsUserId' - The identifier for the new user.
--
-- * 'currsResponseStatus' - -- | The response status code.
createUserResponse ::
  -- | 'currsResponseStatus'
  Int ->
  CreateUserResponse
createUserResponse pResponseStatus_ =
  CreateUserResponse'
    { _currsUserId = Nothing,
      _currsResponseStatus = pResponseStatus_
    }

-- | The identifier for the new user.
currsUserId :: Lens' CreateUserResponse (Maybe Text)
currsUserId = lens _currsUserId (\s a -> s {_currsUserId = a})

-- | -- | The response status code.
currsResponseStatus :: Lens' CreateUserResponse Int
currsResponseStatus = lens _currsResponseStatus (\s a -> s {_currsResponseStatus = a})

instance NFData CreateUserResponse
