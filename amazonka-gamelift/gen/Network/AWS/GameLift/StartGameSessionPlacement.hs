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
-- Module      : Network.AWS.GameLift.StartGameSessionPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Places a request for a new game session in a queue (see 'CreateGameSessionQueue' ). When processing a placement request, Amazon GameLift searches for available resources on the queue's destinations, scanning each until it finds resources or the placement request times out.
--
--
-- A game session placement request can also request player sessions. When a new game session is successfully created, Amazon GameLift creates a player session for each player included in the request.
--
-- When placing a game session, by default Amazon GameLift tries each fleet in the order they are listed in the queue configuration. Ideally, a queue's destinations are listed in preference order.
--
-- Alternatively, when requesting a game session with players, you can also provide latency data for each player in relevant Regions. Latency data indicates the performance lag a player experiences when connected to a fleet in the Region. Amazon GameLift uses latency data to reorder the list of destinations to place the game session in a Region with minimal lag. If latency data is provided for multiple players, Amazon GameLift calculates each Region's average lag for all players and reorders to get the best game play across all players.
--
-- To place a new game session request, specify the following:
--
--     * The queue name and a set of game session properties and settings
--
--     * A unique ID (such as a UUID) for the placement. You use this ID to track the status of the placement request
--
--     * (Optional) A set of player data and a unique player ID for each player that you are joining to the new game session (player data is optional, but if you include it, you must also provide a unique ID for each player)
--
--     * Latency data for all players (if you want to optimize game play for the players)
--
--
--
-- If successful, a new game session placement is created.
--
-- To track the status of a placement request, call 'DescribeGameSessionPlacement' and check the request's status. If the status is @FULFILLED@ , a new game session has been created and a game session ARN and Region are referenced. If the placement request times out, you can resubmit the request or retry it with a different queue.
--
--     * 'CreateGameSession'
--
--     * 'DescribeGameSessions'
--
--     * 'DescribeGameSessionDetails'
--
--     * 'SearchGameSessions'
--
--     * 'UpdateGameSession'
--
--     * 'GetGameSessionLogUrl'
--
--     * Game session placements
--
--     * 'StartGameSessionPlacement'
--
--     * 'DescribeGameSessionPlacement'
--
--     * 'StopGameSessionPlacement'
module Network.AWS.GameLift.StartGameSessionPlacement
  ( -- * Creating a Request
    startGameSessionPlacement,
    StartGameSessionPlacement,

    -- * Request Lenses
    sGameProperties,
    sGameSessionData,
    sGameSessionName,
    sDesiredPlayerSessions,
    sPlayerLatencies,
    sPlacementId,
    sGameSessionQueueName,
    sMaximumPlayerSessionCount,

    -- * Destructuring the Response
    startGameSessionPlacementResponse,
    StartGameSessionPlacementResponse,

    -- * Response Lenses
    starsGameSessionPlacement,
    starsResponseStatus,
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
-- /See:/ 'startGameSessionPlacement' smart constructor.
data StartGameSessionPlacement = StartGameSessionPlacement'
  { _sGameProperties ::
      !( Maybe
           [GameProperty]
       ),
    _sGameSessionData ::
      !(Maybe Text),
    _sGameSessionName ::
      !(Maybe Text),
    _sDesiredPlayerSessions ::
      !( Maybe
           [DesiredPlayerSession]
       ),
    _sPlayerLatencies ::
      !( Maybe
           [PlayerLatency]
       ),
    _sPlacementId ::
      !Text,
    _sGameSessionQueueName ::
      !Text,
    _sMaximumPlayerSessionCount ::
      !Nat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartGameSessionPlacement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sGameProperties' - Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 'GameSession' object with a request to start a new game session (see <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession Start a Game Session> ).
--
-- * 'sGameSessionData' - Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 'GameSession' object with a request to start a new game session (see <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession Start a Game Session> ).
--
-- * 'sGameSessionName' - A descriptive label that is associated with a game session. Session names do not need to be unique.
--
-- * 'sDesiredPlayerSessions' - Set of information on each player to create a player session for.
--
-- * 'sPlayerLatencies' - Set of values, expressed in milliseconds, indicating the amount of latency that a player experiences when connected to AWS Regions. This information is used to try to place the new game session where it can offer the best possible gameplay experience for the players.
--
-- * 'sPlacementId' - A unique identifier to assign to the new game session placement. This value is developer-defined. The value must be unique across all Regions and cannot be reused unless you are resubmitting a canceled or timed-out placement request.
--
-- * 'sGameSessionQueueName' - Name of the queue to use to place the new game session. You can use either the queue name or ARN value.
--
-- * 'sMaximumPlayerSessionCount' - The maximum number of players that can be connected simultaneously to the game session.
startGameSessionPlacement ::
  -- | 'sPlacementId'
  Text ->
  -- | 'sGameSessionQueueName'
  Text ->
  -- | 'sMaximumPlayerSessionCount'
  Natural ->
  StartGameSessionPlacement
startGameSessionPlacement
  pPlacementId_
  pGameSessionQueueName_
  pMaximumPlayerSessionCount_ =
    StartGameSessionPlacement'
      { _sGameProperties =
          Nothing,
        _sGameSessionData = Nothing,
        _sGameSessionName = Nothing,
        _sDesiredPlayerSessions = Nothing,
        _sPlayerLatencies = Nothing,
        _sPlacementId = pPlacementId_,
        _sGameSessionQueueName = pGameSessionQueueName_,
        _sMaximumPlayerSessionCount =
          _Nat # pMaximumPlayerSessionCount_
      }

-- | Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 'GameSession' object with a request to start a new game session (see <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession Start a Game Session> ).
sGameProperties :: Lens' StartGameSessionPlacement [GameProperty]
sGameProperties = lens _sGameProperties (\s a -> s {_sGameProperties = a}) . _Default . _Coerce

-- | Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 'GameSession' object with a request to start a new game session (see <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession Start a Game Session> ).
sGameSessionData :: Lens' StartGameSessionPlacement (Maybe Text)
sGameSessionData = lens _sGameSessionData (\s a -> s {_sGameSessionData = a})

-- | A descriptive label that is associated with a game session. Session names do not need to be unique.
sGameSessionName :: Lens' StartGameSessionPlacement (Maybe Text)
sGameSessionName = lens _sGameSessionName (\s a -> s {_sGameSessionName = a})

-- | Set of information on each player to create a player session for.
sDesiredPlayerSessions :: Lens' StartGameSessionPlacement [DesiredPlayerSession]
sDesiredPlayerSessions = lens _sDesiredPlayerSessions (\s a -> s {_sDesiredPlayerSessions = a}) . _Default . _Coerce

-- | Set of values, expressed in milliseconds, indicating the amount of latency that a player experiences when connected to AWS Regions. This information is used to try to place the new game session where it can offer the best possible gameplay experience for the players.
sPlayerLatencies :: Lens' StartGameSessionPlacement [PlayerLatency]
sPlayerLatencies = lens _sPlayerLatencies (\s a -> s {_sPlayerLatencies = a}) . _Default . _Coerce

-- | A unique identifier to assign to the new game session placement. This value is developer-defined. The value must be unique across all Regions and cannot be reused unless you are resubmitting a canceled or timed-out placement request.
sPlacementId :: Lens' StartGameSessionPlacement Text
sPlacementId = lens _sPlacementId (\s a -> s {_sPlacementId = a})

-- | Name of the queue to use to place the new game session. You can use either the queue name or ARN value.
sGameSessionQueueName :: Lens' StartGameSessionPlacement Text
sGameSessionQueueName = lens _sGameSessionQueueName (\s a -> s {_sGameSessionQueueName = a})

-- | The maximum number of players that can be connected simultaneously to the game session.
sMaximumPlayerSessionCount :: Lens' StartGameSessionPlacement Natural
sMaximumPlayerSessionCount = lens _sMaximumPlayerSessionCount (\s a -> s {_sMaximumPlayerSessionCount = a}) . _Nat

instance AWSRequest StartGameSessionPlacement where
  type
    Rs StartGameSessionPlacement =
      StartGameSessionPlacementResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          StartGameSessionPlacementResponse'
            <$> (x .?> "GameSessionPlacement")
            <*> (pure (fromEnum s))
      )

instance Hashable StartGameSessionPlacement

instance NFData StartGameSessionPlacement

instance ToHeaders StartGameSessionPlacement where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.StartGameSessionPlacement" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartGameSessionPlacement where
  toJSON StartGameSessionPlacement' {..} =
    object
      ( catMaybes
          [ ("GameProperties" .=) <$> _sGameProperties,
            ("GameSessionData" .=) <$> _sGameSessionData,
            ("GameSessionName" .=) <$> _sGameSessionName,
            ("DesiredPlayerSessions" .=)
              <$> _sDesiredPlayerSessions,
            ("PlayerLatencies" .=) <$> _sPlayerLatencies,
            Just ("PlacementId" .= _sPlacementId),
            Just
              ("GameSessionQueueName" .= _sGameSessionQueueName),
            Just
              ( "MaximumPlayerSessionCount"
                  .= _sMaximumPlayerSessionCount
              )
          ]
      )

instance ToPath StartGameSessionPlacement where
  toPath = const "/"

instance ToQuery StartGameSessionPlacement where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'startGameSessionPlacementResponse' smart constructor.
data StartGameSessionPlacementResponse = StartGameSessionPlacementResponse'
  { _starsGameSessionPlacement ::
      !( Maybe
           GameSessionPlacement
       ),
    _starsResponseStatus ::
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

-- | Creates a value of 'StartGameSessionPlacementResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'starsGameSessionPlacement' - Object that describes the newly created game session placement. This object includes all the information provided in the request, as well as start/end time stamps and placement status.
--
-- * 'starsResponseStatus' - -- | The response status code.
startGameSessionPlacementResponse ::
  -- | 'starsResponseStatus'
  Int ->
  StartGameSessionPlacementResponse
startGameSessionPlacementResponse pResponseStatus_ =
  StartGameSessionPlacementResponse'
    { _starsGameSessionPlacement =
        Nothing,
      _starsResponseStatus = pResponseStatus_
    }

-- | Object that describes the newly created game session placement. This object includes all the information provided in the request, as well as start/end time stamps and placement status.
starsGameSessionPlacement :: Lens' StartGameSessionPlacementResponse (Maybe GameSessionPlacement)
starsGameSessionPlacement = lens _starsGameSessionPlacement (\s a -> s {_starsGameSessionPlacement = a})

-- | -- | The response status code.
starsResponseStatus :: Lens' StartGameSessionPlacementResponse Int
starsResponseStatus = lens _starsResponseStatus (\s a -> s {_starsResponseStatus = a})

instance NFData StartGameSessionPlacementResponse
