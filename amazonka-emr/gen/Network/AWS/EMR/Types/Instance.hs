{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.Instance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.Instance where

import Network.AWS.EMR.Types.EBSVolume
import Network.AWS.EMR.Types.InstanceStatus
import Network.AWS.EMR.Types.MarketType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents an EC2 instance provisioned as part of cluster.
--
--
--
-- /See:/ 'instance'' smart constructor.
data Instance = Instance'
  { _iEBSVolumes ::
      !(Maybe [EBSVolume]),
    _iStatus :: !(Maybe InstanceStatus),
    _iInstanceType :: !(Maybe Text),
    _iInstanceGroupId :: !(Maybe Text),
    _iId :: !(Maybe Text),
    _iInstanceFleetId :: !(Maybe Text),
    _iPublicDNSName :: !(Maybe Text),
    _iMarket :: !(Maybe MarketType),
    _iPublicIPAddress :: !(Maybe Text),
    _iPrivateDNSName :: !(Maybe Text),
    _iEC2InstanceId :: !(Maybe Text),
    _iPrivateIPAddress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iEBSVolumes' - The list of EBS volumes that are attached to this instance.
--
-- * 'iStatus' - The current status of the instance.
--
-- * 'iInstanceType' - The EC2 instance type, for example @m3.xlarge@ .
--
-- * 'iInstanceGroupId' - The identifier of the instance group to which this instance belongs.
--
-- * 'iId' - The unique identifier for the instance in Amazon EMR.
--
-- * 'iInstanceFleetId' - The unique identifier of the instance fleet to which an EC2 instance belongs.
--
-- * 'iPublicDNSName' - The public DNS name of the instance.
--
-- * 'iMarket' - The instance purchasing option. Valid values are @ON_DEMAND@ or @SPOT@ .
--
-- * 'iPublicIPAddress' - The public IP address of the instance.
--
-- * 'iPrivateDNSName' - The private DNS name of the instance.
--
-- * 'iEC2InstanceId' - The unique identifier of the instance in Amazon EC2.
--
-- * 'iPrivateIPAddress' - The private IP address of the instance.
instance' ::
  Instance
instance' =
  Instance'
    { _iEBSVolumes = Nothing,
      _iStatus = Nothing,
      _iInstanceType = Nothing,
      _iInstanceGroupId = Nothing,
      _iId = Nothing,
      _iInstanceFleetId = Nothing,
      _iPublicDNSName = Nothing,
      _iMarket = Nothing,
      _iPublicIPAddress = Nothing,
      _iPrivateDNSName = Nothing,
      _iEC2InstanceId = Nothing,
      _iPrivateIPAddress = Nothing
    }

-- | The list of EBS volumes that are attached to this instance.
iEBSVolumes :: Lens' Instance [EBSVolume]
iEBSVolumes = lens _iEBSVolumes (\s a -> s {_iEBSVolumes = a}) . _Default . _Coerce

-- | The current status of the instance.
iStatus :: Lens' Instance (Maybe InstanceStatus)
iStatus = lens _iStatus (\s a -> s {_iStatus = a})

-- | The EC2 instance type, for example @m3.xlarge@ .
iInstanceType :: Lens' Instance (Maybe Text)
iInstanceType = lens _iInstanceType (\s a -> s {_iInstanceType = a})

-- | The identifier of the instance group to which this instance belongs.
iInstanceGroupId :: Lens' Instance (Maybe Text)
iInstanceGroupId = lens _iInstanceGroupId (\s a -> s {_iInstanceGroupId = a})

-- | The unique identifier for the instance in Amazon EMR.
iId :: Lens' Instance (Maybe Text)
iId = lens _iId (\s a -> s {_iId = a})

-- | The unique identifier of the instance fleet to which an EC2 instance belongs.
iInstanceFleetId :: Lens' Instance (Maybe Text)
iInstanceFleetId = lens _iInstanceFleetId (\s a -> s {_iInstanceFleetId = a})

-- | The public DNS name of the instance.
iPublicDNSName :: Lens' Instance (Maybe Text)
iPublicDNSName = lens _iPublicDNSName (\s a -> s {_iPublicDNSName = a})

-- | The instance purchasing option. Valid values are @ON_DEMAND@ or @SPOT@ .
iMarket :: Lens' Instance (Maybe MarketType)
iMarket = lens _iMarket (\s a -> s {_iMarket = a})

-- | The public IP address of the instance.
iPublicIPAddress :: Lens' Instance (Maybe Text)
iPublicIPAddress = lens _iPublicIPAddress (\s a -> s {_iPublicIPAddress = a})

-- | The private DNS name of the instance.
iPrivateDNSName :: Lens' Instance (Maybe Text)
iPrivateDNSName = lens _iPrivateDNSName (\s a -> s {_iPrivateDNSName = a})

-- | The unique identifier of the instance in Amazon EC2.
iEC2InstanceId :: Lens' Instance (Maybe Text)
iEC2InstanceId = lens _iEC2InstanceId (\s a -> s {_iEC2InstanceId = a})

-- | The private IP address of the instance.
iPrivateIPAddress :: Lens' Instance (Maybe Text)
iPrivateIPAddress = lens _iPrivateIPAddress (\s a -> s {_iPrivateIPAddress = a})

instance FromJSON Instance where
  parseJSON =
    withObject
      "Instance"
      ( \x ->
          Instance'
            <$> (x .:? "EbsVolumes" .!= mempty)
            <*> (x .:? "Status")
            <*> (x .:? "InstanceType")
            <*> (x .:? "InstanceGroupId")
            <*> (x .:? "Id")
            <*> (x .:? "InstanceFleetId")
            <*> (x .:? "PublicDnsName")
            <*> (x .:? "Market")
            <*> (x .:? "PublicIpAddress")
            <*> (x .:? "PrivateDnsName")
            <*> (x .:? "Ec2InstanceId")
            <*> (x .:? "PrivateIpAddress")
      )

instance Hashable Instance

instance NFData Instance
