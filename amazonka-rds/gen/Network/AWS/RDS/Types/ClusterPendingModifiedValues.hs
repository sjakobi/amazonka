{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.ClusterPendingModifiedValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ClusterPendingModifiedValues where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.PendingCloudwatchLogsExports

-- | This data type is used as a response element in the @ModifyDBCluster@ operation and contains changes that will be applied during the next maintenance window.
--
--
--
-- /See:/ 'clusterPendingModifiedValues' smart constructor.
data ClusterPendingModifiedValues = ClusterPendingModifiedValues'
  { _cpmvMasterUserPassword ::
      !(Maybe Text),
    _cpmvPendingCloudwatchLogsExports ::
      !( Maybe
           PendingCloudwatchLogsExports
       ),
    _cpmvDBClusterIdentifier ::
      !(Maybe Text),
    _cpmvEngineVersion ::
      !(Maybe Text),
    _cpmvIAMDatabaseAuthenticationEnabled ::
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

-- | Creates a value of 'ClusterPendingModifiedValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpmvMasterUserPassword' - The master credentials for the DB cluster.
--
-- * 'cpmvPendingCloudwatchLogsExports' - Undocumented member.
--
-- * 'cpmvDBClusterIdentifier' - The DBClusterIdentifier value for the DB cluster.
--
-- * 'cpmvEngineVersion' - The database engine version.
--
-- * 'cpmvIAMDatabaseAuthenticationEnabled' - A value that indicates whether mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
clusterPendingModifiedValues ::
  ClusterPendingModifiedValues
clusterPendingModifiedValues =
  ClusterPendingModifiedValues'
    { _cpmvMasterUserPassword =
        Nothing,
      _cpmvPendingCloudwatchLogsExports = Nothing,
      _cpmvDBClusterIdentifier = Nothing,
      _cpmvEngineVersion = Nothing,
      _cpmvIAMDatabaseAuthenticationEnabled =
        Nothing
    }

-- | The master credentials for the DB cluster.
cpmvMasterUserPassword :: Lens' ClusterPendingModifiedValues (Maybe Text)
cpmvMasterUserPassword = lens _cpmvMasterUserPassword (\s a -> s {_cpmvMasterUserPassword = a})

-- | Undocumented member.
cpmvPendingCloudwatchLogsExports :: Lens' ClusterPendingModifiedValues (Maybe PendingCloudwatchLogsExports)
cpmvPendingCloudwatchLogsExports = lens _cpmvPendingCloudwatchLogsExports (\s a -> s {_cpmvPendingCloudwatchLogsExports = a})

-- | The DBClusterIdentifier value for the DB cluster.
cpmvDBClusterIdentifier :: Lens' ClusterPendingModifiedValues (Maybe Text)
cpmvDBClusterIdentifier = lens _cpmvDBClusterIdentifier (\s a -> s {_cpmvDBClusterIdentifier = a})

-- | The database engine version.
cpmvEngineVersion :: Lens' ClusterPendingModifiedValues (Maybe Text)
cpmvEngineVersion = lens _cpmvEngineVersion (\s a -> s {_cpmvEngineVersion = a})

-- | A value that indicates whether mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
cpmvIAMDatabaseAuthenticationEnabled :: Lens' ClusterPendingModifiedValues (Maybe Bool)
cpmvIAMDatabaseAuthenticationEnabled = lens _cpmvIAMDatabaseAuthenticationEnabled (\s a -> s {_cpmvIAMDatabaseAuthenticationEnabled = a})

instance FromXML ClusterPendingModifiedValues where
  parseXML x =
    ClusterPendingModifiedValues'
      <$> (x .@? "MasterUserPassword")
      <*> (x .@? "PendingCloudwatchLogsExports")
      <*> (x .@? "DBClusterIdentifier")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "IAMDatabaseAuthenticationEnabled")

instance Hashable ClusterPendingModifiedValues

instance NFData ClusterPendingModifiedValues
