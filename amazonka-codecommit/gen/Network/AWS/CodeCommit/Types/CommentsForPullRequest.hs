{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.CommentsForPullRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.CommentsForPullRequest where

import Network.AWS.CodeCommit.Types.Comment
import Network.AWS.CodeCommit.Types.Location
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns information about comments on a pull request.
--
--
--
-- /See:/ 'commentsForPullRequest' smart constructor.
data CommentsForPullRequest = CommentsForPullRequest'
  { _cfprBeforeBlobId ::
      !(Maybe Text),
    _cfprRepositoryName ::
      !(Maybe Text),
    _cfprBeforeCommitId ::
      !(Maybe Text),
    _cfprAfterBlobId ::
      !(Maybe Text),
    _cfprPullRequestId ::
      !(Maybe Text),
    _cfprComments ::
      !(Maybe [Comment]),
    _cfprAfterCommitId ::
      !(Maybe Text),
    _cfprLocation ::
      !(Maybe Location)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CommentsForPullRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfprBeforeBlobId' - The full blob ID of the file on which you want to comment on the destination commit.
--
-- * 'cfprRepositoryName' - The name of the repository that contains the pull request.
--
-- * 'cfprBeforeCommitId' - The full commit ID of the commit that was the tip of the destination branch when the pull request was created. This commit is superceded by the after commit in the source branch when and if you merge the source branch into the destination branch.
--
-- * 'cfprAfterBlobId' - The full blob ID of the file on which you want to comment on the source commit.
--
-- * 'cfprPullRequestId' - The system-generated ID of the pull request.
--
-- * 'cfprComments' - An array of comment objects. Each comment object contains information about a comment on the pull request.
--
-- * 'cfprAfterCommitId' - The full commit ID of the commit that was the tip of the source branch at the time the comment was made.
--
-- * 'cfprLocation' - Location information about the comment on the pull request, including the file name, line number, and whether the version of the file where the comment was made is BEFORE (destination branch) or AFTER (source branch).
commentsForPullRequest ::
  CommentsForPullRequest
commentsForPullRequest =
  CommentsForPullRequest'
    { _cfprBeforeBlobId =
        Nothing,
      _cfprRepositoryName = Nothing,
      _cfprBeforeCommitId = Nothing,
      _cfprAfterBlobId = Nothing,
      _cfprPullRequestId = Nothing,
      _cfprComments = Nothing,
      _cfprAfterCommitId = Nothing,
      _cfprLocation = Nothing
    }

-- | The full blob ID of the file on which you want to comment on the destination commit.
cfprBeforeBlobId :: Lens' CommentsForPullRequest (Maybe Text)
cfprBeforeBlobId = lens _cfprBeforeBlobId (\s a -> s {_cfprBeforeBlobId = a})

-- | The name of the repository that contains the pull request.
cfprRepositoryName :: Lens' CommentsForPullRequest (Maybe Text)
cfprRepositoryName = lens _cfprRepositoryName (\s a -> s {_cfprRepositoryName = a})

-- | The full commit ID of the commit that was the tip of the destination branch when the pull request was created. This commit is superceded by the after commit in the source branch when and if you merge the source branch into the destination branch.
cfprBeforeCommitId :: Lens' CommentsForPullRequest (Maybe Text)
cfprBeforeCommitId = lens _cfprBeforeCommitId (\s a -> s {_cfprBeforeCommitId = a})

-- | The full blob ID of the file on which you want to comment on the source commit.
cfprAfterBlobId :: Lens' CommentsForPullRequest (Maybe Text)
cfprAfterBlobId = lens _cfprAfterBlobId (\s a -> s {_cfprAfterBlobId = a})

-- | The system-generated ID of the pull request.
cfprPullRequestId :: Lens' CommentsForPullRequest (Maybe Text)
cfprPullRequestId = lens _cfprPullRequestId (\s a -> s {_cfprPullRequestId = a})

-- | An array of comment objects. Each comment object contains information about a comment on the pull request.
cfprComments :: Lens' CommentsForPullRequest [Comment]
cfprComments = lens _cfprComments (\s a -> s {_cfprComments = a}) . _Default . _Coerce

-- | The full commit ID of the commit that was the tip of the source branch at the time the comment was made.
cfprAfterCommitId :: Lens' CommentsForPullRequest (Maybe Text)
cfprAfterCommitId = lens _cfprAfterCommitId (\s a -> s {_cfprAfterCommitId = a})

-- | Location information about the comment on the pull request, including the file name, line number, and whether the version of the file where the comment was made is BEFORE (destination branch) or AFTER (source branch).
cfprLocation :: Lens' CommentsForPullRequest (Maybe Location)
cfprLocation = lens _cfprLocation (\s a -> s {_cfprLocation = a})

instance FromJSON CommentsForPullRequest where
  parseJSON =
    withObject
      "CommentsForPullRequest"
      ( \x ->
          CommentsForPullRequest'
            <$> (x .:? "beforeBlobId")
            <*> (x .:? "repositoryName")
            <*> (x .:? "beforeCommitId")
            <*> (x .:? "afterBlobId")
            <*> (x .:? "pullRequestId")
            <*> (x .:? "comments" .!= mempty)
            <*> (x .:? "afterCommitId")
            <*> (x .:? "location")
      )

instance Hashable CommentsForPullRequest

instance NFData CommentsForPullRequest
