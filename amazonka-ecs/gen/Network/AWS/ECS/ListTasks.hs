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
-- Module      : Network.AWS.ECS.ListTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of tasks for a specified cluster. You can filter the results by family name, by a particular container instance, or by the desired status of the task with the @family@ , @containerInstance@ , and @desiredStatus@ parameters.
--
--
-- Recently stopped tasks might appear in the returned results. Currently, stopped tasks appear in the returned results for at least one hour.
--
--
-- This operation returns paginated results.
module Network.AWS.ECS.ListTasks
  ( -- * Creating a Request
    listTasks,
    ListTasks,

    -- * Request Lenses
    ltNextToken,
    ltMaxResults,
    ltLaunchType,
    ltServiceName,
    ltStartedBy,
    ltDesiredStatus,
    ltContainerInstance,
    ltFamily,
    ltCluster,

    -- * Destructuring the Response
    listTasksResponse,
    ListTasksResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsTaskARNs,
    ltrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTasks' smart constructor.
data ListTasks = ListTasks'
  { _ltNextToken ::
      !(Maybe Text),
    _ltMaxResults :: !(Maybe Int),
    _ltLaunchType :: !(Maybe LaunchType),
    _ltServiceName :: !(Maybe Text),
    _ltStartedBy :: !(Maybe Text),
    _ltDesiredStatus :: !(Maybe DesiredStatus),
    _ltContainerInstance :: !(Maybe Text),
    _ltFamily :: !(Maybe Text),
    _ltCluster :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltNextToken' - The @nextToken@ value returned from a @ListTasks@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
--
-- * 'ltMaxResults' - The maximum number of task results returned by @ListTasks@ in paginated output. When this parameter is used, @ListTasks@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListTasks@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListTasks@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- * 'ltLaunchType' - The launch type for services to list.
--
-- * 'ltServiceName' - The name of the service with which to filter the @ListTasks@ results. Specifying a @serviceName@ limits the results to tasks that belong to that service.
--
-- * 'ltStartedBy' - The @startedBy@ value with which to filter the task results. Specifying a @startedBy@ value limits the results to tasks that were started with that value.
--
-- * 'ltDesiredStatus' - The task desired status with which to filter the @ListTasks@ results. Specifying a @desiredStatus@ of @STOPPED@ limits the results to tasks that Amazon ECS has set the desired status to @STOPPED@ . This can be useful for debugging tasks that are not starting properly or have died or finished. The default status filter is @RUNNING@ , which shows tasks that Amazon ECS has set the desired status to @RUNNING@ .
--
-- * 'ltContainerInstance' - The container instance ID or full ARN of the container instance with which to filter the @ListTasks@ results. Specifying a @containerInstance@ limits the results to tasks that belong to that container instance.
--
-- * 'ltFamily' - The name of the family with which to filter the @ListTasks@ results. Specifying a @family@ limits the results to tasks that belong to that family.
--
-- * 'ltCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the tasks to list. If you do not specify a cluster, the default cluster is assumed.
listTasks ::
  ListTasks
listTasks =
  ListTasks'
    { _ltNextToken = Nothing,
      _ltMaxResults = Nothing,
      _ltLaunchType = Nothing,
      _ltServiceName = Nothing,
      _ltStartedBy = Nothing,
      _ltDesiredStatus = Nothing,
      _ltContainerInstance = Nothing,
      _ltFamily = Nothing,
      _ltCluster = Nothing
    }

-- | The @nextToken@ value returned from a @ListTasks@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
ltNextToken :: Lens' ListTasks (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | The maximum number of task results returned by @ListTasks@ in paginated output. When this parameter is used, @ListTasks@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListTasks@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListTasks@ returns up to 100 results and a @nextToken@ value if applicable.
ltMaxResults :: Lens' ListTasks (Maybe Int)
ltMaxResults = lens _ltMaxResults (\s a -> s {_ltMaxResults = a})

-- | The launch type for services to list.
ltLaunchType :: Lens' ListTasks (Maybe LaunchType)
ltLaunchType = lens _ltLaunchType (\s a -> s {_ltLaunchType = a})

-- | The name of the service with which to filter the @ListTasks@ results. Specifying a @serviceName@ limits the results to tasks that belong to that service.
ltServiceName :: Lens' ListTasks (Maybe Text)
ltServiceName = lens _ltServiceName (\s a -> s {_ltServiceName = a})

-- | The @startedBy@ value with which to filter the task results. Specifying a @startedBy@ value limits the results to tasks that were started with that value.
ltStartedBy :: Lens' ListTasks (Maybe Text)
ltStartedBy = lens _ltStartedBy (\s a -> s {_ltStartedBy = a})

-- | The task desired status with which to filter the @ListTasks@ results. Specifying a @desiredStatus@ of @STOPPED@ limits the results to tasks that Amazon ECS has set the desired status to @STOPPED@ . This can be useful for debugging tasks that are not starting properly or have died or finished. The default status filter is @RUNNING@ , which shows tasks that Amazon ECS has set the desired status to @RUNNING@ .
ltDesiredStatus :: Lens' ListTasks (Maybe DesiredStatus)
ltDesiredStatus = lens _ltDesiredStatus (\s a -> s {_ltDesiredStatus = a})

-- | The container instance ID or full ARN of the container instance with which to filter the @ListTasks@ results. Specifying a @containerInstance@ limits the results to tasks that belong to that container instance.
ltContainerInstance :: Lens' ListTasks (Maybe Text)
ltContainerInstance = lens _ltContainerInstance (\s a -> s {_ltContainerInstance = a})

-- | The name of the family with which to filter the @ListTasks@ results. Specifying a @family@ limits the results to tasks that belong to that family.
ltFamily :: Lens' ListTasks (Maybe Text)
ltFamily = lens _ltFamily (\s a -> s {_ltFamily = a})

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the tasks to list. If you do not specify a cluster, the default cluster is assumed.
ltCluster :: Lens' ListTasks (Maybe Text)
ltCluster = lens _ltCluster (\s a -> s {_ltCluster = a})

instance AWSPager ListTasks where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsTaskARNs) = Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListTasks where
  type Rs ListTasks = ListTasksResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          ListTasksResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "taskArns" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTasks

instance NFData ListTasks

instance ToHeaders ListTasks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.ListTasks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTasks where
  toJSON ListTasks' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ltNextToken,
            ("maxResults" .=) <$> _ltMaxResults,
            ("launchType" .=) <$> _ltLaunchType,
            ("serviceName" .=) <$> _ltServiceName,
            ("startedBy" .=) <$> _ltStartedBy,
            ("desiredStatus" .=) <$> _ltDesiredStatus,
            ("containerInstance" .=) <$> _ltContainerInstance,
            ("family" .=) <$> _ltFamily,
            ("cluster" .=) <$> _ltCluster
          ]
      )

instance ToPath ListTasks where
  toPath = const "/"

instance ToQuery ListTasks where
  toQuery = const mempty

-- | /See:/ 'listTasksResponse' smart constructor.
data ListTasksResponse = ListTasksResponse'
  { _ltrrsNextToken ::
      !(Maybe Text),
    _ltrrsTaskARNs :: !(Maybe [Text]),
    _ltrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsNextToken' - The @nextToken@ value to include in a future @ListTasks@ request. When the results of a @ListTasks@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'ltrrsTaskARNs' - The list of task ARN entries for the @ListTasks@ request.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listTasksResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTasksResponse
listTasksResponse pResponseStatus_ =
  ListTasksResponse'
    { _ltrrsNextToken = Nothing,
      _ltrrsTaskARNs = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @ListTasks@ request. When the results of a @ListTasks@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
ltrrsNextToken :: Lens' ListTasksResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | The list of task ARN entries for the @ListTasks@ request.
ltrrsTaskARNs :: Lens' ListTasksResponse [Text]
ltrrsTaskARNs = lens _ltrrsTaskARNs (\s a -> s {_ltrrsTaskARNs = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTasksResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTasksResponse
