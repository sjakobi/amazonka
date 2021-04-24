{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.NetworkConnectionAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.NetworkConnectionAction where

import Network.AWS.GuardDuty.Types.LocalIPDetails
import Network.AWS.GuardDuty.Types.LocalPortDetails
import Network.AWS.GuardDuty.Types.RemoteIPDetails
import Network.AWS.GuardDuty.Types.RemotePortDetails
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the NETWORK_CONNECTION action described in the finding.
--
--
--
-- /See:/ 'networkConnectionAction' smart constructor.
data NetworkConnectionAction = NetworkConnectionAction'
  { _ncaRemotePortDetails ::
      !( Maybe
           RemotePortDetails
       ),
    _ncaLocalPortDetails ::
      !( Maybe
           LocalPortDetails
       ),
    _ncaConnectionDirection ::
      !(Maybe Text),
    _ncaBlocked ::
      !(Maybe Bool),
    _ncaRemoteIPDetails ::
      !( Maybe
           RemoteIPDetails
       ),
    _ncaLocalIPDetails ::
      !(Maybe LocalIPDetails),
    _ncaProtocol ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NetworkConnectionAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncaRemotePortDetails' - The remote port information of the connection.
--
-- * 'ncaLocalPortDetails' - The local port information of the connection.
--
-- * 'ncaConnectionDirection' - The network connection direction.
--
-- * 'ncaBlocked' - Indicates whether EC2 blocked the network connection to your instance.
--
-- * 'ncaRemoteIPDetails' - The remote IP information of the connection.
--
-- * 'ncaLocalIPDetails' - The local IP information of the connection.
--
-- * 'ncaProtocol' - The network connection protocol.
networkConnectionAction ::
  NetworkConnectionAction
networkConnectionAction =
  NetworkConnectionAction'
    { _ncaRemotePortDetails =
        Nothing,
      _ncaLocalPortDetails = Nothing,
      _ncaConnectionDirection = Nothing,
      _ncaBlocked = Nothing,
      _ncaRemoteIPDetails = Nothing,
      _ncaLocalIPDetails = Nothing,
      _ncaProtocol = Nothing
    }

-- | The remote port information of the connection.
ncaRemotePortDetails :: Lens' NetworkConnectionAction (Maybe RemotePortDetails)
ncaRemotePortDetails = lens _ncaRemotePortDetails (\s a -> s {_ncaRemotePortDetails = a})

-- | The local port information of the connection.
ncaLocalPortDetails :: Lens' NetworkConnectionAction (Maybe LocalPortDetails)
ncaLocalPortDetails = lens _ncaLocalPortDetails (\s a -> s {_ncaLocalPortDetails = a})

-- | The network connection direction.
ncaConnectionDirection :: Lens' NetworkConnectionAction (Maybe Text)
ncaConnectionDirection = lens _ncaConnectionDirection (\s a -> s {_ncaConnectionDirection = a})

-- | Indicates whether EC2 blocked the network connection to your instance.
ncaBlocked :: Lens' NetworkConnectionAction (Maybe Bool)
ncaBlocked = lens _ncaBlocked (\s a -> s {_ncaBlocked = a})

-- | The remote IP information of the connection.
ncaRemoteIPDetails :: Lens' NetworkConnectionAction (Maybe RemoteIPDetails)
ncaRemoteIPDetails = lens _ncaRemoteIPDetails (\s a -> s {_ncaRemoteIPDetails = a})

-- | The local IP information of the connection.
ncaLocalIPDetails :: Lens' NetworkConnectionAction (Maybe LocalIPDetails)
ncaLocalIPDetails = lens _ncaLocalIPDetails (\s a -> s {_ncaLocalIPDetails = a})

-- | The network connection protocol.
ncaProtocol :: Lens' NetworkConnectionAction (Maybe Text)
ncaProtocol = lens _ncaProtocol (\s a -> s {_ncaProtocol = a})

instance FromJSON NetworkConnectionAction where
  parseJSON =
    withObject
      "NetworkConnectionAction"
      ( \x ->
          NetworkConnectionAction'
            <$> (x .:? "remotePortDetails")
            <*> (x .:? "localPortDetails")
            <*> (x .:? "connectionDirection")
            <*> (x .:? "blocked")
            <*> (x .:? "remoteIpDetails")
            <*> (x .:? "localIpDetails")
            <*> (x .:? "protocol")
      )

instance Hashable NetworkConnectionAction

instance NFData NetworkConnectionAction
