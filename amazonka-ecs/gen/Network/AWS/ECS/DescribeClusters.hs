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
-- Module      : Network.AWS.ECS.DescribeClusters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your clusters.
module Network.AWS.ECS.DescribeClusters
  ( -- * Creating a Request
    describeClusters,
    DescribeClusters,

    -- * Request Lenses
    dcInclude,
    dcClusters,

    -- * Destructuring the Response
    describeClustersResponse,
    DescribeClustersResponse,

    -- * Response Lenses
    dcrrsFailures,
    dcrrsClusters,
    dcrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeClusters' smart constructor.
data DescribeClusters = DescribeClusters'
  { _dcInclude ::
      !(Maybe [ClusterField]),
    _dcClusters :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeClusters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcInclude' - Whether to include additional information about your clusters in the response. If this field is omitted, the attachments, statistics, and tags are not included. If @ATTACHMENTS@ is specified, the attachments for the container instances or tasks within the cluster are included. If @SETTINGS@ is specified, the settings for the cluster are included. If @STATISTICS@ is specified, the following additional information, separated by launch type, is included:     * runningEC2TasksCount     * runningFargateTasksCount     * pendingEC2TasksCount     * pendingFargateTasksCount     * activeEC2ServiceCount     * activeFargateServiceCount     * drainingEC2ServiceCount     * drainingFargateServiceCount If @TAGS@ is specified, the metadata tags associated with the cluster are included.
--
-- * 'dcClusters' - A list of up to 100 cluster names or full cluster Amazon Resource Name (ARN) entries. If you do not specify a cluster, the default cluster is assumed.
describeClusters ::
  DescribeClusters
describeClusters =
  DescribeClusters'
    { _dcInclude = Nothing,
      _dcClusters = Nothing
    }

-- | Whether to include additional information about your clusters in the response. If this field is omitted, the attachments, statistics, and tags are not included. If @ATTACHMENTS@ is specified, the attachments for the container instances or tasks within the cluster are included. If @SETTINGS@ is specified, the settings for the cluster are included. If @STATISTICS@ is specified, the following additional information, separated by launch type, is included:     * runningEC2TasksCount     * runningFargateTasksCount     * pendingEC2TasksCount     * pendingFargateTasksCount     * activeEC2ServiceCount     * activeFargateServiceCount     * drainingEC2ServiceCount     * drainingFargateServiceCount If @TAGS@ is specified, the metadata tags associated with the cluster are included.
dcInclude :: Lens' DescribeClusters [ClusterField]
dcInclude = lens _dcInclude (\s a -> s {_dcInclude = a}) . _Default . _Coerce

-- | A list of up to 100 cluster names or full cluster Amazon Resource Name (ARN) entries. If you do not specify a cluster, the default cluster is assumed.
dcClusters :: Lens' DescribeClusters [Text]
dcClusters = lens _dcClusters (\s a -> s {_dcClusters = a}) . _Default . _Coerce

instance AWSRequest DescribeClusters where
  type Rs DescribeClusters = DescribeClustersResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          DescribeClustersResponse'
            <$> (x .?> "failures" .!@ mempty)
            <*> (x .?> "clusters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClusters

instance NFData DescribeClusters

instance ToHeaders DescribeClusters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.DescribeClusters" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeClusters where
  toJSON DescribeClusters' {..} =
    object
      ( catMaybes
          [ ("include" .=) <$> _dcInclude,
            ("clusters" .=) <$> _dcClusters
          ]
      )

instance ToPath DescribeClusters where
  toPath = const "/"

instance ToQuery DescribeClusters where
  toQuery = const mempty

-- | /See:/ 'describeClustersResponse' smart constructor.
data DescribeClustersResponse = DescribeClustersResponse'
  { _dcrrsFailures ::
      !(Maybe [Failure]),
    _dcrrsClusters ::
      !(Maybe [Cluster]),
    _dcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsFailures' - Any failures associated with the call.
--
-- * 'dcrrsClusters' - The list of clusters.
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
describeClustersResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DescribeClustersResponse
describeClustersResponse pResponseStatus_ =
  DescribeClustersResponse'
    { _dcrrsFailures = Nothing,
      _dcrrsClusters = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | Any failures associated with the call.
dcrrsFailures :: Lens' DescribeClustersResponse [Failure]
dcrrsFailures = lens _dcrrsFailures (\s a -> s {_dcrrsFailures = a}) . _Default . _Coerce

-- | The list of clusters.
dcrrsClusters :: Lens' DescribeClustersResponse [Cluster]
dcrrsClusters = lens _dcrrsClusters (\s a -> s {_dcrrsClusters = a}) . _Default . _Coerce

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeClustersResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeClustersResponse
