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
-- Module      : Network.AWS.GameLift.DescribePlayerSessions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves properties for one or more player sessions. This operation can be used in several ways: (1) provide a @PlayerSessionId@ to request properties for a specific player session; (2) provide a @GameSessionId@ to request properties for all player sessions in the specified game session; (3) provide a @PlayerId@ to request properties for all player sessions of a specified player.
--
--
-- To get game session record(s), specify only one of the following: a player session ID, a game session ID, or a player ID. You can filter this request by player session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a 'PlayerSession' object is returned for each session matching the request.
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
--
--
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.DescribePlayerSessions
  ( -- * Creating a Request
    describePlayerSessions,
    DescribePlayerSessions,

    -- * Request Lenses
    dNextToken,
    dPlayerSessionStatusFilter,
    dPlayerId,
    dPlayerSessionId,
    dGameSessionId,
    dLimit,

    -- * Destructuring the Response
    describePlayerSessionsResponse,
    DescribePlayerSessionsResponse,

    -- * Response Lenses
    dpsrrsNextToken,
    dpsrrsPlayerSessions,
    dpsrrsResponseStatus,
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
-- /See:/ 'describePlayerSessions' smart constructor.
data DescribePlayerSessions = DescribePlayerSessions'
  { _dNextToken ::
      !(Maybe Text),
    _dPlayerSessionStatusFilter ::
      !(Maybe Text),
    _dPlayerId ::
      !(Maybe Text),
    _dPlayerSessionId ::
      !(Maybe Text),
    _dGameSessionId ::
      !(Maybe Text),
    _dLimit :: !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePlayerSessions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNextToken' - Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.
--
-- * 'dPlayerSessionStatusFilter' - Player session status to filter results on. Possible player session statuses include the following:     * __RESERVED__ -- The player session request has been received, but the player has not yet connected to the server process and/or been validated.      * __ACTIVE__ -- The player has been validated by the server process and is currently connected.     * __COMPLETED__ -- The player connection has been dropped.     * __TIMEDOUT__ -- A player session request was received, but the player did not connect and/or was not validated within the timeout limit (60 seconds).
--
-- * 'dPlayerId' - A unique identifier for a player to retrieve player sessions for.
--
-- * 'dPlayerSessionId' - A unique identifier for a player session to retrieve.
--
-- * 'dGameSessionId' - A unique identifier for the game session to retrieve player sessions for.
--
-- * 'dLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.
describePlayerSessions ::
  DescribePlayerSessions
describePlayerSessions =
  DescribePlayerSessions'
    { _dNextToken = Nothing,
      _dPlayerSessionStatusFilter = Nothing,
      _dPlayerId = Nothing,
      _dPlayerSessionId = Nothing,
      _dGameSessionId = Nothing,
      _dLimit = Nothing
    }

-- | Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.
dNextToken :: Lens' DescribePlayerSessions (Maybe Text)
dNextToken = lens _dNextToken (\s a -> s {_dNextToken = a})

-- | Player session status to filter results on. Possible player session statuses include the following:     * __RESERVED__ -- The player session request has been received, but the player has not yet connected to the server process and/or been validated.      * __ACTIVE__ -- The player has been validated by the server process and is currently connected.     * __COMPLETED__ -- The player connection has been dropped.     * __TIMEDOUT__ -- A player session request was received, but the player did not connect and/or was not validated within the timeout limit (60 seconds).
dPlayerSessionStatusFilter :: Lens' DescribePlayerSessions (Maybe Text)
dPlayerSessionStatusFilter = lens _dPlayerSessionStatusFilter (\s a -> s {_dPlayerSessionStatusFilter = a})

-- | A unique identifier for a player to retrieve player sessions for.
dPlayerId :: Lens' DescribePlayerSessions (Maybe Text)
dPlayerId = lens _dPlayerId (\s a -> s {_dPlayerId = a})

-- | A unique identifier for a player session to retrieve.
dPlayerSessionId :: Lens' DescribePlayerSessions (Maybe Text)
dPlayerSessionId = lens _dPlayerSessionId (\s a -> s {_dPlayerSessionId = a})

-- | A unique identifier for the game session to retrieve player sessions for.
dGameSessionId :: Lens' DescribePlayerSessions (Maybe Text)
dGameSessionId = lens _dGameSessionId (\s a -> s {_dGameSessionId = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.
dLimit :: Lens' DescribePlayerSessions (Maybe Natural)
dLimit = lens _dLimit (\s a -> s {_dLimit = a}) . mapping _Nat

instance AWSPager DescribePlayerSessions where
  page rq rs
    | stop (rs ^. dpsrrsNextToken) = Nothing
    | stop (rs ^. dpsrrsPlayerSessions) = Nothing
    | otherwise =
      Just $ rq & dNextToken .~ rs ^. dpsrrsNextToken

instance AWSRequest DescribePlayerSessions where
  type
    Rs DescribePlayerSessions =
      DescribePlayerSessionsResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribePlayerSessionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PlayerSessions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePlayerSessions

instance NFData DescribePlayerSessions

instance ToHeaders DescribePlayerSessions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.DescribePlayerSessions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePlayerSessions where
  toJSON DescribePlayerSessions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dNextToken,
            ("PlayerSessionStatusFilter" .=)
              <$> _dPlayerSessionStatusFilter,
            ("PlayerId" .=) <$> _dPlayerId,
            ("PlayerSessionId" .=) <$> _dPlayerSessionId,
            ("GameSessionId" .=) <$> _dGameSessionId,
            ("Limit" .=) <$> _dLimit
          ]
      )

instance ToPath DescribePlayerSessions where
  toPath = const "/"

instance ToQuery DescribePlayerSessions where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describePlayerSessionsResponse' smart constructor.
data DescribePlayerSessionsResponse = DescribePlayerSessionsResponse'
  { _dpsrrsNextToken ::
      !( Maybe
           Text
       ),
    _dpsrrsPlayerSessions ::
      !( Maybe
           [PlayerSession]
       ),
    _dpsrrsResponseStatus ::
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

-- | Creates a value of 'DescribePlayerSessionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpsrrsNextToken' - Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'dpsrrsPlayerSessions' - A collection of objects containing properties for each player session that matches the request.
--
-- * 'dpsrrsResponseStatus' - -- | The response status code.
describePlayerSessionsResponse ::
  -- | 'dpsrrsResponseStatus'
  Int ->
  DescribePlayerSessionsResponse
describePlayerSessionsResponse pResponseStatus_ =
  DescribePlayerSessionsResponse'
    { _dpsrrsNextToken =
        Nothing,
      _dpsrrsPlayerSessions = Nothing,
      _dpsrrsResponseStatus = pResponseStatus_
    }

-- | Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
dpsrrsNextToken :: Lens' DescribePlayerSessionsResponse (Maybe Text)
dpsrrsNextToken = lens _dpsrrsNextToken (\s a -> s {_dpsrrsNextToken = a})

-- | A collection of objects containing properties for each player session that matches the request.
dpsrrsPlayerSessions :: Lens' DescribePlayerSessionsResponse [PlayerSession]
dpsrrsPlayerSessions = lens _dpsrrsPlayerSessions (\s a -> s {_dpsrrsPlayerSessions = a}) . _Default . _Coerce

-- | -- | The response status code.
dpsrrsResponseStatus :: Lens' DescribePlayerSessionsResponse Int
dpsrrsResponseStatus = lens _dpsrrsResponseStatus (\s a -> s {_dpsrrsResponseStatus = a})

instance NFData DescribePlayerSessionsResponse
