{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ClusterParameterGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ClusterParameterGroupStatus where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.ClusterParameterStatus

-- | Describes the status of a parameter group.
--
--
--
-- /See:/ 'clusterParameterGroupStatus' smart constructor.
data ClusterParameterGroupStatus = ClusterParameterGroupStatus'
  { _cpgsClusterParameterStatusList ::
      !( Maybe
           [ClusterParameterStatus]
       ),
    _cpgsParameterGroupName ::
      !(Maybe Text),
    _cpgsParameterApplyStatus ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ClusterParameterGroupStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpgsClusterParameterStatusList' - The list of parameter statuses. For more information about parameters and parameter groups, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html Amazon Redshift Parameter Groups> in the /Amazon Redshift Cluster Management Guide/ .
--
-- * 'cpgsParameterGroupName' - The name of the cluster parameter group.
--
-- * 'cpgsParameterApplyStatus' - The status of parameter updates.
clusterParameterGroupStatus ::
  ClusterParameterGroupStatus
clusterParameterGroupStatus =
  ClusterParameterGroupStatus'
    { _cpgsClusterParameterStatusList =
        Nothing,
      _cpgsParameterGroupName = Nothing,
      _cpgsParameterApplyStatus = Nothing
    }

-- | The list of parameter statuses. For more information about parameters and parameter groups, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html Amazon Redshift Parameter Groups> in the /Amazon Redshift Cluster Management Guide/ .
cpgsClusterParameterStatusList :: Lens' ClusterParameterGroupStatus [ClusterParameterStatus]
cpgsClusterParameterStatusList = lens _cpgsClusterParameterStatusList (\s a -> s {_cpgsClusterParameterStatusList = a}) . _Default . _Coerce

-- | The name of the cluster parameter group.
cpgsParameterGroupName :: Lens' ClusterParameterGroupStatus (Maybe Text)
cpgsParameterGroupName = lens _cpgsParameterGroupName (\s a -> s {_cpgsParameterGroupName = a})

-- | The status of parameter updates.
cpgsParameterApplyStatus :: Lens' ClusterParameterGroupStatus (Maybe Text)
cpgsParameterApplyStatus = lens _cpgsParameterApplyStatus (\s a -> s {_cpgsParameterApplyStatus = a})

instance FromXML ClusterParameterGroupStatus where
  parseXML x =
    ClusterParameterGroupStatus'
      <$> ( x .@? "ClusterParameterStatusList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "ParameterGroupName")
      <*> (x .@? "ParameterApplyStatus")

instance Hashable ClusterParameterGroupStatus

instance NFData ClusterParameterGroupStatus
