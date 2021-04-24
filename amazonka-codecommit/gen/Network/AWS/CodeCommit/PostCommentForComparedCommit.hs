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
-- Module      : Network.AWS.CodeCommit.PostCommentForComparedCommit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Posts a comment on the comparison between two commits.
module Network.AWS.CodeCommit.PostCommentForComparedCommit
  ( -- * Creating a Request
    postCommentForComparedCommit,
    PostCommentForComparedCommit,

    -- * Request Lenses
    pcfccBeforeCommitId,
    pcfccClientRequestToken,
    pcfccLocation,
    pcfccRepositoryName,
    pcfccAfterCommitId,
    pcfccContent,

    -- * Destructuring the Response
    postCommentForComparedCommitResponse,
    PostCommentForComparedCommitResponse,

    -- * Response Lenses
    pcfccrrsBeforeBlobId,
    pcfccrrsComment,
    pcfccrrsRepositoryName,
    pcfccrrsBeforeCommitId,
    pcfccrrsAfterBlobId,
    pcfccrrsAfterCommitId,
    pcfccrrsLocation,
    pcfccrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'postCommentForComparedCommit' smart constructor.
data PostCommentForComparedCommit = PostCommentForComparedCommit'
  { _pcfccBeforeCommitId ::
      !(Maybe Text),
    _pcfccClientRequestToken ::
      !(Maybe Text),
    _pcfccLocation ::
      !( Maybe
           Location
       ),
    _pcfccRepositoryName ::
      !Text,
    _pcfccAfterCommitId ::
      !Text,
    _pcfccContent ::
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

-- | Creates a value of 'PostCommentForComparedCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcfccBeforeCommitId' - To establish the directionality of the comparison, the full commit ID of the before commit. Required for commenting on any commit unless that commit is the initial commit.
--
-- * 'pcfccClientRequestToken' - A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
--
-- * 'pcfccLocation' - The location of the comparison where you want to comment.
--
-- * 'pcfccRepositoryName' - The name of the repository where you want to post a comment on the comparison between commits.
--
-- * 'pcfccAfterCommitId' - To establish the directionality of the comparison, the full commit ID of the after commit.
--
-- * 'pcfccContent' - The content of the comment you want to make.
postCommentForComparedCommit ::
  -- | 'pcfccRepositoryName'
  Text ->
  -- | 'pcfccAfterCommitId'
  Text ->
  -- | 'pcfccContent'
  Text ->
  PostCommentForComparedCommit
postCommentForComparedCommit
  pRepositoryName_
  pAfterCommitId_
  pContent_ =
    PostCommentForComparedCommit'
      { _pcfccBeforeCommitId =
          Nothing,
        _pcfccClientRequestToken = Nothing,
        _pcfccLocation = Nothing,
        _pcfccRepositoryName = pRepositoryName_,
        _pcfccAfterCommitId = pAfterCommitId_,
        _pcfccContent = pContent_
      }

-- | To establish the directionality of the comparison, the full commit ID of the before commit. Required for commenting on any commit unless that commit is the initial commit.
pcfccBeforeCommitId :: Lens' PostCommentForComparedCommit (Maybe Text)
pcfccBeforeCommitId = lens _pcfccBeforeCommitId (\s a -> s {_pcfccBeforeCommitId = a})

-- | A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
pcfccClientRequestToken :: Lens' PostCommentForComparedCommit (Maybe Text)
pcfccClientRequestToken = lens _pcfccClientRequestToken (\s a -> s {_pcfccClientRequestToken = a})

-- | The location of the comparison where you want to comment.
pcfccLocation :: Lens' PostCommentForComparedCommit (Maybe Location)
pcfccLocation = lens _pcfccLocation (\s a -> s {_pcfccLocation = a})

-- | The name of the repository where you want to post a comment on the comparison between commits.
pcfccRepositoryName :: Lens' PostCommentForComparedCommit Text
pcfccRepositoryName = lens _pcfccRepositoryName (\s a -> s {_pcfccRepositoryName = a})

-- | To establish the directionality of the comparison, the full commit ID of the after commit.
pcfccAfterCommitId :: Lens' PostCommentForComparedCommit Text
pcfccAfterCommitId = lens _pcfccAfterCommitId (\s a -> s {_pcfccAfterCommitId = a})

-- | The content of the comment you want to make.
pcfccContent :: Lens' PostCommentForComparedCommit Text
pcfccContent = lens _pcfccContent (\s a -> s {_pcfccContent = a})

instance AWSRequest PostCommentForComparedCommit where
  type
    Rs PostCommentForComparedCommit =
      PostCommentForComparedCommitResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          PostCommentForComparedCommitResponse'
            <$> (x .?> "beforeBlobId")
            <*> (x .?> "comment")
            <*> (x .?> "repositoryName")
            <*> (x .?> "beforeCommitId")
            <*> (x .?> "afterBlobId")
            <*> (x .?> "afterCommitId")
            <*> (x .?> "location")
            <*> (pure (fromEnum s))
      )

instance Hashable PostCommentForComparedCommit

instance NFData PostCommentForComparedCommit

instance ToHeaders PostCommentForComparedCommit where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.PostCommentForComparedCommit" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PostCommentForComparedCommit where
  toJSON PostCommentForComparedCommit' {..} =
    object
      ( catMaybes
          [ ("beforeCommitId" .=) <$> _pcfccBeforeCommitId,
            ("clientRequestToken" .=)
              <$> _pcfccClientRequestToken,
            ("location" .=) <$> _pcfccLocation,
            Just ("repositoryName" .= _pcfccRepositoryName),
            Just ("afterCommitId" .= _pcfccAfterCommitId),
            Just ("content" .= _pcfccContent)
          ]
      )

instance ToPath PostCommentForComparedCommit where
  toPath = const "/"

instance ToQuery PostCommentForComparedCommit where
  toQuery = const mempty

-- | /See:/ 'postCommentForComparedCommitResponse' smart constructor.
data PostCommentForComparedCommitResponse = PostCommentForComparedCommitResponse'
  { _pcfccrrsBeforeBlobId ::
      !( Maybe
           Text
       ),
    _pcfccrrsComment ::
      !( Maybe
           Comment
       ),
    _pcfccrrsRepositoryName ::
      !( Maybe
           Text
       ),
    _pcfccrrsBeforeCommitId ::
      !( Maybe
           Text
       ),
    _pcfccrrsAfterBlobId ::
      !( Maybe
           Text
       ),
    _pcfccrrsAfterCommitId ::
      !( Maybe
           Text
       ),
    _pcfccrrsLocation ::
      !( Maybe
           Location
       ),
    _pcfccrrsResponseStatus ::
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

-- | Creates a value of 'PostCommentForComparedCommitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcfccrrsBeforeBlobId' - In the directionality you established, the blob ID of the before blob.
--
-- * 'pcfccrrsComment' - The content of the comment you posted.
--
-- * 'pcfccrrsRepositoryName' - The name of the repository where you posted a comment on the comparison between commits.
--
-- * 'pcfccrrsBeforeCommitId' - In the directionality you established, the full commit ID of the before commit.
--
-- * 'pcfccrrsAfterBlobId' - In the directionality you established, the blob ID of the after blob.
--
-- * 'pcfccrrsAfterCommitId' - In the directionality you established, the full commit ID of the after commit.
--
-- * 'pcfccrrsLocation' - The location of the comment in the comparison between the two commits.
--
-- * 'pcfccrrsResponseStatus' - -- | The response status code.
postCommentForComparedCommitResponse ::
  -- | 'pcfccrrsResponseStatus'
  Int ->
  PostCommentForComparedCommitResponse
postCommentForComparedCommitResponse pResponseStatus_ =
  PostCommentForComparedCommitResponse'
    { _pcfccrrsBeforeBlobId =
        Nothing,
      _pcfccrrsComment = Nothing,
      _pcfccrrsRepositoryName = Nothing,
      _pcfccrrsBeforeCommitId = Nothing,
      _pcfccrrsAfterBlobId = Nothing,
      _pcfccrrsAfterCommitId = Nothing,
      _pcfccrrsLocation = Nothing,
      _pcfccrrsResponseStatus =
        pResponseStatus_
    }

-- | In the directionality you established, the blob ID of the before blob.
pcfccrrsBeforeBlobId :: Lens' PostCommentForComparedCommitResponse (Maybe Text)
pcfccrrsBeforeBlobId = lens _pcfccrrsBeforeBlobId (\s a -> s {_pcfccrrsBeforeBlobId = a})

-- | The content of the comment you posted.
pcfccrrsComment :: Lens' PostCommentForComparedCommitResponse (Maybe Comment)
pcfccrrsComment = lens _pcfccrrsComment (\s a -> s {_pcfccrrsComment = a})

-- | The name of the repository where you posted a comment on the comparison between commits.
pcfccrrsRepositoryName :: Lens' PostCommentForComparedCommitResponse (Maybe Text)
pcfccrrsRepositoryName = lens _pcfccrrsRepositoryName (\s a -> s {_pcfccrrsRepositoryName = a})

-- | In the directionality you established, the full commit ID of the before commit.
pcfccrrsBeforeCommitId :: Lens' PostCommentForComparedCommitResponse (Maybe Text)
pcfccrrsBeforeCommitId = lens _pcfccrrsBeforeCommitId (\s a -> s {_pcfccrrsBeforeCommitId = a})

-- | In the directionality you established, the blob ID of the after blob.
pcfccrrsAfterBlobId :: Lens' PostCommentForComparedCommitResponse (Maybe Text)
pcfccrrsAfterBlobId = lens _pcfccrrsAfterBlobId (\s a -> s {_pcfccrrsAfterBlobId = a})

-- | In the directionality you established, the full commit ID of the after commit.
pcfccrrsAfterCommitId :: Lens' PostCommentForComparedCommitResponse (Maybe Text)
pcfccrrsAfterCommitId = lens _pcfccrrsAfterCommitId (\s a -> s {_pcfccrrsAfterCommitId = a})

-- | The location of the comment in the comparison between the two commits.
pcfccrrsLocation :: Lens' PostCommentForComparedCommitResponse (Maybe Location)
pcfccrrsLocation = lens _pcfccrrsLocation (\s a -> s {_pcfccrrsLocation = a})

-- | -- | The response status code.
pcfccrrsResponseStatus :: Lens' PostCommentForComparedCommitResponse Int
pcfccrrsResponseStatus = lens _pcfccrrsResponseStatus (\s a -> s {_pcfccrrsResponseStatus = a})

instance NFData PostCommentForComparedCommitResponse
