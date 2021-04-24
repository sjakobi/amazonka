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
-- Module      : Network.AWS.WorkDocs.ActivateUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates the specified user. Only active users can access Amazon WorkDocs.
module Network.AWS.WorkDocs.ActivateUser
  ( -- * Creating a Request
    activateUser,
    ActivateUser,

    -- * Request Lenses
    auAuthenticationToken,
    auUserId,

    -- * Destructuring the Response
    activateUserResponse,
    ActivateUserResponse,

    -- * Response Lenses
    aurrsUser,
    aurrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'activateUser' smart constructor.
data ActivateUser = ActivateUser'
  { _auAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _auUserId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActivateUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'auUserId' - The ID of the user.
activateUser ::
  -- | 'auUserId'
  Text ->
  ActivateUser
activateUser pUserId_ =
  ActivateUser'
    { _auAuthenticationToken = Nothing,
      _auUserId = pUserId_
    }

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
auAuthenticationToken :: Lens' ActivateUser (Maybe Text)
auAuthenticationToken = lens _auAuthenticationToken (\s a -> s {_auAuthenticationToken = a}) . mapping _Sensitive

-- | The ID of the user.
auUserId :: Lens' ActivateUser Text
auUserId = lens _auUserId (\s a -> s {_auUserId = a})

instance AWSRequest ActivateUser where
  type Rs ActivateUser = ActivateUserResponse
  request = postJSON workDocs
  response =
    receiveJSON
      ( \s h x ->
          ActivateUserResponse'
            <$> (x .?> "User") <*> (pure (fromEnum s))
      )

instance Hashable ActivateUser

instance NFData ActivateUser

instance ToHeaders ActivateUser where
  toHeaders ActivateUser' {..} =
    mconcat
      [ "Authentication" =# _auAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON ActivateUser where
  toJSON = const (Object mempty)

instance ToPath ActivateUser where
  toPath ActivateUser' {..} =
    mconcat
      ["/api/v1/users/", toBS _auUserId, "/activation"]

instance ToQuery ActivateUser where
  toQuery = const mempty

-- | /See:/ 'activateUserResponse' smart constructor.
data ActivateUserResponse = ActivateUserResponse'
  { _aurrsUser ::
      !(Maybe User),
    _aurrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActivateUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aurrsUser' - The user information.
--
-- * 'aurrsResponseStatus' - -- | The response status code.
activateUserResponse ::
  -- | 'aurrsResponseStatus'
  Int ->
  ActivateUserResponse
activateUserResponse pResponseStatus_ =
  ActivateUserResponse'
    { _aurrsUser = Nothing,
      _aurrsResponseStatus = pResponseStatus_
    }

-- | The user information.
aurrsUser :: Lens' ActivateUserResponse (Maybe User)
aurrsUser = lens _aurrsUser (\s a -> s {_aurrsUser = a})

-- | -- | The response status code.
aurrsResponseStatus :: Lens' ActivateUserResponse Int
aurrsResponseStatus = lens _aurrsResponseStatus (\s a -> s {_aurrsResponseStatus = a})

instance NFData ActivateUserResponse
