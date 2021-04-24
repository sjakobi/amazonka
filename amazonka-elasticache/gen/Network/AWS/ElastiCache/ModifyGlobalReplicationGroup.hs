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
-- Module      : Network.AWS.ElastiCache.ModifyGlobalReplicationGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the settings for a Global Datastore.
module Network.AWS.ElastiCache.ModifyGlobalReplicationGroup
  ( -- * Creating a Request
    modifyGlobalReplicationGroup,
    ModifyGlobalReplicationGroup,

    -- * Request Lenses
    mgrgAutomaticFailoverEnabled,
    mgrgCacheParameterGroupName,
    mgrgEngineVersion,
    mgrgCacheNodeType,
    mgrgGlobalReplicationGroupDescription,
    mgrgGlobalReplicationGroupId,
    mgrgApplyImmediately,

    -- * Destructuring the Response
    modifyGlobalReplicationGroupResponse,
    ModifyGlobalReplicationGroupResponse,

    -- * Response Lenses
    mgrgrrsGlobalReplicationGroup,
    mgrgrrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyGlobalReplicationGroup' smart constructor.
data ModifyGlobalReplicationGroup = ModifyGlobalReplicationGroup'
  { _mgrgAutomaticFailoverEnabled ::
      !(Maybe Bool),
    _mgrgCacheParameterGroupName ::
      !(Maybe Text),
    _mgrgEngineVersion ::
      !(Maybe Text),
    _mgrgCacheNodeType ::
      !(Maybe Text),
    _mgrgGlobalReplicationGroupDescription ::
      !(Maybe Text),
    _mgrgGlobalReplicationGroupId ::
      !Text,
    _mgrgApplyImmediately ::
      !Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyGlobalReplicationGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgrgAutomaticFailoverEnabled' - Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure.
--
-- * 'mgrgCacheParameterGroupName' - The name of the cache parameter group to use with the Global datastore. It must be compatible with the major engine version used by the Global datastore.
--
-- * 'mgrgEngineVersion' - The upgraded version of the cache engine to be run on the clusters in the Global Datastore.
--
-- * 'mgrgCacheNodeType' - A valid cache node type that you want to scale this Global Datastore to.
--
-- * 'mgrgGlobalReplicationGroupDescription' - A description of the Global Datastore
--
-- * 'mgrgGlobalReplicationGroupId' - The name of the Global Datastore
--
-- * 'mgrgApplyImmediately' - This parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible. Modifications to Global Replication Groups cannot be requested to be applied in PreferredMaintenceWindow.
modifyGlobalReplicationGroup ::
  -- | 'mgrgGlobalReplicationGroupId'
  Text ->
  -- | 'mgrgApplyImmediately'
  Bool ->
  ModifyGlobalReplicationGroup
modifyGlobalReplicationGroup
  pGlobalReplicationGroupId_
  pApplyImmediately_ =
    ModifyGlobalReplicationGroup'
      { _mgrgAutomaticFailoverEnabled =
          Nothing,
        _mgrgCacheParameterGroupName = Nothing,
        _mgrgEngineVersion = Nothing,
        _mgrgCacheNodeType = Nothing,
        _mgrgGlobalReplicationGroupDescription =
          Nothing,
        _mgrgGlobalReplicationGroupId =
          pGlobalReplicationGroupId_,
        _mgrgApplyImmediately = pApplyImmediately_
      }

-- | Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure.
mgrgAutomaticFailoverEnabled :: Lens' ModifyGlobalReplicationGroup (Maybe Bool)
mgrgAutomaticFailoverEnabled = lens _mgrgAutomaticFailoverEnabled (\s a -> s {_mgrgAutomaticFailoverEnabled = a})

-- | The name of the cache parameter group to use with the Global datastore. It must be compatible with the major engine version used by the Global datastore.
mgrgCacheParameterGroupName :: Lens' ModifyGlobalReplicationGroup (Maybe Text)
mgrgCacheParameterGroupName = lens _mgrgCacheParameterGroupName (\s a -> s {_mgrgCacheParameterGroupName = a})

-- | The upgraded version of the cache engine to be run on the clusters in the Global Datastore.
mgrgEngineVersion :: Lens' ModifyGlobalReplicationGroup (Maybe Text)
mgrgEngineVersion = lens _mgrgEngineVersion (\s a -> s {_mgrgEngineVersion = a})

-- | A valid cache node type that you want to scale this Global Datastore to.
mgrgCacheNodeType :: Lens' ModifyGlobalReplicationGroup (Maybe Text)
mgrgCacheNodeType = lens _mgrgCacheNodeType (\s a -> s {_mgrgCacheNodeType = a})

-- | A description of the Global Datastore
mgrgGlobalReplicationGroupDescription :: Lens' ModifyGlobalReplicationGroup (Maybe Text)
mgrgGlobalReplicationGroupDescription = lens _mgrgGlobalReplicationGroupDescription (\s a -> s {_mgrgGlobalReplicationGroupDescription = a})

-- | The name of the Global Datastore
mgrgGlobalReplicationGroupId :: Lens' ModifyGlobalReplicationGroup Text
mgrgGlobalReplicationGroupId = lens _mgrgGlobalReplicationGroupId (\s a -> s {_mgrgGlobalReplicationGroupId = a})

-- | This parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible. Modifications to Global Replication Groups cannot be requested to be applied in PreferredMaintenceWindow.
mgrgApplyImmediately :: Lens' ModifyGlobalReplicationGroup Bool
mgrgApplyImmediately = lens _mgrgApplyImmediately (\s a -> s {_mgrgApplyImmediately = a})

instance AWSRequest ModifyGlobalReplicationGroup where
  type
    Rs ModifyGlobalReplicationGroup =
      ModifyGlobalReplicationGroupResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "ModifyGlobalReplicationGroupResult"
      ( \s h x ->
          ModifyGlobalReplicationGroupResponse'
            <$> (x .@? "GlobalReplicationGroup")
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyGlobalReplicationGroup

instance NFData ModifyGlobalReplicationGroup

instance ToHeaders ModifyGlobalReplicationGroup where
  toHeaders = const mempty

instance ToPath ModifyGlobalReplicationGroup where
  toPath = const "/"

instance ToQuery ModifyGlobalReplicationGroup where
  toQuery ModifyGlobalReplicationGroup' {..} =
    mconcat
      [ "Action"
          =: ("ModifyGlobalReplicationGroup" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "AutomaticFailoverEnabled"
          =: _mgrgAutomaticFailoverEnabled,
        "CacheParameterGroupName"
          =: _mgrgCacheParameterGroupName,
        "EngineVersion" =: _mgrgEngineVersion,
        "CacheNodeType" =: _mgrgCacheNodeType,
        "GlobalReplicationGroupDescription"
          =: _mgrgGlobalReplicationGroupDescription,
        "GlobalReplicationGroupId"
          =: _mgrgGlobalReplicationGroupId,
        "ApplyImmediately" =: _mgrgApplyImmediately
      ]

-- | /See:/ 'modifyGlobalReplicationGroupResponse' smart constructor.
data ModifyGlobalReplicationGroupResponse = ModifyGlobalReplicationGroupResponse'
  { _mgrgrrsGlobalReplicationGroup ::
      !( Maybe
           GlobalReplicationGroup
       ),
    _mgrgrrsResponseStatus ::
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

-- | Creates a value of 'ModifyGlobalReplicationGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgrgrrsGlobalReplicationGroup' - Undocumented member.
--
-- * 'mgrgrrsResponseStatus' - -- | The response status code.
modifyGlobalReplicationGroupResponse ::
  -- | 'mgrgrrsResponseStatus'
  Int ->
  ModifyGlobalReplicationGroupResponse
modifyGlobalReplicationGroupResponse pResponseStatus_ =
  ModifyGlobalReplicationGroupResponse'
    { _mgrgrrsGlobalReplicationGroup =
        Nothing,
      _mgrgrrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
mgrgrrsGlobalReplicationGroup :: Lens' ModifyGlobalReplicationGroupResponse (Maybe GlobalReplicationGroup)
mgrgrrsGlobalReplicationGroup = lens _mgrgrrsGlobalReplicationGroup (\s a -> s {_mgrgrrsGlobalReplicationGroup = a})

-- | -- | The response status code.
mgrgrrsResponseStatus :: Lens' ModifyGlobalReplicationGroupResponse Int
mgrgrrsResponseStatus = lens _mgrgrrsResponseStatus (\s a -> s {_mgrgrrsResponseStatus = a})

instance NFData ModifyGlobalReplicationGroupResponse
