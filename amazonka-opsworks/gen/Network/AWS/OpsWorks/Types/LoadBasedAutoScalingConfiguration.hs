{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.LoadBasedAutoScalingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.LoadBasedAutoScalingConfiguration where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types.AutoScalingThresholds
import Network.AWS.Prelude

-- | Describes a layer's load-based auto scaling configuration.
--
--
--
-- /See:/ 'loadBasedAutoScalingConfiguration' smart constructor.
data LoadBasedAutoScalingConfiguration = LoadBasedAutoScalingConfiguration'
  { _lbascDownScaling ::
      !( Maybe
           AutoScalingThresholds
       ),
    _lbascEnable ::
      !( Maybe
           Bool
       ),
    _lbascLayerId ::
      !( Maybe
           Text
       ),
    _lbascUpScaling ::
      !( Maybe
           AutoScalingThresholds
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LoadBasedAutoScalingConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbascDownScaling' - An @AutoScalingThresholds@ object that describes the downscaling configuration, which defines how and when AWS OpsWorks Stacks reduces the number of instances.
--
-- * 'lbascEnable' - Whether load-based auto scaling is enabled for the layer.
--
-- * 'lbascLayerId' - The layer ID.
--
-- * 'lbascUpScaling' - An @AutoScalingThresholds@ object that describes the upscaling configuration, which defines how and when AWS OpsWorks Stacks increases the number of instances.
loadBasedAutoScalingConfiguration ::
  LoadBasedAutoScalingConfiguration
loadBasedAutoScalingConfiguration =
  LoadBasedAutoScalingConfiguration'
    { _lbascDownScaling =
        Nothing,
      _lbascEnable = Nothing,
      _lbascLayerId = Nothing,
      _lbascUpScaling = Nothing
    }

-- | An @AutoScalingThresholds@ object that describes the downscaling configuration, which defines how and when AWS OpsWorks Stacks reduces the number of instances.
lbascDownScaling :: Lens' LoadBasedAutoScalingConfiguration (Maybe AutoScalingThresholds)
lbascDownScaling = lens _lbascDownScaling (\s a -> s {_lbascDownScaling = a})

-- | Whether load-based auto scaling is enabled for the layer.
lbascEnable :: Lens' LoadBasedAutoScalingConfiguration (Maybe Bool)
lbascEnable = lens _lbascEnable (\s a -> s {_lbascEnable = a})

-- | The layer ID.
lbascLayerId :: Lens' LoadBasedAutoScalingConfiguration (Maybe Text)
lbascLayerId = lens _lbascLayerId (\s a -> s {_lbascLayerId = a})

-- | An @AutoScalingThresholds@ object that describes the upscaling configuration, which defines how and when AWS OpsWorks Stacks increases the number of instances.
lbascUpScaling :: Lens' LoadBasedAutoScalingConfiguration (Maybe AutoScalingThresholds)
lbascUpScaling = lens _lbascUpScaling (\s a -> s {_lbascUpScaling = a})

instance FromJSON LoadBasedAutoScalingConfiguration where
  parseJSON =
    withObject
      "LoadBasedAutoScalingConfiguration"
      ( \x ->
          LoadBasedAutoScalingConfiguration'
            <$> (x .:? "DownScaling")
            <*> (x .:? "Enable")
            <*> (x .:? "LayerId")
            <*> (x .:? "UpScaling")
      )

instance Hashable LoadBasedAutoScalingConfiguration

instance NFData LoadBasedAutoScalingConfiguration
