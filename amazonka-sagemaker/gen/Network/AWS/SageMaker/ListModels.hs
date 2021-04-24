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
-- Module      : Network.AWS.SageMaker.ListModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists models created with the 'CreateModel' API.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListModels
  ( -- * Creating a Request
    listModels,
    ListModels,

    -- * Request Lenses
    lmSortOrder,
    lmNextToken,
    lmNameContains,
    lmMaxResults,
    lmCreationTimeBefore,
    lmSortBy,
    lmCreationTimeAfter,

    -- * Destructuring the Response
    listModelsResponse,
    ListModelsResponse,

    -- * Response Lenses
    lmrrsNextToken,
    lmrrsResponseStatus,
    lmrrsModels,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listModels' smart constructor.
data ListModels = ListModels'
  { _lmSortOrder ::
      !(Maybe OrderKey),
    _lmNextToken :: !(Maybe Text),
    _lmNameContains :: !(Maybe Text),
    _lmMaxResults :: !(Maybe Nat),
    _lmCreationTimeBefore :: !(Maybe POSIX),
    _lmSortBy :: !(Maybe ModelSortKey),
    _lmCreationTimeAfter :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListModels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmSortOrder' - The sort order for results. The default is @Descending@ .
--
-- * 'lmNextToken' - If the response to a previous @ListModels@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of models, use the token in the next request.
--
-- * 'lmNameContains' - A string in the training job name. This filter returns only models in the training job whose name contains the specified string.
--
-- * 'lmMaxResults' - The maximum number of models to return in the response.
--
-- * 'lmCreationTimeBefore' - A filter that returns only models created before the specified time (timestamp).
--
-- * 'lmSortBy' - Sorts the list of results. The default is @CreationTime@ .
--
-- * 'lmCreationTimeAfter' - A filter that returns only models with a creation time greater than or equal to the specified time (timestamp).
listModels ::
  ListModels
listModels =
  ListModels'
    { _lmSortOrder = Nothing,
      _lmNextToken = Nothing,
      _lmNameContains = Nothing,
      _lmMaxResults = Nothing,
      _lmCreationTimeBefore = Nothing,
      _lmSortBy = Nothing,
      _lmCreationTimeAfter = Nothing
    }

-- | The sort order for results. The default is @Descending@ .
lmSortOrder :: Lens' ListModels (Maybe OrderKey)
lmSortOrder = lens _lmSortOrder (\s a -> s {_lmSortOrder = a})

-- | If the response to a previous @ListModels@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of models, use the token in the next request.
lmNextToken :: Lens' ListModels (Maybe Text)
lmNextToken = lens _lmNextToken (\s a -> s {_lmNextToken = a})

-- | A string in the training job name. This filter returns only models in the training job whose name contains the specified string.
lmNameContains :: Lens' ListModels (Maybe Text)
lmNameContains = lens _lmNameContains (\s a -> s {_lmNameContains = a})

-- | The maximum number of models to return in the response.
lmMaxResults :: Lens' ListModels (Maybe Natural)
lmMaxResults = lens _lmMaxResults (\s a -> s {_lmMaxResults = a}) . mapping _Nat

-- | A filter that returns only models created before the specified time (timestamp).
lmCreationTimeBefore :: Lens' ListModels (Maybe UTCTime)
lmCreationTimeBefore = lens _lmCreationTimeBefore (\s a -> s {_lmCreationTimeBefore = a}) . mapping _Time

-- | Sorts the list of results. The default is @CreationTime@ .
lmSortBy :: Lens' ListModels (Maybe ModelSortKey)
lmSortBy = lens _lmSortBy (\s a -> s {_lmSortBy = a})

-- | A filter that returns only models with a creation time greater than or equal to the specified time (timestamp).
lmCreationTimeAfter :: Lens' ListModels (Maybe UTCTime)
lmCreationTimeAfter = lens _lmCreationTimeAfter (\s a -> s {_lmCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListModels where
  page rq rs
    | stop (rs ^. lmrrsNextToken) = Nothing
    | stop (rs ^. lmrrsModels) = Nothing
    | otherwise =
      Just $ rq & lmNextToken .~ rs ^. lmrrsNextToken

instance AWSRequest ListModels where
  type Rs ListModels = ListModelsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListModelsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "Models" .!@ mempty)
      )

instance Hashable ListModels

instance NFData ListModels

instance ToHeaders ListModels where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListModels" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListModels where
  toJSON ListModels' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lmSortOrder,
            ("NextToken" .=) <$> _lmNextToken,
            ("NameContains" .=) <$> _lmNameContains,
            ("MaxResults" .=) <$> _lmMaxResults,
            ("CreationTimeBefore" .=) <$> _lmCreationTimeBefore,
            ("SortBy" .=) <$> _lmSortBy,
            ("CreationTimeAfter" .=) <$> _lmCreationTimeAfter
          ]
      )

instance ToPath ListModels where
  toPath = const "/"

instance ToQuery ListModels where
  toQuery = const mempty

-- | /See:/ 'listModelsResponse' smart constructor.
data ListModelsResponse = ListModelsResponse'
  { _lmrrsNextToken ::
      !(Maybe Text),
    _lmrrsResponseStatus :: !Int,
    _lmrrsModels :: ![ModelSummary]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListModelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of models, use it in the subsequent request.
--
-- * 'lmrrsResponseStatus' - -- | The response status code.
--
-- * 'lmrrsModels' - An array of @ModelSummary@ objects, each of which lists a model.
listModelsResponse ::
  -- | 'lmrrsResponseStatus'
  Int ->
  ListModelsResponse
listModelsResponse pResponseStatus_ =
  ListModelsResponse'
    { _lmrrsNextToken = Nothing,
      _lmrrsResponseStatus = pResponseStatus_,
      _lmrrsModels = mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of models, use it in the subsequent request.
lmrrsNextToken :: Lens' ListModelsResponse (Maybe Text)
lmrrsNextToken = lens _lmrrsNextToken (\s a -> s {_lmrrsNextToken = a})

-- | -- | The response status code.
lmrrsResponseStatus :: Lens' ListModelsResponse Int
lmrrsResponseStatus = lens _lmrrsResponseStatus (\s a -> s {_lmrrsResponseStatus = a})

-- | An array of @ModelSummary@ objects, each of which lists a model.
lmrrsModels :: Lens' ListModelsResponse [ModelSummary]
lmrrsModels = lens _lmrrsModels (\s a -> s {_lmrrsModels = a}) . _Coerce

instance NFData ListModelsResponse
