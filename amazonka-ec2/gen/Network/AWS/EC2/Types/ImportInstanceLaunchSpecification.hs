{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ImportInstanceLaunchSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImportInstanceLaunchSpecification where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ArchitectureValues
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.Placement
import Network.AWS.EC2.Types.ShutdownBehavior
import Network.AWS.EC2.Types.UserData
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the launch specification for VM import.
--
--
--
-- /See:/ 'importInstanceLaunchSpecification' smart constructor.
data ImportInstanceLaunchSpecification = ImportInstanceLaunchSpecification'
  { _iilsAdditionalInfo ::
      !( Maybe
           Text
       ),
    _iilsInstanceType ::
      !( Maybe
           InstanceType
       ),
    _iilsUserData ::
      !( Maybe
           ( Sensitive
               UserData
           )
       ),
    _iilsPlacement ::
      !( Maybe
           Placement
       ),
    _iilsGroupIds ::
      !( Maybe
           [Text]
       ),
    _iilsGroupNames ::
      !( Maybe
           [Text]
       ),
    _iilsArchitecture ::
      !( Maybe
           ArchitectureValues
       ),
    _iilsInstanceInitiatedShutdownBehavior ::
      !( Maybe
           ShutdownBehavior
       ),
    _iilsMonitoring ::
      !( Maybe
           Bool
       ),
    _iilsSubnetId ::
      !( Maybe
           Text
       ),
    _iilsPrivateIPAddress ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ImportInstanceLaunchSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iilsAdditionalInfo' - Reserved.
--
-- * 'iilsInstanceType' - The instance type. For more information about the instance types that you can import, see <https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-instance-types Instance Types> in the VM Import/Export User Guide.
--
-- * 'iilsUserData' - The Base64-encoded user data to make available to the instance.
--
-- * 'iilsPlacement' - The placement information for the instance.
--
-- * 'iilsGroupIds' - The security group IDs.
--
-- * 'iilsGroupNames' - The security group names.
--
-- * 'iilsArchitecture' - The architecture of the instance.
--
-- * 'iilsInstanceInitiatedShutdownBehavior' - Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
--
-- * 'iilsMonitoring' - Indicates whether monitoring is enabled.
--
-- * 'iilsSubnetId' - [EC2-VPC] The ID of the subnet in which to launch the instance.
--
-- * 'iilsPrivateIPAddress' - [EC2-VPC] An available IP address from the IP address range of the subnet.
importInstanceLaunchSpecification ::
  ImportInstanceLaunchSpecification
importInstanceLaunchSpecification =
  ImportInstanceLaunchSpecification'
    { _iilsAdditionalInfo =
        Nothing,
      _iilsInstanceType = Nothing,
      _iilsUserData = Nothing,
      _iilsPlacement = Nothing,
      _iilsGroupIds = Nothing,
      _iilsGroupNames = Nothing,
      _iilsArchitecture = Nothing,
      _iilsInstanceInitiatedShutdownBehavior =
        Nothing,
      _iilsMonitoring = Nothing,
      _iilsSubnetId = Nothing,
      _iilsPrivateIPAddress = Nothing
    }

-- | Reserved.
iilsAdditionalInfo :: Lens' ImportInstanceLaunchSpecification (Maybe Text)
iilsAdditionalInfo = lens _iilsAdditionalInfo (\s a -> s {_iilsAdditionalInfo = a})

-- | The instance type. For more information about the instance types that you can import, see <https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-instance-types Instance Types> in the VM Import/Export User Guide.
iilsInstanceType :: Lens' ImportInstanceLaunchSpecification (Maybe InstanceType)
iilsInstanceType = lens _iilsInstanceType (\s a -> s {_iilsInstanceType = a})

-- | The Base64-encoded user data to make available to the instance.
iilsUserData :: Lens' ImportInstanceLaunchSpecification (Maybe UserData)
iilsUserData = lens _iilsUserData (\s a -> s {_iilsUserData = a}) . mapping _Sensitive

-- | The placement information for the instance.
iilsPlacement :: Lens' ImportInstanceLaunchSpecification (Maybe Placement)
iilsPlacement = lens _iilsPlacement (\s a -> s {_iilsPlacement = a})

-- | The security group IDs.
iilsGroupIds :: Lens' ImportInstanceLaunchSpecification [Text]
iilsGroupIds = lens _iilsGroupIds (\s a -> s {_iilsGroupIds = a}) . _Default . _Coerce

-- | The security group names.
iilsGroupNames :: Lens' ImportInstanceLaunchSpecification [Text]
iilsGroupNames = lens _iilsGroupNames (\s a -> s {_iilsGroupNames = a}) . _Default . _Coerce

-- | The architecture of the instance.
iilsArchitecture :: Lens' ImportInstanceLaunchSpecification (Maybe ArchitectureValues)
iilsArchitecture = lens _iilsArchitecture (\s a -> s {_iilsArchitecture = a})

-- | Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
iilsInstanceInitiatedShutdownBehavior :: Lens' ImportInstanceLaunchSpecification (Maybe ShutdownBehavior)
iilsInstanceInitiatedShutdownBehavior = lens _iilsInstanceInitiatedShutdownBehavior (\s a -> s {_iilsInstanceInitiatedShutdownBehavior = a})

-- | Indicates whether monitoring is enabled.
iilsMonitoring :: Lens' ImportInstanceLaunchSpecification (Maybe Bool)
iilsMonitoring = lens _iilsMonitoring (\s a -> s {_iilsMonitoring = a})

-- | [EC2-VPC] The ID of the subnet in which to launch the instance.
iilsSubnetId :: Lens' ImportInstanceLaunchSpecification (Maybe Text)
iilsSubnetId = lens _iilsSubnetId (\s a -> s {_iilsSubnetId = a})

-- | [EC2-VPC] An available IP address from the IP address range of the subnet.
iilsPrivateIPAddress :: Lens' ImportInstanceLaunchSpecification (Maybe Text)
iilsPrivateIPAddress = lens _iilsPrivateIPAddress (\s a -> s {_iilsPrivateIPAddress = a})

instance Hashable ImportInstanceLaunchSpecification

instance NFData ImportInstanceLaunchSpecification

instance ToQuery ImportInstanceLaunchSpecification where
  toQuery ImportInstanceLaunchSpecification' {..} =
    mconcat
      [ "AdditionalInfo" =: _iilsAdditionalInfo,
        "InstanceType" =: _iilsInstanceType,
        "UserData" =: _iilsUserData,
        "Placement" =: _iilsPlacement,
        toQuery (toQueryList "GroupId" <$> _iilsGroupIds),
        toQuery
          (toQueryList "GroupName" <$> _iilsGroupNames),
        "Architecture" =: _iilsArchitecture,
        "InstanceInitiatedShutdownBehavior"
          =: _iilsInstanceInitiatedShutdownBehavior,
        "Monitoring" =: _iilsMonitoring,
        "SubnetId" =: _iilsSubnetId,
        "PrivateIpAddress" =: _iilsPrivateIPAddress
      ]
