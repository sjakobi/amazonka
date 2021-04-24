{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.ModifyGlobalCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify a setting for an Amazon Aurora global cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
module Network.AWS.RDS.ModifyGlobalCluster
  ( -- * Creating a Request
    modifyGlobalCluster,
    ModifyGlobalCluster,

    -- * Request Lenses
    mgcDeletionProtection,
    mgcAllowMajorVersionUpgrade,
    mgcEngineVersion,
    mgcNewGlobalClusterIdentifier,
    mgcGlobalClusterIdentifier,

    -- * Destructuring the Response
    modifyGlobalClusterResponse,
    ModifyGlobalClusterResponse,

    -- * Response Lenses
    mgcrrsGlobalCluster,
    mgcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyGlobalCluster' smart constructor.
data ModifyGlobalCluster = ModifyGlobalCluster'
  { _mgcDeletionProtection ::
      !(Maybe Bool),
    _mgcAllowMajorVersionUpgrade ::
      !(Maybe Bool),
    _mgcEngineVersion ::
      !(Maybe Text),
    _mgcNewGlobalClusterIdentifier ::
      !(Maybe Text),
    _mgcGlobalClusterIdentifier ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyGlobalCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgcDeletionProtection' - Indicates if the global database cluster has deletion protection enabled. The global database cluster can't be deleted when deletion protection is enabled.
--
-- * 'mgcAllowMajorVersionUpgrade' - A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the @EngineVersion@ parameter that is a different major version than the DB cluster's current version. If you upgrade the major version of a global database, the cluster and DB instance parameter groups are set to the default parameter groups for the new version. Apply any custom parameter groups after completing the upgrade.
--
-- * 'mgcEngineVersion' - The version number of the database engine to which you want to upgrade. Changing this parameter results in an outage. The change is applied during the next maintenance window unless @ApplyImmediately@ is enabled. To list all of the available engine versions for @aurora@ (for MySQL 5.6-compatible Aurora), use the following command: @aws rds describe-db-engine-versions --engine aurora --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'@  To list all of the available engine versions for @aurora-mysql@ (for MySQL 5.7-compatible Aurora), use the following command: @aws rds describe-db-engine-versions --engine aurora-mysql --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'@  To list all of the available engine versions for @aurora-postgresql@ , use the following command: @aws rds describe-db-engine-versions --engine aurora-postgresql --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'@
--
-- * 'mgcNewGlobalClusterIdentifier' - The new cluster identifier for the global database cluster when modifying a global database cluster. This value is stored as a lowercase string.  Constraints:     * Must contain from 1 to 63 letters, numbers, or hyphens     * The first character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-cluster2@
--
-- * 'mgcGlobalClusterIdentifier' - The DB cluster identifier for the global cluster being modified. This parameter isn't case-sensitive.  Constraints:     * Must match the identifier of an existing global database cluster.
modifyGlobalCluster ::
  ModifyGlobalCluster
modifyGlobalCluster =
  ModifyGlobalCluster'
    { _mgcDeletionProtection =
        Nothing,
      _mgcAllowMajorVersionUpgrade = Nothing,
      _mgcEngineVersion = Nothing,
      _mgcNewGlobalClusterIdentifier = Nothing,
      _mgcGlobalClusterIdentifier = Nothing
    }

-- | Indicates if the global database cluster has deletion protection enabled. The global database cluster can't be deleted when deletion protection is enabled.
mgcDeletionProtection :: Lens' ModifyGlobalCluster (Maybe Bool)
mgcDeletionProtection = lens _mgcDeletionProtection (\s a -> s {_mgcDeletionProtection = a})

-- | A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the @EngineVersion@ parameter that is a different major version than the DB cluster's current version. If you upgrade the major version of a global database, the cluster and DB instance parameter groups are set to the default parameter groups for the new version. Apply any custom parameter groups after completing the upgrade.
mgcAllowMajorVersionUpgrade :: Lens' ModifyGlobalCluster (Maybe Bool)
mgcAllowMajorVersionUpgrade = lens _mgcAllowMajorVersionUpgrade (\s a -> s {_mgcAllowMajorVersionUpgrade = a})

-- | The version number of the database engine to which you want to upgrade. Changing this parameter results in an outage. The change is applied during the next maintenance window unless @ApplyImmediately@ is enabled. To list all of the available engine versions for @aurora@ (for MySQL 5.6-compatible Aurora), use the following command: @aws rds describe-db-engine-versions --engine aurora --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'@  To list all of the available engine versions for @aurora-mysql@ (for MySQL 5.7-compatible Aurora), use the following command: @aws rds describe-db-engine-versions --engine aurora-mysql --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'@  To list all of the available engine versions for @aurora-postgresql@ , use the following command: @aws rds describe-db-engine-versions --engine aurora-postgresql --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'@
mgcEngineVersion :: Lens' ModifyGlobalCluster (Maybe Text)
mgcEngineVersion = lens _mgcEngineVersion (\s a -> s {_mgcEngineVersion = a})

-- | The new cluster identifier for the global database cluster when modifying a global database cluster. This value is stored as a lowercase string.  Constraints:     * Must contain from 1 to 63 letters, numbers, or hyphens     * The first character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-cluster2@
mgcNewGlobalClusterIdentifier :: Lens' ModifyGlobalCluster (Maybe Text)
mgcNewGlobalClusterIdentifier = lens _mgcNewGlobalClusterIdentifier (\s a -> s {_mgcNewGlobalClusterIdentifier = a})

-- | The DB cluster identifier for the global cluster being modified. This parameter isn't case-sensitive.  Constraints:     * Must match the identifier of an existing global database cluster.
mgcGlobalClusterIdentifier :: Lens' ModifyGlobalCluster (Maybe Text)
mgcGlobalClusterIdentifier = lens _mgcGlobalClusterIdentifier (\s a -> s {_mgcGlobalClusterIdentifier = a})

instance AWSRequest ModifyGlobalCluster where
  type
    Rs ModifyGlobalCluster =
      ModifyGlobalClusterResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "ModifyGlobalClusterResult"
      ( \s h x ->
          ModifyGlobalClusterResponse'
            <$> (x .@? "GlobalCluster") <*> (pure (fromEnum s))
      )

instance Hashable ModifyGlobalCluster

instance NFData ModifyGlobalCluster

instance ToHeaders ModifyGlobalCluster where
  toHeaders = const mempty

instance ToPath ModifyGlobalCluster where
  toPath = const "/"

instance ToQuery ModifyGlobalCluster where
  toQuery ModifyGlobalCluster' {..} =
    mconcat
      [ "Action" =: ("ModifyGlobalCluster" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DeletionProtection" =: _mgcDeletionProtection,
        "AllowMajorVersionUpgrade"
          =: _mgcAllowMajorVersionUpgrade,
        "EngineVersion" =: _mgcEngineVersion,
        "NewGlobalClusterIdentifier"
          =: _mgcNewGlobalClusterIdentifier,
        "GlobalClusterIdentifier"
          =: _mgcGlobalClusterIdentifier
      ]

-- | /See:/ 'modifyGlobalClusterResponse' smart constructor.
data ModifyGlobalClusterResponse = ModifyGlobalClusterResponse'
  { _mgcrrsGlobalCluster ::
      !( Maybe
           GlobalCluster
       ),
    _mgcrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyGlobalClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgcrrsGlobalCluster' - Undocumented member.
--
-- * 'mgcrrsResponseStatus' - -- | The response status code.
modifyGlobalClusterResponse ::
  -- | 'mgcrrsResponseStatus'
  Int ->
  ModifyGlobalClusterResponse
modifyGlobalClusterResponse pResponseStatus_ =
  ModifyGlobalClusterResponse'
    { _mgcrrsGlobalCluster =
        Nothing,
      _mgcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
mgcrrsGlobalCluster :: Lens' ModifyGlobalClusterResponse (Maybe GlobalCluster)
mgcrrsGlobalCluster = lens _mgcrrsGlobalCluster (\s a -> s {_mgcrrsGlobalCluster = a})

-- | -- | The response status code.
mgcrrsResponseStatus :: Lens' ModifyGlobalClusterResponse Int
mgcrrsResponseStatus = lens _mgcrrsResponseStatus (\s a -> s {_mgcrrsResponseStatus = a})

instance NFData ModifyGlobalClusterResponse
