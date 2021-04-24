{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AgentVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AgentVersion where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Edge Manager agent version.
--
--
--
-- /See:/ 'agentVersion' smart constructor.
data AgentVersion = AgentVersion'
  { _avVersion ::
      !Text,
    _avAgentCount :: !Integer
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AgentVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avVersion' - Version of the agent.
--
-- * 'avAgentCount' - The number of Edge Manager agents.
agentVersion ::
  -- | 'avVersion'
  Text ->
  -- | 'avAgentCount'
  Integer ->
  AgentVersion
agentVersion pVersion_ pAgentCount_ =
  AgentVersion'
    { _avVersion = pVersion_,
      _avAgentCount = pAgentCount_
    }

-- | Version of the agent.
avVersion :: Lens' AgentVersion Text
avVersion = lens _avVersion (\s a -> s {_avVersion = a})

-- | The number of Edge Manager agents.
avAgentCount :: Lens' AgentVersion Integer
avAgentCount = lens _avAgentCount (\s a -> s {_avAgentCount = a})

instance FromJSON AgentVersion where
  parseJSON =
    withObject
      "AgentVersion"
      ( \x ->
          AgentVersion'
            <$> (x .: "Version") <*> (x .: "AgentCount")
      )

instance Hashable AgentVersion

instance NFData AgentVersion
