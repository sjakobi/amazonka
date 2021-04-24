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
-- Module      : Network.AWS.SageMaker.ListProjects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the projects in an AWS account.
module Network.AWS.SageMaker.ListProjects
  ( -- * Creating a Request
    listProjects,
    ListProjects,

    -- * Request Lenses
    lpSortOrder,
    lpNextToken,
    lpNameContains,
    lpMaxResults,
    lpCreationTimeBefore,
    lpSortBy,
    lpCreationTimeAfter,

    -- * Destructuring the Response
    listProjectsResponse,
    ListProjectsResponse,

    -- * Response Lenses
    lprrsNextToken,
    lprrsResponseStatus,
    lprrsProjectSummaryList,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listProjects' smart constructor.
data ListProjects = ListProjects'
  { _lpSortOrder ::
      !(Maybe ProjectSortOrder),
    _lpNextToken :: !(Maybe Text),
    _lpNameContains :: !(Maybe Text),
    _lpMaxResults :: !(Maybe Nat),
    _lpCreationTimeBefore :: !(Maybe POSIX),
    _lpSortBy :: !(Maybe ProjectSortBy),
    _lpCreationTimeAfter :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListProjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'lpNextToken' - If the result of the previous @ListProjects@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of projects, use the token in the next request.
--
-- * 'lpNameContains' - A filter that returns the projects whose name contains a specified string.
--
-- * 'lpMaxResults' - The maximum number of projects to return in the response.
--
-- * 'lpCreationTimeBefore' - A filter that returns the projects that were created before a specified time.
--
-- * 'lpSortBy' - The field by which to sort results. The default is @CreationTime@ .
--
-- * 'lpCreationTimeAfter' - A filter that returns the projects that were created after a specified time.
listProjects ::
  ListProjects
listProjects =
  ListProjects'
    { _lpSortOrder = Nothing,
      _lpNextToken = Nothing,
      _lpNameContains = Nothing,
      _lpMaxResults = Nothing,
      _lpCreationTimeBefore = Nothing,
      _lpSortBy = Nothing,
      _lpCreationTimeAfter = Nothing
    }

-- | The sort order for results. The default is @Ascending@ .
lpSortOrder :: Lens' ListProjects (Maybe ProjectSortOrder)
lpSortOrder = lens _lpSortOrder (\s a -> s {_lpSortOrder = a})

-- | If the result of the previous @ListProjects@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of projects, use the token in the next request.
lpNextToken :: Lens' ListProjects (Maybe Text)
lpNextToken = lens _lpNextToken (\s a -> s {_lpNextToken = a})

-- | A filter that returns the projects whose name contains a specified string.
lpNameContains :: Lens' ListProjects (Maybe Text)
lpNameContains = lens _lpNameContains (\s a -> s {_lpNameContains = a})

-- | The maximum number of projects to return in the response.
lpMaxResults :: Lens' ListProjects (Maybe Natural)
lpMaxResults = lens _lpMaxResults (\s a -> s {_lpMaxResults = a}) . mapping _Nat

-- | A filter that returns the projects that were created before a specified time.
lpCreationTimeBefore :: Lens' ListProjects (Maybe UTCTime)
lpCreationTimeBefore = lens _lpCreationTimeBefore (\s a -> s {_lpCreationTimeBefore = a}) . mapping _Time

-- | The field by which to sort results. The default is @CreationTime@ .
lpSortBy :: Lens' ListProjects (Maybe ProjectSortBy)
lpSortBy = lens _lpSortBy (\s a -> s {_lpSortBy = a})

-- | A filter that returns the projects that were created after a specified time.
lpCreationTimeAfter :: Lens' ListProjects (Maybe UTCTime)
lpCreationTimeAfter = lens _lpCreationTimeAfter (\s a -> s {_lpCreationTimeAfter = a}) . mapping _Time

instance AWSRequest ListProjects where
  type Rs ListProjects = ListProjectsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListProjectsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "ProjectSummaryList" .!@ mempty)
      )

instance Hashable ListProjects

instance NFData ListProjects

instance ToHeaders ListProjects where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListProjects" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListProjects where
  toJSON ListProjects' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lpSortOrder,
            ("NextToken" .=) <$> _lpNextToken,
            ("NameContains" .=) <$> _lpNameContains,
            ("MaxResults" .=) <$> _lpMaxResults,
            ("CreationTimeBefore" .=) <$> _lpCreationTimeBefore,
            ("SortBy" .=) <$> _lpSortBy,
            ("CreationTimeAfter" .=) <$> _lpCreationTimeAfter
          ]
      )

instance ToPath ListProjects where
  toPath = const "/"

instance ToQuery ListProjects where
  toQuery = const mempty

-- | /See:/ 'listProjectsResponse' smart constructor.
data ListProjectsResponse = ListProjectsResponse'
  { _lprrsNextToken ::
      !(Maybe Text),
    _lprrsResponseStatus :: !Int,
    _lprrsProjectSummaryList ::
      ![ProjectSummary]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListProjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsNextToken' - If the result of the previous @ListCompilationJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of model compilation jobs, use the token in the next request.
--
-- * 'lprrsResponseStatus' - -- | The response status code.
--
-- * 'lprrsProjectSummaryList' - A list of summaries of projects.
listProjectsResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListProjectsResponse
listProjectsResponse pResponseStatus_ =
  ListProjectsResponse'
    { _lprrsNextToken = Nothing,
      _lprrsResponseStatus = pResponseStatus_,
      _lprrsProjectSummaryList = mempty
    }

-- | If the result of the previous @ListCompilationJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of model compilation jobs, use the token in the next request.
lprrsNextToken :: Lens' ListProjectsResponse (Maybe Text)
lprrsNextToken = lens _lprrsNextToken (\s a -> s {_lprrsNextToken = a})

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListProjectsResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

-- | A list of summaries of projects.
lprrsProjectSummaryList :: Lens' ListProjectsResponse [ProjectSummary]
lprrsProjectSummaryList = lens _lprrsProjectSummaryList (\s a -> s {_lprrsProjectSummaryList = a}) . _Coerce

instance NFData ListProjectsResponse
