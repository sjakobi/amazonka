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
-- Module      : Network.AWS.CodeCommit.MergePullRequestBySquash
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the squash merge strategy. If the merge is successful, it closes the pull request.
module Network.AWS.CodeCommit.MergePullRequestBySquash
  ( -- * Creating a Request
    mergePullRequestBySquash,
    MergePullRequestBySquash,

    -- * Request Lenses
    mprbsCommitMessage,
    mprbsAuthorName,
    mprbsEmail,
    mprbsSourceCommitId,
    mprbsConflictDetailLevel,
    mprbsConflictResolutionStrategy,
    mprbsKeepEmptyFolders,
    mprbsConflictResolution,
    mprbsPullRequestId,
    mprbsRepositoryName,

    -- * Destructuring the Response
    mergePullRequestBySquashResponse,
    MergePullRequestBySquashResponse,

    -- * Response Lenses
    mprbsrrsPullRequest,
    mprbsrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'mergePullRequestBySquash' smart constructor.
data MergePullRequestBySquash = MergePullRequestBySquash'
  { _mprbsCommitMessage ::
      !(Maybe Text),
    _mprbsAuthorName ::
      !(Maybe Text),
    _mprbsEmail ::
      !(Maybe Text),
    _mprbsSourceCommitId ::
      !(Maybe Text),
    _mprbsConflictDetailLevel ::
      !( Maybe
           ConflictDetailLevelTypeEnum
       ),
    _mprbsConflictResolutionStrategy ::
      !( Maybe
           ConflictResolutionStrategyTypeEnum
       ),
    _mprbsKeepEmptyFolders ::
      !(Maybe Bool),
    _mprbsConflictResolution ::
      !( Maybe
           ConflictResolution
       ),
    _mprbsPullRequestId ::
      !Text,
    _mprbsRepositoryName ::
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

-- | Creates a value of 'MergePullRequestBySquash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mprbsCommitMessage' - The commit message to include in the commit information for the merge.
--
-- * 'mprbsAuthorName' - The name of the author who created the commit. This information is used as both the author and committer for the commit.
--
-- * 'mprbsEmail' - The email address of the person merging the branches. This information is used in the commit information for the merge.
--
-- * 'mprbsSourceCommitId' - The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.
--
-- * 'mprbsConflictDetailLevel' - The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
--
-- * 'mprbsConflictResolutionStrategy' - Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
--
-- * 'mprbsKeepEmptyFolders' - If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.
--
-- * 'mprbsConflictResolution' - If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
--
-- * 'mprbsPullRequestId' - The system-generated ID of the pull request. To get this ID, use 'ListPullRequests' .
--
-- * 'mprbsRepositoryName' - The name of the repository where the pull request was created.
mergePullRequestBySquash ::
  -- | 'mprbsPullRequestId'
  Text ->
  -- | 'mprbsRepositoryName'
  Text ->
  MergePullRequestBySquash
mergePullRequestBySquash
  pPullRequestId_
  pRepositoryName_ =
    MergePullRequestBySquash'
      { _mprbsCommitMessage =
          Nothing,
        _mprbsAuthorName = Nothing,
        _mprbsEmail = Nothing,
        _mprbsSourceCommitId = Nothing,
        _mprbsConflictDetailLevel = Nothing,
        _mprbsConflictResolutionStrategy = Nothing,
        _mprbsKeepEmptyFolders = Nothing,
        _mprbsConflictResolution = Nothing,
        _mprbsPullRequestId = pPullRequestId_,
        _mprbsRepositoryName = pRepositoryName_
      }

-- | The commit message to include in the commit information for the merge.
mprbsCommitMessage :: Lens' MergePullRequestBySquash (Maybe Text)
mprbsCommitMessage = lens _mprbsCommitMessage (\s a -> s {_mprbsCommitMessage = a})

-- | The name of the author who created the commit. This information is used as both the author and committer for the commit.
mprbsAuthorName :: Lens' MergePullRequestBySquash (Maybe Text)
mprbsAuthorName = lens _mprbsAuthorName (\s a -> s {_mprbsAuthorName = a})

-- | The email address of the person merging the branches. This information is used in the commit information for the merge.
mprbsEmail :: Lens' MergePullRequestBySquash (Maybe Text)
mprbsEmail = lens _mprbsEmail (\s a -> s {_mprbsEmail = a})

-- | The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.
mprbsSourceCommitId :: Lens' MergePullRequestBySquash (Maybe Text)
mprbsSourceCommitId = lens _mprbsSourceCommitId (\s a -> s {_mprbsSourceCommitId = a})

-- | The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
mprbsConflictDetailLevel :: Lens' MergePullRequestBySquash (Maybe ConflictDetailLevelTypeEnum)
mprbsConflictDetailLevel = lens _mprbsConflictDetailLevel (\s a -> s {_mprbsConflictDetailLevel = a})

-- | Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
mprbsConflictResolutionStrategy :: Lens' MergePullRequestBySquash (Maybe ConflictResolutionStrategyTypeEnum)
mprbsConflictResolutionStrategy = lens _mprbsConflictResolutionStrategy (\s a -> s {_mprbsConflictResolutionStrategy = a})

-- | If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.
mprbsKeepEmptyFolders :: Lens' MergePullRequestBySquash (Maybe Bool)
mprbsKeepEmptyFolders = lens _mprbsKeepEmptyFolders (\s a -> s {_mprbsKeepEmptyFolders = a})

-- | If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
mprbsConflictResolution :: Lens' MergePullRequestBySquash (Maybe ConflictResolution)
mprbsConflictResolution = lens _mprbsConflictResolution (\s a -> s {_mprbsConflictResolution = a})

-- | The system-generated ID of the pull request. To get this ID, use 'ListPullRequests' .
mprbsPullRequestId :: Lens' MergePullRequestBySquash Text
mprbsPullRequestId = lens _mprbsPullRequestId (\s a -> s {_mprbsPullRequestId = a})

-- | The name of the repository where the pull request was created.
mprbsRepositoryName :: Lens' MergePullRequestBySquash Text
mprbsRepositoryName = lens _mprbsRepositoryName (\s a -> s {_mprbsRepositoryName = a})

instance AWSRequest MergePullRequestBySquash where
  type
    Rs MergePullRequestBySquash =
      MergePullRequestBySquashResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          MergePullRequestBySquashResponse'
            <$> (x .?> "pullRequest") <*> (pure (fromEnum s))
      )

instance Hashable MergePullRequestBySquash

instance NFData MergePullRequestBySquash

instance ToHeaders MergePullRequestBySquash where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.MergePullRequestBySquash" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON MergePullRequestBySquash where
  toJSON MergePullRequestBySquash' {..} =
    object
      ( catMaybes
          [ ("commitMessage" .=) <$> _mprbsCommitMessage,
            ("authorName" .=) <$> _mprbsAuthorName,
            ("email" .=) <$> _mprbsEmail,
            ("sourceCommitId" .=) <$> _mprbsSourceCommitId,
            ("conflictDetailLevel" .=)
              <$> _mprbsConflictDetailLevel,
            ("conflictResolutionStrategy" .=)
              <$> _mprbsConflictResolutionStrategy,
            ("keepEmptyFolders" .=) <$> _mprbsKeepEmptyFolders,
            ("conflictResolution" .=)
              <$> _mprbsConflictResolution,
            Just ("pullRequestId" .= _mprbsPullRequestId),
            Just ("repositoryName" .= _mprbsRepositoryName)
          ]
      )

instance ToPath MergePullRequestBySquash where
  toPath = const "/"

instance ToQuery MergePullRequestBySquash where
  toQuery = const mempty

-- | /See:/ 'mergePullRequestBySquashResponse' smart constructor.
data MergePullRequestBySquashResponse = MergePullRequestBySquashResponse'
  { _mprbsrrsPullRequest ::
      !( Maybe
           PullRequest
       ),
    _mprbsrrsResponseStatus ::
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

-- | Creates a value of 'MergePullRequestBySquashResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mprbsrrsPullRequest' - Undocumented member.
--
-- * 'mprbsrrsResponseStatus' - -- | The response status code.
mergePullRequestBySquashResponse ::
  -- | 'mprbsrrsResponseStatus'
  Int ->
  MergePullRequestBySquashResponse
mergePullRequestBySquashResponse pResponseStatus_ =
  MergePullRequestBySquashResponse'
    { _mprbsrrsPullRequest =
        Nothing,
      _mprbsrrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
mprbsrrsPullRequest :: Lens' MergePullRequestBySquashResponse (Maybe PullRequest)
mprbsrrsPullRequest = lens _mprbsrrsPullRequest (\s a -> s {_mprbsrrsPullRequest = a})

-- | -- | The response status code.
mprbsrrsResponseStatus :: Lens' MergePullRequestBySquashResponse Int
mprbsrrsResponseStatus = lens _mprbsrrsResponseStatus (\s a -> s {_mprbsrrsResponseStatus = a})

instance NFData MergePullRequestBySquashResponse
