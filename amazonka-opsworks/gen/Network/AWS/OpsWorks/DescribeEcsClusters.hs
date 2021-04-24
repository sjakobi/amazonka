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
-- Module      : Network.AWS.OpsWorks.DescribeEcsClusters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the @MaxResults@ and @NextToken@ parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information about user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
--
-- This call accepts only one resource-identifying parameter.
--
--
-- This operation returns paginated results.
module Network.AWS.OpsWorks.DescribeEcsClusters
  ( -- * Creating a Request
    describeEcsClusters,
    DescribeEcsClusters,

    -- * Request Lenses
    decNextToken,
    decMaxResults,
    decStackId,
    decEcsClusterARNs,

    -- * Destructuring the Response
    describeEcsClustersResponse,
    DescribeEcsClustersResponse,

    -- * Response Lenses
    decrrsNextToken,
    decrrsEcsClusters,
    decrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEcsClusters' smart constructor.
data DescribeEcsClusters = DescribeEcsClusters'
  { _decNextToken ::
      !(Maybe Text),
    _decMaxResults :: !(Maybe Int),
    _decStackId :: !(Maybe Text),
    _decEcsClusterARNs ::
      !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEcsClusters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decNextToken' - If the previous paginated request did not return all of the remaining results, the response object's@NextToken@ parameter value is set to a token. To retrieve the next set of results, call @DescribeEcsClusters@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
--
-- * 'decMaxResults' - To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- * 'decStackId' - A stack ID. @DescribeEcsClusters@ returns a description of the cluster that is registered with the stack.
--
-- * 'decEcsClusterARNs' - A list of ARNs, one for each cluster to be described.
describeEcsClusters ::
  DescribeEcsClusters
describeEcsClusters =
  DescribeEcsClusters'
    { _decNextToken = Nothing,
      _decMaxResults = Nothing,
      _decStackId = Nothing,
      _decEcsClusterARNs = Nothing
    }

-- | If the previous paginated request did not return all of the remaining results, the response object's@NextToken@ parameter value is set to a token. To retrieve the next set of results, call @DescribeEcsClusters@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
decNextToken :: Lens' DescribeEcsClusters (Maybe Text)
decNextToken = lens _decNextToken (\s a -> s {_decNextToken = a})

-- | To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
decMaxResults :: Lens' DescribeEcsClusters (Maybe Int)
decMaxResults = lens _decMaxResults (\s a -> s {_decMaxResults = a})

-- | A stack ID. @DescribeEcsClusters@ returns a description of the cluster that is registered with the stack.
decStackId :: Lens' DescribeEcsClusters (Maybe Text)
decStackId = lens _decStackId (\s a -> s {_decStackId = a})

-- | A list of ARNs, one for each cluster to be described.
decEcsClusterARNs :: Lens' DescribeEcsClusters [Text]
decEcsClusterARNs = lens _decEcsClusterARNs (\s a -> s {_decEcsClusterARNs = a}) . _Default . _Coerce

instance AWSPager DescribeEcsClusters where
  page rq rs
    | stop (rs ^. decrrsNextToken) = Nothing
    | stop (rs ^. decrrsEcsClusters) = Nothing
    | otherwise =
      Just $ rq & decNextToken .~ rs ^. decrrsNextToken

instance AWSRequest DescribeEcsClusters where
  type
    Rs DescribeEcsClusters =
      DescribeEcsClustersResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          DescribeEcsClustersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "EcsClusters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEcsClusters

instance NFData DescribeEcsClusters

instance ToHeaders DescribeEcsClusters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorks_20130218.DescribeEcsClusters" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEcsClusters where
  toJSON DescribeEcsClusters' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _decNextToken,
            ("MaxResults" .=) <$> _decMaxResults,
            ("StackId" .=) <$> _decStackId,
            ("EcsClusterArns" .=) <$> _decEcsClusterARNs
          ]
      )

instance ToPath DescribeEcsClusters where
  toPath = const "/"

instance ToQuery DescribeEcsClusters where
  toQuery = const mempty

-- | Contains the response to a @DescribeEcsClusters@ request.
--
--
--
-- /See:/ 'describeEcsClustersResponse' smart constructor.
data DescribeEcsClustersResponse = DescribeEcsClustersResponse'
  { _decrrsNextToken ::
      !(Maybe Text),
    _decrrsEcsClusters ::
      !( Maybe
           [EcsCluster]
       ),
    _decrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEcsClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decrrsNextToken' - If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's @NextToken@ parameter to retrieve the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to @null@ .
--
-- * 'decrrsEcsClusters' - A list of @EcsCluster@ objects containing the cluster descriptions.
--
-- * 'decrrsResponseStatus' - -- | The response status code.
describeEcsClustersResponse ::
  -- | 'decrrsResponseStatus'
  Int ->
  DescribeEcsClustersResponse
describeEcsClustersResponse pResponseStatus_ =
  DescribeEcsClustersResponse'
    { _decrrsNextToken =
        Nothing,
      _decrrsEcsClusters = Nothing,
      _decrrsResponseStatus = pResponseStatus_
    }

-- | If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's @NextToken@ parameter to retrieve the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to @null@ .
decrrsNextToken :: Lens' DescribeEcsClustersResponse (Maybe Text)
decrrsNextToken = lens _decrrsNextToken (\s a -> s {_decrrsNextToken = a})

-- | A list of @EcsCluster@ objects containing the cluster descriptions.
decrrsEcsClusters :: Lens' DescribeEcsClustersResponse [EcsCluster]
decrrsEcsClusters = lens _decrrsEcsClusters (\s a -> s {_decrrsEcsClusters = a}) . _Default . _Coerce

-- | -- | The response status code.
decrrsResponseStatus :: Lens' DescribeEcsClustersResponse Int
decrrsResponseStatus = lens _decrrsResponseStatus (\s a -> s {_decrrsResponseStatus = a})

instance NFData DescribeEcsClustersResponse
