{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.LaunchTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.LaunchTemplate where

import Network.AWS.AutoScaling.Types.LaunchTemplateOverrides
import Network.AWS.AutoScaling.Types.LaunchTemplateSpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a launch template and overrides.
--
--
-- You specify these parameters as part of a mixed instances policy.
--
-- When you update the launch template or overrides, existing Amazon EC2 instances continue to run. When scale out occurs, Amazon EC2 Auto Scaling launches instances to match the new settings. When scale in occurs, Amazon EC2 Auto Scaling terminates instances according to the group's termination policies.
--
--
-- /See:/ 'launchTemplate' smart constructor.
data LaunchTemplate = LaunchTemplate'
  { _ltLaunchTemplateSpecification ::
      !(Maybe LaunchTemplateSpecification),
    _ltOverrides ::
      !(Maybe [LaunchTemplateOverrides])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LaunchTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltLaunchTemplateSpecification' - The launch template to use.
--
-- * 'ltOverrides' - Any parameters that you specify override the same parameters in the launch template. If not provided, Amazon EC2 Auto Scaling uses the instance type specified in the launch template when it launches an instance.
launchTemplate ::
  LaunchTemplate
launchTemplate =
  LaunchTemplate'
    { _ltLaunchTemplateSpecification =
        Nothing,
      _ltOverrides = Nothing
    }

-- | The launch template to use.
ltLaunchTemplateSpecification :: Lens' LaunchTemplate (Maybe LaunchTemplateSpecification)
ltLaunchTemplateSpecification = lens _ltLaunchTemplateSpecification (\s a -> s {_ltLaunchTemplateSpecification = a})

-- | Any parameters that you specify override the same parameters in the launch template. If not provided, Amazon EC2 Auto Scaling uses the instance type specified in the launch template when it launches an instance.
ltOverrides :: Lens' LaunchTemplate [LaunchTemplateOverrides]
ltOverrides = lens _ltOverrides (\s a -> s {_ltOverrides = a}) . _Default . _Coerce

instance FromXML LaunchTemplate where
  parseXML x =
    LaunchTemplate'
      <$> (x .@? "LaunchTemplateSpecification")
      <*> ( x .@? "Overrides" .!@ mempty
              >>= may (parseXMLList "member")
          )

instance Hashable LaunchTemplate

instance NFData LaunchTemplate

instance ToQuery LaunchTemplate where
  toQuery LaunchTemplate' {..} =
    mconcat
      [ "LaunchTemplateSpecification"
          =: _ltLaunchTemplateSpecification,
        "Overrides"
          =: toQuery (toQueryList "member" <$> _ltOverrides)
      ]
