{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.PendingModifiedValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.PendingModifiedValues where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.PendingCloudwatchLogsExports
import Network.AWS.RDS.Types.ProcessorFeature

-- | This data type is used as a response element in the @ModifyDBInstance@ operation and contains changes that will be applied during the next maintenance window.
--
--
--
-- /See:/ 'pendingModifiedValues' smart constructor.
data PendingModifiedValues = PendingModifiedValues'
  { _pmvBackupRetentionPeriod ::
      !(Maybe Int),
    _pmvCACertificateIdentifier ::
      !(Maybe Text),
    _pmvStorageType ::
      !(Maybe Text),
    _pmvDBSubnetGroupName ::
      !(Maybe Text),
    _pmvMasterUserPassword ::
      !(Maybe Text),
    _pmvMultiAZ ::
      !(Maybe Bool),
    _pmvPendingCloudwatchLogsExports ::
      !( Maybe
           PendingCloudwatchLogsExports
       ),
    _pmvEngineVersion ::
      !(Maybe Text),
    _pmvLicenseModel ::
      !(Maybe Text),
    _pmvDBInstanceIdentifier ::
      !(Maybe Text),
    _pmvProcessorFeatures ::
      !(Maybe [ProcessorFeature]),
    _pmvPort :: !(Maybe Int),
    _pmvDBInstanceClass ::
      !(Maybe Text),
    _pmvAllocatedStorage ::
      !(Maybe Int),
    _pmvIAMDatabaseAuthenticationEnabled ::
      !(Maybe Bool),
    _pmvIOPS :: !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PendingModifiedValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmvBackupRetentionPeriod' - The number of days for which automated backups are retained.
--
-- * 'pmvCACertificateIdentifier' - The identifier of the CA certificate for the DB instance.
--
-- * 'pmvStorageType' - The storage type of the DB instance.
--
-- * 'pmvDBSubnetGroupName' - The DB subnet group for the DB instance.
--
-- * 'pmvMasterUserPassword' - The master credentials for the DB instance.
--
-- * 'pmvMultiAZ' - A value that indicates that the Single-AZ DB instance will change to a Multi-AZ deployment.
--
-- * 'pmvPendingCloudwatchLogsExports' - Undocumented member.
--
-- * 'pmvEngineVersion' - The database engine version.
--
-- * 'pmvLicenseModel' - The license model for the DB instance. Valid values: @license-included@ | @bring-your-own-license@ | @general-public-license@
--
-- * 'pmvDBInstanceIdentifier' - The database identifier for the DB instance.
--
-- * 'pmvProcessorFeatures' - The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
--
-- * 'pmvPort' - The port for the DB instance.
--
-- * 'pmvDBInstanceClass' - The name of the compute and memory capacity class for the DB instance.
--
-- * 'pmvAllocatedStorage' - The allocated storage size for the DB instance specified in gibibytes .
--
-- * 'pmvIAMDatabaseAuthenticationEnabled' - Whether mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
--
-- * 'pmvIOPS' - The Provisioned IOPS value for the DB instance.
pendingModifiedValues ::
  PendingModifiedValues
pendingModifiedValues =
  PendingModifiedValues'
    { _pmvBackupRetentionPeriod =
        Nothing,
      _pmvCACertificateIdentifier = Nothing,
      _pmvStorageType = Nothing,
      _pmvDBSubnetGroupName = Nothing,
      _pmvMasterUserPassword = Nothing,
      _pmvMultiAZ = Nothing,
      _pmvPendingCloudwatchLogsExports = Nothing,
      _pmvEngineVersion = Nothing,
      _pmvLicenseModel = Nothing,
      _pmvDBInstanceIdentifier = Nothing,
      _pmvProcessorFeatures = Nothing,
      _pmvPort = Nothing,
      _pmvDBInstanceClass = Nothing,
      _pmvAllocatedStorage = Nothing,
      _pmvIAMDatabaseAuthenticationEnabled = Nothing,
      _pmvIOPS = Nothing
    }

-- | The number of days for which automated backups are retained.
pmvBackupRetentionPeriod :: Lens' PendingModifiedValues (Maybe Int)
pmvBackupRetentionPeriod = lens _pmvBackupRetentionPeriod (\s a -> s {_pmvBackupRetentionPeriod = a})

-- | The identifier of the CA certificate for the DB instance.
pmvCACertificateIdentifier :: Lens' PendingModifiedValues (Maybe Text)
pmvCACertificateIdentifier = lens _pmvCACertificateIdentifier (\s a -> s {_pmvCACertificateIdentifier = a})

-- | The storage type of the DB instance.
pmvStorageType :: Lens' PendingModifiedValues (Maybe Text)
pmvStorageType = lens _pmvStorageType (\s a -> s {_pmvStorageType = a})

-- | The DB subnet group for the DB instance.
pmvDBSubnetGroupName :: Lens' PendingModifiedValues (Maybe Text)
pmvDBSubnetGroupName = lens _pmvDBSubnetGroupName (\s a -> s {_pmvDBSubnetGroupName = a})

-- | The master credentials for the DB instance.
pmvMasterUserPassword :: Lens' PendingModifiedValues (Maybe Text)
pmvMasterUserPassword = lens _pmvMasterUserPassword (\s a -> s {_pmvMasterUserPassword = a})

-- | A value that indicates that the Single-AZ DB instance will change to a Multi-AZ deployment.
pmvMultiAZ :: Lens' PendingModifiedValues (Maybe Bool)
pmvMultiAZ = lens _pmvMultiAZ (\s a -> s {_pmvMultiAZ = a})

-- | Undocumented member.
pmvPendingCloudwatchLogsExports :: Lens' PendingModifiedValues (Maybe PendingCloudwatchLogsExports)
pmvPendingCloudwatchLogsExports = lens _pmvPendingCloudwatchLogsExports (\s a -> s {_pmvPendingCloudwatchLogsExports = a})

-- | The database engine version.
pmvEngineVersion :: Lens' PendingModifiedValues (Maybe Text)
pmvEngineVersion = lens _pmvEngineVersion (\s a -> s {_pmvEngineVersion = a})

-- | The license model for the DB instance. Valid values: @license-included@ | @bring-your-own-license@ | @general-public-license@
pmvLicenseModel :: Lens' PendingModifiedValues (Maybe Text)
pmvLicenseModel = lens _pmvLicenseModel (\s a -> s {_pmvLicenseModel = a})

-- | The database identifier for the DB instance.
pmvDBInstanceIdentifier :: Lens' PendingModifiedValues (Maybe Text)
pmvDBInstanceIdentifier = lens _pmvDBInstanceIdentifier (\s a -> s {_pmvDBInstanceIdentifier = a})

-- | The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
pmvProcessorFeatures :: Lens' PendingModifiedValues [ProcessorFeature]
pmvProcessorFeatures = lens _pmvProcessorFeatures (\s a -> s {_pmvProcessorFeatures = a}) . _Default . _Coerce

-- | The port for the DB instance.
pmvPort :: Lens' PendingModifiedValues (Maybe Int)
pmvPort = lens _pmvPort (\s a -> s {_pmvPort = a})

-- | The name of the compute and memory capacity class for the DB instance.
pmvDBInstanceClass :: Lens' PendingModifiedValues (Maybe Text)
pmvDBInstanceClass = lens _pmvDBInstanceClass (\s a -> s {_pmvDBInstanceClass = a})

-- | The allocated storage size for the DB instance specified in gibibytes .
pmvAllocatedStorage :: Lens' PendingModifiedValues (Maybe Int)
pmvAllocatedStorage = lens _pmvAllocatedStorage (\s a -> s {_pmvAllocatedStorage = a})

-- | Whether mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
pmvIAMDatabaseAuthenticationEnabled :: Lens' PendingModifiedValues (Maybe Bool)
pmvIAMDatabaseAuthenticationEnabled = lens _pmvIAMDatabaseAuthenticationEnabled (\s a -> s {_pmvIAMDatabaseAuthenticationEnabled = a})

-- | The Provisioned IOPS value for the DB instance.
pmvIOPS :: Lens' PendingModifiedValues (Maybe Int)
pmvIOPS = lens _pmvIOPS (\s a -> s {_pmvIOPS = a})

instance FromXML PendingModifiedValues where
  parseXML x =
    PendingModifiedValues'
      <$> (x .@? "BackupRetentionPeriod")
      <*> (x .@? "CACertificateIdentifier")
      <*> (x .@? "StorageType")
      <*> (x .@? "DBSubnetGroupName")
      <*> (x .@? "MasterUserPassword")
      <*> (x .@? "MultiAZ")
      <*> (x .@? "PendingCloudwatchLogsExports")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "LicenseModel")
      <*> (x .@? "DBInstanceIdentifier")
      <*> ( x .@? "ProcessorFeatures" .!@ mempty
              >>= may (parseXMLList "ProcessorFeature")
          )
      <*> (x .@? "Port")
      <*> (x .@? "DBInstanceClass")
      <*> (x .@? "AllocatedStorage")
      <*> (x .@? "IAMDatabaseAuthenticationEnabled")
      <*> (x .@? "Iops")

instance Hashable PendingModifiedValues

instance NFData PendingModifiedValues
