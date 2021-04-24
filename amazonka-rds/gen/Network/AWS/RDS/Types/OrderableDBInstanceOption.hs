{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.OrderableDBInstanceOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.OrderableDBInstanceOption where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.AvailabilityZone
import Network.AWS.RDS.Types.AvailableProcessorFeature

-- | Contains a list of available options for a DB instance.
--
--
-- This data type is used as a response element in the @DescribeOrderableDBInstanceOptions@ action.
--
--
-- /See:/ 'orderableDBInstanceOption' smart constructor.
data OrderableDBInstanceOption = OrderableDBInstanceOption'
  { _odioMinIOPSPerDBInstance ::
      !(Maybe Int),
    _odioAvailabilityZones ::
      !( Maybe
           [AvailabilityZone]
       ),
    _odioSupportsKerberosAuthentication ::
      !(Maybe Bool),
    _odioSupportsIOPS ::
      !(Maybe Bool),
    _odioStorageType ::
      !(Maybe Text),
    _odioSupportsEnhancedMonitoring ::
      !(Maybe Bool),
    _odioAvailableProcessorFeatures ::
      !( Maybe
           [AvailableProcessorFeature]
       ),
    _odioMaxStorageSize ::
      !(Maybe Int),
    _odioSupportedEngineModes ::
      !(Maybe [Text]),
    _odioMaxIOPSPerGib ::
      !(Maybe Double),
    _odioSupportsStorageEncryption ::
      !(Maybe Bool),
    _odioMultiAZCapable ::
      !(Maybe Bool),
    _odioSupportsStorageAutoscaling ::
      !(Maybe Bool),
    _odioEngineVersion ::
      !(Maybe Text),
    _odioMinIOPSPerGib ::
      !(Maybe Double),
    _odioSupportsIAMDatabaseAuthentication ::
      !(Maybe Bool),
    _odioLicenseModel ::
      !(Maybe Text),
    _odioSupportsGlobalDatabases ::
      !(Maybe Bool),
    _odioSupportsPerformanceInsights ::
      !(Maybe Bool),
    _odioMaxIOPSPerDBInstance ::
      !(Maybe Int),
    _odioDBInstanceClass ::
      !(Maybe Text),
    _odioOutpostCapable ::
      !(Maybe Bool),
    _odioEngine ::
      !(Maybe Text),
    _odioMinStorageSize ::
      !(Maybe Int),
    _odioAvailabilityZoneGroup ::
      !(Maybe Text),
    _odioVPC ::
      !(Maybe Bool),
    _odioReadReplicaCapable ::
      !(Maybe Bool)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'OrderableDBInstanceOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odioMinIOPSPerDBInstance' - Minimum total provisioned IOPS for a DB instance.
--
-- * 'odioAvailabilityZones' - A list of Availability Zones for a DB instance.
--
-- * 'odioSupportsKerberosAuthentication' - Whether a DB instance supports Kerberos Authentication.
--
-- * 'odioSupportsIOPS' - Indicates whether a DB instance supports provisioned IOPS.
--
-- * 'odioStorageType' - Indicates the storage type for a DB instance.
--
-- * 'odioSupportsEnhancedMonitoring' - Indicates whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.
--
-- * 'odioAvailableProcessorFeatures' - A list of the available processor features for the DB instance class of a DB instance.
--
-- * 'odioMaxStorageSize' - Maximum storage size for a DB instance.
--
-- * 'odioSupportedEngineModes' - A list of the supported DB engine modes.
--
-- * 'odioMaxIOPSPerGib' - Maximum provisioned IOPS per GiB for a DB instance.
--
-- * 'odioSupportsStorageEncryption' - Indicates whether a DB instance supports encrypted storage.
--
-- * 'odioMultiAZCapable' - Indicates whether a DB instance is Multi-AZ capable.
--
-- * 'odioSupportsStorageAutoscaling' - Whether Amazon RDS can automatically scale storage for DB instances that use the specified DB instance class.
--
-- * 'odioEngineVersion' - The engine version of a DB instance.
--
-- * 'odioMinIOPSPerGib' - Minimum provisioned IOPS per GiB for a DB instance.
--
-- * 'odioSupportsIAMDatabaseAuthentication' - Indicates whether a DB instance supports IAM database authentication.
--
-- * 'odioLicenseModel' - The license model for a DB instance.
--
-- * 'odioSupportsGlobalDatabases' - A value that indicates whether you can use Aurora global databases with a specific combination of other DB engine attributes.
--
-- * 'odioSupportsPerformanceInsights' - True if a DB instance supports Performance Insights, otherwise false.
--
-- * 'odioMaxIOPSPerDBInstance' - Maximum total provisioned IOPS for a DB instance.
--
-- * 'odioDBInstanceClass' - The DB instance class for a DB instance.
--
-- * 'odioOutpostCapable' - Whether a DB instance supports RDS on Outposts. For more information about RDS on Outposts, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Amazon RDS on AWS Outposts> in the /Amazon RDS User Guide./
--
-- * 'odioEngine' - The engine type of a DB instance.
--
-- * 'odioMinStorageSize' - Minimum storage size for a DB instance.
--
-- * 'odioAvailabilityZoneGroup' - The Availability Zone group for a DB instance.
--
-- * 'odioVPC' - Indicates whether a DB instance is in a VPC.
--
-- * 'odioReadReplicaCapable' - Indicates whether a DB instance can have a read replica.
orderableDBInstanceOption ::
  OrderableDBInstanceOption
orderableDBInstanceOption =
  OrderableDBInstanceOption'
    { _odioMinIOPSPerDBInstance =
        Nothing,
      _odioAvailabilityZones = Nothing,
      _odioSupportsKerberosAuthentication = Nothing,
      _odioSupportsIOPS = Nothing,
      _odioStorageType = Nothing,
      _odioSupportsEnhancedMonitoring = Nothing,
      _odioAvailableProcessorFeatures = Nothing,
      _odioMaxStorageSize = Nothing,
      _odioSupportedEngineModes = Nothing,
      _odioMaxIOPSPerGib = Nothing,
      _odioSupportsStorageEncryption = Nothing,
      _odioMultiAZCapable = Nothing,
      _odioSupportsStorageAutoscaling = Nothing,
      _odioEngineVersion = Nothing,
      _odioMinIOPSPerGib = Nothing,
      _odioSupportsIAMDatabaseAuthentication = Nothing,
      _odioLicenseModel = Nothing,
      _odioSupportsGlobalDatabases = Nothing,
      _odioSupportsPerformanceInsights = Nothing,
      _odioMaxIOPSPerDBInstance = Nothing,
      _odioDBInstanceClass = Nothing,
      _odioOutpostCapable = Nothing,
      _odioEngine = Nothing,
      _odioMinStorageSize = Nothing,
      _odioAvailabilityZoneGroup = Nothing,
      _odioVPC = Nothing,
      _odioReadReplicaCapable = Nothing
    }

-- | Minimum total provisioned IOPS for a DB instance.
odioMinIOPSPerDBInstance :: Lens' OrderableDBInstanceOption (Maybe Int)
odioMinIOPSPerDBInstance = lens _odioMinIOPSPerDBInstance (\s a -> s {_odioMinIOPSPerDBInstance = a})

-- | A list of Availability Zones for a DB instance.
odioAvailabilityZones :: Lens' OrderableDBInstanceOption [AvailabilityZone]
odioAvailabilityZones = lens _odioAvailabilityZones (\s a -> s {_odioAvailabilityZones = a}) . _Default . _Coerce

-- | Whether a DB instance supports Kerberos Authentication.
odioSupportsKerberosAuthentication :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioSupportsKerberosAuthentication = lens _odioSupportsKerberosAuthentication (\s a -> s {_odioSupportsKerberosAuthentication = a})

-- | Indicates whether a DB instance supports provisioned IOPS.
odioSupportsIOPS :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioSupportsIOPS = lens _odioSupportsIOPS (\s a -> s {_odioSupportsIOPS = a})

-- | Indicates the storage type for a DB instance.
odioStorageType :: Lens' OrderableDBInstanceOption (Maybe Text)
odioStorageType = lens _odioStorageType (\s a -> s {_odioStorageType = a})

-- | Indicates whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.
odioSupportsEnhancedMonitoring :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioSupportsEnhancedMonitoring = lens _odioSupportsEnhancedMonitoring (\s a -> s {_odioSupportsEnhancedMonitoring = a})

-- | A list of the available processor features for the DB instance class of a DB instance.
odioAvailableProcessorFeatures :: Lens' OrderableDBInstanceOption [AvailableProcessorFeature]
odioAvailableProcessorFeatures = lens _odioAvailableProcessorFeatures (\s a -> s {_odioAvailableProcessorFeatures = a}) . _Default . _Coerce

-- | Maximum storage size for a DB instance.
odioMaxStorageSize :: Lens' OrderableDBInstanceOption (Maybe Int)
odioMaxStorageSize = lens _odioMaxStorageSize (\s a -> s {_odioMaxStorageSize = a})

-- | A list of the supported DB engine modes.
odioSupportedEngineModes :: Lens' OrderableDBInstanceOption [Text]
odioSupportedEngineModes = lens _odioSupportedEngineModes (\s a -> s {_odioSupportedEngineModes = a}) . _Default . _Coerce

-- | Maximum provisioned IOPS per GiB for a DB instance.
odioMaxIOPSPerGib :: Lens' OrderableDBInstanceOption (Maybe Double)
odioMaxIOPSPerGib = lens _odioMaxIOPSPerGib (\s a -> s {_odioMaxIOPSPerGib = a})

-- | Indicates whether a DB instance supports encrypted storage.
odioSupportsStorageEncryption :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioSupportsStorageEncryption = lens _odioSupportsStorageEncryption (\s a -> s {_odioSupportsStorageEncryption = a})

-- | Indicates whether a DB instance is Multi-AZ capable.
odioMultiAZCapable :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioMultiAZCapable = lens _odioMultiAZCapable (\s a -> s {_odioMultiAZCapable = a})

-- | Whether Amazon RDS can automatically scale storage for DB instances that use the specified DB instance class.
odioSupportsStorageAutoscaling :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioSupportsStorageAutoscaling = lens _odioSupportsStorageAutoscaling (\s a -> s {_odioSupportsStorageAutoscaling = a})

-- | The engine version of a DB instance.
odioEngineVersion :: Lens' OrderableDBInstanceOption (Maybe Text)
odioEngineVersion = lens _odioEngineVersion (\s a -> s {_odioEngineVersion = a})

-- | Minimum provisioned IOPS per GiB for a DB instance.
odioMinIOPSPerGib :: Lens' OrderableDBInstanceOption (Maybe Double)
odioMinIOPSPerGib = lens _odioMinIOPSPerGib (\s a -> s {_odioMinIOPSPerGib = a})

-- | Indicates whether a DB instance supports IAM database authentication.
odioSupportsIAMDatabaseAuthentication :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioSupportsIAMDatabaseAuthentication = lens _odioSupportsIAMDatabaseAuthentication (\s a -> s {_odioSupportsIAMDatabaseAuthentication = a})

-- | The license model for a DB instance.
odioLicenseModel :: Lens' OrderableDBInstanceOption (Maybe Text)
odioLicenseModel = lens _odioLicenseModel (\s a -> s {_odioLicenseModel = a})

-- | A value that indicates whether you can use Aurora global databases with a specific combination of other DB engine attributes.
odioSupportsGlobalDatabases :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioSupportsGlobalDatabases = lens _odioSupportsGlobalDatabases (\s a -> s {_odioSupportsGlobalDatabases = a})

-- | True if a DB instance supports Performance Insights, otherwise false.
odioSupportsPerformanceInsights :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioSupportsPerformanceInsights = lens _odioSupportsPerformanceInsights (\s a -> s {_odioSupportsPerformanceInsights = a})

-- | Maximum total provisioned IOPS for a DB instance.
odioMaxIOPSPerDBInstance :: Lens' OrderableDBInstanceOption (Maybe Int)
odioMaxIOPSPerDBInstance = lens _odioMaxIOPSPerDBInstance (\s a -> s {_odioMaxIOPSPerDBInstance = a})

-- | The DB instance class for a DB instance.
odioDBInstanceClass :: Lens' OrderableDBInstanceOption (Maybe Text)
odioDBInstanceClass = lens _odioDBInstanceClass (\s a -> s {_odioDBInstanceClass = a})

-- | Whether a DB instance supports RDS on Outposts. For more information about RDS on Outposts, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Amazon RDS on AWS Outposts> in the /Amazon RDS User Guide./
odioOutpostCapable :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioOutpostCapable = lens _odioOutpostCapable (\s a -> s {_odioOutpostCapable = a})

-- | The engine type of a DB instance.
odioEngine :: Lens' OrderableDBInstanceOption (Maybe Text)
odioEngine = lens _odioEngine (\s a -> s {_odioEngine = a})

-- | Minimum storage size for a DB instance.
odioMinStorageSize :: Lens' OrderableDBInstanceOption (Maybe Int)
odioMinStorageSize = lens _odioMinStorageSize (\s a -> s {_odioMinStorageSize = a})

-- | The Availability Zone group for a DB instance.
odioAvailabilityZoneGroup :: Lens' OrderableDBInstanceOption (Maybe Text)
odioAvailabilityZoneGroup = lens _odioAvailabilityZoneGroup (\s a -> s {_odioAvailabilityZoneGroup = a})

-- | Indicates whether a DB instance is in a VPC.
odioVPC :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioVPC = lens _odioVPC (\s a -> s {_odioVPC = a})

-- | Indicates whether a DB instance can have a read replica.
odioReadReplicaCapable :: Lens' OrderableDBInstanceOption (Maybe Bool)
odioReadReplicaCapable = lens _odioReadReplicaCapable (\s a -> s {_odioReadReplicaCapable = a})

instance FromXML OrderableDBInstanceOption where
  parseXML x =
    OrderableDBInstanceOption'
      <$> (x .@? "MinIopsPerDbInstance")
      <*> ( x .@? "AvailabilityZones" .!@ mempty
              >>= may (parseXMLList "AvailabilityZone")
          )
      <*> (x .@? "SupportsKerberosAuthentication")
      <*> (x .@? "SupportsIops")
      <*> (x .@? "StorageType")
      <*> (x .@? "SupportsEnhancedMonitoring")
      <*> ( x .@? "AvailableProcessorFeatures" .!@ mempty
              >>= may (parseXMLList "AvailableProcessorFeature")
          )
      <*> (x .@? "MaxStorageSize")
      <*> ( x .@? "SupportedEngineModes" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "MaxIopsPerGib")
      <*> (x .@? "SupportsStorageEncryption")
      <*> (x .@? "MultiAZCapable")
      <*> (x .@? "SupportsStorageAutoscaling")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "MinIopsPerGib")
      <*> (x .@? "SupportsIAMDatabaseAuthentication")
      <*> (x .@? "LicenseModel")
      <*> (x .@? "SupportsGlobalDatabases")
      <*> (x .@? "SupportsPerformanceInsights")
      <*> (x .@? "MaxIopsPerDbInstance")
      <*> (x .@? "DBInstanceClass")
      <*> (x .@? "OutpostCapable")
      <*> (x .@? "Engine")
      <*> (x .@? "MinStorageSize")
      <*> (x .@? "AvailabilityZoneGroup")
      <*> (x .@? "Vpc")
      <*> (x .@? "ReadReplicaCapable")

instance Hashable OrderableDBInstanceOption

instance NFData OrderableDBInstanceOption
