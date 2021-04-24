{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.VersionInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.VersionInfo where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Docker and Amazon ECS container agent version information about a container instance.
--
--
--
-- /See:/ 'versionInfo' smart constructor.
data VersionInfo = VersionInfo'
  { _viAgentVersion ::
      !(Maybe Text),
    _viDockerVersion :: !(Maybe Text),
    _viAgentHash :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VersionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viAgentVersion' - The version number of the Amazon ECS container agent.
--
-- * 'viDockerVersion' - The Docker version running on the container instance.
--
-- * 'viAgentHash' - The Git commit hash for the Amazon ECS container agent build on the <https://github.com/aws/amazon-ecs-agent/commits/master amazon-ecs-agent > GitHub repository.
versionInfo ::
  VersionInfo
versionInfo =
  VersionInfo'
    { _viAgentVersion = Nothing,
      _viDockerVersion = Nothing,
      _viAgentHash = Nothing
    }

-- | The version number of the Amazon ECS container agent.
viAgentVersion :: Lens' VersionInfo (Maybe Text)
viAgentVersion = lens _viAgentVersion (\s a -> s {_viAgentVersion = a})

-- | The Docker version running on the container instance.
viDockerVersion :: Lens' VersionInfo (Maybe Text)
viDockerVersion = lens _viDockerVersion (\s a -> s {_viDockerVersion = a})

-- | The Git commit hash for the Amazon ECS container agent build on the <https://github.com/aws/amazon-ecs-agent/commits/master amazon-ecs-agent > GitHub repository.
viAgentHash :: Lens' VersionInfo (Maybe Text)
viAgentHash = lens _viAgentHash (\s a -> s {_viAgentHash = a})

instance FromJSON VersionInfo where
  parseJSON =
    withObject
      "VersionInfo"
      ( \x ->
          VersionInfo'
            <$> (x .:? "agentVersion")
            <*> (x .:? "dockerVersion")
            <*> (x .:? "agentHash")
      )

instance Hashable VersionInfo

instance NFData VersionInfo

instance ToJSON VersionInfo where
  toJSON VersionInfo' {..} =
    object
      ( catMaybes
          [ ("agentVersion" .=) <$> _viAgentVersion,
            ("dockerVersion" .=) <$> _viDockerVersion,
            ("agentHash" .=) <$> _viAgentHash
          ]
      )
