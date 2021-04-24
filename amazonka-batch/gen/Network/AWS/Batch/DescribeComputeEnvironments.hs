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
-- Module      : Network.AWS.Batch.DescribeComputeEnvironments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your compute environments.
--
--
-- If you're using an unmanaged compute environment, you can use the @DescribeComputeEnvironment@ operation to determine the @ecsClusterArn@ that you should launch your Amazon ECS container instances into.
--
--
-- This operation returns paginated results.
module Network.AWS.Batch.DescribeComputeEnvironments
  ( -- * Creating a Request
    describeComputeEnvironments,
    DescribeComputeEnvironments,

    -- * Request Lenses
    dceNextToken,
    dceMaxResults,
    dceComputeEnvironments,

    -- * Destructuring the Response
    describeComputeEnvironmentsResponse,
    DescribeComputeEnvironmentsResponse,

    -- * Response Lenses
    dcerrsNextToken,
    dcerrsComputeEnvironments,
    dcerrsResponseStatus,
  )
where

import Network.AWS.Batch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for @DescribeComputeEnvironments@ .
--
--
--
-- /See:/ 'describeComputeEnvironments' smart constructor.
data DescribeComputeEnvironments = DescribeComputeEnvironments'
  { _dceNextToken ::
      !(Maybe Text),
    _dceMaxResults ::
      !(Maybe Int),
    _dceComputeEnvironments ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeComputeEnvironments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dceNextToken' - The @nextToken@ value returned from a previous paginated @DescribeComputeEnvironments@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
--
-- * 'dceMaxResults' - The maximum number of cluster results returned by @DescribeComputeEnvironments@ in paginated output. When this parameter is used, @DescribeComputeEnvironments@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeComputeEnvironments@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter isn't used, then @DescribeComputeEnvironments@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- * 'dceComputeEnvironments' - A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries.
describeComputeEnvironments ::
  DescribeComputeEnvironments
describeComputeEnvironments =
  DescribeComputeEnvironments'
    { _dceNextToken =
        Nothing,
      _dceMaxResults = Nothing,
      _dceComputeEnvironments = Nothing
    }

-- | The @nextToken@ value returned from a previous paginated @DescribeComputeEnvironments@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
dceNextToken :: Lens' DescribeComputeEnvironments (Maybe Text)
dceNextToken = lens _dceNextToken (\s a -> s {_dceNextToken = a})

-- | The maximum number of cluster results returned by @DescribeComputeEnvironments@ in paginated output. When this parameter is used, @DescribeComputeEnvironments@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeComputeEnvironments@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter isn't used, then @DescribeComputeEnvironments@ returns up to 100 results and a @nextToken@ value if applicable.
dceMaxResults :: Lens' DescribeComputeEnvironments (Maybe Int)
dceMaxResults = lens _dceMaxResults (\s a -> s {_dceMaxResults = a})

-- | A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries.
dceComputeEnvironments :: Lens' DescribeComputeEnvironments [Text]
dceComputeEnvironments = lens _dceComputeEnvironments (\s a -> s {_dceComputeEnvironments = a}) . _Default . _Coerce

instance AWSPager DescribeComputeEnvironments where
  page rq rs
    | stop (rs ^. dcerrsNextToken) = Nothing
    | stop (rs ^. dcerrsComputeEnvironments) = Nothing
    | otherwise =
      Just $ rq & dceNextToken .~ rs ^. dcerrsNextToken

instance AWSRequest DescribeComputeEnvironments where
  type
    Rs DescribeComputeEnvironments =
      DescribeComputeEnvironmentsResponse
  request = postJSON batch
  response =
    receiveJSON
      ( \s h x ->
          DescribeComputeEnvironmentsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "computeEnvironments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeComputeEnvironments

instance NFData DescribeComputeEnvironments

instance ToHeaders DescribeComputeEnvironments where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeComputeEnvironments where
  toJSON DescribeComputeEnvironments' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _dceNextToken,
            ("maxResults" .=) <$> _dceMaxResults,
            ("computeEnvironments" .=)
              <$> _dceComputeEnvironments
          ]
      )

instance ToPath DescribeComputeEnvironments where
  toPath = const "/v1/describecomputeenvironments"

instance ToQuery DescribeComputeEnvironments where
  toQuery = const mempty

-- | /See:/ 'describeComputeEnvironmentsResponse' smart constructor.
data DescribeComputeEnvironmentsResponse = DescribeComputeEnvironmentsResponse'
  { _dcerrsNextToken ::
      !( Maybe
           Text
       ),
    _dcerrsComputeEnvironments ::
      !( Maybe
           [ComputeEnvironmentDetail]
       ),
    _dcerrsResponseStatus ::
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

-- | Creates a value of 'DescribeComputeEnvironmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcerrsNextToken' - The @nextToken@ value to include in a future @DescribeComputeEnvironments@ request. When the results of a @DescribeJobDefinitions@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dcerrsComputeEnvironments' - The list of compute environments.
--
-- * 'dcerrsResponseStatus' - -- | The response status code.
describeComputeEnvironmentsResponse ::
  -- | 'dcerrsResponseStatus'
  Int ->
  DescribeComputeEnvironmentsResponse
describeComputeEnvironmentsResponse pResponseStatus_ =
  DescribeComputeEnvironmentsResponse'
    { _dcerrsNextToken =
        Nothing,
      _dcerrsComputeEnvironments = Nothing,
      _dcerrsResponseStatus =
        pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @DescribeComputeEnvironments@ request. When the results of a @DescribeJobDefinitions@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
dcerrsNextToken :: Lens' DescribeComputeEnvironmentsResponse (Maybe Text)
dcerrsNextToken = lens _dcerrsNextToken (\s a -> s {_dcerrsNextToken = a})

-- | The list of compute environments.
dcerrsComputeEnvironments :: Lens' DescribeComputeEnvironmentsResponse [ComputeEnvironmentDetail]
dcerrsComputeEnvironments = lens _dcerrsComputeEnvironments (\s a -> s {_dcerrsComputeEnvironments = a}) . _Default . _Coerce

-- | -- | The response status code.
dcerrsResponseStatus :: Lens' DescribeComputeEnvironmentsResponse Int
dcerrsResponseStatus = lens _dcerrsResponseStatus (\s a -> s {_dcerrsResponseStatus = a})

instance NFData DescribeComputeEnvironmentsResponse
