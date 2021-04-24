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
-- Module      : Network.AWS.EMR.AddInstanceGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more instance groups to a running cluster.
module Network.AWS.EMR.AddInstanceGroups
  ( -- * Creating a Request
    addInstanceGroups,
    AddInstanceGroups,

    -- * Request Lenses
    aigInstanceGroups,
    aigJobFlowId,

    -- * Destructuring the Response
    addInstanceGroupsResponse,
    AddInstanceGroupsResponse,

    -- * Response Lenses
    aigrrsClusterARN,
    aigrrsInstanceGroupIds,
    aigrrsJobFlowId,
    aigrrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input to an AddInstanceGroups call.
--
--
--
-- /See:/ 'addInstanceGroups' smart constructor.
data AddInstanceGroups = AddInstanceGroups'
  { _aigInstanceGroups ::
      ![InstanceGroupConfig],
    _aigJobFlowId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddInstanceGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aigInstanceGroups' - Instance groups to add.
--
-- * 'aigJobFlowId' - Job flow in which to add the instance groups.
addInstanceGroups ::
  -- | 'aigJobFlowId'
  Text ->
  AddInstanceGroups
addInstanceGroups pJobFlowId_ =
  AddInstanceGroups'
    { _aigInstanceGroups = mempty,
      _aigJobFlowId = pJobFlowId_
    }

-- | Instance groups to add.
aigInstanceGroups :: Lens' AddInstanceGroups [InstanceGroupConfig]
aigInstanceGroups = lens _aigInstanceGroups (\s a -> s {_aigInstanceGroups = a}) . _Coerce

-- | Job flow in which to add the instance groups.
aigJobFlowId :: Lens' AddInstanceGroups Text
aigJobFlowId = lens _aigJobFlowId (\s a -> s {_aigJobFlowId = a})

instance AWSRequest AddInstanceGroups where
  type Rs AddInstanceGroups = AddInstanceGroupsResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          AddInstanceGroupsResponse'
            <$> (x .?> "ClusterArn")
            <*> (x .?> "InstanceGroupIds" .!@ mempty)
            <*> (x .?> "JobFlowId")
            <*> (pure (fromEnum s))
      )

instance Hashable AddInstanceGroups

instance NFData AddInstanceGroups

instance ToHeaders AddInstanceGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ElasticMapReduce.AddInstanceGroups" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AddInstanceGroups where
  toJSON AddInstanceGroups' {..} =
    object
      ( catMaybes
          [ Just ("InstanceGroups" .= _aigInstanceGroups),
            Just ("JobFlowId" .= _aigJobFlowId)
          ]
      )

instance ToPath AddInstanceGroups where
  toPath = const "/"

instance ToQuery AddInstanceGroups where
  toQuery = const mempty

-- | Output from an AddInstanceGroups call.
--
--
--
-- /See:/ 'addInstanceGroupsResponse' smart constructor.
data AddInstanceGroupsResponse = AddInstanceGroupsResponse'
  { _aigrrsClusterARN ::
      !(Maybe Text),
    _aigrrsInstanceGroupIds ::
      !(Maybe [Text]),
    _aigrrsJobFlowId ::
      !(Maybe Text),
    _aigrrsResponseStatus ::
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

-- | Creates a value of 'AddInstanceGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aigrrsClusterARN' - The Amazon Resource Name of the cluster.
--
-- * 'aigrrsInstanceGroupIds' - Instance group IDs of the newly created instance groups.
--
-- * 'aigrrsJobFlowId' - The job flow ID in which the instance groups are added.
--
-- * 'aigrrsResponseStatus' - -- | The response status code.
addInstanceGroupsResponse ::
  -- | 'aigrrsResponseStatus'
  Int ->
  AddInstanceGroupsResponse
addInstanceGroupsResponse pResponseStatus_ =
  AddInstanceGroupsResponse'
    { _aigrrsClusterARN =
        Nothing,
      _aigrrsInstanceGroupIds = Nothing,
      _aigrrsJobFlowId = Nothing,
      _aigrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name of the cluster.
aigrrsClusterARN :: Lens' AddInstanceGroupsResponse (Maybe Text)
aigrrsClusterARN = lens _aigrrsClusterARN (\s a -> s {_aigrrsClusterARN = a})

-- | Instance group IDs of the newly created instance groups.
aigrrsInstanceGroupIds :: Lens' AddInstanceGroupsResponse [Text]
aigrrsInstanceGroupIds = lens _aigrrsInstanceGroupIds (\s a -> s {_aigrrsInstanceGroupIds = a}) . _Default . _Coerce

-- | The job flow ID in which the instance groups are added.
aigrrsJobFlowId :: Lens' AddInstanceGroupsResponse (Maybe Text)
aigrrsJobFlowId = lens _aigrrsJobFlowId (\s a -> s {_aigrrsJobFlowId = a})

-- | -- | The response status code.
aigrrsResponseStatus :: Lens' AddInstanceGroupsResponse Int
aigrrsResponseStatus = lens _aigrrsResponseStatus (\s a -> s {_aigrrsResponseStatus = a})

instance NFData AddInstanceGroupsResponse
