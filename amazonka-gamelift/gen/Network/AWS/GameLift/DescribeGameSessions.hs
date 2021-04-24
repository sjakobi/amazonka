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
-- Module      : Network.AWS.GameLift.DescribeGameSessions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a set of one or more game sessions. Request a specific game session or request all game sessions on a fleet. Alternatively, use 'SearchGameSessions' to request a set of active game sessions that are filtered by certain criteria. To retrieve protection policy settings for game sessions, use 'DescribeGameSessionDetails' .
--
--
-- To get game sessions, specify one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a 'GameSession' object is returned for each game session matching the request.
--
-- /Available in Amazon GameLift Local./
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
--
--
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.DescribeGameSessions
  ( -- * Creating a Request
    describeGameSessions,
    DescribeGameSessions,

    -- * Request Lenses
    dgsNextToken,
    dgsFleetId,
    dgsGameSessionId,
    dgsStatusFilter,
    dgsAliasId,
    dgsLimit,

    -- * Destructuring the Response
    describeGameSessionsResponse,
    DescribeGameSessionsResponse,

    -- * Response Lenses
    dgsrrsNextToken,
    dgsrrsGameSessions,
    dgsrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'describeGameSessions' smart constructor.
data DescribeGameSessions = DescribeGameSessions'
  { _dgsNextToken ::
      !(Maybe Text),
    _dgsFleetId :: !(Maybe Text),
    _dgsGameSessionId ::
      !(Maybe Text),
    _dgsStatusFilter ::
      !(Maybe Text),
    _dgsAliasId :: !(Maybe Text),
    _dgsLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeGameSessions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsNextToken' - Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- * 'dgsFleetId' - A unique identifier for a fleet to retrieve all game sessions for. You can use either the fleet ID or ARN value.
--
-- * 'dgsGameSessionId' - A unique identifier for the game session to retrieve.
--
-- * 'dgsStatusFilter' - Game session status to filter results on. Possible game session statuses include @ACTIVE@ , @TERMINATED@ , @ACTIVATING@ , and @TERMINATING@ (the last two are transitory).
--
-- * 'dgsAliasId' - A unique identifier for an alias associated with the fleet to retrieve all game sessions for. You can use either the alias ID or ARN value.
--
-- * 'dgsLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
describeGameSessions ::
  DescribeGameSessions
describeGameSessions =
  DescribeGameSessions'
    { _dgsNextToken = Nothing,
      _dgsFleetId = Nothing,
      _dgsGameSessionId = Nothing,
      _dgsStatusFilter = Nothing,
      _dgsAliasId = Nothing,
      _dgsLimit = Nothing
    }

-- | Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
dgsNextToken :: Lens' DescribeGameSessions (Maybe Text)
dgsNextToken = lens _dgsNextToken (\s a -> s {_dgsNextToken = a})

-- | A unique identifier for a fleet to retrieve all game sessions for. You can use either the fleet ID or ARN value.
dgsFleetId :: Lens' DescribeGameSessions (Maybe Text)
dgsFleetId = lens _dgsFleetId (\s a -> s {_dgsFleetId = a})

-- | A unique identifier for the game session to retrieve.
dgsGameSessionId :: Lens' DescribeGameSessions (Maybe Text)
dgsGameSessionId = lens _dgsGameSessionId (\s a -> s {_dgsGameSessionId = a})

-- | Game session status to filter results on. Possible game session statuses include @ACTIVE@ , @TERMINATED@ , @ACTIVATING@ , and @TERMINATING@ (the last two are transitory).
dgsStatusFilter :: Lens' DescribeGameSessions (Maybe Text)
dgsStatusFilter = lens _dgsStatusFilter (\s a -> s {_dgsStatusFilter = a})

-- | A unique identifier for an alias associated with the fleet to retrieve all game sessions for. You can use either the alias ID or ARN value.
dgsAliasId :: Lens' DescribeGameSessions (Maybe Text)
dgsAliasId = lens _dgsAliasId (\s a -> s {_dgsAliasId = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
dgsLimit :: Lens' DescribeGameSessions (Maybe Natural)
dgsLimit = lens _dgsLimit (\s a -> s {_dgsLimit = a}) . mapping _Nat

instance AWSPager DescribeGameSessions where
  page rq rs
    | stop (rs ^. dgsrrsNextToken) = Nothing
    | stop (rs ^. dgsrrsGameSessions) = Nothing
    | otherwise =
      Just $ rq & dgsNextToken .~ rs ^. dgsrrsNextToken

instance AWSRequest DescribeGameSessions where
  type
    Rs DescribeGameSessions =
      DescribeGameSessionsResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeGameSessionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "GameSessions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeGameSessions

instance NFData DescribeGameSessions

instance ToHeaders DescribeGameSessions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.DescribeGameSessions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeGameSessions where
  toJSON DescribeGameSessions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dgsNextToken,
            ("FleetId" .=) <$> _dgsFleetId,
            ("GameSessionId" .=) <$> _dgsGameSessionId,
            ("StatusFilter" .=) <$> _dgsStatusFilter,
            ("AliasId" .=) <$> _dgsAliasId,
            ("Limit" .=) <$> _dgsLimit
          ]
      )

instance ToPath DescribeGameSessions where
  toPath = const "/"

instance ToQuery DescribeGameSessions where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeGameSessionsResponse' smart constructor.
data DescribeGameSessionsResponse = DescribeGameSessionsResponse'
  { _dgsrrsNextToken ::
      !(Maybe Text),
    _dgsrrsGameSessions ::
      !( Maybe
           [GameSession]
       ),
    _dgsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeGameSessionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsrrsNextToken' - Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'dgsrrsGameSessions' - A collection of objects containing game session properties for each session matching the request.
--
-- * 'dgsrrsResponseStatus' - -- | The response status code.
describeGameSessionsResponse ::
  -- | 'dgsrrsResponseStatus'
  Int ->
  DescribeGameSessionsResponse
describeGameSessionsResponse pResponseStatus_ =
  DescribeGameSessionsResponse'
    { _dgsrrsNextToken =
        Nothing,
      _dgsrrsGameSessions = Nothing,
      _dgsrrsResponseStatus = pResponseStatus_
    }

-- | Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
dgsrrsNextToken :: Lens' DescribeGameSessionsResponse (Maybe Text)
dgsrrsNextToken = lens _dgsrrsNextToken (\s a -> s {_dgsrrsNextToken = a})

-- | A collection of objects containing game session properties for each session matching the request.
dgsrrsGameSessions :: Lens' DescribeGameSessionsResponse [GameSession]
dgsrrsGameSessions = lens _dgsrrsGameSessions (\s a -> s {_dgsrrsGameSessions = a}) . _Default . _Coerce

-- | -- | The response status code.
dgsrrsResponseStatus :: Lens' DescribeGameSessionsResponse Int
dgsrrsResponseStatus = lens _dgsrrsResponseStatus (\s a -> s {_dgsrrsResponseStatus = a})

instance NFData DescribeGameSessionsResponse
