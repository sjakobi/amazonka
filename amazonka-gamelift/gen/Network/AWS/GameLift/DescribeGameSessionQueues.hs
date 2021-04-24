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
-- Module      : Network.AWS.GameLift.DescribeGameSessionQueues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the properties for one or more game session queues. When requesting multiple queues, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a 'GameSessionQueue' object is returned for each requested queue. When specifying a list of queues, objects are returned only for queues that currently exist in the Region.
--
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-console.html View Your Queues>
--
-- __Related operations__
--
--     * 'CreateGameSessionQueue'
--
--     * 'DescribeGameSessionQueues'
--
--     * 'UpdateGameSessionQueue'
--
--     * 'DeleteGameSessionQueue'
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.DescribeGameSessionQueues
  ( -- * Creating a Request
    describeGameSessionQueues,
    DescribeGameSessionQueues,

    -- * Request Lenses
    dgsqNames,
    dgsqNextToken,
    dgsqLimit,

    -- * Destructuring the Response
    describeGameSessionQueuesResponse,
    DescribeGameSessionQueuesResponse,

    -- * Response Lenses
    dgsqrrsNextToken,
    dgsqrrsGameSessionQueues,
    dgsqrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'describeGameSessionQueues' smart constructor.
data DescribeGameSessionQueues = DescribeGameSessionQueues'
  { _dgsqNames ::
      !(Maybe [Text]),
    _dgsqNextToken ::
      !(Maybe Text),
    _dgsqLimit ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeGameSessionQueues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsqNames' - A list of queue names to retrieve information for. You can use either the queue ID or ARN value. To request settings for all queues, leave this parameter empty.
--
-- * 'dgsqNextToken' - A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- * 'dgsqLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages. You can request up to 50 results.
describeGameSessionQueues ::
  DescribeGameSessionQueues
describeGameSessionQueues =
  DescribeGameSessionQueues'
    { _dgsqNames = Nothing,
      _dgsqNextToken = Nothing,
      _dgsqLimit = Nothing
    }

-- | A list of queue names to retrieve information for. You can use either the queue ID or ARN value. To request settings for all queues, leave this parameter empty.
dgsqNames :: Lens' DescribeGameSessionQueues [Text]
dgsqNames = lens _dgsqNames (\s a -> s {_dgsqNames = a}) . _Default . _Coerce

-- | A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
dgsqNextToken :: Lens' DescribeGameSessionQueues (Maybe Text)
dgsqNextToken = lens _dgsqNextToken (\s a -> s {_dgsqNextToken = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages. You can request up to 50 results.
dgsqLimit :: Lens' DescribeGameSessionQueues (Maybe Natural)
dgsqLimit = lens _dgsqLimit (\s a -> s {_dgsqLimit = a}) . mapping _Nat

instance AWSPager DescribeGameSessionQueues where
  page rq rs
    | stop (rs ^. dgsqrrsNextToken) = Nothing
    | stop (rs ^. dgsqrrsGameSessionQueues) = Nothing
    | otherwise =
      Just $ rq & dgsqNextToken .~ rs ^. dgsqrrsNextToken

instance AWSRequest DescribeGameSessionQueues where
  type
    Rs DescribeGameSessionQueues =
      DescribeGameSessionQueuesResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeGameSessionQueuesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "GameSessionQueues" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeGameSessionQueues

instance NFData DescribeGameSessionQueues

instance ToHeaders DescribeGameSessionQueues where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.DescribeGameSessionQueues" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeGameSessionQueues where
  toJSON DescribeGameSessionQueues' {..} =
    object
      ( catMaybes
          [ ("Names" .=) <$> _dgsqNames,
            ("NextToken" .=) <$> _dgsqNextToken,
            ("Limit" .=) <$> _dgsqLimit
          ]
      )

instance ToPath DescribeGameSessionQueues where
  toPath = const "/"

instance ToQuery DescribeGameSessionQueues where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeGameSessionQueuesResponse' smart constructor.
data DescribeGameSessionQueuesResponse = DescribeGameSessionQueuesResponse'
  { _dgsqrrsNextToken ::
      !( Maybe
           Text
       ),
    _dgsqrrsGameSessionQueues ::
      !( Maybe
           [GameSessionQueue]
       ),
    _dgsqrrsResponseStatus ::
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

-- | Creates a value of 'DescribeGameSessionQueuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsqrrsNextToken' - A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'dgsqrrsGameSessionQueues' - A collection of objects that describe the requested game session queues.
--
-- * 'dgsqrrsResponseStatus' - -- | The response status code.
describeGameSessionQueuesResponse ::
  -- | 'dgsqrrsResponseStatus'
  Int ->
  DescribeGameSessionQueuesResponse
describeGameSessionQueuesResponse pResponseStatus_ =
  DescribeGameSessionQueuesResponse'
    { _dgsqrrsNextToken =
        Nothing,
      _dgsqrrsGameSessionQueues = Nothing,
      _dgsqrrsResponseStatus =
        pResponseStatus_
    }

-- | A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
dgsqrrsNextToken :: Lens' DescribeGameSessionQueuesResponse (Maybe Text)
dgsqrrsNextToken = lens _dgsqrrsNextToken (\s a -> s {_dgsqrrsNextToken = a})

-- | A collection of objects that describe the requested game session queues.
dgsqrrsGameSessionQueues :: Lens' DescribeGameSessionQueuesResponse [GameSessionQueue]
dgsqrrsGameSessionQueues = lens _dgsqrrsGameSessionQueues (\s a -> s {_dgsqrrsGameSessionQueues = a}) . _Default . _Coerce

-- | -- | The response status code.
dgsqrrsResponseStatus :: Lens' DescribeGameSessionQueuesResponse Int
dgsqrrsResponseStatus = lens _dgsqrrsResponseStatus (\s a -> s {_dgsqrrsResponseStatus = a})

instance NFData DescribeGameSessionQueuesResponse
