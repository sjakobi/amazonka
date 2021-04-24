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
-- Module      : Network.AWS.ElasticTranscoder.ListPipelines
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The ListPipelines operation gets a list of the pipelines associated with the current AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElasticTranscoder.ListPipelines
  ( -- * Creating a Request
    listPipelines,
    ListPipelines,

    -- * Request Lenses
    lAscending,
    lPageToken,

    -- * Destructuring the Response
    listPipelinesResponse,
    ListPipelinesResponse,

    -- * Response Lenses
    lrsNextPageToken,
    lrsPipelines,
    lrsResponseStatus,
  )
where

import Network.AWS.ElasticTranscoder.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The @ListPipelineRequest@ structure.
--
--
--
-- /See:/ 'listPipelines' smart constructor.
data ListPipelines = ListPipelines'
  { _lAscending ::
      !(Maybe Text),
    _lPageToken :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPipelines' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lAscending' - To list pipelines in chronological order by the date and time that they were created, enter @true@ . To list pipelines in reverse chronological order, enter @false@ .
--
-- * 'lPageToken' - When Elastic Transcoder returns more than one page of results, use @pageToken@ in subsequent @GET@ requests to get each successive page of results.
listPipelines ::
  ListPipelines
listPipelines =
  ListPipelines'
    { _lAscending = Nothing,
      _lPageToken = Nothing
    }

-- | To list pipelines in chronological order by the date and time that they were created, enter @true@ . To list pipelines in reverse chronological order, enter @false@ .
lAscending :: Lens' ListPipelines (Maybe Text)
lAscending = lens _lAscending (\s a -> s {_lAscending = a})

-- | When Elastic Transcoder returns more than one page of results, use @pageToken@ in subsequent @GET@ requests to get each successive page of results.
lPageToken :: Lens' ListPipelines (Maybe Text)
lPageToken = lens _lPageToken (\s a -> s {_lPageToken = a})

instance AWSPager ListPipelines where
  page rq rs
    | stop (rs ^. lrsNextPageToken) = Nothing
    | stop (rs ^. lrsPipelines) = Nothing
    | otherwise =
      Just $ rq & lPageToken .~ rs ^. lrsNextPageToken

instance AWSRequest ListPipelines where
  type Rs ListPipelines = ListPipelinesResponse
  request = get elasticTranscoder
  response =
    receiveJSON
      ( \s h x ->
          ListPipelinesResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "Pipelines" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPipelines

instance NFData ListPipelines

instance ToHeaders ListPipelines where
  toHeaders = const mempty

instance ToPath ListPipelines where
  toPath = const "/2012-09-25/pipelines"

instance ToQuery ListPipelines where
  toQuery ListPipelines' {..} =
    mconcat
      [ "Ascending" =: _lAscending,
        "PageToken" =: _lPageToken
      ]

-- | A list of the pipelines associated with the current AWS account.
--
--
--
-- /See:/ 'listPipelinesResponse' smart constructor.
data ListPipelinesResponse = ListPipelinesResponse'
  { _lrsNextPageToken ::
      !(Maybe Text),
    _lrsPipelines ::
      !(Maybe [Pipeline]),
    _lrsResponseStatus :: !Int
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
-- * 'lrsNextPageToken' - A value that you use to access the second and subsequent pages of results, if any. When the pipelines fit on one page or when you've reached the last page of results, the value of @NextPageToken@ is @null@ .
--
-- * 'lrsPipelines' - An array of @Pipeline@ objects.
--
-- * 'lrsResponseStatus' - -- | The response status code.
listPipelinesResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListPipelinesResponse
listPipelinesResponse pResponseStatus_ =
  ListPipelinesResponse'
    { _lrsNextPageToken = Nothing,
      _lrsPipelines = Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | A value that you use to access the second and subsequent pages of results, if any. When the pipelines fit on one page or when you've reached the last page of results, the value of @NextPageToken@ is @null@ .
lrsNextPageToken :: Lens' ListPipelinesResponse (Maybe Text)
lrsNextPageToken = lens _lrsNextPageToken (\s a -> s {_lrsNextPageToken = a})

-- | An array of @Pipeline@ objects.
lrsPipelines :: Lens' ListPipelinesResponse [Pipeline]
lrsPipelines = lens _lrsPipelines (\s a -> s {_lrsPipelines = a}) . _Default . _Coerce

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListPipelinesResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListPipelinesResponse
