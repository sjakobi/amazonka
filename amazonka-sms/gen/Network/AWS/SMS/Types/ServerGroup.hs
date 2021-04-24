{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ServerGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerGroup where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.Server

-- | Logical grouping of servers.
--
--
--
-- /See:/ 'serverGroup' smart constructor.
data ServerGroup = ServerGroup'
  { _sgServerGroupId ::
      !(Maybe Text),
    _sgName :: !(Maybe Text),
    _sgServerList :: !(Maybe [Server])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServerGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgServerGroupId' - The ID of a server group.
--
-- * 'sgName' - The name of a server group.
--
-- * 'sgServerList' - The servers that belong to a server group.
serverGroup ::
  ServerGroup
serverGroup =
  ServerGroup'
    { _sgServerGroupId = Nothing,
      _sgName = Nothing,
      _sgServerList = Nothing
    }

-- | The ID of a server group.
sgServerGroupId :: Lens' ServerGroup (Maybe Text)
sgServerGroupId = lens _sgServerGroupId (\s a -> s {_sgServerGroupId = a})

-- | The name of a server group.
sgName :: Lens' ServerGroup (Maybe Text)
sgName = lens _sgName (\s a -> s {_sgName = a})

-- | The servers that belong to a server group.
sgServerList :: Lens' ServerGroup [Server]
sgServerList = lens _sgServerList (\s a -> s {_sgServerList = a}) . _Default . _Coerce

instance FromJSON ServerGroup where
  parseJSON =
    withObject
      "ServerGroup"
      ( \x ->
          ServerGroup'
            <$> (x .:? "serverGroupId")
            <*> (x .:? "name")
            <*> (x .:? "serverList" .!= mempty)
      )

instance Hashable ServerGroup

instance NFData ServerGroup

instance ToJSON ServerGroup where
  toJSON ServerGroup' {..} =
    object
      ( catMaybes
          [ ("serverGroupId" .=) <$> _sgServerGroupId,
            ("name" .=) <$> _sgName,
            ("serverList" .=) <$> _sgServerList
          ]
      )
