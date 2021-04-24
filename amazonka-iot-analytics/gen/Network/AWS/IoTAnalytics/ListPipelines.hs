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
-- Module      : Network.AWS.IoTAnalytics.ListPipelines
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of pipelines.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoTAnalytics.ListPipelines
  ( -- * Creating a Request
    listPipelines,
    ListPipelines,

    -- * Request Lenses
    lpNextToken,
    lpMaxResults,

    -- * Destructuring the Response
    listPipelinesResponse,
    ListPipelinesResponse,

    -- * Response Lenses
    lprrsNextToken,
    lprrsPipelineSummaries,
    lprrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPipelines' smart constructor.
data ListPipelines = ListPipelines'
  { _lpNextToken ::
      !(Maybe Text),
    _lpMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPipelines' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpNextToken' - The token for the next set of results.
--
-- * 'lpMaxResults' - The maximum number of results to return in this request. The default value is 100.
listPipelines ::
  ListPipelines
listPipelines =
  ListPipelines'
    { _lpNextToken = Nothing,
      _lpMaxResults = Nothing
    }

-- | The token for the next set of results.
lpNextToken :: Lens' ListPipelines (Maybe Text)
lpNextToken = lens _lpNextToken (\s a -> s {_lpNextToken = a})

-- | The maximum number of results to return in this request. The default value is 100.
lpMaxResults :: Lens' ListPipelines (Maybe Natural)
lpMaxResults = lens _lpMaxResults (\s a -> s {_lpMaxResults = a}) . mapping _Nat

instance AWSPager ListPipelines where
  page rq rs
    | stop (rs ^. lprrsNextToken) = Nothing
    | stop (rs ^. lprrsPipelineSummaries) = Nothing
    | otherwise =
      Just $ rq & lpNextToken .~ rs ^. lprrsNextToken

instance AWSRequest ListPipelines where
  type Rs ListPipelines = ListPipelinesResponse
  request = get ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          ListPipelinesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "pipelineSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPipelines

instance NFData ListPipelines

instance ToHeaders ListPipelines where
  toHeaders = const mempty

instance ToPath ListPipelines where
  toPath = const "/pipelines"

instance ToQuery ListPipelines where
  toQuery ListPipelines' {..} =
    mconcat
      [ "nextToken" =: _lpNextToken,
        "maxResults" =: _lpMaxResults
      ]

-- | /See:/ 'listPipelinesResponse' smart constructor.
data ListPipelinesResponse = ListPipelinesResponse'
  { _lprrsNextToken ::
      !(Maybe Text),
    _lprrsPipelineSummaries ::
      !(Maybe [PipelineSummary]),
    _lprrsResponseStatus ::
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
-- * 'lprrsNextToken' - The token to retrieve the next set of results, or @null@ if there are no more results.
--
-- * 'lprrsPipelineSummaries' - A list of @PipelineSummary@ objects.
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listPipelinesResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPipelinesResponse
listPipelinesResponse pResponseStatus_ =
  ListPipelinesResponse'
    { _lprrsNextToken = Nothing,
      _lprrsPipelineSummaries = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | The token to retrieve the next set of results, or @null@ if there are no more results.
lprrsNextToken :: Lens' ListPipelinesResponse (Maybe Text)
lprrsNextToken = lens _lprrsNextToken (\s a -> s {_lprrsNextToken = a})

-- | A list of @PipelineSummary@ objects.
lprrsPipelineSummaries :: Lens' ListPipelinesResponse [PipelineSummary]
lprrsPipelineSummaries = lens _lprrsPipelineSummaries (\s a -> s {_lprrsPipelineSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPipelinesResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListPipelinesResponse
