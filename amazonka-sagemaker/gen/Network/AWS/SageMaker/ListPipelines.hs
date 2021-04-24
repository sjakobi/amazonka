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
-- Module      : Network.AWS.SageMaker.ListPipelines
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of pipelines.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListPipelines
  ( -- * Creating a Request
    listPipelines,
    ListPipelines,

    -- * Request Lenses
    lpsCreatedAfter,
    lpsSortOrder,
    lpsNextToken,
    lpsCreatedBefore,
    lpsMaxResults,
    lpsSortBy,
    lpsPipelineNamePrefix,

    -- * Destructuring the Response
    listPipelinesResponse,
    ListPipelinesResponse,

    -- * Response Lenses
    lprprsNextToken,
    lprprsPipelineSummaries,
    lprprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listPipelines' smart constructor.
data ListPipelines = ListPipelines'
  { _lpsCreatedAfter ::
      !(Maybe POSIX),
    _lpsSortOrder :: !(Maybe SortOrder),
    _lpsNextToken :: !(Maybe Text),
    _lpsCreatedBefore :: !(Maybe POSIX),
    _lpsMaxResults :: !(Maybe Nat),
    _lpsSortBy :: !(Maybe SortPipelinesBy),
    _lpsPipelineNamePrefix :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPipelines' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpsCreatedAfter' - A filter that returns the pipelines that were created after a specified time.
--
-- * 'lpsSortOrder' - The sort order for results.
--
-- * 'lpsNextToken' - If the result of the previous @ListPipelines@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipelines, use the token in the next request.
--
-- * 'lpsCreatedBefore' - A filter that returns the pipelines that were created before a specified time.
--
-- * 'lpsMaxResults' - The maximum number of pipelines to return in the response.
--
-- * 'lpsSortBy' - The field by which to sort results. The default is @CreatedTime@ .
--
-- * 'lpsPipelineNamePrefix' - The prefix of the pipeline name.
listPipelines ::
  ListPipelines
listPipelines =
  ListPipelines'
    { _lpsCreatedAfter = Nothing,
      _lpsSortOrder = Nothing,
      _lpsNextToken = Nothing,
      _lpsCreatedBefore = Nothing,
      _lpsMaxResults = Nothing,
      _lpsSortBy = Nothing,
      _lpsPipelineNamePrefix = Nothing
    }

-- | A filter that returns the pipelines that were created after a specified time.
lpsCreatedAfter :: Lens' ListPipelines (Maybe UTCTime)
lpsCreatedAfter = lens _lpsCreatedAfter (\s a -> s {_lpsCreatedAfter = a}) . mapping _Time

-- | The sort order for results.
lpsSortOrder :: Lens' ListPipelines (Maybe SortOrder)
lpsSortOrder = lens _lpsSortOrder (\s a -> s {_lpsSortOrder = a})

-- | If the result of the previous @ListPipelines@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipelines, use the token in the next request.
lpsNextToken :: Lens' ListPipelines (Maybe Text)
lpsNextToken = lens _lpsNextToken (\s a -> s {_lpsNextToken = a})

-- | A filter that returns the pipelines that were created before a specified time.
lpsCreatedBefore :: Lens' ListPipelines (Maybe UTCTime)
lpsCreatedBefore = lens _lpsCreatedBefore (\s a -> s {_lpsCreatedBefore = a}) . mapping _Time

-- | The maximum number of pipelines to return in the response.
lpsMaxResults :: Lens' ListPipelines (Maybe Natural)
lpsMaxResults = lens _lpsMaxResults (\s a -> s {_lpsMaxResults = a}) . mapping _Nat

-- | The field by which to sort results. The default is @CreatedTime@ .
lpsSortBy :: Lens' ListPipelines (Maybe SortPipelinesBy)
lpsSortBy = lens _lpsSortBy (\s a -> s {_lpsSortBy = a})

-- | The prefix of the pipeline name.
lpsPipelineNamePrefix :: Lens' ListPipelines (Maybe Text)
lpsPipelineNamePrefix = lens _lpsPipelineNamePrefix (\s a -> s {_lpsPipelineNamePrefix = a})

instance AWSPager ListPipelines where
  page rq rs
    | stop (rs ^. lprprsNextToken) = Nothing
    | stop (rs ^. lprprsPipelineSummaries) = Nothing
    | otherwise =
      Just $ rq & lpsNextToken .~ rs ^. lprprsNextToken

instance AWSRequest ListPipelines where
  type Rs ListPipelines = ListPipelinesResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListPipelinesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PipelineSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPipelines

instance NFData ListPipelines

instance ToHeaders ListPipelines where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListPipelines" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPipelines where
  toJSON ListPipelines' {..} =
    object
      ( catMaybes
          [ ("CreatedAfter" .=) <$> _lpsCreatedAfter,
            ("SortOrder" .=) <$> _lpsSortOrder,
            ("NextToken" .=) <$> _lpsNextToken,
            ("CreatedBefore" .=) <$> _lpsCreatedBefore,
            ("MaxResults" .=) <$> _lpsMaxResults,
            ("SortBy" .=) <$> _lpsSortBy,
            ("PipelineNamePrefix" .=)
              <$> _lpsPipelineNamePrefix
          ]
      )

instance ToPath ListPipelines where
  toPath = const "/"

instance ToQuery ListPipelines where
  toQuery = const mempty

-- | /See:/ 'listPipelinesResponse' smart constructor.
data ListPipelinesResponse = ListPipelinesResponse'
  { _lprprsNextToken ::
      !(Maybe Text),
    _lprprsPipelineSummaries ::
      !(Maybe [PipelineSummary]),
    _lprprsResponseStatus ::
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

-- | Creates a value of 'ListPipelinesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprprsNextToken' - If the result of the previous @ListPipelines@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipelines, use the token in the next request.
--
-- * 'lprprsPipelineSummaries' - Contains a sorted list of @PipelineSummary@ objects matching the specified filters. Each @PipelineSummary@ consists of PipelineArn, PipelineName, ExperimentName, PipelineDescription, CreationTime, LastModifiedTime, LastRunTime, and RoleArn. This list can be empty.
--
-- * 'lprprsResponseStatus' - -- | The response status code.
listPipelinesResponse ::
  -- | 'lprprsResponseStatus'
  Int ->
  ListPipelinesResponse
listPipelinesResponse pResponseStatus_ =
  ListPipelinesResponse'
    { _lprprsNextToken = Nothing,
      _lprprsPipelineSummaries = Nothing,
      _lprprsResponseStatus = pResponseStatus_
    }

-- | If the result of the previous @ListPipelines@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipelines, use the token in the next request.
lprprsNextToken :: Lens' ListPipelinesResponse (Maybe Text)
lprprsNextToken = lens _lprprsNextToken (\s a -> s {_lprprsNextToken = a})

-- | Contains a sorted list of @PipelineSummary@ objects matching the specified filters. Each @PipelineSummary@ consists of PipelineArn, PipelineName, ExperimentName, PipelineDescription, CreationTime, LastModifiedTime, LastRunTime, and RoleArn. This list can be empty.
lprprsPipelineSummaries :: Lens' ListPipelinesResponse [PipelineSummary]
lprprsPipelineSummaries = lens _lprprsPipelineSummaries (\s a -> s {_lprprsPipelineSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lprprsResponseStatus :: Lens' ListPipelinesResponse Int
lprprsResponseStatus = lens _lprprsResponseStatus (\s a -> s {_lprprsResponseStatus = a})

instance NFData ListPipelinesResponse
