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
-- Module      : Network.AWS.SageMaker.ListExperiments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the experiments in your account. The list can be filtered to show only experiments that were created in a specific time range. The list can be sorted by experiment name or creation time.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListExperiments
  ( -- * Creating a Request
    listExperiments,
    ListExperiments,

    -- * Request Lenses
    lesCreatedAfter,
    lesSortOrder,
    lesNextToken,
    lesCreatedBefore,
    lesMaxResults,
    lesSortBy,

    -- * Destructuring the Response
    listExperimentsResponse,
    ListExperimentsResponse,

    -- * Response Lenses
    lerersNextToken,
    lerersExperimentSummaries,
    lerersResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listExperiments' smart constructor.
data ListExperiments = ListExperiments'
  { _lesCreatedAfter ::
      !(Maybe POSIX),
    _lesSortOrder :: !(Maybe SortOrder),
    _lesNextToken :: !(Maybe Text),
    _lesCreatedBefore :: !(Maybe POSIX),
    _lesMaxResults :: !(Maybe Nat),
    _lesSortBy ::
      !(Maybe SortExperimentsBy)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListExperiments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lesCreatedAfter' - A filter that returns only experiments created after the specified time.
--
-- * 'lesSortOrder' - The sort order. The default value is @Descending@ .
--
-- * 'lesNextToken' - If the previous call to @ListExperiments@ didn't return the full set of experiments, the call returns a token for getting the next set of experiments.
--
-- * 'lesCreatedBefore' - A filter that returns only experiments created before the specified time.
--
-- * 'lesMaxResults' - The maximum number of experiments to return in the response. The default value is 10.
--
-- * 'lesSortBy' - The property used to sort results. The default value is @CreationTime@ .
listExperiments ::
  ListExperiments
listExperiments =
  ListExperiments'
    { _lesCreatedAfter = Nothing,
      _lesSortOrder = Nothing,
      _lesNextToken = Nothing,
      _lesCreatedBefore = Nothing,
      _lesMaxResults = Nothing,
      _lesSortBy = Nothing
    }

-- | A filter that returns only experiments created after the specified time.
lesCreatedAfter :: Lens' ListExperiments (Maybe UTCTime)
lesCreatedAfter = lens _lesCreatedAfter (\s a -> s {_lesCreatedAfter = a}) . mapping _Time

-- | The sort order. The default value is @Descending@ .
lesSortOrder :: Lens' ListExperiments (Maybe SortOrder)
lesSortOrder = lens _lesSortOrder (\s a -> s {_lesSortOrder = a})

-- | If the previous call to @ListExperiments@ didn't return the full set of experiments, the call returns a token for getting the next set of experiments.
lesNextToken :: Lens' ListExperiments (Maybe Text)
lesNextToken = lens _lesNextToken (\s a -> s {_lesNextToken = a})

-- | A filter that returns only experiments created before the specified time.
lesCreatedBefore :: Lens' ListExperiments (Maybe UTCTime)
lesCreatedBefore = lens _lesCreatedBefore (\s a -> s {_lesCreatedBefore = a}) . mapping _Time

-- | The maximum number of experiments to return in the response. The default value is 10.
lesMaxResults :: Lens' ListExperiments (Maybe Natural)
lesMaxResults = lens _lesMaxResults (\s a -> s {_lesMaxResults = a}) . mapping _Nat

-- | The property used to sort results. The default value is @CreationTime@ .
lesSortBy :: Lens' ListExperiments (Maybe SortExperimentsBy)
lesSortBy = lens _lesSortBy (\s a -> s {_lesSortBy = a})

instance AWSPager ListExperiments where
  page rq rs
    | stop (rs ^. lerersNextToken) = Nothing
    | stop (rs ^. lerersExperimentSummaries) = Nothing
    | otherwise =
      Just $ rq & lesNextToken .~ rs ^. lerersNextToken

instance AWSRequest ListExperiments where
  type Rs ListExperiments = ListExperimentsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListExperimentsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ExperimentSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListExperiments

instance NFData ListExperiments

instance ToHeaders ListExperiments where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListExperiments" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListExperiments where
  toJSON ListExperiments' {..} =
    object
      ( catMaybes
          [ ("CreatedAfter" .=) <$> _lesCreatedAfter,
            ("SortOrder" .=) <$> _lesSortOrder,
            ("NextToken" .=) <$> _lesNextToken,
            ("CreatedBefore" .=) <$> _lesCreatedBefore,
            ("MaxResults" .=) <$> _lesMaxResults,
            ("SortBy" .=) <$> _lesSortBy
          ]
      )

instance ToPath ListExperiments where
  toPath = const "/"

instance ToQuery ListExperiments where
  toQuery = const mempty

-- | /See:/ 'listExperimentsResponse' smart constructor.
data ListExperimentsResponse = ListExperimentsResponse'
  { _lerersNextToken ::
      !(Maybe Text),
    _lerersExperimentSummaries ::
      !( Maybe
           [ExperimentSummary]
       ),
    _lerersResponseStatus ::
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

-- | Creates a value of 'ListExperimentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerersNextToken' - A token for getting the next set of experiments, if there are any.
--
-- * 'lerersExperimentSummaries' - A list of the summaries of your experiments.
--
-- * 'lerersResponseStatus' - -- | The response status code.
listExperimentsResponse ::
  -- | 'lerersResponseStatus'
  Int ->
  ListExperimentsResponse
listExperimentsResponse pResponseStatus_ =
  ListExperimentsResponse'
    { _lerersNextToken =
        Nothing,
      _lerersExperimentSummaries = Nothing,
      _lerersResponseStatus = pResponseStatus_
    }

-- | A token for getting the next set of experiments, if there are any.
lerersNextToken :: Lens' ListExperimentsResponse (Maybe Text)
lerersNextToken = lens _lerersNextToken (\s a -> s {_lerersNextToken = a})

-- | A list of the summaries of your experiments.
lerersExperimentSummaries :: Lens' ListExperimentsResponse [ExperimentSummary]
lerersExperimentSummaries = lens _lerersExperimentSummaries (\s a -> s {_lerersExperimentSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lerersResponseStatus :: Lens' ListExperimentsResponse Int
lerersResponseStatus = lens _lerersResponseStatus (\s a -> s {_lerersResponseStatus = a})

instance NFData ListExperimentsResponse
