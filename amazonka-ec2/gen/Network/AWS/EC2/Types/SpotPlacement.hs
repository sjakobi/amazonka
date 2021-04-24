{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SpotPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotPlacement where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tenancy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes Spot Instance placement.
--
--
--
-- /See:/ 'spotPlacement' smart constructor.
data SpotPlacement = SpotPlacement'
  { _spGroupName ::
      !(Maybe Text),
    _spTenancy :: !(Maybe Tenancy),
    _spAvailabilityZone :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SpotPlacement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spGroupName' - The name of the placement group.
--
-- * 'spTenancy' - The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of @dedicated@ runs on single-tenant hardware. The @host@ tenancy is not supported for Spot Instances.
--
-- * 'spAvailabilityZone' - The Availability Zone. [Spot Fleet only] To specify multiple Availability Zones, separate them using commas; for example, "us-west-2a, us-west-2b".
spotPlacement ::
  SpotPlacement
spotPlacement =
  SpotPlacement'
    { _spGroupName = Nothing,
      _spTenancy = Nothing,
      _spAvailabilityZone = Nothing
    }

-- | The name of the placement group.
spGroupName :: Lens' SpotPlacement (Maybe Text)
spGroupName = lens _spGroupName (\s a -> s {_spGroupName = a})

-- | The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of @dedicated@ runs on single-tenant hardware. The @host@ tenancy is not supported for Spot Instances.
spTenancy :: Lens' SpotPlacement (Maybe Tenancy)
spTenancy = lens _spTenancy (\s a -> s {_spTenancy = a})

-- | The Availability Zone. [Spot Fleet only] To specify multiple Availability Zones, separate them using commas; for example, "us-west-2a, us-west-2b".
spAvailabilityZone :: Lens' SpotPlacement (Maybe Text)
spAvailabilityZone = lens _spAvailabilityZone (\s a -> s {_spAvailabilityZone = a})

instance FromXML SpotPlacement where
  parseXML x =
    SpotPlacement'
      <$> (x .@? "groupName")
      <*> (x .@? "tenancy")
      <*> (x .@? "availabilityZone")

instance Hashable SpotPlacement

instance NFData SpotPlacement

instance ToQuery SpotPlacement where
  toQuery SpotPlacement' {..} =
    mconcat
      [ "GroupName" =: _spGroupName,
        "Tenancy" =: _spTenancy,
        "AvailabilityZone" =: _spAvailabilityZone
      ]
