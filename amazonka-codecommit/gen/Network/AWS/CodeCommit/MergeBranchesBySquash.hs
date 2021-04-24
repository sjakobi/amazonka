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
-- Module      : Network.AWS.CodeCommit.MergeBranchesBySquash
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Merges two branches using the squash merge strategy.
module Network.AWS.CodeCommit.MergeBranchesBySquash
  ( -- * Creating a Request
    mergeBranchesBySquash,
    MergeBranchesBySquash,

    -- * Request Lenses
    mbbsCommitMessage,
    mbbsAuthorName,
    mbbsEmail,
    mbbsConflictDetailLevel,
    mbbsConflictResolutionStrategy,
    mbbsKeepEmptyFolders,
    mbbsConflictResolution,
    mbbsTargetBranch,
    mbbsRepositoryName,
    mbbsSourceCommitSpecifier,
    mbbsDestinationCommitSpecifier,

    -- * Destructuring the Response
    mergeBranchesBySquashResponse,
    MergeBranchesBySquashResponse,

    -- * Response Lenses
    mbbsrrsCommitId,
    mbbsrrsTreeId,
    mbbsrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'mergeBranchesBySquash' smart constructor.
data MergeBranchesBySquash = MergeBranchesBySquash'
  { _mbbsCommitMessage ::
      !(Maybe Text),
    _mbbsAuthorName ::
      !(Maybe Text),
    _mbbsEmail :: !(Maybe Text),
    _mbbsConflictDetailLevel ::
      !( Maybe
           ConflictDetailLevelTypeEnum
       ),
    _mbbsConflictResolutionStrategy ::
      !( Maybe
           ConflictResolutionStrategyTypeEnum
       ),
    _mbbsKeepEmptyFolders ::
      !(Maybe Bool),
    _mbbsConflictResolution ::
      !(Maybe ConflictResolution),
    _mbbsTargetBranch ::
      !(Maybe Text),
    _mbbsRepositoryName ::
      !Text,
    _mbbsSourceCommitSpecifier ::
      !Text,
    _mbbsDestinationCommitSpecifier ::
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

-- | Creates a value of 'MergeBranchesBySquash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbbsCommitMessage' - The commit message for the merge.
--
-- * 'mbbsAuthorName' - The name of the author who created the commit. This information is used as both the author and committer for the commit.
--
-- * 'mbbsEmail' - The email address of the person merging the branches. This information is used in the commit information for the merge.
--
-- * 'mbbsConflictDetailLevel' - The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
--
-- * 'mbbsConflictResolutionStrategy' - Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
--
-- * 'mbbsKeepEmptyFolders' - If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If this is specified as true, a .gitkeep file is created for empty folders. The default is false.
--
-- * 'mbbsConflictResolution' - If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
--
-- * 'mbbsTargetBranch' - The branch where the merge is applied.
--
-- * 'mbbsRepositoryName' - The name of the repository where you want to merge two branches.
--
-- * 'mbbsSourceCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- * 'mbbsDestinationCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
mergeBranchesBySquash ::
  -- | 'mbbsRepositoryName'
  Text ->
  -- | 'mbbsSourceCommitSpecifier'
  Text ->
  -- | 'mbbsDestinationCommitSpecifier'
  Text ->
  MergeBranchesBySquash
mergeBranchesBySquash
  pRepositoryName_
  pSourceCommitSpecifier_
  pDestinationCommitSpecifier_ =
    MergeBranchesBySquash'
      { _mbbsCommitMessage =
          Nothing,
        _mbbsAuthorName = Nothing,
        _mbbsEmail = Nothing,
        _mbbsConflictDetailLevel = Nothing,
        _mbbsConflictResolutionStrategy = Nothing,
        _mbbsKeepEmptyFolders = Nothing,
        _mbbsConflictResolution = Nothing,
        _mbbsTargetBranch = Nothing,
        _mbbsRepositoryName = pRepositoryName_,
        _mbbsSourceCommitSpecifier = pSourceCommitSpecifier_,
        _mbbsDestinationCommitSpecifier =
          pDestinationCommitSpecifier_
      }

-- | The commit message for the merge.
mbbsCommitMessage :: Lens' MergeBranchesBySquash (Maybe Text)
mbbsCommitMessage = lens _mbbsCommitMessage (\s a -> s {_mbbsCommitMessage = a})

-- | The name of the author who created the commit. This information is used as both the author and committer for the commit.
mbbsAuthorName :: Lens' MergeBranchesBySquash (Maybe Text)
mbbsAuthorName = lens _mbbsAuthorName (\s a -> s {_mbbsAuthorName = a})

-- | The email address of the person merging the branches. This information is used in the commit information for the merge.
mbbsEmail :: Lens' MergeBranchesBySquash (Maybe Text)
mbbsEmail = lens _mbbsEmail (\s a -> s {_mbbsEmail = a})

-- | The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
mbbsConflictDetailLevel :: Lens' MergeBranchesBySquash (Maybe ConflictDetailLevelTypeEnum)
mbbsConflictDetailLevel = lens _mbbsConflictDetailLevel (\s a -> s {_mbbsConflictDetailLevel = a})

-- | Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
mbbsConflictResolutionStrategy :: Lens' MergeBranchesBySquash (Maybe ConflictResolutionStrategyTypeEnum)
mbbsConflictResolutionStrategy = lens _mbbsConflictResolutionStrategy (\s a -> s {_mbbsConflictResolutionStrategy = a})

-- | If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If this is specified as true, a .gitkeep file is created for empty folders. The default is false.
mbbsKeepEmptyFolders :: Lens' MergeBranchesBySquash (Maybe Bool)
mbbsKeepEmptyFolders = lens _mbbsKeepEmptyFolders (\s a -> s {_mbbsKeepEmptyFolders = a})

-- | If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
mbbsConflictResolution :: Lens' MergeBranchesBySquash (Maybe ConflictResolution)
mbbsConflictResolution = lens _mbbsConflictResolution (\s a -> s {_mbbsConflictResolution = a})

-- | The branch where the merge is applied.
mbbsTargetBranch :: Lens' MergeBranchesBySquash (Maybe Text)
mbbsTargetBranch = lens _mbbsTargetBranch (\s a -> s {_mbbsTargetBranch = a})

-- | The name of the repository where you want to merge two branches.
mbbsRepositoryName :: Lens' MergeBranchesBySquash Text
mbbsRepositoryName = lens _mbbsRepositoryName (\s a -> s {_mbbsRepositoryName = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
mbbsSourceCommitSpecifier :: Lens' MergeBranchesBySquash Text
mbbsSourceCommitSpecifier = lens _mbbsSourceCommitSpecifier (\s a -> s {_mbbsSourceCommitSpecifier = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
mbbsDestinationCommitSpecifier :: Lens' MergeBranchesBySquash Text
mbbsDestinationCommitSpecifier = lens _mbbsDestinationCommitSpecifier (\s a -> s {_mbbsDestinationCommitSpecifier = a})

instance AWSRequest MergeBranchesBySquash where
  type
    Rs MergeBranchesBySquash =
      MergeBranchesBySquashResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          MergeBranchesBySquashResponse'
            <$> (x .?> "commitId")
            <*> (x .?> "treeId")
            <*> (pure (fromEnum s))
      )

instance Hashable MergeBranchesBySquash

instance NFData MergeBranchesBySquash

instance ToHeaders MergeBranchesBySquash where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.MergeBranchesBySquash" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON MergeBranchesBySquash where
  toJSON MergeBranchesBySquash' {..} =
    object
      ( catMaybes
          [ ("commitMessage" .=) <$> _mbbsCommitMessage,
            ("authorName" .=) <$> _mbbsAuthorName,
            ("email" .=) <$> _mbbsEmail,
            ("conflictDetailLevel" .=)
              <$> _mbbsConflictDetailLevel,
            ("conflictResolutionStrategy" .=)
              <$> _mbbsConflictResolutionStrategy,
            ("keepEmptyFolders" .=) <$> _mbbsKeepEmptyFolders,
            ("conflictResolution" .=)
              <$> _mbbsConflictResolution,
            ("targetBranch" .=) <$> _mbbsTargetBranch,
            Just ("repositoryName" .= _mbbsRepositoryName),
            Just
              ( "sourceCommitSpecifier"
                  .= _mbbsSourceCommitSpecifier
              ),
            Just
              ( "destinationCommitSpecifier"
                  .= _mbbsDestinationCommitSpecifier
              )
          ]
      )

instance ToPath MergeBranchesBySquash where
  toPath = const "/"

instance ToQuery MergeBranchesBySquash where
  toQuery = const mempty

-- | /See:/ 'mergeBranchesBySquashResponse' smart constructor.
data MergeBranchesBySquashResponse = MergeBranchesBySquashResponse'
  { _mbbsrrsCommitId ::
      !( Maybe
           Text
       ),
    _mbbsrrsTreeId ::
      !( Maybe
           Text
       ),
    _mbbsrrsResponseStatus ::
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

-- | Creates a value of 'MergeBranchesBySquashResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbbsrrsCommitId' - The commit ID of the merge in the destination or target branch.
--
-- * 'mbbsrrsTreeId' - The tree ID of the merge in the destination or target branch.
--
-- * 'mbbsrrsResponseStatus' - -- | The response status code.
mergeBranchesBySquashResponse ::
  -- | 'mbbsrrsResponseStatus'
  Int ->
  MergeBranchesBySquashResponse
mergeBranchesBySquashResponse pResponseStatus_ =
  MergeBranchesBySquashResponse'
    { _mbbsrrsCommitId =
        Nothing,
      _mbbsrrsTreeId = Nothing,
      _mbbsrrsResponseStatus = pResponseStatus_
    }

-- | The commit ID of the merge in the destination or target branch.
mbbsrrsCommitId :: Lens' MergeBranchesBySquashResponse (Maybe Text)
mbbsrrsCommitId = lens _mbbsrrsCommitId (\s a -> s {_mbbsrrsCommitId = a})

-- | The tree ID of the merge in the destination or target branch.
mbbsrrsTreeId :: Lens' MergeBranchesBySquashResponse (Maybe Text)
mbbsrrsTreeId = lens _mbbsrrsTreeId (\s a -> s {_mbbsrrsTreeId = a})

-- | -- | The response status code.
mbbsrrsResponseStatus :: Lens' MergeBranchesBySquashResponse Int
mbbsrrsResponseStatus = lens _mbbsrrsResponseStatus (\s a -> s {_mbbsrrsResponseStatus = a})

instance NFData MergeBranchesBySquashResponse
