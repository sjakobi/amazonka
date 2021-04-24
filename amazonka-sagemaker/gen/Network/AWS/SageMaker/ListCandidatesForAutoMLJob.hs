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
-- Module      : Network.AWS.SageMaker.ListCandidatesForAutoMLJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the Candidates created for the job.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListCandidatesForAutoMLJob
  ( -- * Creating a Request
    listCandidatesForAutoMLJob,
    ListCandidatesForAutoMLJob,

    -- * Request Lenses
    lcfamljSortOrder,
    lcfamljNextToken,
    lcfamljMaxResults,
    lcfamljCandidateNameEquals,
    lcfamljSortBy,
    lcfamljStatusEquals,
    lcfamljAutoMLJobName,

    -- * Destructuring the Response
    listCandidatesForAutoMLJobResponse,
    ListCandidatesForAutoMLJobResponse,

    -- * Response Lenses
    lcfamljrrsNextToken,
    lcfamljrrsResponseStatus,
    lcfamljrrsCandidates,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listCandidatesForAutoMLJob' smart constructor.
data ListCandidatesForAutoMLJob = ListCandidatesForAutoMLJob'
  { _lcfamljSortOrder ::
      !( Maybe
           AutoMLSortOrder
       ),
    _lcfamljNextToken ::
      !(Maybe Text),
    _lcfamljMaxResults ::
      !(Maybe Nat),
    _lcfamljCandidateNameEquals ::
      !(Maybe Text),
    _lcfamljSortBy ::
      !( Maybe
           CandidateSortBy
       ),
    _lcfamljStatusEquals ::
      !( Maybe
           CandidateStatus
       ),
    _lcfamljAutoMLJobName ::
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

-- | Creates a value of 'ListCandidatesForAutoMLJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcfamljSortOrder' - The sort order for the results. The default is Ascending.
--
-- * 'lcfamljNextToken' - If the previous response was truncated, you receive this token. Use it in your next request to receive the next set of results.
--
-- * 'lcfamljMaxResults' - List the job's Candidates up to a specified limit.
--
-- * 'lcfamljCandidateNameEquals' - List the Candidates for the job and filter by candidate name.
--
-- * 'lcfamljSortBy' - The parameter by which to sort the results. The default is Descending.
--
-- * 'lcfamljStatusEquals' - List the Candidates for the job and filter by status.
--
-- * 'lcfamljAutoMLJobName' - List the Candidates created for the job by providing the job's name.
listCandidatesForAutoMLJob ::
  -- | 'lcfamljAutoMLJobName'
  Text ->
  ListCandidatesForAutoMLJob
listCandidatesForAutoMLJob pAutoMLJobName_ =
  ListCandidatesForAutoMLJob'
    { _lcfamljSortOrder =
        Nothing,
      _lcfamljNextToken = Nothing,
      _lcfamljMaxResults = Nothing,
      _lcfamljCandidateNameEquals = Nothing,
      _lcfamljSortBy = Nothing,
      _lcfamljStatusEquals = Nothing,
      _lcfamljAutoMLJobName = pAutoMLJobName_
    }

-- | The sort order for the results. The default is Ascending.
lcfamljSortOrder :: Lens' ListCandidatesForAutoMLJob (Maybe AutoMLSortOrder)
lcfamljSortOrder = lens _lcfamljSortOrder (\s a -> s {_lcfamljSortOrder = a})

-- | If the previous response was truncated, you receive this token. Use it in your next request to receive the next set of results.
lcfamljNextToken :: Lens' ListCandidatesForAutoMLJob (Maybe Text)
lcfamljNextToken = lens _lcfamljNextToken (\s a -> s {_lcfamljNextToken = a})

-- | List the job's Candidates up to a specified limit.
lcfamljMaxResults :: Lens' ListCandidatesForAutoMLJob (Maybe Natural)
lcfamljMaxResults = lens _lcfamljMaxResults (\s a -> s {_lcfamljMaxResults = a}) . mapping _Nat

-- | List the Candidates for the job and filter by candidate name.
lcfamljCandidateNameEquals :: Lens' ListCandidatesForAutoMLJob (Maybe Text)
lcfamljCandidateNameEquals = lens _lcfamljCandidateNameEquals (\s a -> s {_lcfamljCandidateNameEquals = a})

-- | The parameter by which to sort the results. The default is Descending.
lcfamljSortBy :: Lens' ListCandidatesForAutoMLJob (Maybe CandidateSortBy)
lcfamljSortBy = lens _lcfamljSortBy (\s a -> s {_lcfamljSortBy = a})

-- | List the Candidates for the job and filter by status.
lcfamljStatusEquals :: Lens' ListCandidatesForAutoMLJob (Maybe CandidateStatus)
lcfamljStatusEquals = lens _lcfamljStatusEquals (\s a -> s {_lcfamljStatusEquals = a})

-- | List the Candidates created for the job by providing the job's name.
lcfamljAutoMLJobName :: Lens' ListCandidatesForAutoMLJob Text
lcfamljAutoMLJobName = lens _lcfamljAutoMLJobName (\s a -> s {_lcfamljAutoMLJobName = a})

instance AWSPager ListCandidatesForAutoMLJob where
  page rq rs
    | stop (rs ^. lcfamljrrsNextToken) = Nothing
    | stop (rs ^. lcfamljrrsCandidates) = Nothing
    | otherwise =
      Just $
        rq
          & lcfamljNextToken .~ rs ^. lcfamljrrsNextToken

instance AWSRequest ListCandidatesForAutoMLJob where
  type
    Rs ListCandidatesForAutoMLJob =
      ListCandidatesForAutoMLJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListCandidatesForAutoMLJobResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "Candidates" .!@ mempty)
      )

instance Hashable ListCandidatesForAutoMLJob

instance NFData ListCandidatesForAutoMLJob

instance ToHeaders ListCandidatesForAutoMLJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListCandidatesForAutoMLJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListCandidatesForAutoMLJob where
  toJSON ListCandidatesForAutoMLJob' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lcfamljSortOrder,
            ("NextToken" .=) <$> _lcfamljNextToken,
            ("MaxResults" .=) <$> _lcfamljMaxResults,
            ("CandidateNameEquals" .=)
              <$> _lcfamljCandidateNameEquals,
            ("SortBy" .=) <$> _lcfamljSortBy,
            ("StatusEquals" .=) <$> _lcfamljStatusEquals,
            Just ("AutoMLJobName" .= _lcfamljAutoMLJobName)
          ]
      )

instance ToPath ListCandidatesForAutoMLJob where
  toPath = const "/"

instance ToQuery ListCandidatesForAutoMLJob where
  toQuery = const mempty

-- | /See:/ 'listCandidatesForAutoMLJobResponse' smart constructor.
data ListCandidatesForAutoMLJobResponse = ListCandidatesForAutoMLJobResponse'
  { _lcfamljrrsNextToken ::
      !( Maybe
           Text
       ),
    _lcfamljrrsResponseStatus ::
      !Int,
    _lcfamljrrsCandidates ::
      ![AutoMLCandidate]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListCandidatesForAutoMLJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcfamljrrsNextToken' - If the previous response was truncated, you receive this token. Use it in your next request to receive the next set of results.
--
-- * 'lcfamljrrsResponseStatus' - -- | The response status code.
--
-- * 'lcfamljrrsCandidates' - Summaries about the Candidates.
listCandidatesForAutoMLJobResponse ::
  -- | 'lcfamljrrsResponseStatus'
  Int ->
  ListCandidatesForAutoMLJobResponse
listCandidatesForAutoMLJobResponse pResponseStatus_ =
  ListCandidatesForAutoMLJobResponse'
    { _lcfamljrrsNextToken =
        Nothing,
      _lcfamljrrsResponseStatus =
        pResponseStatus_,
      _lcfamljrrsCandidates = mempty
    }

-- | If the previous response was truncated, you receive this token. Use it in your next request to receive the next set of results.
lcfamljrrsNextToken :: Lens' ListCandidatesForAutoMLJobResponse (Maybe Text)
lcfamljrrsNextToken = lens _lcfamljrrsNextToken (\s a -> s {_lcfamljrrsNextToken = a})

-- | -- | The response status code.
lcfamljrrsResponseStatus :: Lens' ListCandidatesForAutoMLJobResponse Int
lcfamljrrsResponseStatus = lens _lcfamljrrsResponseStatus (\s a -> s {_lcfamljrrsResponseStatus = a})

-- | Summaries about the Candidates.
lcfamljrrsCandidates :: Lens' ListCandidatesForAutoMLJobResponse [AutoMLCandidate]
lcfamljrrsCandidates = lens _lcfamljrrsCandidates (\s a -> s {_lcfamljrrsCandidates = a}) . _Coerce

instance NFData ListCandidatesForAutoMLJobResponse
