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
-- Module      : Network.AWS.SageMaker.ListEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists endpoints.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListEndpoints
  ( -- * Creating a Request
    listEndpoints,
    ListEndpoints,

    -- * Request Lenses
    leLastModifiedTimeBefore,
    leSortOrder,
    leNextToken,
    leNameContains,
    leMaxResults,
    leCreationTimeBefore,
    leLastModifiedTimeAfter,
    leSortBy,
    leStatusEquals,
    leCreationTimeAfter,

    -- * Destructuring the Response
    listEndpointsResponse,
    ListEndpointsResponse,

    -- * Response Lenses
    lerrsNextToken,
    lerrsResponseStatus,
    lerrsEndpoints,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listEndpoints' smart constructor.
data ListEndpoints = ListEndpoints'
  { _leLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _leSortOrder :: !(Maybe OrderKey),
    _leNextToken :: !(Maybe Text),
    _leNameContains :: !(Maybe Text),
    _leMaxResults :: !(Maybe Nat),
    _leCreationTimeBefore :: !(Maybe POSIX),
    _leLastModifiedTimeAfter :: !(Maybe POSIX),
    _leSortBy :: !(Maybe EndpointSortKey),
    _leStatusEquals :: !(Maybe EndpointStatus),
    _leCreationTimeAfter :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leLastModifiedTimeBefore' - A filter that returns only endpoints that were modified before the specified timestamp.
--
-- * 'leSortOrder' - The sort order for results. The default is @Descending@ .
--
-- * 'leNextToken' - If the result of a @ListEndpoints@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of endpoints, use the token in the next request.
--
-- * 'leNameContains' - A string in endpoint names. This filter returns only endpoints whose name contains the specified string.
--
-- * 'leMaxResults' - The maximum number of endpoints to return in the response.
--
-- * 'leCreationTimeBefore' - A filter that returns only endpoints that were created before the specified time (timestamp).
--
-- * 'leLastModifiedTimeAfter' - A filter that returns only endpoints that were modified after the specified timestamp.
--
-- * 'leSortBy' - Sorts the list of results. The default is @CreationTime@ .
--
-- * 'leStatusEquals' - A filter that returns only endpoints with the specified status.
--
-- * 'leCreationTimeAfter' - A filter that returns only endpoints with a creation time greater than or equal to the specified time (timestamp).
listEndpoints ::
  ListEndpoints
listEndpoints =
  ListEndpoints'
    { _leLastModifiedTimeBefore = Nothing,
      _leSortOrder = Nothing,
      _leNextToken = Nothing,
      _leNameContains = Nothing,
      _leMaxResults = Nothing,
      _leCreationTimeBefore = Nothing,
      _leLastModifiedTimeAfter = Nothing,
      _leSortBy = Nothing,
      _leStatusEquals = Nothing,
      _leCreationTimeAfter = Nothing
    }

-- | A filter that returns only endpoints that were modified before the specified timestamp.
leLastModifiedTimeBefore :: Lens' ListEndpoints (Maybe UTCTime)
leLastModifiedTimeBefore = lens _leLastModifiedTimeBefore (\s a -> s {_leLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for results. The default is @Descending@ .
leSortOrder :: Lens' ListEndpoints (Maybe OrderKey)
leSortOrder = lens _leSortOrder (\s a -> s {_leSortOrder = a})

-- | If the result of a @ListEndpoints@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of endpoints, use the token in the next request.
leNextToken :: Lens' ListEndpoints (Maybe Text)
leNextToken = lens _leNextToken (\s a -> s {_leNextToken = a})

-- | A string in endpoint names. This filter returns only endpoints whose name contains the specified string.
leNameContains :: Lens' ListEndpoints (Maybe Text)
leNameContains = lens _leNameContains (\s a -> s {_leNameContains = a})

-- | The maximum number of endpoints to return in the response.
leMaxResults :: Lens' ListEndpoints (Maybe Natural)
leMaxResults = lens _leMaxResults (\s a -> s {_leMaxResults = a}) . mapping _Nat

-- | A filter that returns only endpoints that were created before the specified time (timestamp).
leCreationTimeBefore :: Lens' ListEndpoints (Maybe UTCTime)
leCreationTimeBefore = lens _leCreationTimeBefore (\s a -> s {_leCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only endpoints that were modified after the specified timestamp.
leLastModifiedTimeAfter :: Lens' ListEndpoints (Maybe UTCTime)
leLastModifiedTimeAfter = lens _leLastModifiedTimeAfter (\s a -> s {_leLastModifiedTimeAfter = a}) . mapping _Time

-- | Sorts the list of results. The default is @CreationTime@ .
leSortBy :: Lens' ListEndpoints (Maybe EndpointSortKey)
leSortBy = lens _leSortBy (\s a -> s {_leSortBy = a})

-- | A filter that returns only endpoints with the specified status.
leStatusEquals :: Lens' ListEndpoints (Maybe EndpointStatus)
leStatusEquals = lens _leStatusEquals (\s a -> s {_leStatusEquals = a})

-- | A filter that returns only endpoints with a creation time greater than or equal to the specified time (timestamp).
leCreationTimeAfter :: Lens' ListEndpoints (Maybe UTCTime)
leCreationTimeAfter = lens _leCreationTimeAfter (\s a -> s {_leCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListEndpoints where
  page rq rs
    | stop (rs ^. lerrsNextToken) = Nothing
    | stop (rs ^. lerrsEndpoints) = Nothing
    | otherwise =
      Just $ rq & leNextToken .~ rs ^. lerrsNextToken

instance AWSRequest ListEndpoints where
  type Rs ListEndpoints = ListEndpointsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListEndpointsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "Endpoints" .!@ mempty)
      )

instance Hashable ListEndpoints

instance NFData ListEndpoints

instance ToHeaders ListEndpoints where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListEndpoints" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListEndpoints where
  toJSON ListEndpoints' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _leLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _leSortOrder,
            ("NextToken" .=) <$> _leNextToken,
            ("NameContains" .=) <$> _leNameContains,
            ("MaxResults" .=) <$> _leMaxResults,
            ("CreationTimeBefore" .=) <$> _leCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _leLastModifiedTimeAfter,
            ("SortBy" .=) <$> _leSortBy,
            ("StatusEquals" .=) <$> _leStatusEquals,
            ("CreationTimeAfter" .=) <$> _leCreationTimeAfter
          ]
      )

instance ToPath ListEndpoints where
  toPath = const "/"

instance ToQuery ListEndpoints where
  toQuery = const mempty

-- | /See:/ 'listEndpointsResponse' smart constructor.
data ListEndpointsResponse = ListEndpointsResponse'
  { _lerrsNextToken ::
      !(Maybe Text),
    _lerrsResponseStatus ::
      !Int,
    _lerrsEndpoints ::
      ![EndpointSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of training jobs, use it in the subsequent request.
--
-- * 'lerrsResponseStatus' - -- | The response status code.
--
-- * 'lerrsEndpoints' - An array or endpoint objects.
listEndpointsResponse ::
  -- | 'lerrsResponseStatus'
  Int ->
  ListEndpointsResponse
listEndpointsResponse pResponseStatus_ =
  ListEndpointsResponse'
    { _lerrsNextToken = Nothing,
      _lerrsResponseStatus = pResponseStatus_,
      _lerrsEndpoints = mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of training jobs, use it in the subsequent request.
lerrsNextToken :: Lens' ListEndpointsResponse (Maybe Text)
lerrsNextToken = lens _lerrsNextToken (\s a -> s {_lerrsNextToken = a})

-- | -- | The response status code.
lerrsResponseStatus :: Lens' ListEndpointsResponse Int
lerrsResponseStatus = lens _lerrsResponseStatus (\s a -> s {_lerrsResponseStatus = a})

-- | An array or endpoint objects.
lerrsEndpoints :: Lens' ListEndpointsResponse [EndpointSummary]
lerrsEndpoints = lens _lerrsEndpoints (\s a -> s {_lerrsEndpoints = a}) . _Coerce

instance NFData ListEndpointsResponse
