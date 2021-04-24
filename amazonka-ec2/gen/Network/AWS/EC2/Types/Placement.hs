{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Placement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Placement where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tenancy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the placement of an instance.
--
--
--
-- /See:/ 'placement' smart constructor.
data Placement = Placement'
  { _pSpreadDomain ::
      !(Maybe Text),
    _pGroupName :: !(Maybe Text),
    _pTenancy :: !(Maybe Tenancy),
    _pAffinity :: !(Maybe Text),
    _pAvailabilityZone :: !(Maybe Text),
    _pPartitionNumber :: !(Maybe Int),
    _pHostResourceGroupARN :: !(Maybe Text),
    _pHostId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Placement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pSpreadDomain' - Reserved for future use. This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
--
-- * 'pGroupName' - The name of the placement group the instance is in.
--
-- * 'pTenancy' - The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of @dedicated@ runs on single-tenant hardware. The @host@ tenancy is not supported for the <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html ImportInstance> command. This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
--
-- * 'pAffinity' - The affinity setting for the instance on the Dedicated Host. This parameter is not supported for the <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html ImportInstance> command. This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
--
-- * 'pAvailabilityZone' - The Availability Zone of the instance. If not specified, an Availability Zone will be automatically chosen for you based on the load balancing criteria for the Region. This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
--
-- * 'pPartitionNumber' - The number of the partition the instance is in. Valid only if the placement group strategy is set to @partition@ . This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
--
-- * 'pHostResourceGroupARN' - The ARN of the host resource group in which to launch the instances. If you specify a host resource group ARN, omit the __Tenancy__ parameter or set it to @host@ . This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
--
-- * 'pHostId' - The ID of the Dedicated Host on which the instance resides. This parameter is not supported for the <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html ImportInstance> command. This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
placement ::
  Placement
placement =
  Placement'
    { _pSpreadDomain = Nothing,
      _pGroupName = Nothing,
      _pTenancy = Nothing,
      _pAffinity = Nothing,
      _pAvailabilityZone = Nothing,
      _pPartitionNumber = Nothing,
      _pHostResourceGroupARN = Nothing,
      _pHostId = Nothing
    }

-- | Reserved for future use. This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
pSpreadDomain :: Lens' Placement (Maybe Text)
pSpreadDomain = lens _pSpreadDomain (\s a -> s {_pSpreadDomain = a})

-- | The name of the placement group the instance is in.
pGroupName :: Lens' Placement (Maybe Text)
pGroupName = lens _pGroupName (\s a -> s {_pGroupName = a})

-- | The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of @dedicated@ runs on single-tenant hardware. The @host@ tenancy is not supported for the <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html ImportInstance> command. This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
pTenancy :: Lens' Placement (Maybe Tenancy)
pTenancy = lens _pTenancy (\s a -> s {_pTenancy = a})

-- | The affinity setting for the instance on the Dedicated Host. This parameter is not supported for the <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html ImportInstance> command. This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
pAffinity :: Lens' Placement (Maybe Text)
pAffinity = lens _pAffinity (\s a -> s {_pAffinity = a})

-- | The Availability Zone of the instance. If not specified, an Availability Zone will be automatically chosen for you based on the load balancing criteria for the Region. This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
pAvailabilityZone :: Lens' Placement (Maybe Text)
pAvailabilityZone = lens _pAvailabilityZone (\s a -> s {_pAvailabilityZone = a})

-- | The number of the partition the instance is in. Valid only if the placement group strategy is set to @partition@ . This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
pPartitionNumber :: Lens' Placement (Maybe Int)
pPartitionNumber = lens _pPartitionNumber (\s a -> s {_pPartitionNumber = a})

-- | The ARN of the host resource group in which to launch the instances. If you specify a host resource group ARN, omit the __Tenancy__ parameter or set it to @host@ . This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
pHostResourceGroupARN :: Lens' Placement (Maybe Text)
pHostResourceGroupARN = lens _pHostResourceGroupARN (\s a -> s {_pHostResourceGroupARN = a})

-- | The ID of the Dedicated Host on which the instance resides. This parameter is not supported for the <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html ImportInstance> command. This parameter is not supported by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet CreateFleet> .
pHostId :: Lens' Placement (Maybe Text)
pHostId = lens _pHostId (\s a -> s {_pHostId = a})

instance FromXML Placement where
  parseXML x =
    Placement'
      <$> (x .@? "spreadDomain")
      <*> (x .@? "groupName")
      <*> (x .@? "tenancy")
      <*> (x .@? "affinity")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "partitionNumber")
      <*> (x .@? "hostResourceGroupArn")
      <*> (x .@? "hostId")

instance Hashable Placement

instance NFData Placement

instance ToQuery Placement where
  toQuery Placement' {..} =
    mconcat
      [ "SpreadDomain" =: _pSpreadDomain,
        "GroupName" =: _pGroupName,
        "Tenancy" =: _pTenancy,
        "Affinity" =: _pAffinity,
        "AvailabilityZone" =: _pAvailabilityZone,
        "PartitionNumber" =: _pPartitionNumber,
        "HostResourceGroupArn" =: _pHostResourceGroupARN,
        "HostId" =: _pHostId
      ]
