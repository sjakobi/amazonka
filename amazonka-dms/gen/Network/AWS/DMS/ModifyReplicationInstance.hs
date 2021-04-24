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
-- Module      : Network.AWS.DMS.ModifyReplicationInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request.
--
--
-- Some settings are applied during the maintenance window.
module Network.AWS.DMS.ModifyReplicationInstance
  ( -- * Creating a Request
    modifyReplicationInstance,
    ModifyReplicationInstance,

    -- * Request Lenses
    mriAllowMajorVersionUpgrade,
    mriMultiAZ,
    mriVPCSecurityGroupIds,
    mriEngineVersion,
    mriPreferredMaintenanceWindow,
    mriReplicationInstanceIdentifier,
    mriReplicationInstanceClass,
    mriAllocatedStorage,
    mriApplyImmediately,
    mriAutoMinorVersionUpgrade,
    mriReplicationInstanceARN,

    -- * Destructuring the Response
    modifyReplicationInstanceResponse,
    ModifyReplicationInstanceResponse,

    -- * Response Lenses
    mrirrsReplicationInstance,
    mrirrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'modifyReplicationInstance' smart constructor.
data ModifyReplicationInstance = ModifyReplicationInstance'
  { _mriAllowMajorVersionUpgrade ::
      !(Maybe Bool),
    _mriMultiAZ ::
      !(Maybe Bool),
    _mriVPCSecurityGroupIds ::
      !(Maybe [Text]),
    _mriEngineVersion ::
      !(Maybe Text),
    _mriPreferredMaintenanceWindow ::
      !(Maybe Text),
    _mriReplicationInstanceIdentifier ::
      !(Maybe Text),
    _mriReplicationInstanceClass ::
      !(Maybe Text),
    _mriAllocatedStorage ::
      !(Maybe Int),
    _mriApplyImmediately ::
      !(Maybe Bool),
    _mriAutoMinorVersionUpgrade ::
      !(Maybe Bool),
    _mriReplicationInstanceARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyReplicationInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mriAllowMajorVersionUpgrade' - Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage, and the change is asynchronously applied as soon as possible. This parameter must be set to @true@ when specifying a value for the @EngineVersion@ parameter that is a different major version than the replication instance's current version.
--
-- * 'mriMultiAZ' - Specifies whether the replication instance is a Multi-AZ deployment. You can't set the @AvailabilityZone@ parameter if the Multi-AZ parameter is set to @true@ .
--
-- * 'mriVPCSecurityGroupIds' - Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance.
--
-- * 'mriEngineVersion' - The engine version number of the replication instance. When modifying a major engine version of an instance, also set @AllowMajorVersionUpgrade@ to @true@ .
--
-- * 'mriPreferredMaintenanceWindow' - The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied. Default: Uses existing setting Format: ddd:hh24:mi-ddd:hh24:mi Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Must be at least 30 minutes
--
-- * 'mriReplicationInstanceIdentifier' - The replication instance identifier. This parameter is stored as a lowercase string.
--
-- * 'mriReplicationInstanceClass' - The compute and memory capacity of the replication instance as defined for the specified replication instance class. For example to specify the instance class dms.c4.large, set this parameter to @"dms.c4.large"@ . For more information on the settings and capacities for the available replication instance classes, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration> .
--
-- * 'mriAllocatedStorage' - The amount of storage (in gigabytes) to be allocated for the replication instance.
--
-- * 'mriApplyImmediately' - Indicates whether the changes should be applied immediately or during the next maintenance window.
--
-- * 'mriAutoMinorVersionUpgrade' - A value that indicates that minor version upgrades are applied automatically to the replication instance during the maintenance window. Changing this parameter doesn't result in an outage, except in the case described following. The change is asynchronously applied as soon as possible.  An outage does result if these factors apply:      * This parameter is set to @true@ during the maintenance window.     * A newer minor version is available.      * AWS DMS has enabled automatic patching for the given engine version.
--
-- * 'mriReplicationInstanceARN' - The Amazon Resource Name (ARN) of the replication instance.
modifyReplicationInstance ::
  -- | 'mriReplicationInstanceARN'
  Text ->
  ModifyReplicationInstance
modifyReplicationInstance pReplicationInstanceARN_ =
  ModifyReplicationInstance'
    { _mriAllowMajorVersionUpgrade =
        Nothing,
      _mriMultiAZ = Nothing,
      _mriVPCSecurityGroupIds = Nothing,
      _mriEngineVersion = Nothing,
      _mriPreferredMaintenanceWindow = Nothing,
      _mriReplicationInstanceIdentifier = Nothing,
      _mriReplicationInstanceClass = Nothing,
      _mriAllocatedStorage = Nothing,
      _mriApplyImmediately = Nothing,
      _mriAutoMinorVersionUpgrade = Nothing,
      _mriReplicationInstanceARN =
        pReplicationInstanceARN_
    }

-- | Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage, and the change is asynchronously applied as soon as possible. This parameter must be set to @true@ when specifying a value for the @EngineVersion@ parameter that is a different major version than the replication instance's current version.
mriAllowMajorVersionUpgrade :: Lens' ModifyReplicationInstance (Maybe Bool)
mriAllowMajorVersionUpgrade = lens _mriAllowMajorVersionUpgrade (\s a -> s {_mriAllowMajorVersionUpgrade = a})

-- | Specifies whether the replication instance is a Multi-AZ deployment. You can't set the @AvailabilityZone@ parameter if the Multi-AZ parameter is set to @true@ .
mriMultiAZ :: Lens' ModifyReplicationInstance (Maybe Bool)
mriMultiAZ = lens _mriMultiAZ (\s a -> s {_mriMultiAZ = a})

-- | Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance.
mriVPCSecurityGroupIds :: Lens' ModifyReplicationInstance [Text]
mriVPCSecurityGroupIds = lens _mriVPCSecurityGroupIds (\s a -> s {_mriVPCSecurityGroupIds = a}) . _Default . _Coerce

-- | The engine version number of the replication instance. When modifying a major engine version of an instance, also set @AllowMajorVersionUpgrade@ to @true@ .
mriEngineVersion :: Lens' ModifyReplicationInstance (Maybe Text)
mriEngineVersion = lens _mriEngineVersion (\s a -> s {_mriEngineVersion = a})

-- | The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied. Default: Uses existing setting Format: ddd:hh24:mi-ddd:hh24:mi Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Must be at least 30 minutes
mriPreferredMaintenanceWindow :: Lens' ModifyReplicationInstance (Maybe Text)
mriPreferredMaintenanceWindow = lens _mriPreferredMaintenanceWindow (\s a -> s {_mriPreferredMaintenanceWindow = a})

-- | The replication instance identifier. This parameter is stored as a lowercase string.
mriReplicationInstanceIdentifier :: Lens' ModifyReplicationInstance (Maybe Text)
mriReplicationInstanceIdentifier = lens _mriReplicationInstanceIdentifier (\s a -> s {_mriReplicationInstanceIdentifier = a})

-- | The compute and memory capacity of the replication instance as defined for the specified replication instance class. For example to specify the instance class dms.c4.large, set this parameter to @"dms.c4.large"@ . For more information on the settings and capacities for the available replication instance classes, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration> .
mriReplicationInstanceClass :: Lens' ModifyReplicationInstance (Maybe Text)
mriReplicationInstanceClass = lens _mriReplicationInstanceClass (\s a -> s {_mriReplicationInstanceClass = a})

-- | The amount of storage (in gigabytes) to be allocated for the replication instance.
mriAllocatedStorage :: Lens' ModifyReplicationInstance (Maybe Int)
mriAllocatedStorage = lens _mriAllocatedStorage (\s a -> s {_mriAllocatedStorage = a})

-- | Indicates whether the changes should be applied immediately or during the next maintenance window.
mriApplyImmediately :: Lens' ModifyReplicationInstance (Maybe Bool)
mriApplyImmediately = lens _mriApplyImmediately (\s a -> s {_mriApplyImmediately = a})

-- | A value that indicates that minor version upgrades are applied automatically to the replication instance during the maintenance window. Changing this parameter doesn't result in an outage, except in the case described following. The change is asynchronously applied as soon as possible.  An outage does result if these factors apply:      * This parameter is set to @true@ during the maintenance window.     * A newer minor version is available.      * AWS DMS has enabled automatic patching for the given engine version.
mriAutoMinorVersionUpgrade :: Lens' ModifyReplicationInstance (Maybe Bool)
mriAutoMinorVersionUpgrade = lens _mriAutoMinorVersionUpgrade (\s a -> s {_mriAutoMinorVersionUpgrade = a})

-- | The Amazon Resource Name (ARN) of the replication instance.
mriReplicationInstanceARN :: Lens' ModifyReplicationInstance Text
mriReplicationInstanceARN = lens _mriReplicationInstanceARN (\s a -> s {_mriReplicationInstanceARN = a})

instance AWSRequest ModifyReplicationInstance where
  type
    Rs ModifyReplicationInstance =
      ModifyReplicationInstanceResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          ModifyReplicationInstanceResponse'
            <$> (x .?> "ReplicationInstance")
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyReplicationInstance

instance NFData ModifyReplicationInstance

instance ToHeaders ModifyReplicationInstance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.ModifyReplicationInstance" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ModifyReplicationInstance where
  toJSON ModifyReplicationInstance' {..} =
    object
      ( catMaybes
          [ ("AllowMajorVersionUpgrade" .=)
              <$> _mriAllowMajorVersionUpgrade,
            ("MultiAZ" .=) <$> _mriMultiAZ,
            ("VpcSecurityGroupIds" .=)
              <$> _mriVPCSecurityGroupIds,
            ("EngineVersion" .=) <$> _mriEngineVersion,
            ("PreferredMaintenanceWindow" .=)
              <$> _mriPreferredMaintenanceWindow,
            ("ReplicationInstanceIdentifier" .=)
              <$> _mriReplicationInstanceIdentifier,
            ("ReplicationInstanceClass" .=)
              <$> _mriReplicationInstanceClass,
            ("AllocatedStorage" .=) <$> _mriAllocatedStorage,
            ("ApplyImmediately" .=) <$> _mriApplyImmediately,
            ("AutoMinorVersionUpgrade" .=)
              <$> _mriAutoMinorVersionUpgrade,
            Just
              ( "ReplicationInstanceArn"
                  .= _mriReplicationInstanceARN
              )
          ]
      )

instance ToPath ModifyReplicationInstance where
  toPath = const "/"

instance ToQuery ModifyReplicationInstance where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'modifyReplicationInstanceResponse' smart constructor.
data ModifyReplicationInstanceResponse = ModifyReplicationInstanceResponse'
  { _mrirrsReplicationInstance ::
      !( Maybe
           ReplicationInstance
       ),
    _mrirrsResponseStatus ::
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

-- | Creates a value of 'ModifyReplicationInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrirrsReplicationInstance' - The modified replication instance.
--
-- * 'mrirrsResponseStatus' - -- | The response status code.
modifyReplicationInstanceResponse ::
  -- | 'mrirrsResponseStatus'
  Int ->
  ModifyReplicationInstanceResponse
modifyReplicationInstanceResponse pResponseStatus_ =
  ModifyReplicationInstanceResponse'
    { _mrirrsReplicationInstance =
        Nothing,
      _mrirrsResponseStatus = pResponseStatus_
    }

-- | The modified replication instance.
mrirrsReplicationInstance :: Lens' ModifyReplicationInstanceResponse (Maybe ReplicationInstance)
mrirrsReplicationInstance = lens _mrirrsReplicationInstance (\s a -> s {_mrirrsReplicationInstance = a})

-- | -- | The response status code.
mrirrsResponseStatus :: Lens' ModifyReplicationInstanceResponse Int
mrirrsResponseStatus = lens _mrirrsResponseStatus (\s a -> s {_mrirrsResponseStatus = a})

instance NFData ModifyReplicationInstanceResponse
