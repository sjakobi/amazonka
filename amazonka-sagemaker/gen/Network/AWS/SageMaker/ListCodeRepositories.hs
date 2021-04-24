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
-- Module      : Network.AWS.SageMaker.ListCodeRepositories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the Git repositories in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListCodeRepositories
  ( -- * Creating a Request
    listCodeRepositories,
    ListCodeRepositories,

    -- * Request Lenses
    lcrLastModifiedTimeBefore,
    lcrSortOrder,
    lcrNextToken,
    lcrNameContains,
    lcrMaxResults,
    lcrCreationTimeBefore,
    lcrLastModifiedTimeAfter,
    lcrSortBy,
    lcrCreationTimeAfter,

    -- * Destructuring the Response
    listCodeRepositoriesResponse,
    ListCodeRepositoriesResponse,

    -- * Response Lenses
    lcrrrsNextToken,
    lcrrrsResponseStatus,
    lcrrrsCodeRepositorySummaryList,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listCodeRepositories' smart constructor.
data ListCodeRepositories = ListCodeRepositories'
  { _lcrLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _lcrSortOrder ::
      !( Maybe
           CodeRepositorySortOrder
       ),
    _lcrNextToken ::
      !(Maybe Text),
    _lcrNameContains ::
      !(Maybe Text),
    _lcrMaxResults ::
      !(Maybe Nat),
    _lcrCreationTimeBefore ::
      !(Maybe POSIX),
    _lcrLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _lcrSortBy ::
      !(Maybe CodeRepositorySortBy),
    _lcrCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCodeRepositories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrLastModifiedTimeBefore' - A filter that returns only Git repositories that were last modified before the specified time.
--
-- * 'lcrSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'lcrNextToken' - If the result of a @ListCodeRepositoriesOutput@ request was truncated, the response includes a @NextToken@ . To get the next set of Git repositories, use the token in the next request.
--
-- * 'lcrNameContains' - A string in the Git repositories name. This filter returns only repositories whose name contains the specified string.
--
-- * 'lcrMaxResults' - The maximum number of Git repositories to return in the response.
--
-- * 'lcrCreationTimeBefore' - A filter that returns only Git repositories that were created before the specified time.
--
-- * 'lcrLastModifiedTimeAfter' - A filter that returns only Git repositories that were last modified after the specified time.
--
-- * 'lcrSortBy' - The field to sort results by. The default is @Name@ .
--
-- * 'lcrCreationTimeAfter' - A filter that returns only Git repositories that were created after the specified time.
listCodeRepositories ::
  ListCodeRepositories
listCodeRepositories =
  ListCodeRepositories'
    { _lcrLastModifiedTimeBefore =
        Nothing,
      _lcrSortOrder = Nothing,
      _lcrNextToken = Nothing,
      _lcrNameContains = Nothing,
      _lcrMaxResults = Nothing,
      _lcrCreationTimeBefore = Nothing,
      _lcrLastModifiedTimeAfter = Nothing,
      _lcrSortBy = Nothing,
      _lcrCreationTimeAfter = Nothing
    }

-- | A filter that returns only Git repositories that were last modified before the specified time.
lcrLastModifiedTimeBefore :: Lens' ListCodeRepositories (Maybe UTCTime)
lcrLastModifiedTimeBefore = lens _lcrLastModifiedTimeBefore (\s a -> s {_lcrLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for results. The default is @Ascending@ .
lcrSortOrder :: Lens' ListCodeRepositories (Maybe CodeRepositorySortOrder)
lcrSortOrder = lens _lcrSortOrder (\s a -> s {_lcrSortOrder = a})

-- | If the result of a @ListCodeRepositoriesOutput@ request was truncated, the response includes a @NextToken@ . To get the next set of Git repositories, use the token in the next request.
lcrNextToken :: Lens' ListCodeRepositories (Maybe Text)
lcrNextToken = lens _lcrNextToken (\s a -> s {_lcrNextToken = a})

-- | A string in the Git repositories name. This filter returns only repositories whose name contains the specified string.
lcrNameContains :: Lens' ListCodeRepositories (Maybe Text)
lcrNameContains = lens _lcrNameContains (\s a -> s {_lcrNameContains = a})

-- | The maximum number of Git repositories to return in the response.
lcrMaxResults :: Lens' ListCodeRepositories (Maybe Natural)
lcrMaxResults = lens _lcrMaxResults (\s a -> s {_lcrMaxResults = a}) . mapping _Nat

-- | A filter that returns only Git repositories that were created before the specified time.
lcrCreationTimeBefore :: Lens' ListCodeRepositories (Maybe UTCTime)
lcrCreationTimeBefore = lens _lcrCreationTimeBefore (\s a -> s {_lcrCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only Git repositories that were last modified after the specified time.
lcrLastModifiedTimeAfter :: Lens' ListCodeRepositories (Maybe UTCTime)
lcrLastModifiedTimeAfter = lens _lcrLastModifiedTimeAfter (\s a -> s {_lcrLastModifiedTimeAfter = a}) . mapping _Time

-- | The field to sort results by. The default is @Name@ .
lcrSortBy :: Lens' ListCodeRepositories (Maybe CodeRepositorySortBy)
lcrSortBy = lens _lcrSortBy (\s a -> s {_lcrSortBy = a})

-- | A filter that returns only Git repositories that were created after the specified time.
lcrCreationTimeAfter :: Lens' ListCodeRepositories (Maybe UTCTime)
lcrCreationTimeAfter = lens _lcrCreationTimeAfter (\s a -> s {_lcrCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListCodeRepositories where
  page rq rs
    | stop (rs ^. lcrrrsNextToken) = Nothing
    | stop (rs ^. lcrrrsCodeRepositorySummaryList) =
      Nothing
    | otherwise =
      Just $ rq & lcrNextToken .~ rs ^. lcrrrsNextToken

instance AWSRequest ListCodeRepositories where
  type
    Rs ListCodeRepositories =
      ListCodeRepositoriesResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListCodeRepositoriesResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "CodeRepositorySummaryList" .!@ mempty)
      )

instance Hashable ListCodeRepositories

instance NFData ListCodeRepositories

instance ToHeaders ListCodeRepositories where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListCodeRepositories" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListCodeRepositories where
  toJSON ListCodeRepositories' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lcrLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lcrSortOrder,
            ("NextToken" .=) <$> _lcrNextToken,
            ("NameContains" .=) <$> _lcrNameContains,
            ("MaxResults" .=) <$> _lcrMaxResults,
            ("CreationTimeBefore" .=) <$> _lcrCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lcrLastModifiedTimeAfter,
            ("SortBy" .=) <$> _lcrSortBy,
            ("CreationTimeAfter" .=) <$> _lcrCreationTimeAfter
          ]
      )

instance ToPath ListCodeRepositories where
  toPath = const "/"

instance ToQuery ListCodeRepositories where
  toQuery = const mempty

-- | /See:/ 'listCodeRepositoriesResponse' smart constructor.
data ListCodeRepositoriesResponse = ListCodeRepositoriesResponse'
  { _lcrrrsNextToken ::
      !(Maybe Text),
    _lcrrrsResponseStatus ::
      !Int,
    _lcrrrsCodeRepositorySummaryList ::
      ![CodeRepositorySummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListCodeRepositoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrrsNextToken' - If the result of a @ListCodeRepositoriesOutput@ request was truncated, the response includes a @NextToken@ . To get the next set of Git repositories, use the token in the next request.
--
-- * 'lcrrrsResponseStatus' - -- | The response status code.
--
-- * 'lcrrrsCodeRepositorySummaryList' - Gets a list of summaries of the Git repositories. Each summary specifies the following values for the repository:      * Name     * Amazon Resource Name (ARN)     * Creation time     * Last modified time     * Configuration information, including the URL location of the repository and the ARN of the AWS Secrets Manager secret that contains the credentials used to access the repository.
listCodeRepositoriesResponse ::
  -- | 'lcrrrsResponseStatus'
  Int ->
  ListCodeRepositoriesResponse
listCodeRepositoriesResponse pResponseStatus_ =
  ListCodeRepositoriesResponse'
    { _lcrrrsNextToken =
        Nothing,
      _lcrrrsResponseStatus = pResponseStatus_,
      _lcrrrsCodeRepositorySummaryList = mempty
    }

-- | If the result of a @ListCodeRepositoriesOutput@ request was truncated, the response includes a @NextToken@ . To get the next set of Git repositories, use the token in the next request.
lcrrrsNextToken :: Lens' ListCodeRepositoriesResponse (Maybe Text)
lcrrrsNextToken = lens _lcrrrsNextToken (\s a -> s {_lcrrrsNextToken = a})

-- | -- | The response status code.
lcrrrsResponseStatus :: Lens' ListCodeRepositoriesResponse Int
lcrrrsResponseStatus = lens _lcrrrsResponseStatus (\s a -> s {_lcrrrsResponseStatus = a})

-- | Gets a list of summaries of the Git repositories. Each summary specifies the following values for the repository:      * Name     * Amazon Resource Name (ARN)     * Creation time     * Last modified time     * Configuration information, including the URL location of the repository and the ARN of the AWS Secrets Manager secret that contains the credentials used to access the repository.
lcrrrsCodeRepositorySummaryList :: Lens' ListCodeRepositoriesResponse [CodeRepositorySummary]
lcrrrsCodeRepositorySummaryList = lens _lcrrrsCodeRepositorySummaryList (\s a -> s {_lcrrrsCodeRepositorySummaryList = a}) . _Coerce

instance NFData ListCodeRepositoriesResponse
