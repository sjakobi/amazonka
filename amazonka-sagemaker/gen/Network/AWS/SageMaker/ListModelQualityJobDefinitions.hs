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
-- Module      : Network.AWS.SageMaker.ListModelQualityJobDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of model quality monitoring job definitions in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListModelQualityJobDefinitions
  ( -- * Creating a Request
    listModelQualityJobDefinitions,
    ListModelQualityJobDefinitions,

    -- * Request Lenses
    lmqjdSortOrder,
    lmqjdNextToken,
    lmqjdEndpointName,
    lmqjdNameContains,
    lmqjdMaxResults,
    lmqjdCreationTimeBefore,
    lmqjdSortBy,
    lmqjdCreationTimeAfter,

    -- * Destructuring the Response
    listModelQualityJobDefinitionsResponse,
    ListModelQualityJobDefinitionsResponse,

    -- * Response Lenses
    lmqjdrrsNextToken,
    lmqjdrrsResponseStatus,
    lmqjdrrsJobDefinitionSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listModelQualityJobDefinitions' smart constructor.
data ListModelQualityJobDefinitions = ListModelQualityJobDefinitions'
  { _lmqjdSortOrder ::
      !( Maybe
           SortOrder
       ),
    _lmqjdNextToken ::
      !( Maybe
           Text
       ),
    _lmqjdEndpointName ::
      !( Maybe
           Text
       ),
    _lmqjdNameContains ::
      !( Maybe
           Text
       ),
    _lmqjdMaxResults ::
      !( Maybe
           Nat
       ),
    _lmqjdCreationTimeBefore ::
      !( Maybe
           POSIX
       ),
    _lmqjdSortBy ::
      !( Maybe
           MonitoringJobDefinitionSortKey
       ),
    _lmqjdCreationTimeAfter ::
      !( Maybe
           POSIX
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListModelQualityJobDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmqjdSortOrder' - The sort order for results. The default is @Descending@ .
--
-- * 'lmqjdNextToken' - If the result of the previous @ListModelQualityJobDefinitions@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of model quality monitoring job definitions, use the token in the next request.
--
-- * 'lmqjdEndpointName' - A filter that returns only model quality monitoring job definitions that are associated with the specified endpoint.
--
-- * 'lmqjdNameContains' - A string in the transform job name. This filter returns only model quality monitoring job definitions whose name contains the specified string.
--
-- * 'lmqjdMaxResults' - The maximum number of results to return in a call to @ListModelQualityJobDefinitions@ .
--
-- * 'lmqjdCreationTimeBefore' - A filter that returns only model quality monitoring job definitions created before the specified time.
--
-- * 'lmqjdSortBy' - The field to sort results by. The default is @CreationTime@ .
--
-- * 'lmqjdCreationTimeAfter' - A filter that returns only model quality monitoring job definitions created after the specified time.
listModelQualityJobDefinitions ::
  ListModelQualityJobDefinitions
listModelQualityJobDefinitions =
  ListModelQualityJobDefinitions'
    { _lmqjdSortOrder =
        Nothing,
      _lmqjdNextToken = Nothing,
      _lmqjdEndpointName = Nothing,
      _lmqjdNameContains = Nothing,
      _lmqjdMaxResults = Nothing,
      _lmqjdCreationTimeBefore = Nothing,
      _lmqjdSortBy = Nothing,
      _lmqjdCreationTimeAfter = Nothing
    }

-- | The sort order for results. The default is @Descending@ .
lmqjdSortOrder :: Lens' ListModelQualityJobDefinitions (Maybe SortOrder)
lmqjdSortOrder = lens _lmqjdSortOrder (\s a -> s {_lmqjdSortOrder = a})

-- | If the result of the previous @ListModelQualityJobDefinitions@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of model quality monitoring job definitions, use the token in the next request.
lmqjdNextToken :: Lens' ListModelQualityJobDefinitions (Maybe Text)
lmqjdNextToken = lens _lmqjdNextToken (\s a -> s {_lmqjdNextToken = a})

-- | A filter that returns only model quality monitoring job definitions that are associated with the specified endpoint.
lmqjdEndpointName :: Lens' ListModelQualityJobDefinitions (Maybe Text)
lmqjdEndpointName = lens _lmqjdEndpointName (\s a -> s {_lmqjdEndpointName = a})

-- | A string in the transform job name. This filter returns only model quality monitoring job definitions whose name contains the specified string.
lmqjdNameContains :: Lens' ListModelQualityJobDefinitions (Maybe Text)
lmqjdNameContains = lens _lmqjdNameContains (\s a -> s {_lmqjdNameContains = a})

-- | The maximum number of results to return in a call to @ListModelQualityJobDefinitions@ .
lmqjdMaxResults :: Lens' ListModelQualityJobDefinitions (Maybe Natural)
lmqjdMaxResults = lens _lmqjdMaxResults (\s a -> s {_lmqjdMaxResults = a}) . mapping _Nat

-- | A filter that returns only model quality monitoring job definitions created before the specified time.
lmqjdCreationTimeBefore :: Lens' ListModelQualityJobDefinitions (Maybe UTCTime)
lmqjdCreationTimeBefore = lens _lmqjdCreationTimeBefore (\s a -> s {_lmqjdCreationTimeBefore = a}) . mapping _Time

-- | The field to sort results by. The default is @CreationTime@ .
lmqjdSortBy :: Lens' ListModelQualityJobDefinitions (Maybe MonitoringJobDefinitionSortKey)
lmqjdSortBy = lens _lmqjdSortBy (\s a -> s {_lmqjdSortBy = a})

-- | A filter that returns only model quality monitoring job definitions created after the specified time.
lmqjdCreationTimeAfter :: Lens' ListModelQualityJobDefinitions (Maybe UTCTime)
lmqjdCreationTimeAfter = lens _lmqjdCreationTimeAfter (\s a -> s {_lmqjdCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListModelQualityJobDefinitions where
  page rq rs
    | stop (rs ^. lmqjdrrsNextToken) = Nothing
    | stop (rs ^. lmqjdrrsJobDefinitionSummaries) =
      Nothing
    | otherwise =
      Just $ rq & lmqjdNextToken .~ rs ^. lmqjdrrsNextToken

instance AWSRequest ListModelQualityJobDefinitions where
  type
    Rs ListModelQualityJobDefinitions =
      ListModelQualityJobDefinitionsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListModelQualityJobDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "JobDefinitionSummaries" .!@ mempty)
      )

instance Hashable ListModelQualityJobDefinitions

instance NFData ListModelQualityJobDefinitions

instance ToHeaders ListModelQualityJobDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListModelQualityJobDefinitions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListModelQualityJobDefinitions where
  toJSON ListModelQualityJobDefinitions' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lmqjdSortOrder,
            ("NextToken" .=) <$> _lmqjdNextToken,
            ("EndpointName" .=) <$> _lmqjdEndpointName,
            ("NameContains" .=) <$> _lmqjdNameContains,
            ("MaxResults" .=) <$> _lmqjdMaxResults,
            ("CreationTimeBefore" .=)
              <$> _lmqjdCreationTimeBefore,
            ("SortBy" .=) <$> _lmqjdSortBy,
            ("CreationTimeAfter" .=)
              <$> _lmqjdCreationTimeAfter
          ]
      )

instance ToPath ListModelQualityJobDefinitions where
  toPath = const "/"

instance ToQuery ListModelQualityJobDefinitions where
  toQuery = const mempty

-- | /See:/ 'listModelQualityJobDefinitionsResponse' smart constructor.
data ListModelQualityJobDefinitionsResponse = ListModelQualityJobDefinitionsResponse'
  { _lmqjdrrsNextToken ::
      !( Maybe
           Text
       ),
    _lmqjdrrsResponseStatus ::
      !Int,
    _lmqjdrrsJobDefinitionSummaries ::
      ![MonitoringJobDefinitionSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListModelQualityJobDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmqjdrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of model quality monitoring job definitions, use it in the next request.
--
-- * 'lmqjdrrsResponseStatus' - -- | The response status code.
--
-- * 'lmqjdrrsJobDefinitionSummaries' - A list of summaries of model quality monitoring job definitions.
listModelQualityJobDefinitionsResponse ::
  -- | 'lmqjdrrsResponseStatus'
  Int ->
  ListModelQualityJobDefinitionsResponse
listModelQualityJobDefinitionsResponse
  pResponseStatus_ =
    ListModelQualityJobDefinitionsResponse'
      { _lmqjdrrsNextToken =
          Nothing,
        _lmqjdrrsResponseStatus =
          pResponseStatus_,
        _lmqjdrrsJobDefinitionSummaries =
          mempty
      }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of model quality monitoring job definitions, use it in the next request.
lmqjdrrsNextToken :: Lens' ListModelQualityJobDefinitionsResponse (Maybe Text)
lmqjdrrsNextToken = lens _lmqjdrrsNextToken (\s a -> s {_lmqjdrrsNextToken = a})

-- | -- | The response status code.
lmqjdrrsResponseStatus :: Lens' ListModelQualityJobDefinitionsResponse Int
lmqjdrrsResponseStatus = lens _lmqjdrrsResponseStatus (\s a -> s {_lmqjdrrsResponseStatus = a})

-- | A list of summaries of model quality monitoring job definitions.
lmqjdrrsJobDefinitionSummaries :: Lens' ListModelQualityJobDefinitionsResponse [MonitoringJobDefinitionSummary]
lmqjdrrsJobDefinitionSummaries = lens _lmqjdrrsJobDefinitionSummaries (\s a -> s {_lmqjdrrsJobDefinitionSummaries = a}) . _Coerce

instance
  NFData
    ListModelQualityJobDefinitionsResponse
