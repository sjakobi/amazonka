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
-- Module      : Network.AWS.CodeCommit.GetCommentsForPullRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns comments made on a pull request.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeCommit.GetCommentsForPullRequest
  ( -- * Creating a Request
    getCommentsForPullRequest,
    GetCommentsForPullRequest,

    -- * Request Lenses
    gcfprNextToken,
    gcfprMaxResults,
    gcfprRepositoryName,
    gcfprBeforeCommitId,
    gcfprAfterCommitId,
    gcfprPullRequestId,

    -- * Destructuring the Response
    getCommentsForPullRequestResponse,
    GetCommentsForPullRequestResponse,

    -- * Response Lenses
    gcfprrrsCommentsForPullRequestData,
    gcfprrrsNextToken,
    gcfprrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCommentsForPullRequest' smart constructor.
data GetCommentsForPullRequest = GetCommentsForPullRequest'
  { _gcfprNextToken ::
      !(Maybe Text),
    _gcfprMaxResults ::
      !(Maybe Int),
    _gcfprRepositoryName ::
      !(Maybe Text),
    _gcfprBeforeCommitId ::
      !(Maybe Text),
    _gcfprAfterCommitId ::
      !(Maybe Text),
    _gcfprPullRequestId ::
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

-- | Creates a value of 'GetCommentsForPullRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfprNextToken' - An enumeration token that, when provided in a request, returns the next batch of the results.
--
-- * 'gcfprMaxResults' - A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments. You can return up to 500 comments with a single request.
--
-- * 'gcfprRepositoryName' - The name of the repository that contains the pull request.
--
-- * 'gcfprBeforeCommitId' - The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.
--
-- * 'gcfprAfterCommitId' - The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made.
--
-- * 'gcfprPullRequestId' - The system-generated ID of the pull request. To get this ID, use 'ListPullRequests' .
getCommentsForPullRequest ::
  -- | 'gcfprPullRequestId'
  Text ->
  GetCommentsForPullRequest
getCommentsForPullRequest pPullRequestId_ =
  GetCommentsForPullRequest'
    { _gcfprNextToken =
        Nothing,
      _gcfprMaxResults = Nothing,
      _gcfprRepositoryName = Nothing,
      _gcfprBeforeCommitId = Nothing,
      _gcfprAfterCommitId = Nothing,
      _gcfprPullRequestId = pPullRequestId_
    }

-- | An enumeration token that, when provided in a request, returns the next batch of the results.
gcfprNextToken :: Lens' GetCommentsForPullRequest (Maybe Text)
gcfprNextToken = lens _gcfprNextToken (\s a -> s {_gcfprNextToken = a})

-- | A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments. You can return up to 500 comments with a single request.
gcfprMaxResults :: Lens' GetCommentsForPullRequest (Maybe Int)
gcfprMaxResults = lens _gcfprMaxResults (\s a -> s {_gcfprMaxResults = a})

-- | The name of the repository that contains the pull request.
gcfprRepositoryName :: Lens' GetCommentsForPullRequest (Maybe Text)
gcfprRepositoryName = lens _gcfprRepositoryName (\s a -> s {_gcfprRepositoryName = a})

-- | The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.
gcfprBeforeCommitId :: Lens' GetCommentsForPullRequest (Maybe Text)
gcfprBeforeCommitId = lens _gcfprBeforeCommitId (\s a -> s {_gcfprBeforeCommitId = a})

-- | The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made.
gcfprAfterCommitId :: Lens' GetCommentsForPullRequest (Maybe Text)
gcfprAfterCommitId = lens _gcfprAfterCommitId (\s a -> s {_gcfprAfterCommitId = a})

-- | The system-generated ID of the pull request. To get this ID, use 'ListPullRequests' .
gcfprPullRequestId :: Lens' GetCommentsForPullRequest Text
gcfprPullRequestId = lens _gcfprPullRequestId (\s a -> s {_gcfprPullRequestId = a})

instance AWSPager GetCommentsForPullRequest where
  page rq rs
    | stop (rs ^. gcfprrrsNextToken) = Nothing
    | stop (rs ^. gcfprrrsCommentsForPullRequestData) =
      Nothing
    | otherwise =
      Just $ rq & gcfprNextToken .~ rs ^. gcfprrrsNextToken

instance AWSRequest GetCommentsForPullRequest where
  type
    Rs GetCommentsForPullRequest =
      GetCommentsForPullRequestResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetCommentsForPullRequestResponse'
            <$> (x .?> "commentsForPullRequestData" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCommentsForPullRequest

instance NFData GetCommentsForPullRequest

instance ToHeaders GetCommentsForPullRequest where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.GetCommentsForPullRequest" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCommentsForPullRequest where
  toJSON GetCommentsForPullRequest' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _gcfprNextToken,
            ("maxResults" .=) <$> _gcfprMaxResults,
            ("repositoryName" .=) <$> _gcfprRepositoryName,
            ("beforeCommitId" .=) <$> _gcfprBeforeCommitId,
            ("afterCommitId" .=) <$> _gcfprAfterCommitId,
            Just ("pullRequestId" .= _gcfprPullRequestId)
          ]
      )

instance ToPath GetCommentsForPullRequest where
  toPath = const "/"

instance ToQuery GetCommentsForPullRequest where
  toQuery = const mempty

-- | /See:/ 'getCommentsForPullRequestResponse' smart constructor.
data GetCommentsForPullRequestResponse = GetCommentsForPullRequestResponse'
  { _gcfprrrsCommentsForPullRequestData ::
      !( Maybe
           [CommentsForPullRequest]
       ),
    _gcfprrrsNextToken ::
      !( Maybe
           Text
       ),
    _gcfprrrsResponseStatus ::
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

-- | Creates a value of 'GetCommentsForPullRequestResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfprrrsCommentsForPullRequestData' - An array of comment objects on the pull request.
--
-- * 'gcfprrrsNextToken' - An enumeration token that can be used in a request to return the next batch of the results.
--
-- * 'gcfprrrsResponseStatus' - -- | The response status code.
getCommentsForPullRequestResponse ::
  -- | 'gcfprrrsResponseStatus'
  Int ->
  GetCommentsForPullRequestResponse
getCommentsForPullRequestResponse pResponseStatus_ =
  GetCommentsForPullRequestResponse'
    { _gcfprrrsCommentsForPullRequestData =
        Nothing,
      _gcfprrrsNextToken = Nothing,
      _gcfprrrsResponseStatus =
        pResponseStatus_
    }

-- | An array of comment objects on the pull request.
gcfprrrsCommentsForPullRequestData :: Lens' GetCommentsForPullRequestResponse [CommentsForPullRequest]
gcfprrrsCommentsForPullRequestData = lens _gcfprrrsCommentsForPullRequestData (\s a -> s {_gcfprrrsCommentsForPullRequestData = a}) . _Default . _Coerce

-- | An enumeration token that can be used in a request to return the next batch of the results.
gcfprrrsNextToken :: Lens' GetCommentsForPullRequestResponse (Maybe Text)
gcfprrrsNextToken = lens _gcfprrrsNextToken (\s a -> s {_gcfprrrsNextToken = a})

-- | -- | The response status code.
gcfprrrsResponseStatus :: Lens' GetCommentsForPullRequestResponse Int
gcfprrrsResponseStatus = lens _gcfprrrsResponseStatus (\s a -> s {_gcfprrrsResponseStatus = a})

instance NFData GetCommentsForPullRequestResponse
