{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateAndOverridesResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateAndOverridesResponse where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.FleetLaunchTemplateOverrides
import Network.AWS.EC2.Types.FleetLaunchTemplateSpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a launch template and overrides.
--
--
--
-- /See:/ 'launchTemplateAndOverridesResponse' smart constructor.
data LaunchTemplateAndOverridesResponse = LaunchTemplateAndOverridesResponse'
  { _ltaorLaunchTemplateSpecification ::
      !( Maybe
           FleetLaunchTemplateSpecification
       ),
    _ltaorOverrides ::
      !( Maybe
           FleetLaunchTemplateOverrides
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

-- | Creates a value of 'LaunchTemplateAndOverridesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltaorLaunchTemplateSpecification' - The launch template.
--
-- * 'ltaorOverrides' - Any parameters that you specify override the same parameters in the launch template.
launchTemplateAndOverridesResponse ::
  LaunchTemplateAndOverridesResponse
launchTemplateAndOverridesResponse =
  LaunchTemplateAndOverridesResponse'
    { _ltaorLaunchTemplateSpecification =
        Nothing,
      _ltaorOverrides = Nothing
    }

-- | The launch template.
ltaorLaunchTemplateSpecification :: Lens' LaunchTemplateAndOverridesResponse (Maybe FleetLaunchTemplateSpecification)
ltaorLaunchTemplateSpecification = lens _ltaorLaunchTemplateSpecification (\s a -> s {_ltaorLaunchTemplateSpecification = a})

-- | Any parameters that you specify override the same parameters in the launch template.
ltaorOverrides :: Lens' LaunchTemplateAndOverridesResponse (Maybe FleetLaunchTemplateOverrides)
ltaorOverrides = lens _ltaorOverrides (\s a -> s {_ltaorOverrides = a})

instance FromXML LaunchTemplateAndOverridesResponse where
  parseXML x =
    LaunchTemplateAndOverridesResponse'
      <$> (x .@? "launchTemplateSpecification")
      <*> (x .@? "overrides")

instance Hashable LaunchTemplateAndOverridesResponse

instance NFData LaunchTemplateAndOverridesResponse
