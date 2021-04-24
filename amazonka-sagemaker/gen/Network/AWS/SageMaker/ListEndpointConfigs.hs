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
-- Module      : Network.AWS.SageMaker.ListEndpointConfigs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists endpoint configurations.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListEndpointConfigs
  ( -- * Creating a Request
    listEndpointConfigs,
    ListEndpointConfigs,

    -- * Request Lenses
    lecSortOrder,
    lecNextToken,
    lecNameContains,
    lecMaxResults,
    lecCreationTimeBefore,
    lecSortBy,
    lecCreationTimeAfter,

    -- * Destructuring the Response
    listEndpointConfigsResponse,
    ListEndpointConfigsResponse,

    -- * Response Lenses
    lecrrsNextToken,
    lecrrsResponseStatus,
    lecrrsEndpointConfigs,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listEndpointConfigs' smart constructor.
data ListEndpointConfigs = ListEndpointConfigs'
  { _lecSortOrder ::
      !(Maybe OrderKey),
    _lecNextToken :: !(Maybe Text),
    _lecNameContains ::
      !(Maybe Text),
    _lecMaxResults :: !(Maybe Nat),
    _lecCreationTimeBefore ::
      !(Maybe POSIX),
    _lecSortBy ::
      !(Maybe EndpointConfigSortKey),
    _lecCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListEndpointConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lecSortOrder' - The sort order for results. The default is @Descending@ .
--
-- * 'lecNextToken' - If the result of the previous @ListEndpointConfig@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of endpoint configurations, use the token in the next request.
--
-- * 'lecNameContains' - A string in the endpoint configuration name. This filter returns only endpoint configurations whose name contains the specified string.
--
-- * 'lecMaxResults' - The maximum number of training jobs to return in the response.
--
-- * 'lecCreationTimeBefore' - A filter that returns only endpoint configurations created before the specified time (timestamp).
--
-- * 'lecSortBy' - The field to sort results by. The default is @CreationTime@ .
--
-- * 'lecCreationTimeAfter' - A filter that returns only endpoint configurations with a creation time greater than or equal to the specified time (timestamp).
listEndpointConfigs ::
  ListEndpointConfigs
listEndpointConfigs =
  ListEndpointConfigs'
    { _lecSortOrder = Nothing,
      _lecNextToken = Nothing,
      _lecNameContains = Nothing,
      _lecMaxResults = Nothing,
      _lecCreationTimeBefore = Nothing,
      _lecSortBy = Nothing,
      _lecCreationTimeAfter = Nothing
    }

-- | The sort order for results. The default is @Descending@ .
lecSortOrder :: Lens' ListEndpointConfigs (Maybe OrderKey)
lecSortOrder = lens _lecSortOrder (\s a -> s {_lecSortOrder = a})

-- | If the result of the previous @ListEndpointConfig@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of endpoint configurations, use the token in the next request.
lecNextToken :: Lens' ListEndpointConfigs (Maybe Text)
lecNextToken = lens _lecNextToken (\s a -> s {_lecNextToken = a})

-- | A string in the endpoint configuration name. This filter returns only endpoint configurations whose name contains the specified string.
lecNameContains :: Lens' ListEndpointConfigs (Maybe Text)
lecNameContains = lens _lecNameContains (\s a -> s {_lecNameContains = a})

-- | The maximum number of training jobs to return in the response.
lecMaxResults :: Lens' ListEndpointConfigs (Maybe Natural)
lecMaxResults = lens _lecMaxResults (\s a -> s {_lecMaxResults = a}) . mapping _Nat

-- | A filter that returns only endpoint configurations created before the specified time (timestamp).
lecCreationTimeBefore :: Lens' ListEndpointConfigs (Maybe UTCTime)
lecCreationTimeBefore = lens _lecCreationTimeBefore (\s a -> s {_lecCreationTimeBefore = a}) . mapping _Time

-- | The field to sort results by. The default is @CreationTime@ .
lecSortBy :: Lens' ListEndpointConfigs (Maybe EndpointConfigSortKey)
lecSortBy = lens _lecSortBy (\s a -> s {_lecSortBy = a})

-- | A filter that returns only endpoint configurations with a creation time greater than or equal to the specified time (timestamp).
lecCreationTimeAfter :: Lens' ListEndpointConfigs (Maybe UTCTime)
lecCreationTimeAfter = lens _lecCreationTimeAfter (\s a -> s {_lecCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListEndpointConfigs where
  page rq rs
    | stop (rs ^. lecrrsNextToken) = Nothing
    | stop (rs ^. lecrrsEndpointConfigs) = Nothing
    | otherwise =
      Just $ rq & lecNextToken .~ rs ^. lecrrsNextToken

instance AWSRequest ListEndpointConfigs where
  type
    Rs ListEndpointConfigs =
      ListEndpointConfigsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListEndpointConfigsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "EndpointConfigs" .!@ mempty)
      )

instance Hashable ListEndpointConfigs

instance NFData ListEndpointConfigs

instance ToHeaders ListEndpointConfigs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListEndpointConfigs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListEndpointConfigs where
  toJSON ListEndpointConfigs' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lecSortOrder,
            ("NextToken" .=) <$> _lecNextToken,
            ("NameContains" .=) <$> _lecNameContains,
            ("MaxResults" .=) <$> _lecMaxResults,
            ("CreationTimeBefore" .=) <$> _lecCreationTimeBefore,
            ("SortBy" .=) <$> _lecSortBy,
            ("CreationTimeAfter" .=) <$> _lecCreationTimeAfter
          ]
      )

instance ToPath ListEndpointConfigs where
  toPath = const "/"

instance ToQuery ListEndpointConfigs where
  toQuery = const mempty

-- | /See:/ 'listEndpointConfigsResponse' smart constructor.
data ListEndpointConfigsResponse = ListEndpointConfigsResponse'
  { _lecrrsNextToken ::
      !(Maybe Text),
    _lecrrsResponseStatus ::
      !Int,
    _lecrrsEndpointConfigs ::
      ![EndpointConfigSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListEndpointConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lecrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of endpoint configurations, use it in the subsequent request
--
-- * 'lecrrsResponseStatus' - -- | The response status code.
--
-- * 'lecrrsEndpointConfigs' - An array of endpoint configurations.
listEndpointConfigsResponse ::
  -- | 'lecrrsResponseStatus'
  Int ->
  ListEndpointConfigsResponse
listEndpointConfigsResponse pResponseStatus_ =
  ListEndpointConfigsResponse'
    { _lecrrsNextToken =
        Nothing,
      _lecrrsResponseStatus = pResponseStatus_,
      _lecrrsEndpointConfigs = mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of endpoint configurations, use it in the subsequent request
lecrrsNextToken :: Lens' ListEndpointConfigsResponse (Maybe Text)
lecrrsNextToken = lens _lecrrsNextToken (\s a -> s {_lecrrsNextToken = a})

-- | -- | The response status code.
lecrrsResponseStatus :: Lens' ListEndpointConfigsResponse Int
lecrrsResponseStatus = lens _lecrrsResponseStatus (\s a -> s {_lecrrsResponseStatus = a})

-- | An array of endpoint configurations.
lecrrsEndpointConfigs :: Lens' ListEndpointConfigsResponse [EndpointConfigSummary]
lecrrsEndpointConfigs = lens _lecrrsEndpointConfigs (\s a -> s {_lecrrsEndpointConfigs = a}) . _Coerce

instance NFData ListEndpointConfigsResponse
