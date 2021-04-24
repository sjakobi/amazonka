{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DescribeFleetsInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DescribeFleetsInstances where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceLifecycle
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.LaunchTemplateAndOverridesResponse
import Network.AWS.EC2.Types.PlatformValues
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the instances that were launched by the fleet.
--
--
--
-- /See:/ 'describeFleetsInstances' smart constructor.
data DescribeFleetsInstances = DescribeFleetsInstances'
  { _dfiInstanceIds ::
      !(Maybe [Text]),
    _dfiPlatform ::
      !(Maybe PlatformValues),
    _dfiInstanceType ::
      !(Maybe InstanceType),
    _dfiLaunchTemplateAndOverrides ::
      !( Maybe
           LaunchTemplateAndOverridesResponse
       ),
    _dfiLifecycle ::
      !( Maybe
           InstanceLifecycle
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

-- | Creates a value of 'DescribeFleetsInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfiInstanceIds' - The IDs of the instances.
--
-- * 'dfiPlatform' - The value is @Windows@ for Windows instances. Otherwise, the value is blank.
--
-- * 'dfiInstanceType' - The instance type.
--
-- * 'dfiLaunchTemplateAndOverrides' - The launch templates and overrides that were used for launching the instances. The values that you specify in the Overrides replace the values in the launch template.
--
-- * 'dfiLifecycle' - Indicates if the instance that was launched is a Spot Instance or On-Demand Instance.
describeFleetsInstances ::
  DescribeFleetsInstances
describeFleetsInstances =
  DescribeFleetsInstances'
    { _dfiInstanceIds = Nothing,
      _dfiPlatform = Nothing,
      _dfiInstanceType = Nothing,
      _dfiLaunchTemplateAndOverrides = Nothing,
      _dfiLifecycle = Nothing
    }

-- | The IDs of the instances.
dfiInstanceIds :: Lens' DescribeFleetsInstances [Text]
dfiInstanceIds = lens _dfiInstanceIds (\s a -> s {_dfiInstanceIds = a}) . _Default . _Coerce

-- | The value is @Windows@ for Windows instances. Otherwise, the value is blank.
dfiPlatform :: Lens' DescribeFleetsInstances (Maybe PlatformValues)
dfiPlatform = lens _dfiPlatform (\s a -> s {_dfiPlatform = a})

-- | The instance type.
dfiInstanceType :: Lens' DescribeFleetsInstances (Maybe InstanceType)
dfiInstanceType = lens _dfiInstanceType (\s a -> s {_dfiInstanceType = a})

-- | The launch templates and overrides that were used for launching the instances. The values that you specify in the Overrides replace the values in the launch template.
dfiLaunchTemplateAndOverrides :: Lens' DescribeFleetsInstances (Maybe LaunchTemplateAndOverridesResponse)
dfiLaunchTemplateAndOverrides = lens _dfiLaunchTemplateAndOverrides (\s a -> s {_dfiLaunchTemplateAndOverrides = a})

-- | Indicates if the instance that was launched is a Spot Instance or On-Demand Instance.
dfiLifecycle :: Lens' DescribeFleetsInstances (Maybe InstanceLifecycle)
dfiLifecycle = lens _dfiLifecycle (\s a -> s {_dfiLifecycle = a})

instance FromXML DescribeFleetsInstances where
  parseXML x =
    DescribeFleetsInstances'
      <$> ( x .@? "instanceIds" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "platform")
      <*> (x .@? "instanceType")
      <*> (x .@? "launchTemplateAndOverrides")
      <*> (x .@? "lifecycle")

instance Hashable DescribeFleetsInstances

instance NFData DescribeFleetsInstances
