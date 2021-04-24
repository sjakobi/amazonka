{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.BlueGreenUpdatePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.BlueGreenUpdatePolicy where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.TrafficRoutingConfig

-- | Currently, the @BlueGreenUpdatePolicy@ API is not supported.
--
--
--
-- /See:/ 'blueGreenUpdatePolicy' smart constructor.
data BlueGreenUpdatePolicy = BlueGreenUpdatePolicy'
  { _bgupTerminationWaitInSeconds ::
      !(Maybe Nat),
    _bgupMaximumExecutionTimeoutInSeconds ::
      !(Maybe Nat),
    _bgupTrafficRoutingConfiguration ::
      !TrafficRoutingConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BlueGreenUpdatePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgupTerminationWaitInSeconds' -
--
-- * 'bgupMaximumExecutionTimeoutInSeconds' -
--
-- * 'bgupTrafficRoutingConfiguration' -
blueGreenUpdatePolicy ::
  -- | 'bgupTrafficRoutingConfiguration'
  TrafficRoutingConfig ->
  BlueGreenUpdatePolicy
blueGreenUpdatePolicy pTrafficRoutingConfiguration_ =
  BlueGreenUpdatePolicy'
    { _bgupTerminationWaitInSeconds =
        Nothing,
      _bgupMaximumExecutionTimeoutInSeconds = Nothing,
      _bgupTrafficRoutingConfiguration =
        pTrafficRoutingConfiguration_
    }

-- |
bgupTerminationWaitInSeconds :: Lens' BlueGreenUpdatePolicy (Maybe Natural)
bgupTerminationWaitInSeconds = lens _bgupTerminationWaitInSeconds (\s a -> s {_bgupTerminationWaitInSeconds = a}) . mapping _Nat

-- |
bgupMaximumExecutionTimeoutInSeconds :: Lens' BlueGreenUpdatePolicy (Maybe Natural)
bgupMaximumExecutionTimeoutInSeconds = lens _bgupMaximumExecutionTimeoutInSeconds (\s a -> s {_bgupMaximumExecutionTimeoutInSeconds = a}) . mapping _Nat

-- |
bgupTrafficRoutingConfiguration :: Lens' BlueGreenUpdatePolicy TrafficRoutingConfig
bgupTrafficRoutingConfiguration = lens _bgupTrafficRoutingConfiguration (\s a -> s {_bgupTrafficRoutingConfiguration = a})

instance FromJSON BlueGreenUpdatePolicy where
  parseJSON =
    withObject
      "BlueGreenUpdatePolicy"
      ( \x ->
          BlueGreenUpdatePolicy'
            <$> (x .:? "TerminationWaitInSeconds")
            <*> (x .:? "MaximumExecutionTimeoutInSeconds")
            <*> (x .: "TrafficRoutingConfiguration")
      )

instance Hashable BlueGreenUpdatePolicy

instance NFData BlueGreenUpdatePolicy

instance ToJSON BlueGreenUpdatePolicy where
  toJSON BlueGreenUpdatePolicy' {..} =
    object
      ( catMaybes
          [ ("TerminationWaitInSeconds" .=)
              <$> _bgupTerminationWaitInSeconds,
            ("MaximumExecutionTimeoutInSeconds" .=)
              <$> _bgupMaximumExecutionTimeoutInSeconds,
            Just
              ( "TrafficRoutingConfiguration"
                  .= _bgupTrafficRoutingConfiguration
              )
          ]
      )
