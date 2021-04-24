{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrafficRoutingConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrafficRoutingConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.CapacitySize
import Network.AWS.SageMaker.Types.TrafficRoutingConfigType

-- | Currently, the @TrafficRoutingConfig@ API is not supported.
--
--
--
-- /See:/ 'trafficRoutingConfig' smart constructor.
data TrafficRoutingConfig = TrafficRoutingConfig'
  { _trcCanarySize ::
      !(Maybe CapacitySize),
    _trcType ::
      !TrafficRoutingConfigType,
    _trcWaitIntervalInSeconds ::
      !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrafficRoutingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trcCanarySize' -
--
-- * 'trcType' -
--
-- * 'trcWaitIntervalInSeconds' -
trafficRoutingConfig ::
  -- | 'trcType'
  TrafficRoutingConfigType ->
  -- | 'trcWaitIntervalInSeconds'
  Natural ->
  TrafficRoutingConfig
trafficRoutingConfig pType_ pWaitIntervalInSeconds_ =
  TrafficRoutingConfig'
    { _trcCanarySize = Nothing,
      _trcType = pType_,
      _trcWaitIntervalInSeconds =
        _Nat # pWaitIntervalInSeconds_
    }

-- |
trcCanarySize :: Lens' TrafficRoutingConfig (Maybe CapacitySize)
trcCanarySize = lens _trcCanarySize (\s a -> s {_trcCanarySize = a})

-- |
trcType :: Lens' TrafficRoutingConfig TrafficRoutingConfigType
trcType = lens _trcType (\s a -> s {_trcType = a})

-- |
trcWaitIntervalInSeconds :: Lens' TrafficRoutingConfig Natural
trcWaitIntervalInSeconds = lens _trcWaitIntervalInSeconds (\s a -> s {_trcWaitIntervalInSeconds = a}) . _Nat

instance FromJSON TrafficRoutingConfig where
  parseJSON =
    withObject
      "TrafficRoutingConfig"
      ( \x ->
          TrafficRoutingConfig'
            <$> (x .:? "CanarySize")
            <*> (x .: "Type")
            <*> (x .: "WaitIntervalInSeconds")
      )

instance Hashable TrafficRoutingConfig

instance NFData TrafficRoutingConfig

instance ToJSON TrafficRoutingConfig where
  toJSON TrafficRoutingConfig' {..} =
    object
      ( catMaybes
          [ ("CanarySize" .=) <$> _trcCanarySize,
            Just ("Type" .= _trcType),
            Just
              ( "WaitIntervalInSeconds"
                  .= _trcWaitIntervalInSeconds
              )
          ]
      )
