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
-- Module      : Network.AWS.ECS.ListContainerInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of container instances in a specified cluster. You can filter the results of a @ListContainerInstances@ operation with cluster query language statements inside the @filter@ parameter. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html Cluster Query Language> in the /Amazon Elastic Container Service Developer Guide/ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.ECS.ListContainerInstances
  ( -- * Creating a Request
    listContainerInstances,
    ListContainerInstances,

    -- * Request Lenses
    lciNextToken,
    lciStatus,
    lciMaxResults,
    lciFilter,
    lciCluster,

    -- * Destructuring the Response
    listContainerInstancesResponse,
    ListContainerInstancesResponse,

    -- * Response Lenses
    lcirrsNextToken,
    lcirrsContainerInstanceARNs,
    lcirrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listContainerInstances' smart constructor.
data ListContainerInstances = ListContainerInstances'
  { _lciNextToken ::
      !(Maybe Text),
    _lciStatus ::
      !( Maybe
           ContainerInstanceStatus
       ),
    _lciMaxResults ::
      !(Maybe Int),
    _lciFilter ::
      !(Maybe Text),
    _lciCluster ::
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

-- | Creates a value of 'ListContainerInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lciNextToken' - The @nextToken@ value returned from a @ListContainerInstances@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
--
-- * 'lciStatus' - Filters the container instances by status. For example, if you specify the @DRAINING@ status, the results include only container instances that have been set to @DRAINING@ using 'UpdateContainerInstancesState' . If you do not specify this parameter, the default is to include container instances set to all states other than @INACTIVE@ .
--
-- * 'lciMaxResults' - The maximum number of container instance results returned by @ListContainerInstances@ in paginated output. When this parameter is used, @ListContainerInstances@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListContainerInstances@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListContainerInstances@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- * 'lciFilter' - You can filter the results of a @ListContainerInstances@ operation with cluster query language statements. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html Cluster Query Language> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'lciCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to list. If you do not specify a cluster, the default cluster is assumed.
listContainerInstances ::
  ListContainerInstances
listContainerInstances =
  ListContainerInstances'
    { _lciNextToken = Nothing,
      _lciStatus = Nothing,
      _lciMaxResults = Nothing,
      _lciFilter = Nothing,
      _lciCluster = Nothing
    }

-- | The @nextToken@ value returned from a @ListContainerInstances@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
lciNextToken :: Lens' ListContainerInstances (Maybe Text)
lciNextToken = lens _lciNextToken (\s a -> s {_lciNextToken = a})

-- | Filters the container instances by status. For example, if you specify the @DRAINING@ status, the results include only container instances that have been set to @DRAINING@ using 'UpdateContainerInstancesState' . If you do not specify this parameter, the default is to include container instances set to all states other than @INACTIVE@ .
lciStatus :: Lens' ListContainerInstances (Maybe ContainerInstanceStatus)
lciStatus = lens _lciStatus (\s a -> s {_lciStatus = a})

-- | The maximum number of container instance results returned by @ListContainerInstances@ in paginated output. When this parameter is used, @ListContainerInstances@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListContainerInstances@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListContainerInstances@ returns up to 100 results and a @nextToken@ value if applicable.
lciMaxResults :: Lens' ListContainerInstances (Maybe Int)
lciMaxResults = lens _lciMaxResults (\s a -> s {_lciMaxResults = a})

-- | You can filter the results of a @ListContainerInstances@ operation with cluster query language statements. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html Cluster Query Language> in the /Amazon Elastic Container Service Developer Guide/ .
lciFilter :: Lens' ListContainerInstances (Maybe Text)
lciFilter = lens _lciFilter (\s a -> s {_lciFilter = a})

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to list. If you do not specify a cluster, the default cluster is assumed.
lciCluster :: Lens' ListContainerInstances (Maybe Text)
lciCluster = lens _lciCluster (\s a -> s {_lciCluster = a})

instance AWSPager ListContainerInstances where
  page rq rs
    | stop (rs ^. lcirrsNextToken) = Nothing
    | stop (rs ^. lcirrsContainerInstanceARNs) = Nothing
    | otherwise =
      Just $ rq & lciNextToken .~ rs ^. lcirrsNextToken

instance AWSRequest ListContainerInstances where
  type
    Rs ListContainerInstances =
      ListContainerInstancesResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          ListContainerInstancesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "containerInstanceArns" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListContainerInstances

instance NFData ListContainerInstances

instance ToHeaders ListContainerInstances where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.ListContainerInstances" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListContainerInstances where
  toJSON ListContainerInstances' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lciNextToken,
            ("status" .=) <$> _lciStatus,
            ("maxResults" .=) <$> _lciMaxResults,
            ("filter" .=) <$> _lciFilter,
            ("cluster" .=) <$> _lciCluster
          ]
      )

instance ToPath ListContainerInstances where
  toPath = const "/"

instance ToQuery ListContainerInstances where
  toQuery = const mempty

-- | /See:/ 'listContainerInstancesResponse' smart constructor.
data ListContainerInstancesResponse = ListContainerInstancesResponse'
  { _lcirrsNextToken ::
      !( Maybe
           Text
       ),
    _lcirrsContainerInstanceARNs ::
      !( Maybe
           [Text]
       ),
    _lcirrsResponseStatus ::
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

-- | Creates a value of 'ListContainerInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcirrsNextToken' - The @nextToken@ value to include in a future @ListContainerInstances@ request. When the results of a @ListContainerInstances@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lcirrsContainerInstanceARNs' - The list of container instances with full ARN entries for each container instance associated with the specified cluster.
--
-- * 'lcirrsResponseStatus' - -- | The response status code.
listContainerInstancesResponse ::
  -- | 'lcirrsResponseStatus'
  Int ->
  ListContainerInstancesResponse
listContainerInstancesResponse pResponseStatus_ =
  ListContainerInstancesResponse'
    { _lcirrsNextToken =
        Nothing,
      _lcirrsContainerInstanceARNs = Nothing,
      _lcirrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @ListContainerInstances@ request. When the results of a @ListContainerInstances@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
lcirrsNextToken :: Lens' ListContainerInstancesResponse (Maybe Text)
lcirrsNextToken = lens _lcirrsNextToken (\s a -> s {_lcirrsNextToken = a})

-- | The list of container instances with full ARN entries for each container instance associated with the specified cluster.
lcirrsContainerInstanceARNs :: Lens' ListContainerInstancesResponse [Text]
lcirrsContainerInstanceARNs = lens _lcirrsContainerInstanceARNs (\s a -> s {_lcirrsContainerInstanceARNs = a}) . _Default . _Coerce

-- | -- | The response status code.
lcirrsResponseStatus :: Lens' ListContainerInstancesResponse Int
lcirrsResponseStatus = lens _lcirrsResponseStatus (\s a -> s {_lcirrsResponseStatus = a})

instance NFData ListContainerInstancesResponse
