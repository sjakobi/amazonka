{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.Server
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.Server where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.ServerType
import Network.AWS.SMS.Types.VMServer

-- | Represents a server.
--
--
--
-- /See:/ 'server' smart constructor.
data Server = Server'
  { _sServerId :: !(Maybe Text),
    _sReplicationJobId :: !(Maybe Text),
    _sReplicationJobTerminated :: !(Maybe Bool),
    _sVmServer :: !(Maybe VMServer),
    _sServerType :: !(Maybe ServerType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Server' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sServerId' - The ID of the server.
--
-- * 'sReplicationJobId' - The ID of the replication job.
--
-- * 'sReplicationJobTerminated' - Indicates whether the replication job is deleted or failed.
--
-- * 'sVmServer' - Information about the VM server.
--
-- * 'sServerType' - The type of server.
server ::
  Server
server =
  Server'
    { _sServerId = Nothing,
      _sReplicationJobId = Nothing,
      _sReplicationJobTerminated = Nothing,
      _sVmServer = Nothing,
      _sServerType = Nothing
    }

-- | The ID of the server.
sServerId :: Lens' Server (Maybe Text)
sServerId = lens _sServerId (\s a -> s {_sServerId = a})

-- | The ID of the replication job.
sReplicationJobId :: Lens' Server (Maybe Text)
sReplicationJobId = lens _sReplicationJobId (\s a -> s {_sReplicationJobId = a})

-- | Indicates whether the replication job is deleted or failed.
sReplicationJobTerminated :: Lens' Server (Maybe Bool)
sReplicationJobTerminated = lens _sReplicationJobTerminated (\s a -> s {_sReplicationJobTerminated = a})

-- | Information about the VM server.
sVmServer :: Lens' Server (Maybe VMServer)
sVmServer = lens _sVmServer (\s a -> s {_sVmServer = a})

-- | The type of server.
sServerType :: Lens' Server (Maybe ServerType)
sServerType = lens _sServerType (\s a -> s {_sServerType = a})

instance FromJSON Server where
  parseJSON =
    withObject
      "Server"
      ( \x ->
          Server'
            <$> (x .:? "serverId")
            <*> (x .:? "replicationJobId")
            <*> (x .:? "replicationJobTerminated")
            <*> (x .:? "vmServer")
            <*> (x .:? "serverType")
      )

instance Hashable Server

instance NFData Server

instance ToJSON Server where
  toJSON Server' {..} =
    object
      ( catMaybes
          [ ("serverId" .=) <$> _sServerId,
            ("replicationJobId" .=) <$> _sReplicationJobId,
            ("replicationJobTerminated" .=)
              <$> _sReplicationJobTerminated,
            ("vmServer" .=) <$> _sVmServer,
            ("serverType" .=) <$> _sServerType
          ]
      )
