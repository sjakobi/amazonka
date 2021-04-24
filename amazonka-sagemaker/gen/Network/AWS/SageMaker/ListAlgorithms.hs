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
-- Module      : Network.AWS.SageMaker.ListAlgorithms
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the machine learning algorithms that have been created.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListAlgorithms
  ( -- * Creating a Request
    listAlgorithms,
    ListAlgorithms,

    -- * Request Lenses
    laaSortOrder,
    laaNextToken,
    laaNameContains,
    laaMaxResults,
    laaCreationTimeBefore,
    laaSortBy,
    laaCreationTimeAfter,

    -- * Destructuring the Response
    listAlgorithmsResponse,
    ListAlgorithmsResponse,

    -- * Response Lenses
    lrsNextToken,
    lrsResponseStatus,
    lrsAlgorithmSummaryList,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listAlgorithms' smart constructor.
data ListAlgorithms = ListAlgorithms'
  { _laaSortOrder ::
      !(Maybe SortOrder),
    _laaNextToken :: !(Maybe Text),
    _laaNameContains :: !(Maybe Text),
    _laaMaxResults :: !(Maybe Nat),
    _laaCreationTimeBefore :: !(Maybe POSIX),
    _laaSortBy :: !(Maybe AlgorithmSortBy),
    _laaCreationTimeAfter :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAlgorithms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laaSortOrder' - The sort order for the results. The default is @Ascending@ .
--
-- * 'laaNextToken' - If the response to a previous @ListAlgorithms@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of algorithms, use the token in the next request.
--
-- * 'laaNameContains' - A string in the algorithm name. This filter returns only algorithms whose name contains the specified string.
--
-- * 'laaMaxResults' - The maximum number of algorithms to return in the response.
--
-- * 'laaCreationTimeBefore' - A filter that returns only algorithms created before the specified time (timestamp).
--
-- * 'laaSortBy' - The parameter by which to sort the results. The default is @CreationTime@ .
--
-- * 'laaCreationTimeAfter' - A filter that returns only algorithms created after the specified time (timestamp).
listAlgorithms ::
  ListAlgorithms
listAlgorithms =
  ListAlgorithms'
    { _laaSortOrder = Nothing,
      _laaNextToken = Nothing,
      _laaNameContains = Nothing,
      _laaMaxResults = Nothing,
      _laaCreationTimeBefore = Nothing,
      _laaSortBy = Nothing,
      _laaCreationTimeAfter = Nothing
    }

-- | The sort order for the results. The default is @Ascending@ .
laaSortOrder :: Lens' ListAlgorithms (Maybe SortOrder)
laaSortOrder = lens _laaSortOrder (\s a -> s {_laaSortOrder = a})

-- | If the response to a previous @ListAlgorithms@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of algorithms, use the token in the next request.
laaNextToken :: Lens' ListAlgorithms (Maybe Text)
laaNextToken = lens _laaNextToken (\s a -> s {_laaNextToken = a})

-- | A string in the algorithm name. This filter returns only algorithms whose name contains the specified string.
laaNameContains :: Lens' ListAlgorithms (Maybe Text)
laaNameContains = lens _laaNameContains (\s a -> s {_laaNameContains = a})

-- | The maximum number of algorithms to return in the response.
laaMaxResults :: Lens' ListAlgorithms (Maybe Natural)
laaMaxResults = lens _laaMaxResults (\s a -> s {_laaMaxResults = a}) . mapping _Nat

-- | A filter that returns only algorithms created before the specified time (timestamp).
laaCreationTimeBefore :: Lens' ListAlgorithms (Maybe UTCTime)
laaCreationTimeBefore = lens _laaCreationTimeBefore (\s a -> s {_laaCreationTimeBefore = a}) . mapping _Time

-- | The parameter by which to sort the results. The default is @CreationTime@ .
laaSortBy :: Lens' ListAlgorithms (Maybe AlgorithmSortBy)
laaSortBy = lens _laaSortBy (\s a -> s {_laaSortBy = a})

-- | A filter that returns only algorithms created after the specified time (timestamp).
laaCreationTimeAfter :: Lens' ListAlgorithms (Maybe UTCTime)
laaCreationTimeAfter = lens _laaCreationTimeAfter (\s a -> s {_laaCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListAlgorithms where
  page rq rs
    | stop (rs ^. lrsNextToken) = Nothing
    | stop (rs ^. lrsAlgorithmSummaryList) = Nothing
    | otherwise =
      Just $ rq & laaNextToken .~ rs ^. lrsNextToken

instance AWSRequest ListAlgorithms where
  type Rs ListAlgorithms = ListAlgorithmsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListAlgorithmsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "AlgorithmSummaryList" .!@ mempty)
      )

instance Hashable ListAlgorithms

instance NFData ListAlgorithms

instance ToHeaders ListAlgorithms where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListAlgorithms" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAlgorithms where
  toJSON ListAlgorithms' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _laaSortOrder,
            ("NextToken" .=) <$> _laaNextToken,
            ("NameContains" .=) <$> _laaNameContains,
            ("MaxResults" .=) <$> _laaMaxResults,
            ("CreationTimeBefore" .=) <$> _laaCreationTimeBefore,
            ("SortBy" .=) <$> _laaSortBy,
            ("CreationTimeAfter" .=) <$> _laaCreationTimeAfter
          ]
      )

instance ToPath ListAlgorithms where
  toPath = const "/"

instance ToQuery ListAlgorithms where
  toQuery = const mempty

-- | /See:/ 'listAlgorithmsResponse' smart constructor.
data ListAlgorithmsResponse = ListAlgorithmsResponse'
  { _lrsNextToken ::
      !(Maybe Text),
    _lrsResponseStatus ::
      !Int,
    _lrsAlgorithmSummaryList ::
      ![AlgorithmSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAlgorithmsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of algorithms, use it in the subsequent request.
--
-- * 'lrsResponseStatus' - -- | The response status code.
--
-- * 'lrsAlgorithmSummaryList' - >An array of @AlgorithmSummary@ objects, each of which lists an algorithm.
listAlgorithmsResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListAlgorithmsResponse
listAlgorithmsResponse pResponseStatus_ =
  ListAlgorithmsResponse'
    { _lrsNextToken = Nothing,
      _lrsResponseStatus = pResponseStatus_,
      _lrsAlgorithmSummaryList = mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of algorithms, use it in the subsequent request.
lrsNextToken :: Lens' ListAlgorithmsResponse (Maybe Text)
lrsNextToken = lens _lrsNextToken (\s a -> s {_lrsNextToken = a})

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListAlgorithmsResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

-- | >An array of @AlgorithmSummary@ objects, each of which lists an algorithm.
lrsAlgorithmSummaryList :: Lens' ListAlgorithmsResponse [AlgorithmSummary]
lrsAlgorithmSummaryList = lens _lrsAlgorithmSummaryList (\s a -> s {_lrsAlgorithmSummaryList = a}) . _Coerce

instance NFData ListAlgorithmsResponse
