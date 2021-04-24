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
-- Module      : Network.AWS.SageMaker.ListModelExplainabilityJobDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists model explainability job definitions that satisfy various filters.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListModelExplainabilityJobDefinitions
  ( -- * Creating a Request
    listModelExplainabilityJobDefinitions,
    ListModelExplainabilityJobDefinitions,

    -- * Request Lenses
    lmejdSortOrder,
    lmejdNextToken,
    lmejdEndpointName,
    lmejdNameContains,
    lmejdMaxResults,
    lmejdCreationTimeBefore,
    lmejdSortBy,
    lmejdCreationTimeAfter,

    -- * Destructuring the Response
    listModelExplainabilityJobDefinitionsResponse,
    ListModelExplainabilityJobDefinitionsResponse,

    -- * Response Lenses
    lmejdrrsNextToken,
    lmejdrrsResponseStatus,
    lmejdrrsJobDefinitionSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listModelExplainabilityJobDefinitions' smart constructor.
data ListModelExplainabilityJobDefinitions = ListModelExplainabilityJobDefinitions'
  { _lmejdSortOrder ::
      !( Maybe
           SortOrder
       ),
    _lmejdNextToken ::
      !( Maybe
           Text
       ),
    _lmejdEndpointName ::
      !( Maybe
           Text
       ),
    _lmejdNameContains ::
      !( Maybe
           Text
       ),
    _lmejdMaxResults ::
      !( Maybe
           Nat
       ),
    _lmejdCreationTimeBefore ::
      !( Maybe
           POSIX
       ),
    _lmejdSortBy ::
      !( Maybe
           MonitoringJobDefinitionSortKey
       ),
    _lmejdCreationTimeAfter ::
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

-- | Creates a value of 'ListModelExplainabilityJobDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmejdSortOrder' - Whether to sort the results in @Ascending@ or @Descending@ order. The default is @Descending@ .
--
-- * 'lmejdNextToken' - The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.
--
-- * 'lmejdEndpointName' - Name of the endpoint to monitor for model explainability.
--
-- * 'lmejdNameContains' - Filter for model explainability jobs whose name contains a specified string.
--
-- * 'lmejdMaxResults' - The maximum number of jobs to return in the response. The default value is 10.
--
-- * 'lmejdCreationTimeBefore' - A filter that returns only model explainability jobs created before a specified time.
--
-- * 'lmejdSortBy' - Whether to sort results by the @Name@ or @CreationTime@ field. The default is @CreationTime@ .
--
-- * 'lmejdCreationTimeAfter' - A filter that returns only model explainability jobs created after a specified time.
listModelExplainabilityJobDefinitions ::
  ListModelExplainabilityJobDefinitions
listModelExplainabilityJobDefinitions =
  ListModelExplainabilityJobDefinitions'
    { _lmejdSortOrder =
        Nothing,
      _lmejdNextToken = Nothing,
      _lmejdEndpointName = Nothing,
      _lmejdNameContains = Nothing,
      _lmejdMaxResults = Nothing,
      _lmejdCreationTimeBefore = Nothing,
      _lmejdSortBy = Nothing,
      _lmejdCreationTimeAfter = Nothing
    }

-- | Whether to sort the results in @Ascending@ or @Descending@ order. The default is @Descending@ .
lmejdSortOrder :: Lens' ListModelExplainabilityJobDefinitions (Maybe SortOrder)
lmejdSortOrder = lens _lmejdSortOrder (\s a -> s {_lmejdSortOrder = a})

-- | The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.
lmejdNextToken :: Lens' ListModelExplainabilityJobDefinitions (Maybe Text)
lmejdNextToken = lens _lmejdNextToken (\s a -> s {_lmejdNextToken = a})

-- | Name of the endpoint to monitor for model explainability.
lmejdEndpointName :: Lens' ListModelExplainabilityJobDefinitions (Maybe Text)
lmejdEndpointName = lens _lmejdEndpointName (\s a -> s {_lmejdEndpointName = a})

-- | Filter for model explainability jobs whose name contains a specified string.
lmejdNameContains :: Lens' ListModelExplainabilityJobDefinitions (Maybe Text)
lmejdNameContains = lens _lmejdNameContains (\s a -> s {_lmejdNameContains = a})

-- | The maximum number of jobs to return in the response. The default value is 10.
lmejdMaxResults :: Lens' ListModelExplainabilityJobDefinitions (Maybe Natural)
lmejdMaxResults = lens _lmejdMaxResults (\s a -> s {_lmejdMaxResults = a}) . mapping _Nat

-- | A filter that returns only model explainability jobs created before a specified time.
lmejdCreationTimeBefore :: Lens' ListModelExplainabilityJobDefinitions (Maybe UTCTime)
lmejdCreationTimeBefore = lens _lmejdCreationTimeBefore (\s a -> s {_lmejdCreationTimeBefore = a}) . mapping _Time

-- | Whether to sort results by the @Name@ or @CreationTime@ field. The default is @CreationTime@ .
lmejdSortBy :: Lens' ListModelExplainabilityJobDefinitions (Maybe MonitoringJobDefinitionSortKey)
lmejdSortBy = lens _lmejdSortBy (\s a -> s {_lmejdSortBy = a})

-- | A filter that returns only model explainability jobs created after a specified time.
lmejdCreationTimeAfter :: Lens' ListModelExplainabilityJobDefinitions (Maybe UTCTime)
lmejdCreationTimeAfter = lens _lmejdCreationTimeAfter (\s a -> s {_lmejdCreationTimeAfter = a}) . mapping _Time

instance
  AWSPager
    ListModelExplainabilityJobDefinitions
  where
  page rq rs
    | stop (rs ^. lmejdrrsNextToken) = Nothing
    | stop (rs ^. lmejdrrsJobDefinitionSummaries) =
      Nothing
    | otherwise =
      Just $ rq & lmejdNextToken .~ rs ^. lmejdrrsNextToken

instance
  AWSRequest
    ListModelExplainabilityJobDefinitions
  where
  type
    Rs ListModelExplainabilityJobDefinitions =
      ListModelExplainabilityJobDefinitionsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListModelExplainabilityJobDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "JobDefinitionSummaries" .!@ mempty)
      )

instance
  Hashable
    ListModelExplainabilityJobDefinitions

instance NFData ListModelExplainabilityJobDefinitions

instance
  ToHeaders
    ListModelExplainabilityJobDefinitions
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListModelExplainabilityJobDefinitions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListModelExplainabilityJobDefinitions where
  toJSON ListModelExplainabilityJobDefinitions' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lmejdSortOrder,
            ("NextToken" .=) <$> _lmejdNextToken,
            ("EndpointName" .=) <$> _lmejdEndpointName,
            ("NameContains" .=) <$> _lmejdNameContains,
            ("MaxResults" .=) <$> _lmejdMaxResults,
            ("CreationTimeBefore" .=)
              <$> _lmejdCreationTimeBefore,
            ("SortBy" .=) <$> _lmejdSortBy,
            ("CreationTimeAfter" .=)
              <$> _lmejdCreationTimeAfter
          ]
      )

instance ToPath ListModelExplainabilityJobDefinitions where
  toPath = const "/"

instance
  ToQuery
    ListModelExplainabilityJobDefinitions
  where
  toQuery = const mempty

-- | /See:/ 'listModelExplainabilityJobDefinitionsResponse' smart constructor.
data ListModelExplainabilityJobDefinitionsResponse = ListModelExplainabilityJobDefinitionsResponse'
  { _lmejdrrsNextToken ::
      !( Maybe
           Text
       ),
    _lmejdrrsResponseStatus ::
      !Int,
    _lmejdrrsJobDefinitionSummaries ::
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

-- | Creates a value of 'ListModelExplainabilityJobDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmejdrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of jobs, use it in the subsequent request.
--
-- * 'lmejdrrsResponseStatus' - -- | The response status code.
--
-- * 'lmejdrrsJobDefinitionSummaries' - A JSON array in which each element is a summary for a explainability bias jobs.
listModelExplainabilityJobDefinitionsResponse ::
  -- | 'lmejdrrsResponseStatus'
  Int ->
  ListModelExplainabilityJobDefinitionsResponse
listModelExplainabilityJobDefinitionsResponse
  pResponseStatus_ =
    ListModelExplainabilityJobDefinitionsResponse'
      { _lmejdrrsNextToken =
          Nothing,
        _lmejdrrsResponseStatus =
          pResponseStatus_,
        _lmejdrrsJobDefinitionSummaries =
          mempty
      }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of jobs, use it in the subsequent request.
lmejdrrsNextToken :: Lens' ListModelExplainabilityJobDefinitionsResponse (Maybe Text)
lmejdrrsNextToken = lens _lmejdrrsNextToken (\s a -> s {_lmejdrrsNextToken = a})

-- | -- | The response status code.
lmejdrrsResponseStatus :: Lens' ListModelExplainabilityJobDefinitionsResponse Int
lmejdrrsResponseStatus = lens _lmejdrrsResponseStatus (\s a -> s {_lmejdrrsResponseStatus = a})

-- | A JSON array in which each element is a summary for a explainability bias jobs.
lmejdrrsJobDefinitionSummaries :: Lens' ListModelExplainabilityJobDefinitionsResponse [MonitoringJobDefinitionSummary]
lmejdrrsJobDefinitionSummaries = lens _lmejdrrsJobDefinitionSummaries (\s a -> s {_lmejdrrsJobDefinitionSummaries = a}) . _Coerce

instance
  NFData
    ListModelExplainabilityJobDefinitionsResponse
