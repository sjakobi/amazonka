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
-- Module      : Network.AWS.SageMaker.ListDataQualityJobDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the data quality job definitions in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListDataQualityJobDefinitions
  ( -- * Creating a Request
    listDataQualityJobDefinitions,
    ListDataQualityJobDefinitions,

    -- * Request Lenses
    ldqjdSortOrder,
    ldqjdNextToken,
    ldqjdEndpointName,
    ldqjdNameContains,
    ldqjdMaxResults,
    ldqjdCreationTimeBefore,
    ldqjdSortBy,
    ldqjdCreationTimeAfter,

    -- * Destructuring the Response
    listDataQualityJobDefinitionsResponse,
    ListDataQualityJobDefinitionsResponse,

    -- * Response Lenses
    ldqjdrrsNextToken,
    ldqjdrrsResponseStatus,
    ldqjdrrsJobDefinitionSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listDataQualityJobDefinitions' smart constructor.
data ListDataQualityJobDefinitions = ListDataQualityJobDefinitions'
  { _ldqjdSortOrder ::
      !( Maybe
           SortOrder
       ),
    _ldqjdNextToken ::
      !( Maybe
           Text
       ),
    _ldqjdEndpointName ::
      !( Maybe
           Text
       ),
    _ldqjdNameContains ::
      !( Maybe
           Text
       ),
    _ldqjdMaxResults ::
      !( Maybe
           Nat
       ),
    _ldqjdCreationTimeBefore ::
      !( Maybe
           POSIX
       ),
    _ldqjdSortBy ::
      !( Maybe
           MonitoringJobDefinitionSortKey
       ),
    _ldqjdCreationTimeAfter ::
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

-- | Creates a value of 'ListDataQualityJobDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldqjdSortOrder' - The sort order for results. The default is @Descending@ .
--
-- * 'ldqjdNextToken' - If the result of the previous @ListDataQualityJobDefinitions@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of transform jobs, use the token in the next request.>
--
-- * 'ldqjdEndpointName' - A filter that lists the data quality job definitions associated with the specified endpoint.
--
-- * 'ldqjdNameContains' - A string in the data quality monitoring job definition name. This filter returns only data quality monitoring job definitions whose name contains the specified string.
--
-- * 'ldqjdMaxResults' - The maximum number of data quality monitoring job definitions to return in the response.
--
-- * 'ldqjdCreationTimeBefore' - A filter that returns only data quality monitoring job definitions created before the specified time.
--
-- * 'ldqjdSortBy' - The field to sort results by. The default is @CreationTime@ .
--
-- * 'ldqjdCreationTimeAfter' - A filter that returns only data quality monitoring job definitions created after the specified time.
listDataQualityJobDefinitions ::
  ListDataQualityJobDefinitions
listDataQualityJobDefinitions =
  ListDataQualityJobDefinitions'
    { _ldqjdSortOrder =
        Nothing,
      _ldqjdNextToken = Nothing,
      _ldqjdEndpointName = Nothing,
      _ldqjdNameContains = Nothing,
      _ldqjdMaxResults = Nothing,
      _ldqjdCreationTimeBefore = Nothing,
      _ldqjdSortBy = Nothing,
      _ldqjdCreationTimeAfter = Nothing
    }

-- | The sort order for results. The default is @Descending@ .
ldqjdSortOrder :: Lens' ListDataQualityJobDefinitions (Maybe SortOrder)
ldqjdSortOrder = lens _ldqjdSortOrder (\s a -> s {_ldqjdSortOrder = a})

-- | If the result of the previous @ListDataQualityJobDefinitions@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of transform jobs, use the token in the next request.>
ldqjdNextToken :: Lens' ListDataQualityJobDefinitions (Maybe Text)
ldqjdNextToken = lens _ldqjdNextToken (\s a -> s {_ldqjdNextToken = a})

-- | A filter that lists the data quality job definitions associated with the specified endpoint.
ldqjdEndpointName :: Lens' ListDataQualityJobDefinitions (Maybe Text)
ldqjdEndpointName = lens _ldqjdEndpointName (\s a -> s {_ldqjdEndpointName = a})

-- | A string in the data quality monitoring job definition name. This filter returns only data quality monitoring job definitions whose name contains the specified string.
ldqjdNameContains :: Lens' ListDataQualityJobDefinitions (Maybe Text)
ldqjdNameContains = lens _ldqjdNameContains (\s a -> s {_ldqjdNameContains = a})

-- | The maximum number of data quality monitoring job definitions to return in the response.
ldqjdMaxResults :: Lens' ListDataQualityJobDefinitions (Maybe Natural)
ldqjdMaxResults = lens _ldqjdMaxResults (\s a -> s {_ldqjdMaxResults = a}) . mapping _Nat

-- | A filter that returns only data quality monitoring job definitions created before the specified time.
ldqjdCreationTimeBefore :: Lens' ListDataQualityJobDefinitions (Maybe UTCTime)
ldqjdCreationTimeBefore = lens _ldqjdCreationTimeBefore (\s a -> s {_ldqjdCreationTimeBefore = a}) . mapping _Time

-- | The field to sort results by. The default is @CreationTime@ .
ldqjdSortBy :: Lens' ListDataQualityJobDefinitions (Maybe MonitoringJobDefinitionSortKey)
ldqjdSortBy = lens _ldqjdSortBy (\s a -> s {_ldqjdSortBy = a})

-- | A filter that returns only data quality monitoring job definitions created after the specified time.
ldqjdCreationTimeAfter :: Lens' ListDataQualityJobDefinitions (Maybe UTCTime)
ldqjdCreationTimeAfter = lens _ldqjdCreationTimeAfter (\s a -> s {_ldqjdCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListDataQualityJobDefinitions where
  page rq rs
    | stop (rs ^. ldqjdrrsNextToken) = Nothing
    | stop (rs ^. ldqjdrrsJobDefinitionSummaries) =
      Nothing
    | otherwise =
      Just $ rq & ldqjdNextToken .~ rs ^. ldqjdrrsNextToken

instance AWSRequest ListDataQualityJobDefinitions where
  type
    Rs ListDataQualityJobDefinitions =
      ListDataQualityJobDefinitionsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListDataQualityJobDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "JobDefinitionSummaries" .!@ mempty)
      )

instance Hashable ListDataQualityJobDefinitions

instance NFData ListDataQualityJobDefinitions

instance ToHeaders ListDataQualityJobDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListDataQualityJobDefinitions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDataQualityJobDefinitions where
  toJSON ListDataQualityJobDefinitions' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _ldqjdSortOrder,
            ("NextToken" .=) <$> _ldqjdNextToken,
            ("EndpointName" .=) <$> _ldqjdEndpointName,
            ("NameContains" .=) <$> _ldqjdNameContains,
            ("MaxResults" .=) <$> _ldqjdMaxResults,
            ("CreationTimeBefore" .=)
              <$> _ldqjdCreationTimeBefore,
            ("SortBy" .=) <$> _ldqjdSortBy,
            ("CreationTimeAfter" .=)
              <$> _ldqjdCreationTimeAfter
          ]
      )

instance ToPath ListDataQualityJobDefinitions where
  toPath = const "/"

instance ToQuery ListDataQualityJobDefinitions where
  toQuery = const mempty

-- | /See:/ 'listDataQualityJobDefinitionsResponse' smart constructor.
data ListDataQualityJobDefinitionsResponse = ListDataQualityJobDefinitionsResponse'
  { _ldqjdrrsNextToken ::
      !( Maybe
           Text
       ),
    _ldqjdrrsResponseStatus ::
      !Int,
    _ldqjdrrsJobDefinitionSummaries ::
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

-- | Creates a value of 'ListDataQualityJobDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldqjdrrsNextToken' - If the result of the previous @ListDataQualityJobDefinitions@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of data quality monitoring job definitions, use the token in the next request.
--
-- * 'ldqjdrrsResponseStatus' - -- | The response status code.
--
-- * 'ldqjdrrsJobDefinitionSummaries' - A list of data quality monitoring job definitions.
listDataQualityJobDefinitionsResponse ::
  -- | 'ldqjdrrsResponseStatus'
  Int ->
  ListDataQualityJobDefinitionsResponse
listDataQualityJobDefinitionsResponse
  pResponseStatus_ =
    ListDataQualityJobDefinitionsResponse'
      { _ldqjdrrsNextToken =
          Nothing,
        _ldqjdrrsResponseStatus =
          pResponseStatus_,
        _ldqjdrrsJobDefinitionSummaries =
          mempty
      }

-- | If the result of the previous @ListDataQualityJobDefinitions@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of data quality monitoring job definitions, use the token in the next request.
ldqjdrrsNextToken :: Lens' ListDataQualityJobDefinitionsResponse (Maybe Text)
ldqjdrrsNextToken = lens _ldqjdrrsNextToken (\s a -> s {_ldqjdrrsNextToken = a})

-- | -- | The response status code.
ldqjdrrsResponseStatus :: Lens' ListDataQualityJobDefinitionsResponse Int
ldqjdrrsResponseStatus = lens _ldqjdrrsResponseStatus (\s a -> s {_ldqjdrrsResponseStatus = a})

-- | A list of data quality monitoring job definitions.
ldqjdrrsJobDefinitionSummaries :: Lens' ListDataQualityJobDefinitionsResponse [MonitoringJobDefinitionSummary]
ldqjdrrsJobDefinitionSummaries = lens _ldqjdrrsJobDefinitionSummaries (\s a -> s {_ldqjdrrsJobDefinitionSummaries = a}) . _Coerce

instance NFData ListDataQualityJobDefinitionsResponse
