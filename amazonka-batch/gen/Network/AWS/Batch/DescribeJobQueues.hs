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
-- Module      : Network.AWS.Batch.DescribeJobQueues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your job queues.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Batch.DescribeJobQueues
  ( -- * Creating a Request
    describeJobQueues,
    DescribeJobQueues,

    -- * Request Lenses
    djqNextToken,
    djqMaxResults,
    djqJobQueues,

    -- * Destructuring the Response
    describeJobQueuesResponse,
    DescribeJobQueuesResponse,

    -- * Response Lenses
    djqrrsNextToken,
    djqrrsJobQueues,
    djqrrsResponseStatus,
  )
where

import Network.AWS.Batch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for @DescribeJobQueues@ .
--
--
--
-- /See:/ 'describeJobQueues' smart constructor.
data DescribeJobQueues = DescribeJobQueues'
  { _djqNextToken ::
      !(Maybe Text),
    _djqMaxResults :: !(Maybe Int),
    _djqJobQueues :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeJobQueues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'djqNextToken' - The @nextToken@ value returned from a previous paginated @DescribeJobQueues@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
--
-- * 'djqMaxResults' - The maximum number of results returned by @DescribeJobQueues@ in paginated output. When this parameter is used, @DescribeJobQueues@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeJobQueues@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter isn't used, then @DescribeJobQueues@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- * 'djqJobQueues' - A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.
describeJobQueues ::
  DescribeJobQueues
describeJobQueues =
  DescribeJobQueues'
    { _djqNextToken = Nothing,
      _djqMaxResults = Nothing,
      _djqJobQueues = Nothing
    }

-- | The @nextToken@ value returned from a previous paginated @DescribeJobQueues@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
djqNextToken :: Lens' DescribeJobQueues (Maybe Text)
djqNextToken = lens _djqNextToken (\s a -> s {_djqNextToken = a})

-- | The maximum number of results returned by @DescribeJobQueues@ in paginated output. When this parameter is used, @DescribeJobQueues@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeJobQueues@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter isn't used, then @DescribeJobQueues@ returns up to 100 results and a @nextToken@ value if applicable.
djqMaxResults :: Lens' DescribeJobQueues (Maybe Int)
djqMaxResults = lens _djqMaxResults (\s a -> s {_djqMaxResults = a})

-- | A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.
djqJobQueues :: Lens' DescribeJobQueues [Text]
djqJobQueues = lens _djqJobQueues (\s a -> s {_djqJobQueues = a}) . _Default . _Coerce

instance AWSPager DescribeJobQueues where
  page rq rs
    | stop (rs ^. djqrrsNextToken) = Nothing
    | stop (rs ^. djqrrsJobQueues) = Nothing
    | otherwise =
      Just $ rq & djqNextToken .~ rs ^. djqrrsNextToken

instance AWSRequest DescribeJobQueues where
  type Rs DescribeJobQueues = DescribeJobQueuesResponse
  request = postJSON batch
  response =
    receiveJSON
      ( \s h x ->
          DescribeJobQueuesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "jobQueues" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeJobQueues

instance NFData DescribeJobQueues

instance ToHeaders DescribeJobQueues where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeJobQueues where
  toJSON DescribeJobQueues' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _djqNextToken,
            ("maxResults" .=) <$> _djqMaxResults,
            ("jobQueues" .=) <$> _djqJobQueues
          ]
      )

instance ToPath DescribeJobQueues where
  toPath = const "/v1/describejobqueues"

instance ToQuery DescribeJobQueues where
  toQuery = const mempty

-- | /See:/ 'describeJobQueuesResponse' smart constructor.
data DescribeJobQueuesResponse = DescribeJobQueuesResponse'
  { _djqrrsNextToken ::
      !(Maybe Text),
    _djqrrsJobQueues ::
      !( Maybe
           [JobQueueDetail]
       ),
    _djqrrsResponseStatus ::
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

-- | Creates a value of 'DescribeJobQueuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'djqrrsNextToken' - The @nextToken@ value to include in a future @DescribeJobQueues@ request. When the results of a @DescribeJobQueues@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'djqrrsJobQueues' - The list of job queues.
--
-- * 'djqrrsResponseStatus' - -- | The response status code.
describeJobQueuesResponse ::
  -- | 'djqrrsResponseStatus'
  Int ->
  DescribeJobQueuesResponse
describeJobQueuesResponse pResponseStatus_ =
  DescribeJobQueuesResponse'
    { _djqrrsNextToken =
        Nothing,
      _djqrrsJobQueues = Nothing,
      _djqrrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @DescribeJobQueues@ request. When the results of a @DescribeJobQueues@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
djqrrsNextToken :: Lens' DescribeJobQueuesResponse (Maybe Text)
djqrrsNextToken = lens _djqrrsNextToken (\s a -> s {_djqrrsNextToken = a})

-- | The list of job queues.
djqrrsJobQueues :: Lens' DescribeJobQueuesResponse [JobQueueDetail]
djqrrsJobQueues = lens _djqrrsJobQueues (\s a -> s {_djqrrsJobQueues = a}) . _Default . _Coerce

-- | -- | The response status code.
djqrrsResponseStatus :: Lens' DescribeJobQueuesResponse Int
djqrrsResponseStatus = lens _djqrrsResponseStatus (\s a -> s {_djqrrsResponseStatus = a})

instance NFData DescribeJobQueuesResponse
