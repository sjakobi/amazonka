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
-- Module      : Network.AWS.SageMaker.ListTrialComponents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the trial components in your account. You can sort the list by trial component name or creation time. You can filter the list to show only components that were created in a specific time range. You can also filter on one of the following:
--
--
--     * @ExperimentName@
--
--     * @SourceArn@
--
--     * @TrialName@
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListTrialComponents
  ( -- * Creating a Request
    listTrialComponents,
    ListTrialComponents,

    -- * Request Lenses
    ltcCreatedAfter,
    ltcSortOrder,
    ltcNextToken,
    ltcCreatedBefore,
    ltcMaxResults,
    ltcSortBy,
    ltcExperimentName,
    ltcSourceARN,
    ltcTrialName,

    -- * Destructuring the Response
    listTrialComponentsResponse,
    ListTrialComponentsResponse,

    -- * Response Lenses
    ltcrrsNextToken,
    ltcrrsTrialComponentSummaries,
    ltcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listTrialComponents' smart constructor.
data ListTrialComponents = ListTrialComponents'
  { _ltcCreatedAfter ::
      !(Maybe POSIX),
    _ltcSortOrder ::
      !(Maybe SortOrder),
    _ltcNextToken :: !(Maybe Text),
    _ltcCreatedBefore ::
      !(Maybe POSIX),
    _ltcMaxResults :: !(Maybe Nat),
    _ltcSortBy ::
      !(Maybe SortTrialComponentsBy),
    _ltcExperimentName ::
      !(Maybe Text),
    _ltcSourceARN :: !(Maybe Text),
    _ltcTrialName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTrialComponents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltcCreatedAfter' - A filter that returns only components created after the specified time.
--
-- * 'ltcSortOrder' - The sort order. The default value is @Descending@ .
--
-- * 'ltcNextToken' - If the previous call to @ListTrialComponents@ didn't return the full set of components, the call returns a token for getting the next set of components.
--
-- * 'ltcCreatedBefore' - A filter that returns only components created before the specified time.
--
-- * 'ltcMaxResults' - The maximum number of components to return in the response. The default value is 10.
--
-- * 'ltcSortBy' - The property used to sort results. The default value is @CreationTime@ .
--
-- * 'ltcExperimentName' - A filter that returns only components that are part of the specified experiment. If you specify @ExperimentName@ , you can't filter by @SourceArn@ or @TrialName@ .
--
-- * 'ltcSourceARN' - A filter that returns only components that have the specified source Amazon Resource Name (ARN). If you specify @SourceArn@ , you can't filter by @ExperimentName@ or @TrialName@ .
--
-- * 'ltcTrialName' - A filter that returns only components that are part of the specified trial. If you specify @TrialName@ , you can't filter by @ExperimentName@ or @SourceArn@ .
listTrialComponents ::
  ListTrialComponents
listTrialComponents =
  ListTrialComponents'
    { _ltcCreatedAfter = Nothing,
      _ltcSortOrder = Nothing,
      _ltcNextToken = Nothing,
      _ltcCreatedBefore = Nothing,
      _ltcMaxResults = Nothing,
      _ltcSortBy = Nothing,
      _ltcExperimentName = Nothing,
      _ltcSourceARN = Nothing,
      _ltcTrialName = Nothing
    }

-- | A filter that returns only components created after the specified time.
ltcCreatedAfter :: Lens' ListTrialComponents (Maybe UTCTime)
ltcCreatedAfter = lens _ltcCreatedAfter (\s a -> s {_ltcCreatedAfter = a}) . mapping _Time

-- | The sort order. The default value is @Descending@ .
ltcSortOrder :: Lens' ListTrialComponents (Maybe SortOrder)
ltcSortOrder = lens _ltcSortOrder (\s a -> s {_ltcSortOrder = a})

-- | If the previous call to @ListTrialComponents@ didn't return the full set of components, the call returns a token for getting the next set of components.
ltcNextToken :: Lens' ListTrialComponents (Maybe Text)
ltcNextToken = lens _ltcNextToken (\s a -> s {_ltcNextToken = a})

-- | A filter that returns only components created before the specified time.
ltcCreatedBefore :: Lens' ListTrialComponents (Maybe UTCTime)
ltcCreatedBefore = lens _ltcCreatedBefore (\s a -> s {_ltcCreatedBefore = a}) . mapping _Time

-- | The maximum number of components to return in the response. The default value is 10.
ltcMaxResults :: Lens' ListTrialComponents (Maybe Natural)
ltcMaxResults = lens _ltcMaxResults (\s a -> s {_ltcMaxResults = a}) . mapping _Nat

-- | The property used to sort results. The default value is @CreationTime@ .
ltcSortBy :: Lens' ListTrialComponents (Maybe SortTrialComponentsBy)
ltcSortBy = lens _ltcSortBy (\s a -> s {_ltcSortBy = a})

-- | A filter that returns only components that are part of the specified experiment. If you specify @ExperimentName@ , you can't filter by @SourceArn@ or @TrialName@ .
ltcExperimentName :: Lens' ListTrialComponents (Maybe Text)
ltcExperimentName = lens _ltcExperimentName (\s a -> s {_ltcExperimentName = a})

-- | A filter that returns only components that have the specified source Amazon Resource Name (ARN). If you specify @SourceArn@ , you can't filter by @ExperimentName@ or @TrialName@ .
ltcSourceARN :: Lens' ListTrialComponents (Maybe Text)
ltcSourceARN = lens _ltcSourceARN (\s a -> s {_ltcSourceARN = a})

-- | A filter that returns only components that are part of the specified trial. If you specify @TrialName@ , you can't filter by @ExperimentName@ or @SourceArn@ .
ltcTrialName :: Lens' ListTrialComponents (Maybe Text)
ltcTrialName = lens _ltcTrialName (\s a -> s {_ltcTrialName = a})

instance AWSPager ListTrialComponents where
  page rq rs
    | stop (rs ^. ltcrrsNextToken) = Nothing
    | stop (rs ^. ltcrrsTrialComponentSummaries) =
      Nothing
    | otherwise =
      Just $ rq & ltcNextToken .~ rs ^. ltcrrsNextToken

instance AWSRequest ListTrialComponents where
  type
    Rs ListTrialComponents =
      ListTrialComponentsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListTrialComponentsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TrialComponentSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTrialComponents

instance NFData ListTrialComponents

instance ToHeaders ListTrialComponents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListTrialComponents" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTrialComponents where
  toJSON ListTrialComponents' {..} =
    object
      ( catMaybes
          [ ("CreatedAfter" .=) <$> _ltcCreatedAfter,
            ("SortOrder" .=) <$> _ltcSortOrder,
            ("NextToken" .=) <$> _ltcNextToken,
            ("CreatedBefore" .=) <$> _ltcCreatedBefore,
            ("MaxResults" .=) <$> _ltcMaxResults,
            ("SortBy" .=) <$> _ltcSortBy,
            ("ExperimentName" .=) <$> _ltcExperimentName,
            ("SourceArn" .=) <$> _ltcSourceARN,
            ("TrialName" .=) <$> _ltcTrialName
          ]
      )

instance ToPath ListTrialComponents where
  toPath = const "/"

instance ToQuery ListTrialComponents where
  toQuery = const mempty

-- | /See:/ 'listTrialComponentsResponse' smart constructor.
data ListTrialComponentsResponse = ListTrialComponentsResponse'
  { _ltcrrsNextToken ::
      !(Maybe Text),
    _ltcrrsTrialComponentSummaries ::
      !( Maybe
           [TrialComponentSummary]
       ),
    _ltcrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTrialComponentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltcrrsNextToken' - A token for getting the next set of components, if there are any.
--
-- * 'ltcrrsTrialComponentSummaries' - A list of the summaries of your trial components.
--
-- * 'ltcrrsResponseStatus' - -- | The response status code.
listTrialComponentsResponse ::
  -- | 'ltcrrsResponseStatus'
  Int ->
  ListTrialComponentsResponse
listTrialComponentsResponse pResponseStatus_ =
  ListTrialComponentsResponse'
    { _ltcrrsNextToken =
        Nothing,
      _ltcrrsTrialComponentSummaries = Nothing,
      _ltcrrsResponseStatus = pResponseStatus_
    }

-- | A token for getting the next set of components, if there are any.
ltcrrsNextToken :: Lens' ListTrialComponentsResponse (Maybe Text)
ltcrrsNextToken = lens _ltcrrsNextToken (\s a -> s {_ltcrrsNextToken = a})

-- | A list of the summaries of your trial components.
ltcrrsTrialComponentSummaries :: Lens' ListTrialComponentsResponse [TrialComponentSummary]
ltcrrsTrialComponentSummaries = lens _ltcrrsTrialComponentSummaries (\s a -> s {_ltcrrsTrialComponentSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
ltcrrsResponseStatus :: Lens' ListTrialComponentsResponse Int
ltcrrsResponseStatus = lens _ltcrrsResponseStatus (\s a -> s {_ltcrrsResponseStatus = a})

instance NFData ListTrialComponentsResponse
