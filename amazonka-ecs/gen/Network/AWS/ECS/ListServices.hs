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
-- Module      : Network.AWS.ECS.ListServices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the services that are running in a specified cluster.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ECS.ListServices
  ( -- * Creating a Request
    listServices,
    ListServices,

    -- * Request Lenses
    lsNextToken,
    lsMaxResults,
    lsLaunchType,
    lsSchedulingStrategy,
    lsCluster,

    -- * Destructuring the Response
    listServicesResponse,
    ListServicesResponse,

    -- * Response Lenses
    lsrrsNextToken,
    lsrrsServiceARNs,
    lsrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listServices' smart constructor.
data ListServices = ListServices'
  { _lsNextToken ::
      !(Maybe Text),
    _lsMaxResults :: !(Maybe Int),
    _lsLaunchType :: !(Maybe LaunchType),
    _lsSchedulingStrategy ::
      !(Maybe SchedulingStrategy),
    _lsCluster :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListServices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsNextToken' - The @nextToken@ value returned from a @ListServices@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
--
-- * 'lsMaxResults' - The maximum number of service results returned by @ListServices@ in paginated output. When this parameter is used, @ListServices@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListServices@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListServices@ returns up to 10 results and a @nextToken@ value if applicable.
--
-- * 'lsLaunchType' - The launch type for the services to list.
--
-- * 'lsSchedulingStrategy' - The scheduling strategy for services to list.
--
-- * 'lsCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the services to list. If you do not specify a cluster, the default cluster is assumed.
listServices ::
  ListServices
listServices =
  ListServices'
    { _lsNextToken = Nothing,
      _lsMaxResults = Nothing,
      _lsLaunchType = Nothing,
      _lsSchedulingStrategy = Nothing,
      _lsCluster = Nothing
    }

-- | The @nextToken@ value returned from a @ListServices@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
lsNextToken :: Lens' ListServices (Maybe Text)
lsNextToken = lens _lsNextToken (\s a -> s {_lsNextToken = a})

-- | The maximum number of service results returned by @ListServices@ in paginated output. When this parameter is used, @ListServices@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListServices@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListServices@ returns up to 10 results and a @nextToken@ value if applicable.
lsMaxResults :: Lens' ListServices (Maybe Int)
lsMaxResults = lens _lsMaxResults (\s a -> s {_lsMaxResults = a})

-- | The launch type for the services to list.
lsLaunchType :: Lens' ListServices (Maybe LaunchType)
lsLaunchType = lens _lsLaunchType (\s a -> s {_lsLaunchType = a})

-- | The scheduling strategy for services to list.
lsSchedulingStrategy :: Lens' ListServices (Maybe SchedulingStrategy)
lsSchedulingStrategy = lens _lsSchedulingStrategy (\s a -> s {_lsSchedulingStrategy = a})

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the services to list. If you do not specify a cluster, the default cluster is assumed.
lsCluster :: Lens' ListServices (Maybe Text)
lsCluster = lens _lsCluster (\s a -> s {_lsCluster = a})

instance AWSPager ListServices where
  page rq rs
    | stop (rs ^. lsrrsNextToken) = Nothing
    | stop (rs ^. lsrrsServiceARNs) = Nothing
    | otherwise =
      Just $ rq & lsNextToken .~ rs ^. lsrrsNextToken

instance AWSRequest ListServices where
  type Rs ListServices = ListServicesResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          ListServicesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "serviceArns" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListServices

instance NFData ListServices

instance ToHeaders ListServices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.ListServices" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListServices where
  toJSON ListServices' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lsNextToken,
            ("maxResults" .=) <$> _lsMaxResults,
            ("launchType" .=) <$> _lsLaunchType,
            ("schedulingStrategy" .=) <$> _lsSchedulingStrategy,
            ("cluster" .=) <$> _lsCluster
          ]
      )

instance ToPath ListServices where
  toPath = const "/"

instance ToQuery ListServices where
  toQuery = const mempty

-- | /See:/ 'listServicesResponse' smart constructor.
data ListServicesResponse = ListServicesResponse'
  { _lsrrsNextToken ::
      !(Maybe Text),
    _lsrrsServiceARNs ::
      !(Maybe [Text]),
    _lsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsNextToken' - The @nextToken@ value to include in a future @ListServices@ request. When the results of a @ListServices@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lsrrsServiceARNs' - The list of full ARN entries for each service associated with the specified cluster.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listServicesResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListServicesResponse
listServicesResponse pResponseStatus_ =
  ListServicesResponse'
    { _lsrrsNextToken = Nothing,
      _lsrrsServiceARNs = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @ListServices@ request. When the results of a @ListServices@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
lsrrsNextToken :: Lens' ListServicesResponse (Maybe Text)
lsrrsNextToken = lens _lsrrsNextToken (\s a -> s {_lsrrsNextToken = a})

-- | The list of full ARN entries for each service associated with the specified cluster.
lsrrsServiceARNs :: Lens' ListServicesResponse [Text]
lsrrsServiceARNs = lens _lsrrsServiceARNs (\s a -> s {_lsrrsServiceARNs = a}) . _Default . _Coerce

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListServicesResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListServicesResponse
