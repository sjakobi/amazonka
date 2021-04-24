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
-- Module      : Network.AWS.StepFunctions.ListExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the executions of a state machine that meet the filtering criteria. Results are sorted by time, with the most recent execution first.
--
--
-- If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
-- This API action is not supported by @EXPRESS@ state machines.
--
--
-- This operation returns paginated results.
module Network.AWS.StepFunctions.ListExecutions
  ( -- * Creating a Request
    listExecutions,
    ListExecutions,

    -- * Request Lenses
    leNextToken,
    leMaxResults,
    leStatusFilter,
    leStateMachineARN,

    -- * Destructuring the Response
    listExecutionsResponse,
    ListExecutionsResponse,

    -- * Response Lenses
    lerrsNextToken,
    lerrsResponseStatus,
    lerrsExecutions,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'listExecutions' smart constructor.
data ListExecutions = ListExecutions'
  { _leNextToken ::
      !(Maybe Text),
    _leMaxResults :: !(Maybe Nat),
    _leStatusFilter ::
      !(Maybe ExecutionStatus),
    _leStateMachineARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leNextToken' - If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
-- * 'leMaxResults' - The maximum number of results that are returned per call. You can use @nextToken@ to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
--
-- * 'leStatusFilter' - If specified, only list the executions whose current execution status matches the given filter.
--
-- * 'leStateMachineARN' - The Amazon Resource Name (ARN) of the state machine whose executions is listed.
listExecutions ::
  -- | 'leStateMachineARN'
  Text ->
  ListExecutions
listExecutions pStateMachineARN_ =
  ListExecutions'
    { _leNextToken = Nothing,
      _leMaxResults = Nothing,
      _leStatusFilter = Nothing,
      _leStateMachineARN = pStateMachineARN_
    }

-- | If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
leNextToken :: Lens' ListExecutions (Maybe Text)
leNextToken = lens _leNextToken (\s a -> s {_leNextToken = a})

-- | The maximum number of results that are returned per call. You can use @nextToken@ to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
leMaxResults :: Lens' ListExecutions (Maybe Natural)
leMaxResults = lens _leMaxResults (\s a -> s {_leMaxResults = a}) . mapping _Nat

-- | If specified, only list the executions whose current execution status matches the given filter.
leStatusFilter :: Lens' ListExecutions (Maybe ExecutionStatus)
leStatusFilter = lens _leStatusFilter (\s a -> s {_leStatusFilter = a})

-- | The Amazon Resource Name (ARN) of the state machine whose executions is listed.
leStateMachineARN :: Lens' ListExecutions Text
leStateMachineARN = lens _leStateMachineARN (\s a -> s {_leStateMachineARN = a})

instance AWSPager ListExecutions where
  page rq rs
    | stop (rs ^. lerrsNextToken) = Nothing
    | stop (rs ^. lerrsExecutions) = Nothing
    | otherwise =
      Just $ rq & leNextToken .~ rs ^. lerrsNextToken

instance AWSRequest ListExecutions where
  type Rs ListExecutions = ListExecutionsResponse
  request = postJSON stepFunctions
  response =
    receiveJSON
      ( \s h x ->
          ListExecutionsResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "executions" .!@ mempty)
      )

instance Hashable ListExecutions

instance NFData ListExecutions

instance ToHeaders ListExecutions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSStepFunctions.ListExecutions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON ListExecutions where
  toJSON ListExecutions' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _leNextToken,
            ("maxResults" .=) <$> _leMaxResults,
            ("statusFilter" .=) <$> _leStatusFilter,
            Just ("stateMachineArn" .= _leStateMachineARN)
          ]
      )

instance ToPath ListExecutions where
  toPath = const "/"

instance ToQuery ListExecutions where
  toQuery = const mempty

-- | /See:/ 'listExecutionsResponse' smart constructor.
data ListExecutionsResponse = ListExecutionsResponse'
  { _lerrsNextToken ::
      !(Maybe Text),
    _lerrsResponseStatus ::
      !Int,
    _lerrsExecutions ::
      ![ExecutionListItem]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerrsNextToken' - If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
-- * 'lerrsResponseStatus' - -- | The response status code.
--
-- * 'lerrsExecutions' - The list of matching executions.
listExecutionsResponse ::
  -- | 'lerrsResponseStatus'
  Int ->
  ListExecutionsResponse
listExecutionsResponse pResponseStatus_ =
  ListExecutionsResponse'
    { _lerrsNextToken = Nothing,
      _lerrsResponseStatus = pResponseStatus_,
      _lerrsExecutions = mempty
    }

-- | If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
lerrsNextToken :: Lens' ListExecutionsResponse (Maybe Text)
lerrsNextToken = lens _lerrsNextToken (\s a -> s {_lerrsNextToken = a})

-- | -- | The response status code.
lerrsResponseStatus :: Lens' ListExecutionsResponse Int
lerrsResponseStatus = lens _lerrsResponseStatus (\s a -> s {_lerrsResponseStatus = a})

-- | The list of matching executions.
lerrsExecutions :: Lens' ListExecutionsResponse [ExecutionListItem]
lerrsExecutions = lens _lerrsExecutions (\s a -> s {_lerrsExecutions = a}) . _Coerce

instance NFData ListExecutionsResponse
