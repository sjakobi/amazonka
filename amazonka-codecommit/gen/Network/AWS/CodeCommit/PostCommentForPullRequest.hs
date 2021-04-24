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
-- Module      : Network.AWS.CodeCommit.PostCommentForPullRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Posts a comment on a pull request.
module Network.AWS.CodeCommit.PostCommentForPullRequest
  ( -- * Creating a Request
    postCommentForPullRequest,
    PostCommentForPullRequest,

    -- * Request Lenses
    pcfprClientRequestToken,
    pcfprLocation,
    pcfprPullRequestId,
    pcfprRepositoryName,
    pcfprBeforeCommitId,
    pcfprAfterCommitId,
    pcfprContent,

    -- * Destructuring the Response
    postCommentForPullRequestResponse,
    PostCommentForPullRequestResponse,

    -- * Response Lenses
    pcfprrrsBeforeBlobId,
    pcfprrrsComment,
    pcfprrrsRepositoryName,
    pcfprrrsBeforeCommitId,
    pcfprrrsAfterBlobId,
    pcfprrrsPullRequestId,
    pcfprrrsAfterCommitId,
    pcfprrrsLocation,
    pcfprrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'postCommentForPullRequest' smart constructor.
data PostCommentForPullRequest = PostCommentForPullRequest'
  { _pcfprClientRequestToken ::
      !(Maybe Text),
    _pcfprLocation ::
      !(Maybe Location),
    _pcfprPullRequestId ::
      !Text,
    _pcfprRepositoryName ::
      !Text,
    _pcfprBeforeCommitId ::
      !Text,
    _pcfprAfterCommitId ::
      !Text,
    _pcfprContent ::
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

-- | Creates a value of 'PostCommentForPullRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcfprClientRequestToken' - A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
--
-- * 'pcfprLocation' - The location of the change where you want to post your comment. If no location is provided, the comment is posted as a general comment on the pull request difference between the before commit ID and the after commit ID.
--
-- * 'pcfprPullRequestId' - The system-generated ID of the pull request. To get this ID, use 'ListPullRequests' .
--
-- * 'pcfprRepositoryName' - The name of the repository where you want to post a comment on a pull request.
--
-- * 'pcfprBeforeCommitId' - The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.
--
-- * 'pcfprAfterCommitId' - The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.
--
-- * 'pcfprContent' - The content of your comment on the change.
postCommentForPullRequest ::
  -- | 'pcfprPullRequestId'
  Text ->
  -- | 'pcfprRepositoryName'
  Text ->
  -- | 'pcfprBeforeCommitId'
  Text ->
  -- | 'pcfprAfterCommitId'
  Text ->
  -- | 'pcfprContent'
  Text ->
  PostCommentForPullRequest
postCommentForPullRequest
  pPullRequestId_
  pRepositoryName_
  pBeforeCommitId_
  pAfterCommitId_
  pContent_ =
    PostCommentForPullRequest'
      { _pcfprClientRequestToken =
          Nothing,
        _pcfprLocation = Nothing,
        _pcfprPullRequestId = pPullRequestId_,
        _pcfprRepositoryName = pRepositoryName_,
        _pcfprBeforeCommitId = pBeforeCommitId_,
        _pcfprAfterCommitId = pAfterCommitId_,
        _pcfprContent = pContent_
      }

-- | A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
pcfprClientRequestToken :: Lens' PostCommentForPullRequest (Maybe Text)
pcfprClientRequestToken = lens _pcfprClientRequestToken (\s a -> s {_pcfprClientRequestToken = a})

-- | The location of the change where you want to post your comment. If no location is provided, the comment is posted as a general comment on the pull request difference between the before commit ID and the after commit ID.
pcfprLocation :: Lens' PostCommentForPullRequest (Maybe Location)
pcfprLocation = lens _pcfprLocation (\s a -> s {_pcfprLocation = a})

-- | The system-generated ID of the pull request. To get this ID, use 'ListPullRequests' .
pcfprPullRequestId :: Lens' PostCommentForPullRequest Text
pcfprPullRequestId = lens _pcfprPullRequestId (\s a -> s {_pcfprPullRequestId = a})

-- | The name of the repository where you want to post a comment on a pull request.
pcfprRepositoryName :: Lens' PostCommentForPullRequest Text
pcfprRepositoryName = lens _pcfprRepositoryName (\s a -> s {_pcfprRepositoryName = a})

-- | The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.
pcfprBeforeCommitId :: Lens' PostCommentForPullRequest Text
pcfprBeforeCommitId = lens _pcfprBeforeCommitId (\s a -> s {_pcfprBeforeCommitId = a})

-- | The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.
pcfprAfterCommitId :: Lens' PostCommentForPullRequest Text
pcfprAfterCommitId = lens _pcfprAfterCommitId (\s a -> s {_pcfprAfterCommitId = a})

-- | The content of your comment on the change.
pcfprContent :: Lens' PostCommentForPullRequest Text
pcfprContent = lens _pcfprContent (\s a -> s {_pcfprContent = a})

instance AWSRequest PostCommentForPullRequest where
  type
    Rs PostCommentForPullRequest =
      PostCommentForPullRequestResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          PostCommentForPullRequestResponse'
            <$> (x .?> "beforeBlobId")
            <*> (x .?> "comment")
            <*> (x .?> "repositoryName")
            <*> (x .?> "beforeCommitId")
            <*> (x .?> "afterBlobId")
            <*> (x .?> "pullRequestId")
            <*> (x .?> "afterCommitId")
            <*> (x .?> "location")
            <*> (pure (fromEnum s))
      )

instance Hashable PostCommentForPullRequest

instance NFData PostCommentForPullRequest

instance ToHeaders PostCommentForPullRequest where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.PostCommentForPullRequest" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PostCommentForPullRequest where
  toJSON PostCommentForPullRequest' {..} =
    object
      ( catMaybes
          [ ("clientRequestToken" .=)
              <$> _pcfprClientRequestToken,
            ("location" .=) <$> _pcfprLocation,
            Just ("pullRequestId" .= _pcfprPullRequestId),
            Just ("repositoryName" .= _pcfprRepositoryName),
            Just ("beforeCommitId" .= _pcfprBeforeCommitId),
            Just ("afterCommitId" .= _pcfprAfterCommitId),
            Just ("content" .= _pcfprContent)
          ]
      )

instance ToPath PostCommentForPullRequest where
  toPath = const "/"

instance ToQuery PostCommentForPullRequest where
  toQuery = const mempty

-- | /See:/ 'postCommentForPullRequestResponse' smart constructor.
data PostCommentForPullRequestResponse = PostCommentForPullRequestResponse'
  { _pcfprrrsBeforeBlobId ::
      !( Maybe
           Text
       ),
    _pcfprrrsComment ::
      !( Maybe
           Comment
       ),
    _pcfprrrsRepositoryName ::
      !( Maybe
           Text
       ),
    _pcfprrrsBeforeCommitId ::
      !( Maybe
           Text
       ),
    _pcfprrrsAfterBlobId ::
      !( Maybe
           Text
       ),
    _pcfprrrsPullRequestId ::
      !( Maybe
           Text
       ),
    _pcfprrrsAfterCommitId ::
      !( Maybe
           Text
       ),
    _pcfprrrsLocation ::
      !( Maybe
           Location
       ),
    _pcfprrrsResponseStatus ::
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

-- | Creates a value of 'PostCommentForPullRequestResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcfprrrsBeforeBlobId' - In the directionality of the pull request, the blob ID of the before blob.
--
-- * 'pcfprrrsComment' - The content of the comment you posted.
--
-- * 'pcfprrrsRepositoryName' - The name of the repository where you posted a comment on a pull request.
--
-- * 'pcfprrrsBeforeCommitId' - The full commit ID of the commit in the source branch used to create the pull request, or in the case of an updated pull request, the full commit ID of the commit used to update the pull request.
--
-- * 'pcfprrrsAfterBlobId' - In the directionality of the pull request, the blob ID of the after blob.
--
-- * 'pcfprrrsPullRequestId' - The system-generated ID of the pull request.
--
-- * 'pcfprrrsAfterCommitId' - The full commit ID of the commit in the destination branch where the pull request is merged.
--
-- * 'pcfprrrsLocation' - The location of the change where you posted your comment.
--
-- * 'pcfprrrsResponseStatus' - -- | The response status code.
postCommentForPullRequestResponse ::
  -- | 'pcfprrrsResponseStatus'
  Int ->
  PostCommentForPullRequestResponse
postCommentForPullRequestResponse pResponseStatus_ =
  PostCommentForPullRequestResponse'
    { _pcfprrrsBeforeBlobId =
        Nothing,
      _pcfprrrsComment = Nothing,
      _pcfprrrsRepositoryName = Nothing,
      _pcfprrrsBeforeCommitId = Nothing,
      _pcfprrrsAfterBlobId = Nothing,
      _pcfprrrsPullRequestId = Nothing,
      _pcfprrrsAfterCommitId = Nothing,
      _pcfprrrsLocation = Nothing,
      _pcfprrrsResponseStatus =
        pResponseStatus_
    }

-- | In the directionality of the pull request, the blob ID of the before blob.
pcfprrrsBeforeBlobId :: Lens' PostCommentForPullRequestResponse (Maybe Text)
pcfprrrsBeforeBlobId = lens _pcfprrrsBeforeBlobId (\s a -> s {_pcfprrrsBeforeBlobId = a})

-- | The content of the comment you posted.
pcfprrrsComment :: Lens' PostCommentForPullRequestResponse (Maybe Comment)
pcfprrrsComment = lens _pcfprrrsComment (\s a -> s {_pcfprrrsComment = a})

-- | The name of the repository where you posted a comment on a pull request.
pcfprrrsRepositoryName :: Lens' PostCommentForPullRequestResponse (Maybe Text)
pcfprrrsRepositoryName = lens _pcfprrrsRepositoryName (\s a -> s {_pcfprrrsRepositoryName = a})

-- | The full commit ID of the commit in the source branch used to create the pull request, or in the case of an updated pull request, the full commit ID of the commit used to update the pull request.
pcfprrrsBeforeCommitId :: Lens' PostCommentForPullRequestResponse (Maybe Text)
pcfprrrsBeforeCommitId = lens _pcfprrrsBeforeCommitId (\s a -> s {_pcfprrrsBeforeCommitId = a})

-- | In the directionality of the pull request, the blob ID of the after blob.
pcfprrrsAfterBlobId :: Lens' PostCommentForPullRequestResponse (Maybe Text)
pcfprrrsAfterBlobId = lens _pcfprrrsAfterBlobId (\s a -> s {_pcfprrrsAfterBlobId = a})

-- | The system-generated ID of the pull request.
pcfprrrsPullRequestId :: Lens' PostCommentForPullRequestResponse (Maybe Text)
pcfprrrsPullRequestId = lens _pcfprrrsPullRequestId (\s a -> s {_pcfprrrsPullRequestId = a})

-- | The full commit ID of the commit in the destination branch where the pull request is merged.
pcfprrrsAfterCommitId :: Lens' PostCommentForPullRequestResponse (Maybe Text)
pcfprrrsAfterCommitId = lens _pcfprrrsAfterCommitId (\s a -> s {_pcfprrrsAfterCommitId = a})

-- | The location of the change where you posted your comment.
pcfprrrsLocation :: Lens' PostCommentForPullRequestResponse (Maybe Location)
pcfprrrsLocation = lens _pcfprrrsLocation (\s a -> s {_pcfprrrsLocation = a})

-- | -- | The response status code.
pcfprrrsResponseStatus :: Lens' PostCommentForPullRequestResponse Int
pcfprrrsResponseStatus = lens _pcfprrrsResponseStatus (\s a -> s {_pcfprrrsResponseStatus = a})

instance NFData PostCommentForPullRequestResponse
