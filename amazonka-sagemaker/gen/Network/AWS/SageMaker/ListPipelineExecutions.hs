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
-- Module      : Network.AWS.SageMaker.ListPipelineExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the pipeline executions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListPipelineExecutions
  ( -- * Creating a Request
    listPipelineExecutions,
    ListPipelineExecutions,

    -- * Request Lenses
    lpeCreatedAfter,
    lpeSortOrder,
    lpeNextToken,
    lpeCreatedBefore,
    lpeMaxResults,
    lpeSortBy,
    lpePipelineName,

    -- * Destructuring the Response
    listPipelineExecutionsResponse,
    ListPipelineExecutionsResponse,

    -- * Response Lenses
    lperrsNextToken,
    lperrsPipelineExecutionSummaries,
    lperrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listPipelineExecutions' smart constructor.
data ListPipelineExecutions = ListPipelineExecutions'
  { _lpeCreatedAfter ::
      !(Maybe POSIX),
    _lpeSortOrder ::
      !(Maybe SortOrder),
    _lpeNextToken ::
      !(Maybe Text),
    _lpeCreatedBefore ::
      !(Maybe POSIX),
    _lpeMaxResults ::
      !(Maybe Nat),
    _lpeSortBy ::
      !( Maybe
           SortPipelineExecutionsBy
       ),
    _lpePipelineName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPipelineExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpeCreatedAfter' - A filter that returns the pipeline executions that were created after a specified time.
--
-- * 'lpeSortOrder' - The sort order for results.
--
-- * 'lpeNextToken' - If the result of the previous @ListPipelineExecutions@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipeline executions, use the token in the next request.
--
-- * 'lpeCreatedBefore' - A filter that returns the pipeline executions that were created before a specified time.
--
-- * 'lpeMaxResults' - The maximum number of pipeline executions to return in the response.
--
-- * 'lpeSortBy' - The field by which to sort results. The default is @CreatedTime@ .
--
-- * 'lpePipelineName' - The name of the pipeline.
listPipelineExecutions ::
  -- | 'lpePipelineName'
  Text ->
  ListPipelineExecutions
listPipelineExecutions pPipelineName_ =
  ListPipelineExecutions'
    { _lpeCreatedAfter = Nothing,
      _lpeSortOrder = Nothing,
      _lpeNextToken = Nothing,
      _lpeCreatedBefore = Nothing,
      _lpeMaxResults = Nothing,
      _lpeSortBy = Nothing,
      _lpePipelineName = pPipelineName_
    }

-- | A filter that returns the pipeline executions that were created after a specified time.
lpeCreatedAfter :: Lens' ListPipelineExecutions (Maybe UTCTime)
lpeCreatedAfter = lens _lpeCreatedAfter (\s a -> s {_lpeCreatedAfter = a}) . mapping _Time

-- | The sort order for results.
lpeSortOrder :: Lens' ListPipelineExecutions (Maybe SortOrder)
lpeSortOrder = lens _lpeSortOrder (\s a -> s {_lpeSortOrder = a})

-- | If the result of the previous @ListPipelineExecutions@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipeline executions, use the token in the next request.
lpeNextToken :: Lens' ListPipelineExecutions (Maybe Text)
lpeNextToken = lens _lpeNextToken (\s a -> s {_lpeNextToken = a})

-- | A filter that returns the pipeline executions that were created before a specified time.
lpeCreatedBefore :: Lens' ListPipelineExecutions (Maybe UTCTime)
lpeCreatedBefore = lens _lpeCreatedBefore (\s a -> s {_lpeCreatedBefore = a}) . mapping _Time

-- | The maximum number of pipeline executions to return in the response.
lpeMaxResults :: Lens' ListPipelineExecutions (Maybe Natural)
lpeMaxResults = lens _lpeMaxResults (\s a -> s {_lpeMaxResults = a}) . mapping _Nat

-- | The field by which to sort results. The default is @CreatedTime@ .
lpeSortBy :: Lens' ListPipelineExecutions (Maybe SortPipelineExecutionsBy)
lpeSortBy = lens _lpeSortBy (\s a -> s {_lpeSortBy = a})

-- | The name of the pipeline.
lpePipelineName :: Lens' ListPipelineExecutions Text
lpePipelineName = lens _lpePipelineName (\s a -> s {_lpePipelineName = a})

instance AWSPager ListPipelineExecutions where
  page rq rs
    | stop (rs ^. lperrsNextToken) = Nothing
    | stop (rs ^. lperrsPipelineExecutionSummaries) =
      Nothing
    | otherwise =
      Just $ rq & lpeNextToken .~ rs ^. lperrsNextToken

instance AWSRequest ListPipelineExecutions where
  type
    Rs ListPipelineExecutions =
      ListPipelineExecutionsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListPipelineExecutionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PipelineExecutionSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPipelineExecutions

instance NFData ListPipelineExecutions

instance ToHeaders ListPipelineExecutions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListPipelineExecutions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPipelineExecutions where
  toJSON ListPipelineExecutions' {..} =
    object
      ( catMaybes
          [ ("CreatedAfter" .=) <$> _lpeCreatedAfter,
            ("SortOrder" .=) <$> _lpeSortOrder,
            ("NextToken" .=) <$> _lpeNextToken,
            ("CreatedBefore" .=) <$> _lpeCreatedBefore,
            ("MaxResults" .=) <$> _lpeMaxResults,
            ("SortBy" .=) <$> _lpeSortBy,
            Just ("PipelineName" .= _lpePipelineName)
          ]
      )

instance ToPath ListPipelineExecutions where
  toPath = const "/"

instance ToQuery ListPipelineExecutions where
  toQuery = const mempty

-- | /See:/ 'listPipelineExecutionsResponse' smart constructor.
data ListPipelineExecutionsResponse = ListPipelineExecutionsResponse'
  { _lperrsNextToken ::
      !( Maybe
           Text
       ),
    _lperrsPipelineExecutionSummaries ::
      !( Maybe
           [PipelineExecutionSummary]
       ),
    _lperrsResponseStatus ::
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

-- | Creates a value of 'ListPipelineExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lperrsNextToken' - If the result of the previous @ListPipelineExecutions@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipeline executions, use the token in the next request.
--
-- * 'lperrsPipelineExecutionSummaries' - Contains a sorted list of pipeline execution summary objects matching the specified filters. Each run summary includes the Amazon Resource Name (ARN) of the pipeline execution, the run date, and the status. This list can be empty.
--
-- * 'lperrsResponseStatus' - -- | The response status code.
listPipelineExecutionsResponse ::
  -- | 'lperrsResponseStatus'
  Int ->
  ListPipelineExecutionsResponse
listPipelineExecutionsResponse pResponseStatus_ =
  ListPipelineExecutionsResponse'
    { _lperrsNextToken =
        Nothing,
      _lperrsPipelineExecutionSummaries = Nothing,
      _lperrsResponseStatus = pResponseStatus_
    }

-- | If the result of the previous @ListPipelineExecutions@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipeline executions, use the token in the next request.
lperrsNextToken :: Lens' ListPipelineExecutionsResponse (Maybe Text)
lperrsNextToken = lens _lperrsNextToken (\s a -> s {_lperrsNextToken = a})

-- | Contains a sorted list of pipeline execution summary objects matching the specified filters. Each run summary includes the Amazon Resource Name (ARN) of the pipeline execution, the run date, and the status. This list can be empty.
lperrsPipelineExecutionSummaries :: Lens' ListPipelineExecutionsResponse [PipelineExecutionSummary]
lperrsPipelineExecutionSummaries = lens _lperrsPipelineExecutionSummaries (\s a -> s {_lperrsPipelineExecutionSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lperrsResponseStatus :: Lens' ListPipelineExecutionsResponse Int
lperrsResponseStatus = lens _lperrsResponseStatus (\s a -> s {_lperrsResponseStatus = a})

instance NFData ListPipelineExecutionsResponse
