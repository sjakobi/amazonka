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
-- Module      : Network.AWS.CloudHSMv2.CreateCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new AWS CloudHSM cluster.
module Network.AWS.CloudHSMv2.CreateCluster
  ( -- * Creating a Request
    createCluster,
    CreateCluster,

    -- * Request Lenses
    ccSourceBackupId,
    ccTagList,
    ccBackupRetentionPolicy,
    ccHSMType,
    ccSubnetIds,

    -- * Destructuring the Response
    createClusterResponse,
    CreateClusterResponse,

    -- * Response Lenses
    ccrrsCluster,
    ccrrsResponseStatus,
  )
where

import Network.AWS.CloudHSMv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createCluster' smart constructor.
data CreateCluster = CreateCluster'
  { _ccSourceBackupId ::
      !(Maybe Text),
    _ccTagList :: !(Maybe [Tag]),
    _ccBackupRetentionPolicy ::
      !(Maybe BackupRetentionPolicy),
    _ccHSMType :: !Text,
    _ccSubnetIds :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccSourceBackupId' - The identifier (ID) of the cluster backup to restore. Use this value to restore the cluster from a backup instead of creating a new cluster. To find the backup ID, use 'DescribeBackups' .
--
-- * 'ccTagList' - Tags to apply to the CloudHSM cluster during creation.
--
-- * 'ccBackupRetentionPolicy' - A policy that defines how the service retains backups.
--
-- * 'ccHSMType' - The type of HSM to use in the cluster. Currently the only allowed value is @hsm1.medium@ .
--
-- * 'ccSubnetIds' - The identifiers (IDs) of the subnets where you are creating the cluster. You must specify at least one subnet. If you specify multiple subnets, they must meet the following criteria:     * All subnets must be in the same virtual private cloud (VPC).     * You can specify only one subnet per Availability Zone.
createCluster ::
  -- | 'ccHSMType'
  Text ->
  -- | 'ccSubnetIds'
  NonEmpty Text ->
  CreateCluster
createCluster pHSMType_ pSubnetIds_ =
  CreateCluster'
    { _ccSourceBackupId = Nothing,
      _ccTagList = Nothing,
      _ccBackupRetentionPolicy = Nothing,
      _ccHSMType = pHSMType_,
      _ccSubnetIds = _List1 # pSubnetIds_
    }

-- | The identifier (ID) of the cluster backup to restore. Use this value to restore the cluster from a backup instead of creating a new cluster. To find the backup ID, use 'DescribeBackups' .
ccSourceBackupId :: Lens' CreateCluster (Maybe Text)
ccSourceBackupId = lens _ccSourceBackupId (\s a -> s {_ccSourceBackupId = a})

-- | Tags to apply to the CloudHSM cluster during creation.
ccTagList :: Lens' CreateCluster [Tag]
ccTagList = lens _ccTagList (\s a -> s {_ccTagList = a}) . _Default . _Coerce

-- | A policy that defines how the service retains backups.
ccBackupRetentionPolicy :: Lens' CreateCluster (Maybe BackupRetentionPolicy)
ccBackupRetentionPolicy = lens _ccBackupRetentionPolicy (\s a -> s {_ccBackupRetentionPolicy = a})

-- | The type of HSM to use in the cluster. Currently the only allowed value is @hsm1.medium@ .
ccHSMType :: Lens' CreateCluster Text
ccHSMType = lens _ccHSMType (\s a -> s {_ccHSMType = a})

-- | The identifiers (IDs) of the subnets where you are creating the cluster. You must specify at least one subnet. If you specify multiple subnets, they must meet the following criteria:     * All subnets must be in the same virtual private cloud (VPC).     * You can specify only one subnet per Availability Zone.
ccSubnetIds :: Lens' CreateCluster (NonEmpty Text)
ccSubnetIds = lens _ccSubnetIds (\s a -> s {_ccSubnetIds = a}) . _List1

instance AWSRequest CreateCluster where
  type Rs CreateCluster = CreateClusterResponse
  request = postJSON cloudHSMv2
  response =
    receiveJSON
      ( \s h x ->
          CreateClusterResponse'
            <$> (x .?> "Cluster") <*> (pure (fromEnum s))
      )

instance Hashable CreateCluster

instance NFData CreateCluster

instance ToHeaders CreateCluster where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("BaldrApiService.CreateCluster" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateCluster where
  toJSON CreateCluster' {..} =
    object
      ( catMaybes
          [ ("SourceBackupId" .=) <$> _ccSourceBackupId,
            ("TagList" .=) <$> _ccTagList,
            ("BackupRetentionPolicy" .=)
              <$> _ccBackupRetentionPolicy,
            Just ("HsmType" .= _ccHSMType),
            Just ("SubnetIds" .= _ccSubnetIds)
          ]
      )

instance ToPath CreateCluster where
  toPath = const "/"

instance ToQuery CreateCluster where
  toQuery = const mempty

-- | /See:/ 'createClusterResponse' smart constructor.
data CreateClusterResponse = CreateClusterResponse'
  { _ccrrsCluster ::
      !(Maybe Cluster),
    _ccrrsResponseStatus ::
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

-- | Creates a value of 'CreateClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsCluster' - Information about the cluster that was created.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createClusterResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateClusterResponse
createClusterResponse pResponseStatus_ =
  CreateClusterResponse'
    { _ccrrsCluster = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | Information about the cluster that was created.
ccrrsCluster :: Lens' CreateClusterResponse (Maybe Cluster)
ccrrsCluster = lens _ccrrsCluster (\s a -> s {_ccrrsCluster = a})

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateClusterResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateClusterResponse
