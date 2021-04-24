{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.RoutingStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.RoutingStrategy where

import Network.AWS.GameLift.Types.RoutingStrategyType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The routing configuration for a fleet alias.
--
--
--     * 'CreateAlias'
--
--     * 'ListAliases'
--
--     * 'DescribeAlias'
--
--     * 'UpdateAlias'
--
--     * 'DeleteAlias'
--
--     * 'ResolveAlias'
--
--
--
--
-- /See:/ 'routingStrategy' smart constructor.
data RoutingStrategy = RoutingStrategy'
  { _rsFleetId ::
      !(Maybe Text),
    _rsMessage :: !(Maybe Text),
    _rsType :: !(Maybe RoutingStrategyType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RoutingStrategy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsFleetId' - The unique identifier for a fleet that the alias points to. This value is the fleet ID, not the fleet ARN.
--
-- * 'rsMessage' - The message text to be used with a terminal routing strategy.
--
-- * 'rsType' - The type of routing strategy for the alias. Possible routing types include the following:     * __SIMPLE__ - The alias resolves to one specific fleet. Use this type when routing to active fleets.     * __TERMINAL__ - The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the 'RoutingStrategy' message embedded.
routingStrategy ::
  RoutingStrategy
routingStrategy =
  RoutingStrategy'
    { _rsFleetId = Nothing,
      _rsMessage = Nothing,
      _rsType = Nothing
    }

-- | The unique identifier for a fleet that the alias points to. This value is the fleet ID, not the fleet ARN.
rsFleetId :: Lens' RoutingStrategy (Maybe Text)
rsFleetId = lens _rsFleetId (\s a -> s {_rsFleetId = a})

-- | The message text to be used with a terminal routing strategy.
rsMessage :: Lens' RoutingStrategy (Maybe Text)
rsMessage = lens _rsMessage (\s a -> s {_rsMessage = a})

-- | The type of routing strategy for the alias. Possible routing types include the following:     * __SIMPLE__ - The alias resolves to one specific fleet. Use this type when routing to active fleets.     * __TERMINAL__ - The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the 'RoutingStrategy' message embedded.
rsType :: Lens' RoutingStrategy (Maybe RoutingStrategyType)
rsType = lens _rsType (\s a -> s {_rsType = a})

instance FromJSON RoutingStrategy where
  parseJSON =
    withObject
      "RoutingStrategy"
      ( \x ->
          RoutingStrategy'
            <$> (x .:? "FleetId")
            <*> (x .:? "Message")
            <*> (x .:? "Type")
      )

instance Hashable RoutingStrategy

instance NFData RoutingStrategy

instance ToJSON RoutingStrategy where
  toJSON RoutingStrategy' {..} =
    object
      ( catMaybes
          [ ("FleetId" .=) <$> _rsFleetId,
            ("Message" .=) <$> _rsMessage,
            ("Type" .=) <$> _rsType
          ]
      )
