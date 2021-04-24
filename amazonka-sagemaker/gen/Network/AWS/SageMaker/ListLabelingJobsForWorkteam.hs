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
-- Module      : Network.AWS.SageMaker.ListLabelingJobsForWorkteam
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of labeling jobs assigned to a specified work team.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListLabelingJobsForWorkteam
  ( -- * Creating a Request
    listLabelingJobsForWorkteam,
    ListLabelingJobsForWorkteam,

    -- * Request Lenses
    lljfwSortOrder,
    lljfwNextToken,
    lljfwMaxResults,
    lljfwCreationTimeBefore,
    lljfwJobReferenceCodeContains,
    lljfwSortBy,
    lljfwCreationTimeAfter,
    lljfwWorkteamARN,

    -- * Destructuring the Response
    listLabelingJobsForWorkteamResponse,
    ListLabelingJobsForWorkteamResponse,

    -- * Response Lenses
    lljfwrrsNextToken,
    lljfwrrsResponseStatus,
    lljfwrrsLabelingJobSummaryList,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listLabelingJobsForWorkteam' smart constructor.
data ListLabelingJobsForWorkteam = ListLabelingJobsForWorkteam'
  { _lljfwSortOrder ::
      !( Maybe
           SortOrder
       ),
    _lljfwNextToken ::
      !(Maybe Text),
    _lljfwMaxResults ::
      !(Maybe Nat),
    _lljfwCreationTimeBefore ::
      !(Maybe POSIX),
    _lljfwJobReferenceCodeContains ::
      !(Maybe Text),
    _lljfwSortBy ::
      !( Maybe
           ListLabelingJobsForWorkteamSortByOptions
       ),
    _lljfwCreationTimeAfter ::
      !(Maybe POSIX),
    _lljfwWorkteamARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListLabelingJobsForWorkteam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lljfwSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'lljfwNextToken' - If the result of the previous @ListLabelingJobsForWorkteam@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of labeling jobs, use the token in the next request.
--
-- * 'lljfwMaxResults' - The maximum number of labeling jobs to return in each page of the response.
--
-- * 'lljfwCreationTimeBefore' - A filter that returns only labeling jobs created before the specified time (timestamp).
--
-- * 'lljfwJobReferenceCodeContains' - A filter the limits jobs to only the ones whose job reference code contains the specified string.
--
-- * 'lljfwSortBy' - The field to sort results by. The default is @CreationTime@ .
--
-- * 'lljfwCreationTimeAfter' - A filter that returns only labeling jobs created after the specified time (timestamp).
--
-- * 'lljfwWorkteamARN' - The Amazon Resource Name (ARN) of the work team for which you want to see labeling jobs for.
listLabelingJobsForWorkteam ::
  -- | 'lljfwWorkteamARN'
  Text ->
  ListLabelingJobsForWorkteam
listLabelingJobsForWorkteam pWorkteamARN_ =
  ListLabelingJobsForWorkteam'
    { _lljfwSortOrder =
        Nothing,
      _lljfwNextToken = Nothing,
      _lljfwMaxResults = Nothing,
      _lljfwCreationTimeBefore = Nothing,
      _lljfwJobReferenceCodeContains = Nothing,
      _lljfwSortBy = Nothing,
      _lljfwCreationTimeAfter = Nothing,
      _lljfwWorkteamARN = pWorkteamARN_
    }

-- | The sort order for results. The default is @Ascending@ .
lljfwSortOrder :: Lens' ListLabelingJobsForWorkteam (Maybe SortOrder)
lljfwSortOrder = lens _lljfwSortOrder (\s a -> s {_lljfwSortOrder = a})

-- | If the result of the previous @ListLabelingJobsForWorkteam@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of labeling jobs, use the token in the next request.
lljfwNextToken :: Lens' ListLabelingJobsForWorkteam (Maybe Text)
lljfwNextToken = lens _lljfwNextToken (\s a -> s {_lljfwNextToken = a})

-- | The maximum number of labeling jobs to return in each page of the response.
lljfwMaxResults :: Lens' ListLabelingJobsForWorkteam (Maybe Natural)
lljfwMaxResults = lens _lljfwMaxResults (\s a -> s {_lljfwMaxResults = a}) . mapping _Nat

-- | A filter that returns only labeling jobs created before the specified time (timestamp).
lljfwCreationTimeBefore :: Lens' ListLabelingJobsForWorkteam (Maybe UTCTime)
lljfwCreationTimeBefore = lens _lljfwCreationTimeBefore (\s a -> s {_lljfwCreationTimeBefore = a}) . mapping _Time

-- | A filter the limits jobs to only the ones whose job reference code contains the specified string.
lljfwJobReferenceCodeContains :: Lens' ListLabelingJobsForWorkteam (Maybe Text)
lljfwJobReferenceCodeContains = lens _lljfwJobReferenceCodeContains (\s a -> s {_lljfwJobReferenceCodeContains = a})

-- | The field to sort results by. The default is @CreationTime@ .
lljfwSortBy :: Lens' ListLabelingJobsForWorkteam (Maybe ListLabelingJobsForWorkteamSortByOptions)
lljfwSortBy = lens _lljfwSortBy (\s a -> s {_lljfwSortBy = a})

-- | A filter that returns only labeling jobs created after the specified time (timestamp).
lljfwCreationTimeAfter :: Lens' ListLabelingJobsForWorkteam (Maybe UTCTime)
lljfwCreationTimeAfter = lens _lljfwCreationTimeAfter (\s a -> s {_lljfwCreationTimeAfter = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the work team for which you want to see labeling jobs for.
lljfwWorkteamARN :: Lens' ListLabelingJobsForWorkteam Text
lljfwWorkteamARN = lens _lljfwWorkteamARN (\s a -> s {_lljfwWorkteamARN = a})

instance AWSPager ListLabelingJobsForWorkteam where
  page rq rs
    | stop (rs ^. lljfwrrsNextToken) = Nothing
    | stop (rs ^. lljfwrrsLabelingJobSummaryList) =
      Nothing
    | otherwise =
      Just $ rq & lljfwNextToken .~ rs ^. lljfwrrsNextToken

instance AWSRequest ListLabelingJobsForWorkteam where
  type
    Rs ListLabelingJobsForWorkteam =
      ListLabelingJobsForWorkteamResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListLabelingJobsForWorkteamResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "LabelingJobSummaryList" .!@ mempty)
      )

instance Hashable ListLabelingJobsForWorkteam

instance NFData ListLabelingJobsForWorkteam

instance ToHeaders ListLabelingJobsForWorkteam where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListLabelingJobsForWorkteam" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListLabelingJobsForWorkteam where
  toJSON ListLabelingJobsForWorkteam' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lljfwSortOrder,
            ("NextToken" .=) <$> _lljfwNextToken,
            ("MaxResults" .=) <$> _lljfwMaxResults,
            ("CreationTimeBefore" .=)
              <$> _lljfwCreationTimeBefore,
            ("JobReferenceCodeContains" .=)
              <$> _lljfwJobReferenceCodeContains,
            ("SortBy" .=) <$> _lljfwSortBy,
            ("CreationTimeAfter" .=) <$> _lljfwCreationTimeAfter,
            Just ("WorkteamArn" .= _lljfwWorkteamARN)
          ]
      )

instance ToPath ListLabelingJobsForWorkteam where
  toPath = const "/"

instance ToQuery ListLabelingJobsForWorkteam where
  toQuery = const mempty

-- | /See:/ 'listLabelingJobsForWorkteamResponse' smart constructor.
data ListLabelingJobsForWorkteamResponse = ListLabelingJobsForWorkteamResponse'
  { _lljfwrrsNextToken ::
      !( Maybe
           Text
       ),
    _lljfwrrsResponseStatus ::
      !Int,
    _lljfwrrsLabelingJobSummaryList ::
      ![LabelingJobForWorkteamSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListLabelingJobsForWorkteamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lljfwrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of labeling jobs, use it in the subsequent request.
--
-- * 'lljfwrrsResponseStatus' - -- | The response status code.
--
-- * 'lljfwrrsLabelingJobSummaryList' - An array of @LabelingJobSummary@ objects, each describing a labeling job.
listLabelingJobsForWorkteamResponse ::
  -- | 'lljfwrrsResponseStatus'
  Int ->
  ListLabelingJobsForWorkteamResponse
listLabelingJobsForWorkteamResponse pResponseStatus_ =
  ListLabelingJobsForWorkteamResponse'
    { _lljfwrrsNextToken =
        Nothing,
      _lljfwrrsResponseStatus =
        pResponseStatus_,
      _lljfwrrsLabelingJobSummaryList =
        mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of labeling jobs, use it in the subsequent request.
lljfwrrsNextToken :: Lens' ListLabelingJobsForWorkteamResponse (Maybe Text)
lljfwrrsNextToken = lens _lljfwrrsNextToken (\s a -> s {_lljfwrrsNextToken = a})

-- | -- | The response status code.
lljfwrrsResponseStatus :: Lens' ListLabelingJobsForWorkteamResponse Int
lljfwrrsResponseStatus = lens _lljfwrrsResponseStatus (\s a -> s {_lljfwrrsResponseStatus = a})

-- | An array of @LabelingJobSummary@ objects, each describing a labeling job.
lljfwrrsLabelingJobSummaryList :: Lens' ListLabelingJobsForWorkteamResponse [LabelingJobForWorkteamSummary]
lljfwrrsLabelingJobSummaryList = lens _lljfwrrsLabelingJobSummaryList (\s a -> s {_lljfwrrsLabelingJobSummaryList = a}) . _Coerce

instance NFData ListLabelingJobsForWorkteamResponse
