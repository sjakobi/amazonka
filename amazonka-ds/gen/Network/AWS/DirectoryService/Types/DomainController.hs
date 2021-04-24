{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.DomainController
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.DomainController where

import Network.AWS.DirectoryService.Types.DomainControllerStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the domain controllers for a specified directory.
--
--
--
-- /See:/ 'domainController' smart constructor.
data DomainController = DomainController'
  { _dcStatus ::
      !(Maybe DomainControllerStatus),
    _dcDNSIPAddr :: !(Maybe Text),
    _dcLaunchTime :: !(Maybe POSIX),
    _dcStatusLastUpdatedDateTime ::
      !(Maybe POSIX),
    _dcAvailabilityZone :: !(Maybe Text),
    _dcDirectoryId :: !(Maybe Text),
    _dcDomainControllerId ::
      !(Maybe Text),
    _dcSubnetId :: !(Maybe Text),
    _dcVPCId :: !(Maybe Text),
    _dcStatusReason :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DomainController' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcStatus' - The status of the domain controller.
--
-- * 'dcDNSIPAddr' - The IP address of the domain controller.
--
-- * 'dcLaunchTime' - Specifies when the domain controller was created.
--
-- * 'dcStatusLastUpdatedDateTime' - The date and time that the status was last updated.
--
-- * 'dcAvailabilityZone' - The Availability Zone where the domain controller is located.
--
-- * 'dcDirectoryId' - Identifier of the directory where the domain controller resides.
--
-- * 'dcDomainControllerId' - Identifies a specific domain controller in the directory.
--
-- * 'dcSubnetId' - Identifier of the subnet in the VPC that contains the domain controller.
--
-- * 'dcVPCId' - The identifier of the VPC that contains the domain controller.
--
-- * 'dcStatusReason' - A description of the domain controller state.
domainController ::
  DomainController
domainController =
  DomainController'
    { _dcStatus = Nothing,
      _dcDNSIPAddr = Nothing,
      _dcLaunchTime = Nothing,
      _dcStatusLastUpdatedDateTime = Nothing,
      _dcAvailabilityZone = Nothing,
      _dcDirectoryId = Nothing,
      _dcDomainControllerId = Nothing,
      _dcSubnetId = Nothing,
      _dcVPCId = Nothing,
      _dcStatusReason = Nothing
    }

-- | The status of the domain controller.
dcStatus :: Lens' DomainController (Maybe DomainControllerStatus)
dcStatus = lens _dcStatus (\s a -> s {_dcStatus = a})

-- | The IP address of the domain controller.
dcDNSIPAddr :: Lens' DomainController (Maybe Text)
dcDNSIPAddr = lens _dcDNSIPAddr (\s a -> s {_dcDNSIPAddr = a})

-- | Specifies when the domain controller was created.
dcLaunchTime :: Lens' DomainController (Maybe UTCTime)
dcLaunchTime = lens _dcLaunchTime (\s a -> s {_dcLaunchTime = a}) . mapping _Time

-- | The date and time that the status was last updated.
dcStatusLastUpdatedDateTime :: Lens' DomainController (Maybe UTCTime)
dcStatusLastUpdatedDateTime = lens _dcStatusLastUpdatedDateTime (\s a -> s {_dcStatusLastUpdatedDateTime = a}) . mapping _Time

-- | The Availability Zone where the domain controller is located.
dcAvailabilityZone :: Lens' DomainController (Maybe Text)
dcAvailabilityZone = lens _dcAvailabilityZone (\s a -> s {_dcAvailabilityZone = a})

-- | Identifier of the directory where the domain controller resides.
dcDirectoryId :: Lens' DomainController (Maybe Text)
dcDirectoryId = lens _dcDirectoryId (\s a -> s {_dcDirectoryId = a})

-- | Identifies a specific domain controller in the directory.
dcDomainControllerId :: Lens' DomainController (Maybe Text)
dcDomainControllerId = lens _dcDomainControllerId (\s a -> s {_dcDomainControllerId = a})

-- | Identifier of the subnet in the VPC that contains the domain controller.
dcSubnetId :: Lens' DomainController (Maybe Text)
dcSubnetId = lens _dcSubnetId (\s a -> s {_dcSubnetId = a})

-- | The identifier of the VPC that contains the domain controller.
dcVPCId :: Lens' DomainController (Maybe Text)
dcVPCId = lens _dcVPCId (\s a -> s {_dcVPCId = a})

-- | A description of the domain controller state.
dcStatusReason :: Lens' DomainController (Maybe Text)
dcStatusReason = lens _dcStatusReason (\s a -> s {_dcStatusReason = a})

instance FromJSON DomainController where
  parseJSON =
    withObject
      "DomainController"
      ( \x ->
          DomainController'
            <$> (x .:? "Status")
            <*> (x .:? "DnsIpAddr")
            <*> (x .:? "LaunchTime")
            <*> (x .:? "StatusLastUpdatedDateTime")
            <*> (x .:? "AvailabilityZone")
            <*> (x .:? "DirectoryId")
            <*> (x .:? "DomainControllerId")
            <*> (x .:? "SubnetId")
            <*> (x .:? "VpcId")
            <*> (x .:? "StatusReason")
      )

instance Hashable DomainController

instance NFData DomainController
