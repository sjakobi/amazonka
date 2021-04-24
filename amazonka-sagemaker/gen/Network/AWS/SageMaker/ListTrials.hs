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
-- Module      : Network.AWS.SageMaker.ListTrials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the trials in your account. Specify an experiment name to limit the list to the trials that are part of that experiment. Specify a trial component name to limit the list to the trials that associated with that trial component. The list can be filtered to show only trials that were created in a specific time range. The list can be sorted by trial name or creation time.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListTrials
  ( -- * Creating a Request
    listTrials,
    ListTrials,

    -- * Request Lenses
    ltCreatedAfter,
    ltSortOrder,
    ltNextToken,
    ltCreatedBefore,
    ltMaxResults,
    ltSortBy,
    ltExperimentName,
    ltTrialComponentName,

    -- * Destructuring the Response
    listTrialsResponse,
    ListTrialsResponse,

    -- * Response Lenses
    ltrtrsNextToken,
    ltrtrsTrialSummaries,
    ltrtrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listTrials' smart constructor.
data ListTrials = ListTrials'
  { _ltCreatedAfter ::
      !(Maybe POSIX),
    _ltSortOrder :: !(Maybe SortOrder),
    _ltNextToken :: !(Maybe Text),
    _ltCreatedBefore :: !(Maybe POSIX),
    _ltMaxResults :: !(Maybe Nat),
    _ltSortBy :: !(Maybe SortTrialsBy),
    _ltExperimentName :: !(Maybe Text),
    _ltTrialComponentName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTrials' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltCreatedAfter' - A filter that returns only trials created after the specified time.
--
-- * 'ltSortOrder' - The sort order. The default value is @Descending@ .
--
-- * 'ltNextToken' - If the previous call to @ListTrials@ didn't return the full set of trials, the call returns a token for getting the next set of trials.
--
-- * 'ltCreatedBefore' - A filter that returns only trials created before the specified time.
--
-- * 'ltMaxResults' - The maximum number of trials to return in the response. The default value is 10.
--
-- * 'ltSortBy' - The property used to sort results. The default value is @CreationTime@ .
--
-- * 'ltExperimentName' - A filter that returns only trials that are part of the specified experiment.
--
-- * 'ltTrialComponentName' - A filter that returns only trials that are associated with the specified trial component.
listTrials ::
  ListTrials
listTrials =
  ListTrials'
    { _ltCreatedAfter = Nothing,
      _ltSortOrder = Nothing,
      _ltNextToken = Nothing,
      _ltCreatedBefore = Nothing,
      _ltMaxResults = Nothing,
      _ltSortBy = Nothing,
      _ltExperimentName = Nothing,
      _ltTrialComponentName = Nothing
    }

-- | A filter that returns only trials created after the specified time.
ltCreatedAfter :: Lens' ListTrials (Maybe UTCTime)
ltCreatedAfter = lens _ltCreatedAfter (\s a -> s {_ltCreatedAfter = a}) . mapping _Time

-- | The sort order. The default value is @Descending@ .
ltSortOrder :: Lens' ListTrials (Maybe SortOrder)
ltSortOrder = lens _ltSortOrder (\s a -> s {_ltSortOrder = a})

-- | If the previous call to @ListTrials@ didn't return the full set of trials, the call returns a token for getting the next set of trials.
ltNextToken :: Lens' ListTrials (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | A filter that returns only trials created before the specified time.
ltCreatedBefore :: Lens' ListTrials (Maybe UTCTime)
ltCreatedBefore = lens _ltCreatedBefore (\s a -> s {_ltCreatedBefore = a}) . mapping _Time

-- | The maximum number of trials to return in the response. The default value is 10.
ltMaxResults :: Lens' ListTrials (Maybe Natural)
ltMaxResults = lens _ltMaxResults (\s a -> s {_ltMaxResults = a}) . mapping _Nat

-- | The property used to sort results. The default value is @CreationTime@ .
ltSortBy :: Lens' ListTrials (Maybe SortTrialsBy)
ltSortBy = lens _ltSortBy (\s a -> s {_ltSortBy = a})

-- | A filter that returns only trials that are part of the specified experiment.
ltExperimentName :: Lens' ListTrials (Maybe Text)
ltExperimentName = lens _ltExperimentName (\s a -> s {_ltExperimentName = a})

-- | A filter that returns only trials that are associated with the specified trial component.
ltTrialComponentName :: Lens' ListTrials (Maybe Text)
ltTrialComponentName = lens _ltTrialComponentName (\s a -> s {_ltTrialComponentName = a})

instance AWSPager ListTrials where
  page rq rs
    | stop (rs ^. ltrtrsNextToken) = Nothing
    | stop (rs ^. ltrtrsTrialSummaries) = Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrtrsNextToken

instance AWSRequest ListTrials where
  type Rs ListTrials = ListTrialsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListTrialsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TrialSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTrials

instance NFData ListTrials

instance ToHeaders ListTrials where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListTrials" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTrials where
  toJSON ListTrials' {..} =
    object
      ( catMaybes
          [ ("CreatedAfter" .=) <$> _ltCreatedAfter,
            ("SortOrder" .=) <$> _ltSortOrder,
            ("NextToken" .=) <$> _ltNextToken,
            ("CreatedBefore" .=) <$> _ltCreatedBefore,
            ("MaxResults" .=) <$> _ltMaxResults,
            ("SortBy" .=) <$> _ltSortBy,
            ("ExperimentName" .=) <$> _ltExperimentName,
            ("TrialComponentName" .=) <$> _ltTrialComponentName
          ]
      )

instance ToPath ListTrials where
  toPath = const "/"

instance ToQuery ListTrials where
  toQuery = const mempty

-- | /See:/ 'listTrialsResponse' smart constructor.
data ListTrialsResponse = ListTrialsResponse'
  { _ltrtrsNextToken ::
      !(Maybe Text),
    _ltrtrsTrialSummaries ::
      !(Maybe [TrialSummary]),
    _ltrtrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTrialsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrtrsNextToken' - A token for getting the next set of trials, if there are any.
--
-- * 'ltrtrsTrialSummaries' - A list of the summaries of your trials.
--
-- * 'ltrtrsResponseStatus' - -- | The response status code.
listTrialsResponse ::
  -- | 'ltrtrsResponseStatus'
  Int ->
  ListTrialsResponse
listTrialsResponse pResponseStatus_ =
  ListTrialsResponse'
    { _ltrtrsNextToken = Nothing,
      _ltrtrsTrialSummaries = Nothing,
      _ltrtrsResponseStatus = pResponseStatus_
    }

-- | A token for getting the next set of trials, if there are any.
ltrtrsNextToken :: Lens' ListTrialsResponse (Maybe Text)
ltrtrsNextToken = lens _ltrtrsNextToken (\s a -> s {_ltrtrsNextToken = a})

-- | A list of the summaries of your trials.
ltrtrsTrialSummaries :: Lens' ListTrialsResponse [TrialSummary]
ltrtrsTrialSummaries = lens _ltrtrsTrialSummaries (\s a -> s {_ltrtrsTrialSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrtrsResponseStatus :: Lens' ListTrialsResponse Int
ltrtrsResponseStatus = lens _ltrtrsResponseStatus (\s a -> s {_ltrtrsResponseStatus = a})

instance NFData ListTrialsResponse
