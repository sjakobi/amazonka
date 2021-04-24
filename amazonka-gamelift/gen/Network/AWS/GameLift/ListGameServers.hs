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
-- Module      : Network.AWS.GameLift.ListGameServers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __This operation is used with the Amazon GameLift FleetIQ solution and game server groups.__
--
--
-- Retrieves information on all game servers that are currently active in a specified game server group. You can opt to sort the list by game server age. Use the pagination parameters to retrieve results in a set of sequential segments.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html GameLift FleetIQ Guide>
--
-- __Related operations__
--
--     * 'RegisterGameServer'
--
--     * 'ListGameServers'
--
--     * 'ClaimGameServer'
--
--     * 'DescribeGameServer'
--
--     * 'UpdateGameServer'
--
--     * 'DeregisterGameServer'
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.ListGameServers
  ( -- * Creating a Request
    listGameServers,
    ListGameServers,

    -- * Request Lenses
    lgsSortOrder,
    lgsNextToken,
    lgsLimit,
    lgsGameServerGroupName,

    -- * Destructuring the Response
    listGameServersResponse,
    ListGameServersResponse,

    -- * Response Lenses
    lgsrrsNextToken,
    lgsrrsGameServers,
    lgsrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listGameServers' smart constructor.
data ListGameServers = ListGameServers'
  { _lgsSortOrder ::
      !(Maybe SortOrder),
    _lgsNextToken :: !(Maybe Text),
    _lgsLimit :: !(Maybe Nat),
    _lgsGameServerGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGameServers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgsSortOrder' - Indicates how to sort the returned data based on game server registration timestamp. Use ASCENDING to retrieve oldest game servers first, or use DESCENDING to retrieve newest game servers first. If this parameter is left empty, game servers are returned in no particular order.
--
-- * 'lgsNextToken' - A token that indicates the start of the next sequential segment of results. Use the token returned with the previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- * 'lgsLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential segments.
--
-- * 'lgsGameServerGroupName' - An identifier for the game server group to retrieve a list of game servers from. Use either the 'GameServerGroup' name or ARN value.
listGameServers ::
  -- | 'lgsGameServerGroupName'
  Text ->
  ListGameServers
listGameServers pGameServerGroupName_ =
  ListGameServers'
    { _lgsSortOrder = Nothing,
      _lgsNextToken = Nothing,
      _lgsLimit = Nothing,
      _lgsGameServerGroupName = pGameServerGroupName_
    }

-- | Indicates how to sort the returned data based on game server registration timestamp. Use ASCENDING to retrieve oldest game servers first, or use DESCENDING to retrieve newest game servers first. If this parameter is left empty, game servers are returned in no particular order.
lgsSortOrder :: Lens' ListGameServers (Maybe SortOrder)
lgsSortOrder = lens _lgsSortOrder (\s a -> s {_lgsSortOrder = a})

-- | A token that indicates the start of the next sequential segment of results. Use the token returned with the previous call to this operation. To start at the beginning of the result set, do not specify a value.
lgsNextToken :: Lens' ListGameServers (Maybe Text)
lgsNextToken = lens _lgsNextToken (\s a -> s {_lgsNextToken = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential segments.
lgsLimit :: Lens' ListGameServers (Maybe Natural)
lgsLimit = lens _lgsLimit (\s a -> s {_lgsLimit = a}) . mapping _Nat

-- | An identifier for the game server group to retrieve a list of game servers from. Use either the 'GameServerGroup' name or ARN value.
lgsGameServerGroupName :: Lens' ListGameServers Text
lgsGameServerGroupName = lens _lgsGameServerGroupName (\s a -> s {_lgsGameServerGroupName = a})

instance AWSPager ListGameServers where
  page rq rs
    | stop (rs ^. lgsrrsNextToken) = Nothing
    | stop (rs ^. lgsrrsGameServers) = Nothing
    | otherwise =
      Just $ rq & lgsNextToken .~ rs ^. lgsrrsNextToken

instance AWSRequest ListGameServers where
  type Rs ListGameServers = ListGameServersResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          ListGameServersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "GameServers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListGameServers

instance NFData ListGameServers

instance ToHeaders ListGameServers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.ListGameServers" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListGameServers where
  toJSON ListGameServers' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lgsSortOrder,
            ("NextToken" .=) <$> _lgsNextToken,
            ("Limit" .=) <$> _lgsLimit,
            Just
              ("GameServerGroupName" .= _lgsGameServerGroupName)
          ]
      )

instance ToPath ListGameServers where
  toPath = const "/"

instance ToQuery ListGameServers where
  toQuery = const mempty

-- | /See:/ 'listGameServersResponse' smart constructor.
data ListGameServersResponse = ListGameServersResponse'
  { _lgsrrsNextToken ::
      !(Maybe Text),
    _lgsrrsGameServers ::
      !(Maybe [GameServer]),
    _lgsrrsResponseStatus ::
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

-- | Creates a value of 'ListGameServersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgsrrsNextToken' - A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'lgsrrsGameServers' - A collection of game server objects that match the request.
--
-- * 'lgsrrsResponseStatus' - -- | The response status code.
listGameServersResponse ::
  -- | 'lgsrrsResponseStatus'
  Int ->
  ListGameServersResponse
listGameServersResponse pResponseStatus_ =
  ListGameServersResponse'
    { _lgsrrsNextToken =
        Nothing,
      _lgsrrsGameServers = Nothing,
      _lgsrrsResponseStatus = pResponseStatus_
    }

-- | A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
lgsrrsNextToken :: Lens' ListGameServersResponse (Maybe Text)
lgsrrsNextToken = lens _lgsrrsNextToken (\s a -> s {_lgsrrsNextToken = a})

-- | A collection of game server objects that match the request.
lgsrrsGameServers :: Lens' ListGameServersResponse [GameServer]
lgsrrsGameServers = lens _lgsrrsGameServers (\s a -> s {_lgsrrsGameServers = a}) . _Default . _Coerce

-- | -- | The response status code.
lgsrrsResponseStatus :: Lens' ListGameServersResponse Int
lgsrrsResponseStatus = lens _lgsrrsResponseStatus (\s a -> s {_lgsrrsResponseStatus = a})

instance NFData ListGameServersResponse
