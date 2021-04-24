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
-- Module      : Network.AWS.SageMaker.ListTrainingJobsForHyperParameterTuningJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of 'TrainingJobSummary' objects that describe the training jobs that a hyperparameter tuning job launched.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListTrainingJobsForHyperParameterTuningJob
  ( -- * Creating a Request
    listTrainingJobsForHyperParameterTuningJob,
    ListTrainingJobsForHyperParameterTuningJob,

    -- * Request Lenses
    ltjfhptjSortOrder,
    ltjfhptjNextToken,
    ltjfhptjMaxResults,
    ltjfhptjSortBy,
    ltjfhptjStatusEquals,
    ltjfhptjHyperParameterTuningJobName,

    -- * Destructuring the Response
    listTrainingJobsForHyperParameterTuningJobResponse,
    ListTrainingJobsForHyperParameterTuningJobResponse,

    -- * Response Lenses
    ltjfhptjrrsNextToken,
    ltjfhptjrrsResponseStatus,
    ltjfhptjrrsTrainingJobSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listTrainingJobsForHyperParameterTuningJob' smart constructor.
data ListTrainingJobsForHyperParameterTuningJob = ListTrainingJobsForHyperParameterTuningJob'
  { _ltjfhptjSortOrder ::
      !( Maybe
           SortOrder
       ),
    _ltjfhptjNextToken ::
      !( Maybe
           Text
       ),
    _ltjfhptjMaxResults ::
      !( Maybe
           Nat
       ),
    _ltjfhptjSortBy ::
      !( Maybe
           TrainingJobSortByOptions
       ),
    _ltjfhptjStatusEquals ::
      !( Maybe
           TrainingJobStatus
       ),
    _ltjfhptjHyperParameterTuningJobName ::
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

-- | Creates a value of 'ListTrainingJobsForHyperParameterTuningJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltjfhptjSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'ltjfhptjNextToken' - If the result of the previous @ListTrainingJobsForHyperParameterTuningJob@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of training jobs, use the token in the next request.
--
-- * 'ltjfhptjMaxResults' - The maximum number of training jobs to return. The default value is 10.
--
-- * 'ltjfhptjSortBy' - The field to sort results by. The default is @Name@ . If the value of this field is @FinalObjectiveMetricValue@ , any training jobs that did not return an objective metric are not listed.
--
-- * 'ltjfhptjStatusEquals' - A filter that returns only training jobs with the specified status.
--
-- * 'ltjfhptjHyperParameterTuningJobName' - The name of the tuning job whose training jobs you want to list.
listTrainingJobsForHyperParameterTuningJob ::
  -- | 'ltjfhptjHyperParameterTuningJobName'
  Text ->
  ListTrainingJobsForHyperParameterTuningJob
listTrainingJobsForHyperParameterTuningJob
  pHyperParameterTuningJobName_ =
    ListTrainingJobsForHyperParameterTuningJob'
      { _ltjfhptjSortOrder =
          Nothing,
        _ltjfhptjNextToken = Nothing,
        _ltjfhptjMaxResults = Nothing,
        _ltjfhptjSortBy = Nothing,
        _ltjfhptjStatusEquals = Nothing,
        _ltjfhptjHyperParameterTuningJobName =
          pHyperParameterTuningJobName_
      }

-- | The sort order for results. The default is @Ascending@ .
ltjfhptjSortOrder :: Lens' ListTrainingJobsForHyperParameterTuningJob (Maybe SortOrder)
ltjfhptjSortOrder = lens _ltjfhptjSortOrder (\s a -> s {_ltjfhptjSortOrder = a})

-- | If the result of the previous @ListTrainingJobsForHyperParameterTuningJob@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of training jobs, use the token in the next request.
ltjfhptjNextToken :: Lens' ListTrainingJobsForHyperParameterTuningJob (Maybe Text)
ltjfhptjNextToken = lens _ltjfhptjNextToken (\s a -> s {_ltjfhptjNextToken = a})

-- | The maximum number of training jobs to return. The default value is 10.
ltjfhptjMaxResults :: Lens' ListTrainingJobsForHyperParameterTuningJob (Maybe Natural)
ltjfhptjMaxResults = lens _ltjfhptjMaxResults (\s a -> s {_ltjfhptjMaxResults = a}) . mapping _Nat

-- | The field to sort results by. The default is @Name@ . If the value of this field is @FinalObjectiveMetricValue@ , any training jobs that did not return an objective metric are not listed.
ltjfhptjSortBy :: Lens' ListTrainingJobsForHyperParameterTuningJob (Maybe TrainingJobSortByOptions)
ltjfhptjSortBy = lens _ltjfhptjSortBy (\s a -> s {_ltjfhptjSortBy = a})

-- | A filter that returns only training jobs with the specified status.
ltjfhptjStatusEquals :: Lens' ListTrainingJobsForHyperParameterTuningJob (Maybe TrainingJobStatus)
ltjfhptjStatusEquals = lens _ltjfhptjStatusEquals (\s a -> s {_ltjfhptjStatusEquals = a})

-- | The name of the tuning job whose training jobs you want to list.
ltjfhptjHyperParameterTuningJobName :: Lens' ListTrainingJobsForHyperParameterTuningJob Text
ltjfhptjHyperParameterTuningJobName = lens _ltjfhptjHyperParameterTuningJobName (\s a -> s {_ltjfhptjHyperParameterTuningJobName = a})

instance
  AWSPager
    ListTrainingJobsForHyperParameterTuningJob
  where
  page rq rs
    | stop (rs ^. ltjfhptjrrsNextToken) = Nothing
    | stop (rs ^. ltjfhptjrrsTrainingJobSummaries) =
      Nothing
    | otherwise =
      Just $
        rq
          & ltjfhptjNextToken .~ rs ^. ltjfhptjrrsNextToken

instance
  AWSRequest
    ListTrainingJobsForHyperParameterTuningJob
  where
  type
    Rs ListTrainingJobsForHyperParameterTuningJob =
      ListTrainingJobsForHyperParameterTuningJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListTrainingJobsForHyperParameterTuningJobResponse'
            <$> (x .?> "NextToken") <*> (pure (fromEnum s))
              <*> (x .?> "TrainingJobSummaries" .!@ mempty)
      )

instance
  Hashable
    ListTrainingJobsForHyperParameterTuningJob

instance
  NFData
    ListTrainingJobsForHyperParameterTuningJob

instance
  ToHeaders
    ListTrainingJobsForHyperParameterTuningJob
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListTrainingJobsForHyperParameterTuningJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    ListTrainingJobsForHyperParameterTuningJob
  where
  toJSON
    ListTrainingJobsForHyperParameterTuningJob' {..} =
      object
        ( catMaybes
            [ ("SortOrder" .=) <$> _ltjfhptjSortOrder,
              ("NextToken" .=) <$> _ltjfhptjNextToken,
              ("MaxResults" .=) <$> _ltjfhptjMaxResults,
              ("SortBy" .=) <$> _ltjfhptjSortBy,
              ("StatusEquals" .=) <$> _ltjfhptjStatusEquals,
              Just
                ( "HyperParameterTuningJobName"
                    .= _ltjfhptjHyperParameterTuningJobName
                )
            ]
        )

instance
  ToPath
    ListTrainingJobsForHyperParameterTuningJob
  where
  toPath = const "/"

instance
  ToQuery
    ListTrainingJobsForHyperParameterTuningJob
  where
  toQuery = const mempty

-- | /See:/ 'listTrainingJobsForHyperParameterTuningJobResponse' smart constructor.
data ListTrainingJobsForHyperParameterTuningJobResponse = ListTrainingJobsForHyperParameterTuningJobResponse'
  { _ltjfhptjrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltjfhptjrrsResponseStatus ::
      !Int,
    _ltjfhptjrrsTrainingJobSummaries ::
      ![HyperParameterTrainingJobSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTrainingJobsForHyperParameterTuningJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltjfhptjrrsNextToken' - If the result of this @ListTrainingJobsForHyperParameterTuningJob@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of training jobs, use the token in the next request.
--
-- * 'ltjfhptjrrsResponseStatus' - -- | The response status code.
--
-- * 'ltjfhptjrrsTrainingJobSummaries' - A list of 'TrainingJobSummary' objects that describe the training jobs that the @ListTrainingJobsForHyperParameterTuningJob@ request returned.
listTrainingJobsForHyperParameterTuningJobResponse ::
  -- | 'ltjfhptjrrsResponseStatus'
  Int ->
  ListTrainingJobsForHyperParameterTuningJobResponse
listTrainingJobsForHyperParameterTuningJobResponse
  pResponseStatus_ =
    ListTrainingJobsForHyperParameterTuningJobResponse'
      { _ltjfhptjrrsNextToken =
          Nothing,
        _ltjfhptjrrsResponseStatus =
          pResponseStatus_,
        _ltjfhptjrrsTrainingJobSummaries =
          mempty
      }

-- | If the result of this @ListTrainingJobsForHyperParameterTuningJob@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of training jobs, use the token in the next request.
ltjfhptjrrsNextToken :: Lens' ListTrainingJobsForHyperParameterTuningJobResponse (Maybe Text)
ltjfhptjrrsNextToken = lens _ltjfhptjrrsNextToken (\s a -> s {_ltjfhptjrrsNextToken = a})

-- | -- | The response status code.
ltjfhptjrrsResponseStatus :: Lens' ListTrainingJobsForHyperParameterTuningJobResponse Int
ltjfhptjrrsResponseStatus = lens _ltjfhptjrrsResponseStatus (\s a -> s {_ltjfhptjrrsResponseStatus = a})

-- | A list of 'TrainingJobSummary' objects that describe the training jobs that the @ListTrainingJobsForHyperParameterTuningJob@ request returned.
ltjfhptjrrsTrainingJobSummaries :: Lens' ListTrainingJobsForHyperParameterTuningJobResponse [HyperParameterTrainingJobSummary]
ltjfhptjrrsTrainingJobSummaries = lens _ltjfhptjrrsTrainingJobSummaries (\s a -> s {_ltjfhptjrrsTrainingJobSummaries = a}) . _Coerce

instance
  NFData
    ListTrainingJobsForHyperParameterTuningJobResponse
