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
-- Module      : Network.AWS.SageMaker.ListModelBiasJobDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists model bias jobs definitions that satisfy various filters.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListModelBiasJobDefinitions
  ( -- * Creating a Request
    listModelBiasJobDefinitions,
    ListModelBiasJobDefinitions,

    -- * Request Lenses
    lmbjdSortOrder,
    lmbjdNextToken,
    lmbjdEndpointName,
    lmbjdNameContains,
    lmbjdMaxResults,
    lmbjdCreationTimeBefore,
    lmbjdSortBy,
    lmbjdCreationTimeAfter,

    -- * Destructuring the Response
    listModelBiasJobDefinitionsResponse,
    ListModelBiasJobDefinitionsResponse,

    -- * Response Lenses
    lmbjdrrsNextToken,
    lmbjdrrsResponseStatus,
    lmbjdrrsJobDefinitionSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listModelBiasJobDefinitions' smart constructor.
data ListModelBiasJobDefinitions = ListModelBiasJobDefinitions'
  { _lmbjdSortOrder ::
      !( Maybe
           SortOrder
       ),
    _lmbjdNextToken ::
      !(Maybe Text),
    _lmbjdEndpointName ::
      !(Maybe Text),
    _lmbjdNameContains ::
      !(Maybe Text),
    _lmbjdMaxResults ::
      !(Maybe Nat),
    _lmbjdCreationTimeBefore ::
      !(Maybe POSIX),
    _lmbjdSortBy ::
      !( Maybe
           MonitoringJobDefinitionSortKey
       ),
    _lmbjdCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListModelBiasJobDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmbjdSortOrder' - Whether to sort the results in @Ascending@ or @Descending@ order. The default is @Descending@ .
--
-- * 'lmbjdNextToken' - The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.
--
-- * 'lmbjdEndpointName' - Name of the endpoint to monitor for model bias.
--
-- * 'lmbjdNameContains' - Filter for model bias jobs whose name contains a specified string.
--
-- * 'lmbjdMaxResults' - The maximum number of model bias jobs to return in the response. The default value is 10.
--
-- * 'lmbjdCreationTimeBefore' - A filter that returns only model bias jobs created before a specified time.
--
-- * 'lmbjdSortBy' - Whether to sort results by the @Name@ or @CreationTime@ field. The default is @CreationTime@ .
--
-- * 'lmbjdCreationTimeAfter' - A filter that returns only model bias jobs created after a specified time.
listModelBiasJobDefinitions ::
  ListModelBiasJobDefinitions
listModelBiasJobDefinitions =
  ListModelBiasJobDefinitions'
    { _lmbjdSortOrder =
        Nothing,
      _lmbjdNextToken = Nothing,
      _lmbjdEndpointName = Nothing,
      _lmbjdNameContains = Nothing,
      _lmbjdMaxResults = Nothing,
      _lmbjdCreationTimeBefore = Nothing,
      _lmbjdSortBy = Nothing,
      _lmbjdCreationTimeAfter = Nothing
    }

-- | Whether to sort the results in @Ascending@ or @Descending@ order. The default is @Descending@ .
lmbjdSortOrder :: Lens' ListModelBiasJobDefinitions (Maybe SortOrder)
lmbjdSortOrder = lens _lmbjdSortOrder (\s a -> s {_lmbjdSortOrder = a})

-- | The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.
lmbjdNextToken :: Lens' ListModelBiasJobDefinitions (Maybe Text)
lmbjdNextToken = lens _lmbjdNextToken (\s a -> s {_lmbjdNextToken = a})

-- | Name of the endpoint to monitor for model bias.
lmbjdEndpointName :: Lens' ListModelBiasJobDefinitions (Maybe Text)
lmbjdEndpointName = lens _lmbjdEndpointName (\s a -> s {_lmbjdEndpointName = a})

-- | Filter for model bias jobs whose name contains a specified string.
lmbjdNameContains :: Lens' ListModelBiasJobDefinitions (Maybe Text)
lmbjdNameContains = lens _lmbjdNameContains (\s a -> s {_lmbjdNameContains = a})

-- | The maximum number of model bias jobs to return in the response. The default value is 10.
lmbjdMaxResults :: Lens' ListModelBiasJobDefinitions (Maybe Natural)
lmbjdMaxResults = lens _lmbjdMaxResults (\s a -> s {_lmbjdMaxResults = a}) . mapping _Nat

-- | A filter that returns only model bias jobs created before a specified time.
lmbjdCreationTimeBefore :: Lens' ListModelBiasJobDefinitions (Maybe UTCTime)
lmbjdCreationTimeBefore = lens _lmbjdCreationTimeBefore (\s a -> s {_lmbjdCreationTimeBefore = a}) . mapping _Time

-- | Whether to sort results by the @Name@ or @CreationTime@ field. The default is @CreationTime@ .
lmbjdSortBy :: Lens' ListModelBiasJobDefinitions (Maybe MonitoringJobDefinitionSortKey)
lmbjdSortBy = lens _lmbjdSortBy (\s a -> s {_lmbjdSortBy = a})

-- | A filter that returns only model bias jobs created after a specified time.
lmbjdCreationTimeAfter :: Lens' ListModelBiasJobDefinitions (Maybe UTCTime)
lmbjdCreationTimeAfter = lens _lmbjdCreationTimeAfter (\s a -> s {_lmbjdCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListModelBiasJobDefinitions where
  page rq rs
    | stop (rs ^. lmbjdrrsNextToken) = Nothing
    | stop (rs ^. lmbjdrrsJobDefinitionSummaries) =
      Nothing
    | otherwise =
      Just $ rq & lmbjdNextToken .~ rs ^. lmbjdrrsNextToken

instance AWSRequest ListModelBiasJobDefinitions where
  type
    Rs ListModelBiasJobDefinitions =
      ListModelBiasJobDefinitionsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListModelBiasJobDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "JobDefinitionSummaries" .!@ mempty)
      )

instance Hashable ListModelBiasJobDefinitions

instance NFData ListModelBiasJobDefinitions

instance ToHeaders ListModelBiasJobDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListModelBiasJobDefinitions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListModelBiasJobDefinitions where
  toJSON ListModelBiasJobDefinitions' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lmbjdSortOrder,
            ("NextToken" .=) <$> _lmbjdNextToken,
            ("EndpointName" .=) <$> _lmbjdEndpointName,
            ("NameContains" .=) <$> _lmbjdNameContains,
            ("MaxResults" .=) <$> _lmbjdMaxResults,
            ("CreationTimeBefore" .=)
              <$> _lmbjdCreationTimeBefore,
            ("SortBy" .=) <$> _lmbjdSortBy,
            ("CreationTimeAfter" .=)
              <$> _lmbjdCreationTimeAfter
          ]
      )

instance ToPath ListModelBiasJobDefinitions where
  toPath = const "/"

instance ToQuery ListModelBiasJobDefinitions where
  toQuery = const mempty

-- | /See:/ 'listModelBiasJobDefinitionsResponse' smart constructor.
data ListModelBiasJobDefinitionsResponse = ListModelBiasJobDefinitionsResponse'
  { _lmbjdrrsNextToken ::
      !( Maybe
           Text
       ),
    _lmbjdrrsResponseStatus ::
      !Int,
    _lmbjdrrsJobDefinitionSummaries ::
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

-- | Creates a value of 'ListModelBiasJobDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmbjdrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of jobs, use it in the subsequent request.
--
-- * 'lmbjdrrsResponseStatus' - -- | The response status code.
--
-- * 'lmbjdrrsJobDefinitionSummaries' - A JSON array in which each element is a summary for a model bias jobs.
listModelBiasJobDefinitionsResponse ::
  -- | 'lmbjdrrsResponseStatus'
  Int ->
  ListModelBiasJobDefinitionsResponse
listModelBiasJobDefinitionsResponse pResponseStatus_ =
  ListModelBiasJobDefinitionsResponse'
    { _lmbjdrrsNextToken =
        Nothing,
      _lmbjdrrsResponseStatus =
        pResponseStatus_,
      _lmbjdrrsJobDefinitionSummaries =
        mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of jobs, use it in the subsequent request.
lmbjdrrsNextToken :: Lens' ListModelBiasJobDefinitionsResponse (Maybe Text)
lmbjdrrsNextToken = lens _lmbjdrrsNextToken (\s a -> s {_lmbjdrrsNextToken = a})

-- | -- | The response status code.
lmbjdrrsResponseStatus :: Lens' ListModelBiasJobDefinitionsResponse Int
lmbjdrrsResponseStatus = lens _lmbjdrrsResponseStatus (\s a -> s {_lmbjdrrsResponseStatus = a})

-- | A JSON array in which each element is a summary for a model bias jobs.
lmbjdrrsJobDefinitionSummaries :: Lens' ListModelBiasJobDefinitionsResponse [MonitoringJobDefinitionSummary]
lmbjdrrsJobDefinitionSummaries = lens _lmbjdrrsJobDefinitionSummaries (\s a -> s {_lmbjdrrsJobDefinitionSummaries = a}) . _Coerce

instance NFData ListModelBiasJobDefinitionsResponse
