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
-- Module      : Network.AWS.DataPipeline.ListPipelines
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the pipeline identifiers for all active pipelines that you have permission to access.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DataPipeline.ListPipelines
  ( -- * Creating a Request
    listPipelines,
    ListPipelines,

    -- * Request Lenses
    lpMarker,

    -- * Destructuring the Response
    listPipelinesResponse,
    ListPipelinesResponse,

    -- * Response Lenses
    lprrsHasMoreResults,
    lprrsMarker,
    lprrsResponseStatus,
    lprrsPipelineIdList,
  )
where

import Network.AWS.DataPipeline.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for ListPipelines.
--
--
--
-- /See:/ 'listPipelines' smart constructor.
newtype ListPipelines = ListPipelines'
  { _lpMarker ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPipelines' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpMarker' - The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call @ListPipelines@ with the marker value from the previous call to retrieve the next set of results.
listPipelines ::
  ListPipelines
listPipelines = ListPipelines' {_lpMarker = Nothing}

-- | The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call @ListPipelines@ with the marker value from the previous call to retrieve the next set of results.
lpMarker :: Lens' ListPipelines (Maybe Text)
lpMarker = lens _lpMarker (\s a -> s {_lpMarker = a})

instance AWSPager ListPipelines where
  page rq rs
    | stop (rs ^. lprrsHasMoreResults) = Nothing
    | isNothing (rs ^. lprrsMarker) = Nothing
    | otherwise =
      Just $ rq & lpMarker .~ rs ^. lprrsMarker

instance AWSRequest ListPipelines where
  type Rs ListPipelines = ListPipelinesResponse
  request = postJSON dataPipeline
  response =
    receiveJSON
      ( \s h x ->
          ListPipelinesResponse'
            <$> (x .?> "hasMoreResults")
            <*> (x .?> "marker")
            <*> (pure (fromEnum s))
            <*> (x .?> "pipelineIdList" .!@ mempty)
      )

instance Hashable ListPipelines

instance NFData ListPipelines

instance ToHeaders ListPipelines where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DataPipeline.ListPipelines" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPipelines where
  toJSON ListPipelines' {..} =
    object (catMaybes [("marker" .=) <$> _lpMarker])

instance ToPath ListPipelines where
  toPath = const "/"

instance ToQuery ListPipelines where
  toQuery = const mempty

-- | Contains the output of ListPipelines.
--
--
--
-- /See:/ 'listPipelinesResponse' smart constructor.
data ListPipelinesResponse = ListPipelinesResponse'
  { _lprrsHasMoreResults ::
      !(Maybe Bool),
    _lprrsMarker ::
      !(Maybe Text),
    _lprrsResponseStatus ::
      !Int,
    _lprrsPipelineIdList ::
      ![PipelineIdName]
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
-- * 'lprrsHasMoreResults' - Indicates whether there are more results that can be obtained by a subsequent call.
--
-- * 'lprrsMarker' - The starting point for the next page of results. To view the next page of results, call @ListPipelinesOutput@ again with this marker value. If the value is null, there are no more results.
--
-- * 'lprrsResponseStatus' - -- | The response status code.
--
-- * 'lprrsPipelineIdList' - The pipeline identifiers. If you require additional information about the pipelines, you can use these identifiers to call 'DescribePipelines' and 'GetPipelineDefinition' .
listPipelinesResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPipelinesResponse
listPipelinesResponse pResponseStatus_ =
  ListPipelinesResponse'
    { _lprrsHasMoreResults =
        Nothing,
      _lprrsMarker = Nothing,
      _lprrsResponseStatus = pResponseStatus_,
      _lprrsPipelineIdList = mempty
    }

-- | Indicates whether there are more results that can be obtained by a subsequent call.
lprrsHasMoreResults :: Lens' ListPipelinesResponse (Maybe Bool)
lprrsHasMoreResults = lens _lprrsHasMoreResults (\s a -> s {_lprrsHasMoreResults = a})

-- | The starting point for the next page of results. To view the next page of results, call @ListPipelinesOutput@ again with this marker value. If the value is null, there are no more results.
lprrsMarker :: Lens' ListPipelinesResponse (Maybe Text)
lprrsMarker = lens _lprrsMarker (\s a -> s {_lprrsMarker = a})

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPipelinesResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

-- | The pipeline identifiers. If you require additional information about the pipelines, you can use these identifiers to call 'DescribePipelines' and 'GetPipelineDefinition' .
lprrsPipelineIdList :: Lens' ListPipelinesResponse [PipelineIdName]
lprrsPipelineIdList = lens _lprrsPipelineIdList (\s a -> s {_lprrsPipelineIdList = a}) . _Coerce

instance NFData ListPipelinesResponse
