{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.EBSConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.EBSConfiguration where

import Network.AWS.EMR.Types.EBSBlockDeviceConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Amazon EBS configuration of a cluster instance.
--
--
--
-- /See:/ 'ebsConfiguration' smart constructor.
data EBSConfiguration = EBSConfiguration'
  { _ecEBSBlockDeviceConfigs ::
      !(Maybe [EBSBlockDeviceConfig]),
    _ecEBSOptimized :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EBSConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecEBSBlockDeviceConfigs' - An array of Amazon EBS volume specifications attached to a cluster instance.
--
-- * 'ecEBSOptimized' - Indicates whether an Amazon EBS volume is EBS-optimized.
ebsConfiguration ::
  EBSConfiguration
ebsConfiguration =
  EBSConfiguration'
    { _ecEBSBlockDeviceConfigs =
        Nothing,
      _ecEBSOptimized = Nothing
    }

-- | An array of Amazon EBS volume specifications attached to a cluster instance.
ecEBSBlockDeviceConfigs :: Lens' EBSConfiguration [EBSBlockDeviceConfig]
ecEBSBlockDeviceConfigs = lens _ecEBSBlockDeviceConfigs (\s a -> s {_ecEBSBlockDeviceConfigs = a}) . _Default . _Coerce

-- | Indicates whether an Amazon EBS volume is EBS-optimized.
ecEBSOptimized :: Lens' EBSConfiguration (Maybe Bool)
ecEBSOptimized = lens _ecEBSOptimized (\s a -> s {_ecEBSOptimized = a})

instance Hashable EBSConfiguration

instance NFData EBSConfiguration

instance ToJSON EBSConfiguration where
  toJSON EBSConfiguration' {..} =
    object
      ( catMaybes
          [ ("EbsBlockDeviceConfigs" .=)
              <$> _ecEBSBlockDeviceConfigs,
            ("EbsOptimized" .=) <$> _ecEBSOptimized
          ]
      )
