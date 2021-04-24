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
-- Module      : Network.AWS.ECS.DescribeTaskSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the task sets in the specified cluster and service. This is used when a service uses the @EXTERNAL@ deployment controller type. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html Amazon ECS Deployment Types> in the /Amazon Elastic Container Service Developer Guide/ .
module Network.AWS.ECS.DescribeTaskSets
  ( -- * Creating a Request
    describeTaskSets,
    DescribeTaskSets,

    -- * Request Lenses
    dtsTaskSets,
    dtsInclude,
    dtsCluster,
    dtsService,

    -- * Destructuring the Response
    describeTaskSetsResponse,
    DescribeTaskSetsResponse,

    -- * Response Lenses
    dtsrtrsTaskSets,
    dtsrtrsFailures,
    dtsrtrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTaskSets' smart constructor.
data DescribeTaskSets = DescribeTaskSets'
  { _dtsTaskSets ::
      !(Maybe [Text]),
    _dtsInclude ::
      !(Maybe [TaskSetField]),
    _dtsCluster :: !Text,
    _dtsService :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTaskSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtsTaskSets' - The ID or full Amazon Resource Name (ARN) of task sets to describe.
--
-- * 'dtsInclude' - Specifies whether to see the resource tags for the task set. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
--
-- * 'dtsCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task sets exist in.
--
-- * 'dtsService' - The short name or full Amazon Resource Name (ARN) of the service that the task sets exist in.
describeTaskSets ::
  -- | 'dtsCluster'
  Text ->
  -- | 'dtsService'
  Text ->
  DescribeTaskSets
describeTaskSets pCluster_ pService_ =
  DescribeTaskSets'
    { _dtsTaskSets = Nothing,
      _dtsInclude = Nothing,
      _dtsCluster = pCluster_,
      _dtsService = pService_
    }

-- | The ID or full Amazon Resource Name (ARN) of task sets to describe.
dtsTaskSets :: Lens' DescribeTaskSets [Text]
dtsTaskSets = lens _dtsTaskSets (\s a -> s {_dtsTaskSets = a}) . _Default . _Coerce

-- | Specifies whether to see the resource tags for the task set. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
dtsInclude :: Lens' DescribeTaskSets [TaskSetField]
dtsInclude = lens _dtsInclude (\s a -> s {_dtsInclude = a}) . _Default . _Coerce

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task sets exist in.
dtsCluster :: Lens' DescribeTaskSets Text
dtsCluster = lens _dtsCluster (\s a -> s {_dtsCluster = a})

-- | The short name or full Amazon Resource Name (ARN) of the service that the task sets exist in.
dtsService :: Lens' DescribeTaskSets Text
dtsService = lens _dtsService (\s a -> s {_dtsService = a})

instance AWSRequest DescribeTaskSets where
  type Rs DescribeTaskSets = DescribeTaskSetsResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          DescribeTaskSetsResponse'
            <$> (x .?> "taskSets" .!@ mempty)
            <*> (x .?> "failures" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTaskSets

instance NFData DescribeTaskSets

instance ToHeaders DescribeTaskSets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.DescribeTaskSets" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTaskSets where
  toJSON DescribeTaskSets' {..} =
    object
      ( catMaybes
          [ ("taskSets" .=) <$> _dtsTaskSets,
            ("include" .=) <$> _dtsInclude,
            Just ("cluster" .= _dtsCluster),
            Just ("service" .= _dtsService)
          ]
      )

instance ToPath DescribeTaskSets where
  toPath = const "/"

instance ToQuery DescribeTaskSets where
  toQuery = const mempty

-- | /See:/ 'describeTaskSetsResponse' smart constructor.
data DescribeTaskSetsResponse = DescribeTaskSetsResponse'
  { _dtsrtrsTaskSets ::
      !(Maybe [TaskSet]),
    _dtsrtrsFailures ::
      !(Maybe [Failure]),
    _dtsrtrsResponseStatus ::
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

-- | Creates a value of 'DescribeTaskSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtsrtrsTaskSets' - The list of task sets described.
--
-- * 'dtsrtrsFailures' - Any failures associated with the call.
--
-- * 'dtsrtrsResponseStatus' - -- | The response status code.
describeTaskSetsResponse ::
  -- | 'dtsrtrsResponseStatus'
  Int ->
  DescribeTaskSetsResponse
describeTaskSetsResponse pResponseStatus_ =
  DescribeTaskSetsResponse'
    { _dtsrtrsTaskSets =
        Nothing,
      _dtsrtrsFailures = Nothing,
      _dtsrtrsResponseStatus = pResponseStatus_
    }

-- | The list of task sets described.
dtsrtrsTaskSets :: Lens' DescribeTaskSetsResponse [TaskSet]
dtsrtrsTaskSets = lens _dtsrtrsTaskSets (\s a -> s {_dtsrtrsTaskSets = a}) . _Default . _Coerce

-- | Any failures associated with the call.
dtsrtrsFailures :: Lens' DescribeTaskSetsResponse [Failure]
dtsrtrsFailures = lens _dtsrtrsFailures (\s a -> s {_dtsrtrsFailures = a}) . _Default . _Coerce

-- | -- | The response status code.
dtsrtrsResponseStatus :: Lens' DescribeTaskSetsResponse Int
dtsrtrsResponseStatus = lens _dtsrtrsResponseStatus (\s a -> s {_dtsrtrsResponseStatus = a})

instance NFData DescribeTaskSetsResponse
