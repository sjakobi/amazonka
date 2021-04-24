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
-- Module      : Network.AWS.DataPipeline.QueryObjects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries the specified pipeline for the names of objects that match the specified set of conditions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DataPipeline.QueryObjects
  ( -- * Creating a Request
    queryObjects,
    QueryObjects,

    -- * Request Lenses
    qoQuery,
    qoLimit,
    qoMarker,
    qoPipelineId,
    qoSphere,

    -- * Destructuring the Response
    queryObjectsResponse,
    QueryObjectsResponse,

    -- * Response Lenses
    qorrsIds,
    qorrsHasMoreResults,
    qorrsMarker,
    qorrsResponseStatus,
  )
where

import Network.AWS.DataPipeline.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for QueryObjects.
--
--
--
-- /See:/ 'queryObjects' smart constructor.
data QueryObjects = QueryObjects'
  { _qoQuery ::
      !(Maybe Query),
    _qoLimit :: !(Maybe Int),
    _qoMarker :: !(Maybe Text),
    _qoPipelineId :: !Text,
    _qoSphere :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryObjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qoQuery' - The query that defines the objects to be returned. The @Query@ object can contain a maximum of ten selectors. The conditions in the query are limited to top-level String fields in the object. These filters can be applied to components, instances, and attempts.
--
-- * 'qoLimit' - The maximum number of object names that @QueryObjects@ will return in a single call. The default value is 100.
--
-- * 'qoMarker' - The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call @QueryObjects@ with the marker value from the previous call to retrieve the next set of results.
--
-- * 'qoPipelineId' - The ID of the pipeline.
--
-- * 'qoSphere' - Indicates whether the query applies to components or instances. The possible values are: @COMPONENT@ , @INSTANCE@ , and @ATTEMPT@ .
queryObjects ::
  -- | 'qoPipelineId'
  Text ->
  -- | 'qoSphere'
  Text ->
  QueryObjects
queryObjects pPipelineId_ pSphere_ =
  QueryObjects'
    { _qoQuery = Nothing,
      _qoLimit = Nothing,
      _qoMarker = Nothing,
      _qoPipelineId = pPipelineId_,
      _qoSphere = pSphere_
    }

-- | The query that defines the objects to be returned. The @Query@ object can contain a maximum of ten selectors. The conditions in the query are limited to top-level String fields in the object. These filters can be applied to components, instances, and attempts.
qoQuery :: Lens' QueryObjects (Maybe Query)
qoQuery = lens _qoQuery (\s a -> s {_qoQuery = a})

-- | The maximum number of object names that @QueryObjects@ will return in a single call. The default value is 100.
qoLimit :: Lens' QueryObjects (Maybe Int)
qoLimit = lens _qoLimit (\s a -> s {_qoLimit = a})

-- | The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call @QueryObjects@ with the marker value from the previous call to retrieve the next set of results.
qoMarker :: Lens' QueryObjects (Maybe Text)
qoMarker = lens _qoMarker (\s a -> s {_qoMarker = a})

-- | The ID of the pipeline.
qoPipelineId :: Lens' QueryObjects Text
qoPipelineId = lens _qoPipelineId (\s a -> s {_qoPipelineId = a})

-- | Indicates whether the query applies to components or instances. The possible values are: @COMPONENT@ , @INSTANCE@ , and @ATTEMPT@ .
qoSphere :: Lens' QueryObjects Text
qoSphere = lens _qoSphere (\s a -> s {_qoSphere = a})

instance AWSPager QueryObjects where
  page rq rs
    | stop (rs ^. qorrsHasMoreResults) = Nothing
    | isNothing (rs ^. qorrsMarker) = Nothing
    | otherwise =
      Just $ rq & qoMarker .~ rs ^. qorrsMarker

instance AWSRequest QueryObjects where
  type Rs QueryObjects = QueryObjectsResponse
  request = postJSON dataPipeline
  response =
    receiveJSON
      ( \s h x ->
          QueryObjectsResponse'
            <$> (x .?> "ids" .!@ mempty)
            <*> (x .?> "hasMoreResults")
            <*> (x .?> "marker")
            <*> (pure (fromEnum s))
      )

instance Hashable QueryObjects

instance NFData QueryObjects

instance ToHeaders QueryObjects where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DataPipeline.QueryObjects" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON QueryObjects where
  toJSON QueryObjects' {..} =
    object
      ( catMaybes
          [ ("query" .=) <$> _qoQuery,
            ("limit" .=) <$> _qoLimit,
            ("marker" .=) <$> _qoMarker,
            Just ("pipelineId" .= _qoPipelineId),
            Just ("sphere" .= _qoSphere)
          ]
      )

instance ToPath QueryObjects where
  toPath = const "/"

instance ToQuery QueryObjects where
  toQuery = const mempty

-- | Contains the output of QueryObjects.
--
--
--
-- /See:/ 'queryObjectsResponse' smart constructor.
data QueryObjectsResponse = QueryObjectsResponse'
  { _qorrsIds ::
      !(Maybe [Text]),
    _qorrsHasMoreResults ::
      !(Maybe Bool),
    _qorrsMarker :: !(Maybe Text),
    _qorrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryObjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qorrsIds' - The identifiers that match the query selectors.
--
-- * 'qorrsHasMoreResults' - Indicates whether there are more results that can be obtained by a subsequent call.
--
-- * 'qorrsMarker' - The starting point for the next page of results. To view the next page of results, call @QueryObjects@ again with this marker value. If the value is null, there are no more results.
--
-- * 'qorrsResponseStatus' - -- | The response status code.
queryObjectsResponse ::
  -- | 'qorrsResponseStatus'
  Int ->
  QueryObjectsResponse
queryObjectsResponse pResponseStatus_ =
  QueryObjectsResponse'
    { _qorrsIds = Nothing,
      _qorrsHasMoreResults = Nothing,
      _qorrsMarker = Nothing,
      _qorrsResponseStatus = pResponseStatus_
    }

-- | The identifiers that match the query selectors.
qorrsIds :: Lens' QueryObjectsResponse [Text]
qorrsIds = lens _qorrsIds (\s a -> s {_qorrsIds = a}) . _Default . _Coerce

-- | Indicates whether there are more results that can be obtained by a subsequent call.
qorrsHasMoreResults :: Lens' QueryObjectsResponse (Maybe Bool)
qorrsHasMoreResults = lens _qorrsHasMoreResults (\s a -> s {_qorrsHasMoreResults = a})

-- | The starting point for the next page of results. To view the next page of results, call @QueryObjects@ again with this marker value. If the value is null, there are no more results.
qorrsMarker :: Lens' QueryObjectsResponse (Maybe Text)
qorrsMarker = lens _qorrsMarker (\s a -> s {_qorrsMarker = a})

-- | -- | The response status code.
qorrsResponseStatus :: Lens' QueryObjectsResponse Int
qorrsResponseStatus = lens _qorrsResponseStatus (\s a -> s {_qorrsResponseStatus = a})

instance NFData QueryObjectsResponse
