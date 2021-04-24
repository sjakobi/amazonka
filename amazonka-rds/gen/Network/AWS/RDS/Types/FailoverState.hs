{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.FailoverState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.FailoverState where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.FailoverStatus

-- | Contains the state of scheduled or in-process failover operations on an Aurora global database ('GlobalCluster' ). This Data type is empty unless a failover operation is scheduled or is currently underway on the Aurora global database.
--
--
--
-- /See:/ 'failoverState' smart constructor.
data FailoverState = FailoverState'
  { _fsStatus ::
      !(Maybe FailoverStatus),
    _fsToDBClusterARN :: !(Maybe Text),
    _fsFromDBClusterARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FailoverState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsStatus' - The current status of the Aurora global database ('GlobalCluster' ). Possible values are as follows:      * pending  A request to fail over the Aurora global database ('GlobalCluster' ) has been received by the service. The @GlobalCluster@ 's primary DB cluster and the specified secondary DB cluster are being verified before the failover process can start.     * failing-over  This status covers the range of Aurora internal operations that take place during the failover process, such as demoting the primary Aurora DB cluster, promoting the secondary Aurora DB, and synchronizing replicas.      * cancelling  The request to fail over the Aurora global database ('GlobalCluster' ) was cancelled and the primary Aurora DB cluster and the selected secondary Aurora DB cluster are returning to their previous states.
--
-- * 'fsToDBClusterARN' - The Amazon Resource Name (ARN) of the Aurora DB cluster that is currently being promoted, and which is associated with this state.
--
-- * 'fsFromDBClusterARN' - The Amazon Resource Name (ARN) of the Aurora DB cluster that is currently being demoted, and which is associated with this state.
failoverState ::
  FailoverState
failoverState =
  FailoverState'
    { _fsStatus = Nothing,
      _fsToDBClusterARN = Nothing,
      _fsFromDBClusterARN = Nothing
    }

-- | The current status of the Aurora global database ('GlobalCluster' ). Possible values are as follows:      * pending  A request to fail over the Aurora global database ('GlobalCluster' ) has been received by the service. The @GlobalCluster@ 's primary DB cluster and the specified secondary DB cluster are being verified before the failover process can start.     * failing-over  This status covers the range of Aurora internal operations that take place during the failover process, such as demoting the primary Aurora DB cluster, promoting the secondary Aurora DB, and synchronizing replicas.      * cancelling  The request to fail over the Aurora global database ('GlobalCluster' ) was cancelled and the primary Aurora DB cluster and the selected secondary Aurora DB cluster are returning to their previous states.
fsStatus :: Lens' FailoverState (Maybe FailoverStatus)
fsStatus = lens _fsStatus (\s a -> s {_fsStatus = a})

-- | The Amazon Resource Name (ARN) of the Aurora DB cluster that is currently being promoted, and which is associated with this state.
fsToDBClusterARN :: Lens' FailoverState (Maybe Text)
fsToDBClusterARN = lens _fsToDBClusterARN (\s a -> s {_fsToDBClusterARN = a})

-- | The Amazon Resource Name (ARN) of the Aurora DB cluster that is currently being demoted, and which is associated with this state.
fsFromDBClusterARN :: Lens' FailoverState (Maybe Text)
fsFromDBClusterARN = lens _fsFromDBClusterARN (\s a -> s {_fsFromDBClusterARN = a})

instance FromXML FailoverState where
  parseXML x =
    FailoverState'
      <$> (x .@? "Status")
      <*> (x .@? "ToDbClusterArn")
      <*> (x .@? "FromDbClusterArn")

instance Hashable FailoverState

instance NFData FailoverState
