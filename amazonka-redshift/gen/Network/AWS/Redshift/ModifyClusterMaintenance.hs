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
-- Module      : Network.AWS.Redshift.ModifyClusterMaintenance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the maintenance settings of a cluster.
module Network.AWS.Redshift.ModifyClusterMaintenance
  ( -- * Creating a Request
    modifyClusterMaintenance,
    ModifyClusterMaintenance,

    -- * Request Lenses
    mcmDeferMaintenanceIdentifier,
    mcmDeferMaintenanceDuration,
    mcmDeferMaintenanceStartTime,
    mcmDeferMaintenanceEndTime,
    mcmDeferMaintenance,
    mcmClusterIdentifier,

    -- * Destructuring the Response
    modifyClusterMaintenanceResponse,
    ModifyClusterMaintenanceResponse,

    -- * Response Lenses
    mcmrrsCluster,
    mcmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyClusterMaintenance' smart constructor.
data ModifyClusterMaintenance = ModifyClusterMaintenance'
  { _mcmDeferMaintenanceIdentifier ::
      !(Maybe Text),
    _mcmDeferMaintenanceDuration ::
      !(Maybe Int),
    _mcmDeferMaintenanceStartTime ::
      !(Maybe ISO8601),
    _mcmDeferMaintenanceEndTime ::
      !(Maybe ISO8601),
    _mcmDeferMaintenance ::
      !(Maybe Bool),
    _mcmClusterIdentifier ::
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

-- | Creates a value of 'ModifyClusterMaintenance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmDeferMaintenanceIdentifier' - A unique identifier for the deferred maintenance window.
--
-- * 'mcmDeferMaintenanceDuration' - An integer indicating the duration of the maintenance window in days. If you specify a duration, you can't specify an end time. The duration must be 45 days or less.
--
-- * 'mcmDeferMaintenanceStartTime' - A timestamp indicating the start time for the deferred maintenance window.
--
-- * 'mcmDeferMaintenanceEndTime' - A timestamp indicating end time for the deferred maintenance window. If you specify an end time, you can't specify a duration.
--
-- * 'mcmDeferMaintenance' - A boolean indicating whether to enable the deferred maintenance window.
--
-- * 'mcmClusterIdentifier' - A unique identifier for the cluster.
modifyClusterMaintenance ::
  -- | 'mcmClusterIdentifier'
  Text ->
  ModifyClusterMaintenance
modifyClusterMaintenance pClusterIdentifier_ =
  ModifyClusterMaintenance'
    { _mcmDeferMaintenanceIdentifier =
        Nothing,
      _mcmDeferMaintenanceDuration = Nothing,
      _mcmDeferMaintenanceStartTime = Nothing,
      _mcmDeferMaintenanceEndTime = Nothing,
      _mcmDeferMaintenance = Nothing,
      _mcmClusterIdentifier = pClusterIdentifier_
    }

-- | A unique identifier for the deferred maintenance window.
mcmDeferMaintenanceIdentifier :: Lens' ModifyClusterMaintenance (Maybe Text)
mcmDeferMaintenanceIdentifier = lens _mcmDeferMaintenanceIdentifier (\s a -> s {_mcmDeferMaintenanceIdentifier = a})

-- | An integer indicating the duration of the maintenance window in days. If you specify a duration, you can't specify an end time. The duration must be 45 days or less.
mcmDeferMaintenanceDuration :: Lens' ModifyClusterMaintenance (Maybe Int)
mcmDeferMaintenanceDuration = lens _mcmDeferMaintenanceDuration (\s a -> s {_mcmDeferMaintenanceDuration = a})

-- | A timestamp indicating the start time for the deferred maintenance window.
mcmDeferMaintenanceStartTime :: Lens' ModifyClusterMaintenance (Maybe UTCTime)
mcmDeferMaintenanceStartTime = lens _mcmDeferMaintenanceStartTime (\s a -> s {_mcmDeferMaintenanceStartTime = a}) . mapping _Time

-- | A timestamp indicating end time for the deferred maintenance window. If you specify an end time, you can't specify a duration.
mcmDeferMaintenanceEndTime :: Lens' ModifyClusterMaintenance (Maybe UTCTime)
mcmDeferMaintenanceEndTime = lens _mcmDeferMaintenanceEndTime (\s a -> s {_mcmDeferMaintenanceEndTime = a}) . mapping _Time

-- | A boolean indicating whether to enable the deferred maintenance window.
mcmDeferMaintenance :: Lens' ModifyClusterMaintenance (Maybe Bool)
mcmDeferMaintenance = lens _mcmDeferMaintenance (\s a -> s {_mcmDeferMaintenance = a})

-- | A unique identifier for the cluster.
mcmClusterIdentifier :: Lens' ModifyClusterMaintenance Text
mcmClusterIdentifier = lens _mcmClusterIdentifier (\s a -> s {_mcmClusterIdentifier = a})

instance AWSRequest ModifyClusterMaintenance where
  type
    Rs ModifyClusterMaintenance =
      ModifyClusterMaintenanceResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "ModifyClusterMaintenanceResult"
      ( \s h x ->
          ModifyClusterMaintenanceResponse'
            <$> (x .@? "Cluster") <*> (pure (fromEnum s))
      )

instance Hashable ModifyClusterMaintenance

instance NFData ModifyClusterMaintenance

instance ToHeaders ModifyClusterMaintenance where
  toHeaders = const mempty

instance ToPath ModifyClusterMaintenance where
  toPath = const "/"

instance ToQuery ModifyClusterMaintenance where
  toQuery ModifyClusterMaintenance' {..} =
    mconcat
      [ "Action"
          =: ("ModifyClusterMaintenance" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "DeferMaintenanceIdentifier"
          =: _mcmDeferMaintenanceIdentifier,
        "DeferMaintenanceDuration"
          =: _mcmDeferMaintenanceDuration,
        "DeferMaintenanceStartTime"
          =: _mcmDeferMaintenanceStartTime,
        "DeferMaintenanceEndTime"
          =: _mcmDeferMaintenanceEndTime,
        "DeferMaintenance" =: _mcmDeferMaintenance,
        "ClusterIdentifier" =: _mcmClusterIdentifier
      ]

-- | /See:/ 'modifyClusterMaintenanceResponse' smart constructor.
data ModifyClusterMaintenanceResponse = ModifyClusterMaintenanceResponse'
  { _mcmrrsCluster ::
      !( Maybe
           Cluster
       ),
    _mcmrrsResponseStatus ::
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

-- | Creates a value of 'ModifyClusterMaintenanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmrrsCluster' - Undocumented member.
--
-- * 'mcmrrsResponseStatus' - -- | The response status code.
modifyClusterMaintenanceResponse ::
  -- | 'mcmrrsResponseStatus'
  Int ->
  ModifyClusterMaintenanceResponse
modifyClusterMaintenanceResponse pResponseStatus_ =
  ModifyClusterMaintenanceResponse'
    { _mcmrrsCluster =
        Nothing,
      _mcmrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
mcmrrsCluster :: Lens' ModifyClusterMaintenanceResponse (Maybe Cluster)
mcmrrsCluster = lens _mcmrrsCluster (\s a -> s {_mcmrrsCluster = a})

-- | -- | The response status code.
mcmrrsResponseStatus :: Lens' ModifyClusterMaintenanceResponse Int
mcmrrsResponseStatus = lens _mcmrrsResponseStatus (\s a -> s {_mcmrrsResponseStatus = a})

instance NFData ModifyClusterMaintenanceResponse
