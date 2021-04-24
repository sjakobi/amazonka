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
-- Module      : Network.AWS.GameLift.CreatePlayerSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reserves an open player slot in an active game session. Before a player can be added, a game session must have an @ACTIVE@ status, have a creation policy of @ALLOW_ALL@ , and have an open player slot. To add a group of players to a game session, use 'CreatePlayerSessions' . When the player connects to the game server and references a player session ID, the game server contacts the Amazon GameLift service to validate the player reservation and accept the player.
--
--
-- To create a player session, specify a game session ID, player ID, and optionally a string of player data. If successful, a slot is reserved in the game session for the player and a new 'PlayerSession' object is returned. Player sessions cannot be updated.
--
-- /Available in Amazon GameLift Local./
--
--     * 'CreatePlayerSession'
--
--     * 'CreatePlayerSessions'
--
--     * 'DescribePlayerSessions'
--
--     * Game session placements
--
--     * 'StartGameSessionPlacement'
--
--     * 'DescribeGameSessionPlacement'
--
--     * 'StopGameSessionPlacement'
module Network.AWS.GameLift.CreatePlayerSession
  ( -- * Creating a Request
    createPlayerSession,
    CreatePlayerSession,

    -- * Request Lenses
    cpsPlayerData,
    cpsGameSessionId,
    cpsPlayerId,

    -- * Destructuring the Response
    createPlayerSessionResponse,
    CreatePlayerSessionResponse,

    -- * Response Lenses
    cpsrrsPlayerSession,
    cpsrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'createPlayerSession' smart constructor.
data CreatePlayerSession = CreatePlayerSession'
  { _cpsPlayerData ::
      !(Maybe Text),
    _cpsGameSessionId :: !Text,
    _cpsPlayerId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePlayerSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpsPlayerData' - Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game.
--
-- * 'cpsGameSessionId' - A unique identifier for the game session to add a player to.
--
-- * 'cpsPlayerId' - A unique identifier for a player. Player IDs are developer-defined.
createPlayerSession ::
  -- | 'cpsGameSessionId'
  Text ->
  -- | 'cpsPlayerId'
  Text ->
  CreatePlayerSession
createPlayerSession pGameSessionId_ pPlayerId_ =
  CreatePlayerSession'
    { _cpsPlayerData = Nothing,
      _cpsGameSessionId = pGameSessionId_,
      _cpsPlayerId = pPlayerId_
    }

-- | Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game.
cpsPlayerData :: Lens' CreatePlayerSession (Maybe Text)
cpsPlayerData = lens _cpsPlayerData (\s a -> s {_cpsPlayerData = a})

-- | A unique identifier for the game session to add a player to.
cpsGameSessionId :: Lens' CreatePlayerSession Text
cpsGameSessionId = lens _cpsGameSessionId (\s a -> s {_cpsGameSessionId = a})

-- | A unique identifier for a player. Player IDs are developer-defined.
cpsPlayerId :: Lens' CreatePlayerSession Text
cpsPlayerId = lens _cpsPlayerId (\s a -> s {_cpsPlayerId = a})

instance AWSRequest CreatePlayerSession where
  type
    Rs CreatePlayerSession =
      CreatePlayerSessionResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          CreatePlayerSessionResponse'
            <$> (x .?> "PlayerSession") <*> (pure (fromEnum s))
      )

instance Hashable CreatePlayerSession

instance NFData CreatePlayerSession

instance ToHeaders CreatePlayerSession where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.CreatePlayerSession" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePlayerSession where
  toJSON CreatePlayerSession' {..} =
    object
      ( catMaybes
          [ ("PlayerData" .=) <$> _cpsPlayerData,
            Just ("GameSessionId" .= _cpsGameSessionId),
            Just ("PlayerId" .= _cpsPlayerId)
          ]
      )

instance ToPath CreatePlayerSession where
  toPath = const "/"

instance ToQuery CreatePlayerSession where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'createPlayerSessionResponse' smart constructor.
data CreatePlayerSessionResponse = CreatePlayerSessionResponse'
  { _cpsrrsPlayerSession ::
      !( Maybe
           PlayerSession
       ),
    _cpsrrsResponseStatus ::
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

-- | Creates a value of 'CreatePlayerSessionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpsrrsPlayerSession' - Object that describes the newly created player session record.
--
-- * 'cpsrrsResponseStatus' - -- | The response status code.
createPlayerSessionResponse ::
  -- | 'cpsrrsResponseStatus'
  Int ->
  CreatePlayerSessionResponse
createPlayerSessionResponse pResponseStatus_ =
  CreatePlayerSessionResponse'
    { _cpsrrsPlayerSession =
        Nothing,
      _cpsrrsResponseStatus = pResponseStatus_
    }

-- | Object that describes the newly created player session record.
cpsrrsPlayerSession :: Lens' CreatePlayerSessionResponse (Maybe PlayerSession)
cpsrrsPlayerSession = lens _cpsrrsPlayerSession (\s a -> s {_cpsrrsPlayerSession = a})

-- | -- | The response status code.
cpsrrsResponseStatus :: Lens' CreatePlayerSessionResponse Int
cpsrrsResponseStatus = lens _cpsrrsResponseStatus (\s a -> s {_cpsrrsResponseStatus = a})

instance NFData CreatePlayerSessionResponse
