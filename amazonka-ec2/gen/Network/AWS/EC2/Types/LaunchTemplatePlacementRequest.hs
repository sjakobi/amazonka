{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplatePlacementRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplatePlacementRequest where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tenancy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the placement of an instance.
--
--
--
-- /See:/ 'launchTemplatePlacementRequest' smart constructor.
data LaunchTemplatePlacementRequest = LaunchTemplatePlacementRequest'
  { _ltprSpreadDomain ::
      !( Maybe
           Text
       ),
    _ltprGroupName ::
      !( Maybe
           Text
       ),
    _ltprTenancy ::
      !( Maybe
           Tenancy
       ),
    _ltprAffinity ::
      !( Maybe
           Text
       ),
    _ltprAvailabilityZone ::
      !( Maybe
           Text
       ),
    _ltprPartitionNumber ::
      !( Maybe
           Int
       ),
    _ltprHostResourceGroupARN ::
      !( Maybe
           Text
       ),
    _ltprHostId ::
      !( Maybe
           Text
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

-- | Creates a value of 'LaunchTemplatePlacementRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltprSpreadDomain' - Reserved for future use.
--
-- * 'ltprGroupName' - The name of the placement group for the instance.
--
-- * 'ltprTenancy' - The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of dedicated runs on single-tenant hardware.
--
-- * 'ltprAffinity' - The affinity setting for an instance on a Dedicated Host.
--
-- * 'ltprAvailabilityZone' - The Availability Zone for the instance.
--
-- * 'ltprPartitionNumber' - The number of the partition the instance should launch in. Valid only if the placement group strategy is set to @partition@ .
--
-- * 'ltprHostResourceGroupARN' - The ARN of the host resource group in which to launch the instances. If you specify a host resource group ARN, omit the __Tenancy__ parameter or set it to @host@ .
--
-- * 'ltprHostId' - The ID of the Dedicated Host for the instance.
launchTemplatePlacementRequest ::
  LaunchTemplatePlacementRequest
launchTemplatePlacementRequest =
  LaunchTemplatePlacementRequest'
    { _ltprSpreadDomain =
        Nothing,
      _ltprGroupName = Nothing,
      _ltprTenancy = Nothing,
      _ltprAffinity = Nothing,
      _ltprAvailabilityZone = Nothing,
      _ltprPartitionNumber = Nothing,
      _ltprHostResourceGroupARN = Nothing,
      _ltprHostId = Nothing
    }

-- | Reserved for future use.
ltprSpreadDomain :: Lens' LaunchTemplatePlacementRequest (Maybe Text)
ltprSpreadDomain = lens _ltprSpreadDomain (\s a -> s {_ltprSpreadDomain = a})

-- | The name of the placement group for the instance.
ltprGroupName :: Lens' LaunchTemplatePlacementRequest (Maybe Text)
ltprGroupName = lens _ltprGroupName (\s a -> s {_ltprGroupName = a})

-- | The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of dedicated runs on single-tenant hardware.
ltprTenancy :: Lens' LaunchTemplatePlacementRequest (Maybe Tenancy)
ltprTenancy = lens _ltprTenancy (\s a -> s {_ltprTenancy = a})

-- | The affinity setting for an instance on a Dedicated Host.
ltprAffinity :: Lens' LaunchTemplatePlacementRequest (Maybe Text)
ltprAffinity = lens _ltprAffinity (\s a -> s {_ltprAffinity = a})

-- | The Availability Zone for the instance.
ltprAvailabilityZone :: Lens' LaunchTemplatePlacementRequest (Maybe Text)
ltprAvailabilityZone = lens _ltprAvailabilityZone (\s a -> s {_ltprAvailabilityZone = a})

-- | The number of the partition the instance should launch in. Valid only if the placement group strategy is set to @partition@ .
ltprPartitionNumber :: Lens' LaunchTemplatePlacementRequest (Maybe Int)
ltprPartitionNumber = lens _ltprPartitionNumber (\s a -> s {_ltprPartitionNumber = a})

-- | The ARN of the host resource group in which to launch the instances. If you specify a host resource group ARN, omit the __Tenancy__ parameter or set it to @host@ .
ltprHostResourceGroupARN :: Lens' LaunchTemplatePlacementRequest (Maybe Text)
ltprHostResourceGroupARN = lens _ltprHostResourceGroupARN (\s a -> s {_ltprHostResourceGroupARN = a})

-- | The ID of the Dedicated Host for the instance.
ltprHostId :: Lens' LaunchTemplatePlacementRequest (Maybe Text)
ltprHostId = lens _ltprHostId (\s a -> s {_ltprHostId = a})

instance Hashable LaunchTemplatePlacementRequest

instance NFData LaunchTemplatePlacementRequest

instance ToQuery LaunchTemplatePlacementRequest where
  toQuery LaunchTemplatePlacementRequest' {..} =
    mconcat
      [ "SpreadDomain" =: _ltprSpreadDomain,
        "GroupName" =: _ltprGroupName,
        "Tenancy" =: _ltprTenancy,
        "Affinity" =: _ltprAffinity,
        "AvailabilityZone" =: _ltprAvailabilityZone,
        "PartitionNumber" =: _ltprPartitionNumber,
        "HostResourceGroupArn" =: _ltprHostResourceGroupARN,
        "HostId" =: _ltprHostId
      ]
