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
-- Module      : Network.AWS.DataPipeline.DescribeObjects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of a set of fields that define the properties of the object.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DataPipeline.DescribeObjects
  ( -- * Creating a Request
    describeObjects,
    DescribeObjects,

    -- * Request Lenses
    doMarker,
    doEvaluateExpressions,
    doPipelineId,
    doObjectIds,

    -- * Destructuring the Response
    describeObjectsResponse,
    DescribeObjectsResponse,

    -- * Response Lenses
    dorrsHasMoreResults,
    dorrsMarker,
    dorrsResponseStatus,
    dorrsPipelineObjects,
  )
where

import Network.AWS.DataPipeline.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeObjects.
--
--
--
-- /See:/ 'describeObjects' smart constructor.
data DescribeObjects = DescribeObjects'
  { _doMarker ::
      !(Maybe Text),
    _doEvaluateExpressions :: !(Maybe Bool),
    _doPipelineId :: !Text,
    _doObjectIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeObjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doMarker' - The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call @DescribeObjects@ with the marker value from the previous call to retrieve the next set of results.
--
-- * 'doEvaluateExpressions' - Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.
--
-- * 'doPipelineId' - The ID of the pipeline that contains the object definitions.
--
-- * 'doObjectIds' - The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to @DescribeObjects@ .
describeObjects ::
  -- | 'doPipelineId'
  Text ->
  DescribeObjects
describeObjects pPipelineId_ =
  DescribeObjects'
    { _doMarker = Nothing,
      _doEvaluateExpressions = Nothing,
      _doPipelineId = pPipelineId_,
      _doObjectIds = mempty
    }

-- | The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call @DescribeObjects@ with the marker value from the previous call to retrieve the next set of results.
doMarker :: Lens' DescribeObjects (Maybe Text)
doMarker = lens _doMarker (\s a -> s {_doMarker = a})

-- | Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.
doEvaluateExpressions :: Lens' DescribeObjects (Maybe Bool)
doEvaluateExpressions = lens _doEvaluateExpressions (\s a -> s {_doEvaluateExpressions = a})

-- | The ID of the pipeline that contains the object definitions.
doPipelineId :: Lens' DescribeObjects Text
doPipelineId = lens _doPipelineId (\s a -> s {_doPipelineId = a})

-- | The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to @DescribeObjects@ .
doObjectIds :: Lens' DescribeObjects [Text]
doObjectIds = lens _doObjectIds (\s a -> s {_doObjectIds = a}) . _Coerce

instance AWSPager DescribeObjects where
  page rq rs
    | stop (rs ^. dorrsHasMoreResults) = Nothing
    | isNothing (rs ^. dorrsMarker) = Nothing
    | otherwise =
      Just $ rq & doMarker .~ rs ^. dorrsMarker

instance AWSRequest DescribeObjects where
  type Rs DescribeObjects = DescribeObjectsResponse
  request = postJSON dataPipeline
  response =
    receiveJSON
      ( \s h x ->
          DescribeObjectsResponse'
            <$> (x .?> "hasMoreResults")
            <*> (x .?> "marker")
            <*> (pure (fromEnum s))
            <*> (x .?> "pipelineObjects" .!@ mempty)
      )

instance Hashable DescribeObjects

instance NFData DescribeObjects

instance ToHeaders DescribeObjects where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DataPipeline.DescribeObjects" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeObjects where
  toJSON DescribeObjects' {..} =
    object
      ( catMaybes
          [ ("marker" .=) <$> _doMarker,
            ("evaluateExpressions" .=)
              <$> _doEvaluateExpressions,
            Just ("pipelineId" .= _doPipelineId),
            Just ("objectIds" .= _doObjectIds)
          ]
      )

instance ToPath DescribeObjects where
  toPath = const "/"

instance ToQuery DescribeObjects where
  toQuery = const mempty

-- | Contains the output of DescribeObjects.
--
--
--
-- /See:/ 'describeObjectsResponse' smart constructor.
data DescribeObjectsResponse = DescribeObjectsResponse'
  { _dorrsHasMoreResults ::
      !(Maybe Bool),
    _dorrsMarker ::
      !(Maybe Text),
    _dorrsResponseStatus ::
      !Int,
    _dorrsPipelineObjects ::
      ![PipelineObject]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeObjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dorrsHasMoreResults' - Indicates whether there are more results to return.
--
-- * 'dorrsMarker' - The starting point for the next page of results. To view the next page of results, call @DescribeObjects@ again with this marker value. If the value is null, there are no more results.
--
-- * 'dorrsResponseStatus' - -- | The response status code.
--
-- * 'dorrsPipelineObjects' - An array of object definitions.
describeObjectsResponse ::
  -- | 'dorrsResponseStatus'
  Int ->
  DescribeObjectsResponse
describeObjectsResponse pResponseStatus_ =
  DescribeObjectsResponse'
    { _dorrsHasMoreResults =
        Nothing,
      _dorrsMarker = Nothing,
      _dorrsResponseStatus = pResponseStatus_,
      _dorrsPipelineObjects = mempty
    }

-- | Indicates whether there are more results to return.
dorrsHasMoreResults :: Lens' DescribeObjectsResponse (Maybe Bool)
dorrsHasMoreResults = lens _dorrsHasMoreResults (\s a -> s {_dorrsHasMoreResults = a})

-- | The starting point for the next page of results. To view the next page of results, call @DescribeObjects@ again with this marker value. If the value is null, there are no more results.
dorrsMarker :: Lens' DescribeObjectsResponse (Maybe Text)
dorrsMarker = lens _dorrsMarker (\s a -> s {_dorrsMarker = a})

-- | -- | The response status code.
dorrsResponseStatus :: Lens' DescribeObjectsResponse Int
dorrsResponseStatus = lens _dorrsResponseStatus (\s a -> s {_dorrsResponseStatus = a})

-- | An array of object definitions.
dorrsPipelineObjects :: Lens' DescribeObjectsResponse [PipelineObject]
dorrsPipelineObjects = lens _dorrsPipelineObjects (\s a -> s {_dorrsPipelineObjects = a}) . _Coerce

instance NFData DescribeObjectsResponse
