{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameServer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServer where

import Network.AWS.GameLift.Types.GameServerClaimStatus
import Network.AWS.GameLift.Types.GameServerUtilizationStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | __This data type is used with the Amazon GameLift FleetIQ and game server groups.__
--
--
-- Properties describing a game server that is running on an instance in a 'GameServerGroup' .
--
-- A game server is created by a successful call to @RegisterGameServer@ and deleted by calling @DeregisterGameServer@ . A game server is claimed to host a game session by calling @ClaimGameServer@ .
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
-- /See:/ 'gameServer' smart constructor.
data GameServer = GameServer'
  { _gsInstanceId ::
      !(Maybe Text),
    _gsUtilizationStatus ::
      !(Maybe GameServerUtilizationStatus),
    _gsClaimStatus :: !(Maybe GameServerClaimStatus),
    _gsGameServerData :: !(Maybe Text),
    _gsLastClaimTime :: !(Maybe POSIX),
    _gsRegistrationTime :: !(Maybe POSIX),
    _gsGameServerGroupARN :: !(Maybe Text),
    _gsGameServerId :: !(Maybe Text),
    _gsGameServerGroupName :: !(Maybe Text),
    _gsConnectionInfo :: !(Maybe Text),
    _gsLastHealthCheckTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GameServer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsInstanceId' - The unique identifier for the instance where the game server is running. This ID is available in the instance metadata. EC2 instance IDs use a 17-character format, for example: @i-1234567890abcdef0@ .
--
-- * 'gsUtilizationStatus' - Indicates whether the game server is currently available for new games or is busy. Possible statuses include:     * @AVAILABLE@ - The game server is available to be claimed. A game server that has been claimed remains in this status until it reports game hosting activity.      * @UTILIZED@ - The game server is currently hosting a game session with players.
--
-- * 'gsClaimStatus' - Indicates when an available game server has been reserved for gameplay but has not yet started hosting a game. Once it is claimed, the game server remains in @CLAIMED@ status for a maximum of one minute. During this time, game clients connect to the game server to start the game and trigger the game server to update its utilization status. After one minute, the game server claim status reverts to null.
--
-- * 'gsGameServerData' - A set of custom game server properties, formatted as a single string value. This data is passed to a game client or service when it requests information on game servers using 'ListGameServers' or 'ClaimGameServer' .
--
-- * 'gsLastClaimTime' - Timestamp that indicates the last time the game server was claimed with a 'ClaimGameServer' request. The format is a number expressed in Unix time as milliseconds (for example @"1469498468.057"@ ). This value is used to calculate when a claimed game server's status should revert to null.
--
-- * 'gsRegistrationTime' - Timestamp that indicates when the game server was created with a 'RegisterGameServer' request. The format is a number expressed in Unix time as milliseconds (for example @"1469498468.057"@ ).
--
-- * 'gsGameServerGroupARN' - The ARN identifier for the game server group where the game server is located.
--
-- * 'gsGameServerId' - A custom string that uniquely identifies the game server. Game server IDs are developer-defined and are unique across all game server groups in an AWS account.
--
-- * 'gsGameServerGroupName' - A unique identifier for the game server group where the game server is running. Use either the 'GameServerGroup' name or ARN value.
--
-- * 'gsConnectionInfo' - The port and IP address that must be used to establish a client connection to the game server.
--
-- * 'gsLastHealthCheckTime' - Timestamp that indicates the last time the game server was updated with health status using an 'UpdateGameServer' request. The format is a number expressed in Unix time as milliseconds (for example @"1469498468.057"@ ). After game server registration, this property is only changed when a game server update specifies a health check value.
gameServer ::
  GameServer
gameServer =
  GameServer'
    { _gsInstanceId = Nothing,
      _gsUtilizationStatus = Nothing,
      _gsClaimStatus = Nothing,
      _gsGameServerData = Nothing,
      _gsLastClaimTime = Nothing,
      _gsRegistrationTime = Nothing,
      _gsGameServerGroupARN = Nothing,
      _gsGameServerId = Nothing,
      _gsGameServerGroupName = Nothing,
      _gsConnectionInfo = Nothing,
      _gsLastHealthCheckTime = Nothing
    }

-- | The unique identifier for the instance where the game server is running. This ID is available in the instance metadata. EC2 instance IDs use a 17-character format, for example: @i-1234567890abcdef0@ .
gsInstanceId :: Lens' GameServer (Maybe Text)
gsInstanceId = lens _gsInstanceId (\s a -> s {_gsInstanceId = a})

-- | Indicates whether the game server is currently available for new games or is busy. Possible statuses include:     * @AVAILABLE@ - The game server is available to be claimed. A game server that has been claimed remains in this status until it reports game hosting activity.      * @UTILIZED@ - The game server is currently hosting a game session with players.
gsUtilizationStatus :: Lens' GameServer (Maybe GameServerUtilizationStatus)
gsUtilizationStatus = lens _gsUtilizationStatus (\s a -> s {_gsUtilizationStatus = a})

-- | Indicates when an available game server has been reserved for gameplay but has not yet started hosting a game. Once it is claimed, the game server remains in @CLAIMED@ status for a maximum of one minute. During this time, game clients connect to the game server to start the game and trigger the game server to update its utilization status. After one minute, the game server claim status reverts to null.
gsClaimStatus :: Lens' GameServer (Maybe GameServerClaimStatus)
gsClaimStatus = lens _gsClaimStatus (\s a -> s {_gsClaimStatus = a})

-- | A set of custom game server properties, formatted as a single string value. This data is passed to a game client or service when it requests information on game servers using 'ListGameServers' or 'ClaimGameServer' .
gsGameServerData :: Lens' GameServer (Maybe Text)
gsGameServerData = lens _gsGameServerData (\s a -> s {_gsGameServerData = a})

-- | Timestamp that indicates the last time the game server was claimed with a 'ClaimGameServer' request. The format is a number expressed in Unix time as milliseconds (for example @"1469498468.057"@ ). This value is used to calculate when a claimed game server's status should revert to null.
gsLastClaimTime :: Lens' GameServer (Maybe UTCTime)
gsLastClaimTime = lens _gsLastClaimTime (\s a -> s {_gsLastClaimTime = a}) . mapping _Time

-- | Timestamp that indicates when the game server was created with a 'RegisterGameServer' request. The format is a number expressed in Unix time as milliseconds (for example @"1469498468.057"@ ).
gsRegistrationTime :: Lens' GameServer (Maybe UTCTime)
gsRegistrationTime = lens _gsRegistrationTime (\s a -> s {_gsRegistrationTime = a}) . mapping _Time

-- | The ARN identifier for the game server group where the game server is located.
gsGameServerGroupARN :: Lens' GameServer (Maybe Text)
gsGameServerGroupARN = lens _gsGameServerGroupARN (\s a -> s {_gsGameServerGroupARN = a})

-- | A custom string that uniquely identifies the game server. Game server IDs are developer-defined and are unique across all game server groups in an AWS account.
gsGameServerId :: Lens' GameServer (Maybe Text)
gsGameServerId = lens _gsGameServerId (\s a -> s {_gsGameServerId = a})

-- | A unique identifier for the game server group where the game server is running. Use either the 'GameServerGroup' name or ARN value.
gsGameServerGroupName :: Lens' GameServer (Maybe Text)
gsGameServerGroupName = lens _gsGameServerGroupName (\s a -> s {_gsGameServerGroupName = a})

-- | The port and IP address that must be used to establish a client connection to the game server.
gsConnectionInfo :: Lens' GameServer (Maybe Text)
gsConnectionInfo = lens _gsConnectionInfo (\s a -> s {_gsConnectionInfo = a})

-- | Timestamp that indicates the last time the game server was updated with health status using an 'UpdateGameServer' request. The format is a number expressed in Unix time as milliseconds (for example @"1469498468.057"@ ). After game server registration, this property is only changed when a game server update specifies a health check value.
gsLastHealthCheckTime :: Lens' GameServer (Maybe UTCTime)
gsLastHealthCheckTime = lens _gsLastHealthCheckTime (\s a -> s {_gsLastHealthCheckTime = a}) . mapping _Time

instance FromJSON GameServer where
  parseJSON =
    withObject
      "GameServer"
      ( \x ->
          GameServer'
            <$> (x .:? "InstanceId")
            <*> (x .:? "UtilizationStatus")
            <*> (x .:? "ClaimStatus")
            <*> (x .:? "GameServerData")
            <*> (x .:? "LastClaimTime")
            <*> (x .:? "RegistrationTime")
            <*> (x .:? "GameServerGroupArn")
            <*> (x .:? "GameServerId")
            <*> (x .:? "GameServerGroupName")
            <*> (x .:? "ConnectionInfo")
            <*> (x .:? "LastHealthCheckTime")
      )

instance Hashable GameServer

instance NFData GameServer
