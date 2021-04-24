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
-- Module      : Network.AWS.LexRuntime.DeleteSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes session information for a specified bot, alias, and user ID.
module Network.AWS.LexRuntime.DeleteSession
  ( -- * Creating a Request
    deleteSession,
    DeleteSession,

    -- * Request Lenses
    dsBotName,
    dsBotAlias,
    dsUserId,

    -- * Destructuring the Response
    deleteSessionResponse,
    DeleteSessionResponse,

    -- * Response Lenses
    dsrrsBotAlias,
    dsrrsBotName,
    dsrrsSessionId,
    dsrrsUserId,
    dsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexRuntime.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteSession' smart constructor.
data DeleteSession = DeleteSession'
  { _dsBotName ::
      !Text,
    _dsBotAlias :: !Text,
    _dsUserId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsBotName' - The name of the bot that contains the session data.
--
-- * 'dsBotAlias' - The alias in use for the bot that contains the session data.
--
-- * 'dsUserId' - The identifier of the user associated with the session data.
deleteSession ::
  -- | 'dsBotName'
  Text ->
  -- | 'dsBotAlias'
  Text ->
  -- | 'dsUserId'
  Text ->
  DeleteSession
deleteSession pBotName_ pBotAlias_ pUserId_ =
  DeleteSession'
    { _dsBotName = pBotName_,
      _dsBotAlias = pBotAlias_,
      _dsUserId = pUserId_
    }

-- | The name of the bot that contains the session data.
dsBotName :: Lens' DeleteSession Text
dsBotName = lens _dsBotName (\s a -> s {_dsBotName = a})

-- | The alias in use for the bot that contains the session data.
dsBotAlias :: Lens' DeleteSession Text
dsBotAlias = lens _dsBotAlias (\s a -> s {_dsBotAlias = a})

-- | The identifier of the user associated with the session data.
dsUserId :: Lens' DeleteSession Text
dsUserId = lens _dsUserId (\s a -> s {_dsUserId = a})

instance AWSRequest DeleteSession where
  type Rs DeleteSession = DeleteSessionResponse
  request = delete lexRuntime
  response =
    receiveJSON
      ( \s h x ->
          DeleteSessionResponse'
            <$> (x .?> "botAlias")
            <*> (x .?> "botName")
            <*> (x .?> "sessionId")
            <*> (x .?> "userId")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteSession

instance NFData DeleteSession

instance ToHeaders DeleteSession where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteSession where
  toPath DeleteSession' {..} =
    mconcat
      [ "/bot/",
        toBS _dsBotName,
        "/alias/",
        toBS _dsBotAlias,
        "/user/",
        toBS _dsUserId,
        "/session"
      ]

instance ToQuery DeleteSession where
  toQuery = const mempty

-- | /See:/ 'deleteSessionResponse' smart constructor.
data DeleteSessionResponse = DeleteSessionResponse'
  { _dsrrsBotAlias ::
      !(Maybe Text),
    _dsrrsBotName ::
      !(Maybe Text),
    _dsrrsSessionId ::
      !(Maybe Text),
    _dsrrsUserId ::
      !(Maybe Text),
    _dsrrsResponseStatus ::
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

-- | Creates a value of 'DeleteSessionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsBotAlias' - The alias in use for the bot associated with the session data.
--
-- * 'dsrrsBotName' - The name of the bot associated with the session data.
--
-- * 'dsrrsSessionId' - The unique identifier for the session.
--
-- * 'dsrrsUserId' - The ID of the client application user.
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
deleteSessionResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DeleteSessionResponse
deleteSessionResponse pResponseStatus_ =
  DeleteSessionResponse'
    { _dsrrsBotAlias = Nothing,
      _dsrrsBotName = Nothing,
      _dsrrsSessionId = Nothing,
      _dsrrsUserId = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | The alias in use for the bot associated with the session data.
dsrrsBotAlias :: Lens' DeleteSessionResponse (Maybe Text)
dsrrsBotAlias = lens _dsrrsBotAlias (\s a -> s {_dsrrsBotAlias = a})

-- | The name of the bot associated with the session data.
dsrrsBotName :: Lens' DeleteSessionResponse (Maybe Text)
dsrrsBotName = lens _dsrrsBotName (\s a -> s {_dsrrsBotName = a})

-- | The unique identifier for the session.
dsrrsSessionId :: Lens' DeleteSessionResponse (Maybe Text)
dsrrsSessionId = lens _dsrrsSessionId (\s a -> s {_dsrrsSessionId = a})

-- | The ID of the client application user.
dsrrsUserId :: Lens' DeleteSessionResponse (Maybe Text)
dsrrsUserId = lens _dsrrsUserId (\s a -> s {_dsrrsUserId = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DeleteSessionResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DeleteSessionResponse
