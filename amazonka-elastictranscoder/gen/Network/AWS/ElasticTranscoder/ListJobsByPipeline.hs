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
-- Module      : Network.AWS.ElasticTranscoder.ListJobsByPipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline.
--
--
-- Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains one element for each job that satisfies the search criteria.
--
--
-- This operation returns paginated results.
module Network.AWS.ElasticTranscoder.ListJobsByPipeline
  ( -- * Creating a Request
    listJobsByPipeline,
    ListJobsByPipeline,

    -- * Request Lenses
    ljbpAscending,
    ljbpPageToken,
    ljbpPipelineId,

    -- * Destructuring the Response
    listJobsByPipelineResponse,
    ListJobsByPipelineResponse,

    -- * Response Lenses
    ljbprrsNextPageToken,
    ljbprrsJobs,
    ljbprrsResponseStatus,
  )
where

import Network.AWS.ElasticTranscoder.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The @ListJobsByPipelineRequest@ structure.
--
--
--
-- /See:/ 'listJobsByPipeline' smart constructor.
data ListJobsByPipeline = ListJobsByPipeline'
  { _ljbpAscending ::
      !(Maybe Text),
    _ljbpPageToken :: !(Maybe Text),
    _ljbpPipelineId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobsByPipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljbpAscending' - To list jobs in chronological order by the date and time that they were submitted, enter @true@ . To list jobs in reverse chronological order, enter @false@ .
--
-- * 'ljbpPageToken' - When Elastic Transcoder returns more than one page of results, use @pageToken@ in subsequent @GET@ requests to get each successive page of results.
--
-- * 'ljbpPipelineId' - The ID of the pipeline for which you want to get job information.
listJobsByPipeline ::
  -- | 'ljbpPipelineId'
  Text ->
  ListJobsByPipeline
listJobsByPipeline pPipelineId_ =
  ListJobsByPipeline'
    { _ljbpAscending = Nothing,
      _ljbpPageToken = Nothing,
      _ljbpPipelineId = pPipelineId_
    }

-- | To list jobs in chronological order by the date and time that they were submitted, enter @true@ . To list jobs in reverse chronological order, enter @false@ .
ljbpAscending :: Lens' ListJobsByPipeline (Maybe Text)
ljbpAscending = lens _ljbpAscending (\s a -> s {_ljbpAscending = a})

-- | When Elastic Transcoder returns more than one page of results, use @pageToken@ in subsequent @GET@ requests to get each successive page of results.
ljbpPageToken :: Lens' ListJobsByPipeline (Maybe Text)
ljbpPageToken = lens _ljbpPageToken (\s a -> s {_ljbpPageToken = a})

-- | The ID of the pipeline for which you want to get job information.
ljbpPipelineId :: Lens' ListJobsByPipeline Text
ljbpPipelineId = lens _ljbpPipelineId (\s a -> s {_ljbpPipelineId = a})

instance AWSPager ListJobsByPipeline where
  page rq rs
    | stop (rs ^. ljbprrsNextPageToken) = Nothing
    | stop (rs ^. ljbprrsJobs) = Nothing
    | otherwise =
      Just $
        rq
          & ljbpPageToken .~ rs ^. ljbprrsNextPageToken

instance AWSRequest ListJobsByPipeline where
  type
    Rs ListJobsByPipeline =
      ListJobsByPipelineResponse
  request = get elasticTranscoder
  response =
    receiveJSON
      ( \s h x ->
          ListJobsByPipelineResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "Jobs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListJobsByPipeline

instance NFData ListJobsByPipeline

instance ToHeaders ListJobsByPipeline where
  toHeaders = const mempty

instance ToPath ListJobsByPipeline where
  toPath ListJobsByPipeline' {..} =
    mconcat
      ["/2012-09-25/jobsByPipeline/", toBS _ljbpPipelineId]

instance ToQuery ListJobsByPipeline where
  toQuery ListJobsByPipeline' {..} =
    mconcat
      [ "Ascending" =: _ljbpAscending,
        "PageToken" =: _ljbpPageToken
      ]

-- | The @ListJobsByPipelineResponse@ structure.
--
--
--
-- /See:/ 'listJobsByPipelineResponse' smart constructor.
data ListJobsByPipelineResponse = ListJobsByPipelineResponse'
  { _ljbprrsNextPageToken ::
      !(Maybe Text),
    _ljbprrsJobs ::
      !(Maybe [Job']),
    _ljbprrsResponseStatus ::
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

-- | Creates a value of 'ListJobsByPipelineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljbprrsNextPageToken' - A value that you use to access the second and subsequent pages of results, if any. When the jobs in the specified pipeline fit on one page or when you've reached the last page of results, the value of @NextPageToken@ is @null@ .
--
-- * 'ljbprrsJobs' - An array of @Job@ objects that are in the specified pipeline.
--
-- * 'ljbprrsResponseStatus' - -- | The response status code.
listJobsByPipelineResponse ::
  -- | 'ljbprrsResponseStatus'
  Int ->
  ListJobsByPipelineResponse
listJobsByPipelineResponse pResponseStatus_ =
  ListJobsByPipelineResponse'
    { _ljbprrsNextPageToken =
        Nothing,
      _ljbprrsJobs = Nothing,
      _ljbprrsResponseStatus = pResponseStatus_
    }

-- | A value that you use to access the second and subsequent pages of results, if any. When the jobs in the specified pipeline fit on one page or when you've reached the last page of results, the value of @NextPageToken@ is @null@ .
ljbprrsNextPageToken :: Lens' ListJobsByPipelineResponse (Maybe Text)
ljbprrsNextPageToken = lens _ljbprrsNextPageToken (\s a -> s {_ljbprrsNextPageToken = a})

-- | An array of @Job@ objects that are in the specified pipeline.
ljbprrsJobs :: Lens' ListJobsByPipelineResponse [Job']
ljbprrsJobs = lens _ljbprrsJobs (\s a -> s {_ljbprrsJobs = a}) . _Default . _Coerce

-- | -- | The response status code.
ljbprrsResponseStatus :: Lens' ListJobsByPipelineResponse Int
ljbprrsResponseStatus = lens _ljbprrsResponseStatus (\s a -> s {_ljbprrsResponseStatus = a})

instance NFData ListJobsByPipelineResponse
