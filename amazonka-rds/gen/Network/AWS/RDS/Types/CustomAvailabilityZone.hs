{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.CustomAvailabilityZone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.CustomAvailabilityZone where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.VPNDetails

-- | A custom Availability Zone (AZ) is an on-premises AZ that is integrated with a VMware vSphere cluster.
--
--
-- For more information about RDS on VMware, see the <https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html RDS on VMware User Guide.>
--
--
-- /See:/ 'customAvailabilityZone' smart constructor.
data CustomAvailabilityZone = CustomAvailabilityZone'
  { _cazCustomAvailabilityZoneId ::
      !(Maybe Text),
    _cazCustomAvailabilityZoneName ::
      !(Maybe Text),
    _cazVPNDetails ::
      !(Maybe VPNDetails),
    _cazCustomAvailabilityZoneStatus ::
      !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CustomAvailabilityZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cazCustomAvailabilityZoneId' - The identifier of the custom AZ. Amazon RDS generates a unique identifier when a custom AZ is created.
--
-- * 'cazCustomAvailabilityZoneName' - The name of the custom AZ.
--
-- * 'cazVPNDetails' - Information about the virtual private network (VPN) between the VMware vSphere cluster and the AWS website.
--
-- * 'cazCustomAvailabilityZoneStatus' - The status of the custom AZ.
customAvailabilityZone ::
  CustomAvailabilityZone
customAvailabilityZone =
  CustomAvailabilityZone'
    { _cazCustomAvailabilityZoneId =
        Nothing,
      _cazCustomAvailabilityZoneName = Nothing,
      _cazVPNDetails = Nothing,
      _cazCustomAvailabilityZoneStatus = Nothing
    }

-- | The identifier of the custom AZ. Amazon RDS generates a unique identifier when a custom AZ is created.
cazCustomAvailabilityZoneId :: Lens' CustomAvailabilityZone (Maybe Text)
cazCustomAvailabilityZoneId = lens _cazCustomAvailabilityZoneId (\s a -> s {_cazCustomAvailabilityZoneId = a})

-- | The name of the custom AZ.
cazCustomAvailabilityZoneName :: Lens' CustomAvailabilityZone (Maybe Text)
cazCustomAvailabilityZoneName = lens _cazCustomAvailabilityZoneName (\s a -> s {_cazCustomAvailabilityZoneName = a})

-- | Information about the virtual private network (VPN) between the VMware vSphere cluster and the AWS website.
cazVPNDetails :: Lens' CustomAvailabilityZone (Maybe VPNDetails)
cazVPNDetails = lens _cazVPNDetails (\s a -> s {_cazVPNDetails = a})

-- | The status of the custom AZ.
cazCustomAvailabilityZoneStatus :: Lens' CustomAvailabilityZone (Maybe Text)
cazCustomAvailabilityZoneStatus = lens _cazCustomAvailabilityZoneStatus (\s a -> s {_cazCustomAvailabilityZoneStatus = a})

instance FromXML CustomAvailabilityZone where
  parseXML x =
    CustomAvailabilityZone'
      <$> (x .@? "CustomAvailabilityZoneId")
      <*> (x .@? "CustomAvailabilityZoneName")
      <*> (x .@? "VpnDetails")
      <*> (x .@? "CustomAvailabilityZoneStatus")

instance Hashable CustomAvailabilityZone

instance NFData CustomAvailabilityZone
