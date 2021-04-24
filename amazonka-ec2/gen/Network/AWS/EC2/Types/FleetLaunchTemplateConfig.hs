{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FleetLaunchTemplateConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetLaunchTemplateConfig where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.FleetLaunchTemplateOverrides
import Network.AWS.EC2.Types.FleetLaunchTemplateSpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a launch template and overrides.
--
--
--
-- /See:/ 'fleetLaunchTemplateConfig' smart constructor.
data FleetLaunchTemplateConfig = FleetLaunchTemplateConfig'
  { _fltcLaunchTemplateSpecification ::
      !( Maybe
           FleetLaunchTemplateSpecification
       ),
    _fltcOverrides ::
      !( Maybe
           [FleetLaunchTemplateOverrides]
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

-- | Creates a value of 'FleetLaunchTemplateConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fltcLaunchTemplateSpecification' - The launch template.
--
-- * 'fltcOverrides' - Any parameters that you specify override the same parameters in the launch template.
fleetLaunchTemplateConfig ::
  FleetLaunchTemplateConfig
fleetLaunchTemplateConfig =
  FleetLaunchTemplateConfig'
    { _fltcLaunchTemplateSpecification =
        Nothing,
      _fltcOverrides = Nothing
    }

-- | The launch template.
fltcLaunchTemplateSpecification :: Lens' FleetLaunchTemplateConfig (Maybe FleetLaunchTemplateSpecification)
fltcLaunchTemplateSpecification = lens _fltcLaunchTemplateSpecification (\s a -> s {_fltcLaunchTemplateSpecification = a})

-- | Any parameters that you specify override the same parameters in the launch template.
fltcOverrides :: Lens' FleetLaunchTemplateConfig [FleetLaunchTemplateOverrides]
fltcOverrides = lens _fltcOverrides (\s a -> s {_fltcOverrides = a}) . _Default . _Coerce

instance FromXML FleetLaunchTemplateConfig where
  parseXML x =
    FleetLaunchTemplateConfig'
      <$> (x .@? "launchTemplateSpecification")
      <*> ( x .@? "overrides" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable FleetLaunchTemplateConfig

instance NFData FleetLaunchTemplateConfig
