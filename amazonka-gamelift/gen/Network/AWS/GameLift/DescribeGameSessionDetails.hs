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
-- Module      : Network.AWS.GameLift.DescribeGameSessionDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves properties, including the protection policy in force, for one or more game sessions. This operation can be used in several ways: (1) provide a @GameSessionId@ or @GameSessionArn@ to request details for a specific game session; (2) provide either a @FleetId@ or an @AliasId@ to request properties for all game sessions running on a fleet.
--
--
-- To get game session record(s), specify just one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a 'GameSessionDetail' object is returned for each session matching the request.
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
module Network.AWS.GameLift.DescribeGameSessionDetails
  ( -- * Creating a Request
    describeGameSessionDetails,
    DescribeGameSessionDetails,

    -- * Request Lenses
    dgsdNextToken,
    dgsdFleetId,
    dgsdGameSessionId,
    dgsdStatusFilter,
    dgsdAliasId,
    dgsdLimit,

    -- * Destructuring the Response
    describeGameSessionDetailsResponse,
    DescribeGameSessionDetailsResponse,

    -- * Response Lenses
    dgsdrrsNextToken,
    dgsdrrsGameSessionDetails,
    dgsdrrsResponseStatus,
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
-- /See:/ 'describeGameSessionDetails' smart constructor.
data DescribeGameSessionDetails = DescribeGameSessionDetails'
  { _dgsdNextToken ::
      !(Maybe Text),
    _dgsdFleetId ::
      !(Maybe Text),
    _dgsdGameSessionId ::
      !(Maybe Text),
    _dgsdStatusFilter ::
      !(Maybe Text),
    _dgsdAliasId ::
      !(Maybe Text),
    _dgsdLimit ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeGameSessionDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsdNextToken' - Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- * 'dgsdFleetId' - A unique identifier for a fleet to retrieve all game sessions active on the fleet. You can use either the fleet ID or ARN value.
--
-- * 'dgsdGameSessionId' - A unique identifier for the game session to retrieve.
--
-- * 'dgsdStatusFilter' - Game session status to filter results on. Possible game session statuses include @ACTIVE@ , @TERMINATED@ , @ACTIVATING@ and @TERMINATING@ (the last two are transitory).
--
-- * 'dgsdAliasId' - A unique identifier for an alias associated with the fleet to retrieve all game sessions for. You can use either the alias ID or ARN value.
--
-- * 'dgsdLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
describeGameSessionDetails ::
  DescribeGameSessionDetails
describeGameSessionDetails =
  DescribeGameSessionDetails'
    { _dgsdNextToken =
        Nothing,
      _dgsdFleetId = Nothing,
      _dgsdGameSessionId = Nothing,
      _dgsdStatusFilter = Nothing,
      _dgsdAliasId = Nothing,
      _dgsdLimit = Nothing
    }

-- | Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
dgsdNextToken :: Lens' DescribeGameSessionDetails (Maybe Text)
dgsdNextToken = lens _dgsdNextToken (\s a -> s {_dgsdNextToken = a})

-- | A unique identifier for a fleet to retrieve all game sessions active on the fleet. You can use either the fleet ID or ARN value.
dgsdFleetId :: Lens' DescribeGameSessionDetails (Maybe Text)
dgsdFleetId = lens _dgsdFleetId (\s a -> s {_dgsdFleetId = a})

-- | A unique identifier for the game session to retrieve.
dgsdGameSessionId :: Lens' DescribeGameSessionDetails (Maybe Text)
dgsdGameSessionId = lens _dgsdGameSessionId (\s a -> s {_dgsdGameSessionId = a})

-- | Game session status to filter results on. Possible game session statuses include @ACTIVE@ , @TERMINATED@ , @ACTIVATING@ and @TERMINATING@ (the last two are transitory).
dgsdStatusFilter :: Lens' DescribeGameSessionDetails (Maybe Text)
dgsdStatusFilter = lens _dgsdStatusFilter (\s a -> s {_dgsdStatusFilter = a})

-- | A unique identifier for an alias associated with the fleet to retrieve all game sessions for. You can use either the alias ID or ARN value.
dgsdAliasId :: Lens' DescribeGameSessionDetails (Maybe Text)
dgsdAliasId = lens _dgsdAliasId (\s a -> s {_dgsdAliasId = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
dgsdLimit :: Lens' DescribeGameSessionDetails (Maybe Natural)
dgsdLimit = lens _dgsdLimit (\s a -> s {_dgsdLimit = a}) . mapping _Nat

instance AWSPager DescribeGameSessionDetails where
  page rq rs
    | stop (rs ^. dgsdrrsNextToken) = Nothing
    | stop (rs ^. dgsdrrsGameSessionDetails) = Nothing
    | otherwise =
      Just $ rq & dgsdNextToken .~ rs ^. dgsdrrsNextToken

instance AWSRequest DescribeGameSessionDetails where
  type
    Rs DescribeGameSessionDetails =
      DescribeGameSessionDetailsResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeGameSessionDetailsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "GameSessionDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeGameSessionDetails

instance NFData DescribeGameSessionDetails

instance ToHeaders DescribeGameSessionDetails where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "GameLift.DescribeGameSessionDetails" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeGameSessionDetails where
  toJSON DescribeGameSessionDetails' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dgsdNextToken,
            ("FleetId" .=) <$> _dgsdFleetId,
            ("GameSessionId" .=) <$> _dgsdGameSessionId,
            ("StatusFilter" .=) <$> _dgsdStatusFilter,
            ("AliasId" .=) <$> _dgsdAliasId,
            ("Limit" .=) <$> _dgsdLimit
          ]
      )

instance ToPath DescribeGameSessionDetails where
  toPath = const "/"

instance ToQuery DescribeGameSessionDetails where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeGameSessionDetailsResponse' smart constructor.
data DescribeGameSessionDetailsResponse = DescribeGameSessionDetailsResponse'
  { _dgsdrrsNextToken ::
      !( Maybe
           Text
       ),
    _dgsdrrsGameSessionDetails ::
      !( Maybe
           [GameSessionDetail]
       ),
    _dgsdrrsResponseStatus ::
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

-- | Creates a value of 'DescribeGameSessionDetailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsdrrsNextToken' - Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'dgsdrrsGameSessionDetails' - A collection of objects containing game session properties and the protection policy currently in force for each session matching the request.
--
-- * 'dgsdrrsResponseStatus' - -- | The response status code.
describeGameSessionDetailsResponse ::
  -- | 'dgsdrrsResponseStatus'
  Int ->
  DescribeGameSessionDetailsResponse
describeGameSessionDetailsResponse pResponseStatus_ =
  DescribeGameSessionDetailsResponse'
    { _dgsdrrsNextToken =
        Nothing,
      _dgsdrrsGameSessionDetails = Nothing,
      _dgsdrrsResponseStatus =
        pResponseStatus_
    }

-- | Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
dgsdrrsNextToken :: Lens' DescribeGameSessionDetailsResponse (Maybe Text)
dgsdrrsNextToken = lens _dgsdrrsNextToken (\s a -> s {_dgsdrrsNextToken = a})

-- | A collection of objects containing game session properties and the protection policy currently in force for each session matching the request.
dgsdrrsGameSessionDetails :: Lens' DescribeGameSessionDetailsResponse [GameSessionDetail]
dgsdrrsGameSessionDetails = lens _dgsdrrsGameSessionDetails (\s a -> s {_dgsdrrsGameSessionDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
dgsdrrsResponseStatus :: Lens' DescribeGameSessionDetailsResponse Int
dgsdrrsResponseStatus = lens _dgsdrrsResponseStatus (\s a -> s {_dgsdrrsResponseStatus = a})

instance NFData DescribeGameSessionDetailsResponse
