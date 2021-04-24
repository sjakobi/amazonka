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
-- Module      : Network.AWS.GameLift.CreatePlayerSessions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reserves open slots in a game session for a group of players. Before players can be added, a game session must have an @ACTIVE@ status, have a creation policy of @ALLOW_ALL@ , and have an open player slot. To add a single player to a game session, use 'CreatePlayerSession' . When a player connects to the game server and references a player session ID, the game server contacts the Amazon GameLift service to validate the player reservation and accept the player.
--
--
-- To create player sessions, specify a game session ID, a list of player IDs, and optionally a set of player data strings. If successful, a slot is reserved in the game session for each player and a set of new 'PlayerSession' objects is returned. Player sessions cannot be updated.
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
module Network.AWS.GameLift.CreatePlayerSessions
  ( -- * Creating a Request
    createPlayerSessions,
    CreatePlayerSessions,

    -- * Request Lenses
    cPlayerDataMap,
    cGameSessionId,
    cPlayerIds,

    -- * Destructuring the Response
    createPlayerSessionsResponse,
    CreatePlayerSessionsResponse,

    -- * Response Lenses
    crersPlayerSessions,
    crersResponseStatus,
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
-- /See:/ 'createPlayerSessions' smart constructor.
data CreatePlayerSessions = CreatePlayerSessions'
  { _cPlayerDataMap ::
      !(Maybe (Map Text Text)),
    _cGameSessionId :: !Text,
    _cPlayerIds :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePlayerSessions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPlayerDataMap' - Map of string pairs, each specifying a player ID and a set of developer-defined information related to the player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. Player data strings for player IDs not included in the @PlayerIds@ parameter are ignored.
--
-- * 'cGameSessionId' - A unique identifier for the game session to add players to.
--
-- * 'cPlayerIds' - List of unique identifiers for the players to be added.
createPlayerSessions ::
  -- | 'cGameSessionId'
  Text ->
  -- | 'cPlayerIds'
  NonEmpty Text ->
  CreatePlayerSessions
createPlayerSessions pGameSessionId_ pPlayerIds_ =
  CreatePlayerSessions'
    { _cPlayerDataMap = Nothing,
      _cGameSessionId = pGameSessionId_,
      _cPlayerIds = _List1 # pPlayerIds_
    }

-- | Map of string pairs, each specifying a player ID and a set of developer-defined information related to the player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. Player data strings for player IDs not included in the @PlayerIds@ parameter are ignored.
cPlayerDataMap :: Lens' CreatePlayerSessions (HashMap Text Text)
cPlayerDataMap = lens _cPlayerDataMap (\s a -> s {_cPlayerDataMap = a}) . _Default . _Map

-- | A unique identifier for the game session to add players to.
cGameSessionId :: Lens' CreatePlayerSessions Text
cGameSessionId = lens _cGameSessionId (\s a -> s {_cGameSessionId = a})

-- | List of unique identifiers for the players to be added.
cPlayerIds :: Lens' CreatePlayerSessions (NonEmpty Text)
cPlayerIds = lens _cPlayerIds (\s a -> s {_cPlayerIds = a}) . _List1

instance AWSRequest CreatePlayerSessions where
  type
    Rs CreatePlayerSessions =
      CreatePlayerSessionsResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          CreatePlayerSessionsResponse'
            <$> (x .?> "PlayerSessions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable CreatePlayerSessions

instance NFData CreatePlayerSessions

instance ToHeaders CreatePlayerSessions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.CreatePlayerSessions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePlayerSessions where
  toJSON CreatePlayerSessions' {..} =
    object
      ( catMaybes
          [ ("PlayerDataMap" .=) <$> _cPlayerDataMap,
            Just ("GameSessionId" .= _cGameSessionId),
            Just ("PlayerIds" .= _cPlayerIds)
          ]
      )

instance ToPath CreatePlayerSessions where
  toPath = const "/"

instance ToQuery CreatePlayerSessions where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'createPlayerSessionsResponse' smart constructor.
data CreatePlayerSessionsResponse = CreatePlayerSessionsResponse'
  { _crersPlayerSessions ::
      !( Maybe
           [PlayerSession]
       ),
    _crersResponseStatus ::
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

-- | Creates a value of 'CreatePlayerSessionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crersPlayerSessions' - A collection of player session objects created for the added players.
--
-- * 'crersResponseStatus' - -- | The response status code.
createPlayerSessionsResponse ::
  -- | 'crersResponseStatus'
  Int ->
  CreatePlayerSessionsResponse
createPlayerSessionsResponse pResponseStatus_ =
  CreatePlayerSessionsResponse'
    { _crersPlayerSessions =
        Nothing,
      _crersResponseStatus = pResponseStatus_
    }

-- | A collection of player session objects created for the added players.
crersPlayerSessions :: Lens' CreatePlayerSessionsResponse [PlayerSession]
crersPlayerSessions = lens _crersPlayerSessions (\s a -> s {_crersPlayerSessions = a}) . _Default . _Coerce

-- | -- | The response status code.
crersResponseStatus :: Lens' CreatePlayerSessionsResponse Int
crersResponseStatus = lens _crersResponseStatus (\s a -> s {_crersResponseStatus = a})

instance NFData CreatePlayerSessionsResponse
