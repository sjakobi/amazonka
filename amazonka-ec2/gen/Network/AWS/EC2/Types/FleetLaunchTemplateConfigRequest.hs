{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FleetLaunchTemplateConfigRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetLaunchTemplateConfigRequest where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.FleetLaunchTemplateOverridesRequest
import Network.AWS.EC2.Types.FleetLaunchTemplateSpecificationRequest
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a launch template and overrides.
--
--
--
-- /See:/ 'fleetLaunchTemplateConfigRequest' smart constructor.
data FleetLaunchTemplateConfigRequest = FleetLaunchTemplateConfigRequest'
  { _fltcrLaunchTemplateSpecification ::
      !( Maybe
           FleetLaunchTemplateSpecificationRequest
       ),
    _fltcrOverrides ::
      !( Maybe
           [FleetLaunchTemplateOverridesRequest]
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

-- | Creates a value of 'FleetLaunchTemplateConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fltcrLaunchTemplateSpecification' - The launch template to use. You must specify either the launch template ID or launch template name in the request.
--
-- * 'fltcrOverrides' - Any parameters that you specify override the same parameters in the launch template.
fleetLaunchTemplateConfigRequest ::
  FleetLaunchTemplateConfigRequest
fleetLaunchTemplateConfigRequest =
  FleetLaunchTemplateConfigRequest'
    { _fltcrLaunchTemplateSpecification =
        Nothing,
      _fltcrOverrides = Nothing
    }

-- | The launch template to use. You must specify either the launch template ID or launch template name in the request.
fltcrLaunchTemplateSpecification :: Lens' FleetLaunchTemplateConfigRequest (Maybe FleetLaunchTemplateSpecificationRequest)
fltcrLaunchTemplateSpecification = lens _fltcrLaunchTemplateSpecification (\s a -> s {_fltcrLaunchTemplateSpecification = a})

-- | Any parameters that you specify override the same parameters in the launch template.
fltcrOverrides :: Lens' FleetLaunchTemplateConfigRequest [FleetLaunchTemplateOverridesRequest]
fltcrOverrides = lens _fltcrOverrides (\s a -> s {_fltcrOverrides = a}) . _Default . _Coerce

instance Hashable FleetLaunchTemplateConfigRequest

instance NFData FleetLaunchTemplateConfigRequest

instance ToQuery FleetLaunchTemplateConfigRequest where
  toQuery FleetLaunchTemplateConfigRequest' {..} =
    mconcat
      [ "LaunchTemplateSpecification"
          =: _fltcrLaunchTemplateSpecification,
        toQuery
          (toQueryList "Overrides" <$> _fltcrOverrides)
      ]
