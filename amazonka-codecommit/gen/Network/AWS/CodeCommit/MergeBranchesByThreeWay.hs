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
-- Module      : Network.AWS.CodeCommit.MergeBranchesByThreeWay
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Merges two specified branches using the three-way merge strategy.
module Network.AWS.CodeCommit.MergeBranchesByThreeWay
  ( -- * Creating a Request
    mergeBranchesByThreeWay,
    MergeBranchesByThreeWay,

    -- * Request Lenses
    mbbtwCommitMessage,
    mbbtwAuthorName,
    mbbtwEmail,
    mbbtwConflictDetailLevel,
    mbbtwConflictResolutionStrategy,
    mbbtwKeepEmptyFolders,
    mbbtwConflictResolution,
    mbbtwTargetBranch,
    mbbtwRepositoryName,
    mbbtwSourceCommitSpecifier,
    mbbtwDestinationCommitSpecifier,

    -- * Destructuring the Response
    mergeBranchesByThreeWayResponse,
    MergeBranchesByThreeWayResponse,

    -- * Response Lenses
    mbbtwrrsCommitId,
    mbbtwrrsTreeId,
    mbbtwrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'mergeBranchesByThreeWay' smart constructor.
data MergeBranchesByThreeWay = MergeBranchesByThreeWay'
  { _mbbtwCommitMessage ::
      !(Maybe Text),
    _mbbtwAuthorName ::
      !(Maybe Text),
    _mbbtwEmail ::
      !(Maybe Text),
    _mbbtwConflictDetailLevel ::
      !( Maybe
           ConflictDetailLevelTypeEnum
       ),
    _mbbtwConflictResolutionStrategy ::
      !( Maybe
           ConflictResolutionStrategyTypeEnum
       ),
    _mbbtwKeepEmptyFolders ::
      !(Maybe Bool),
    _mbbtwConflictResolution ::
      !( Maybe
           ConflictResolution
       ),
    _mbbtwTargetBranch ::
      !(Maybe Text),
    _mbbtwRepositoryName ::
      !Text,
    _mbbtwSourceCommitSpecifier ::
      !Text,
    _mbbtwDestinationCommitSpecifier ::
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

-- | Creates a value of 'MergeBranchesByThreeWay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbbtwCommitMessage' - The commit message to include in the commit information for the merge.
--
-- * 'mbbtwAuthorName' - The name of the author who created the commit. This information is used as both the author and committer for the commit.
--
-- * 'mbbtwEmail' - The email address of the person merging the branches. This information is used in the commit information for the merge.
--
-- * 'mbbtwConflictDetailLevel' - The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
--
-- * 'mbbtwConflictResolutionStrategy' - Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
--
-- * 'mbbtwKeepEmptyFolders' - If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.
--
-- * 'mbbtwConflictResolution' - If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
--
-- * 'mbbtwTargetBranch' - The branch where the merge is applied.
--
-- * 'mbbtwRepositoryName' - The name of the repository where you want to merge two branches.
--
-- * 'mbbtwSourceCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- * 'mbbtwDestinationCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
mergeBranchesByThreeWay ::
  -- | 'mbbtwRepositoryName'
  Text ->
  -- | 'mbbtwSourceCommitSpecifier'
  Text ->
  -- | 'mbbtwDestinationCommitSpecifier'
  Text ->
  MergeBranchesByThreeWay
mergeBranchesByThreeWay
  pRepositoryName_
  pSourceCommitSpecifier_
  pDestinationCommitSpecifier_ =
    MergeBranchesByThreeWay'
      { _mbbtwCommitMessage =
          Nothing,
        _mbbtwAuthorName = Nothing,
        _mbbtwEmail = Nothing,
        _mbbtwConflictDetailLevel = Nothing,
        _mbbtwConflictResolutionStrategy = Nothing,
        _mbbtwKeepEmptyFolders = Nothing,
        _mbbtwConflictResolution = Nothing,
        _mbbtwTargetBranch = Nothing,
        _mbbtwRepositoryName = pRepositoryName_,
        _mbbtwSourceCommitSpecifier =
          pSourceCommitSpecifier_,
        _mbbtwDestinationCommitSpecifier =
          pDestinationCommitSpecifier_
      }

-- | The commit message to include in the commit information for the merge.
mbbtwCommitMessage :: Lens' MergeBranchesByThreeWay (Maybe Text)
mbbtwCommitMessage = lens _mbbtwCommitMessage (\s a -> s {_mbbtwCommitMessage = a})

-- | The name of the author who created the commit. This information is used as both the author and committer for the commit.
mbbtwAuthorName :: Lens' MergeBranchesByThreeWay (Maybe Text)
mbbtwAuthorName = lens _mbbtwAuthorName (\s a -> s {_mbbtwAuthorName = a})

-- | The email address of the person merging the branches. This information is used in the commit information for the merge.
mbbtwEmail :: Lens' MergeBranchesByThreeWay (Maybe Text)
mbbtwEmail = lens _mbbtwEmail (\s a -> s {_mbbtwEmail = a})

-- | The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
mbbtwConflictDetailLevel :: Lens' MergeBranchesByThreeWay (Maybe ConflictDetailLevelTypeEnum)
mbbtwConflictDetailLevel = lens _mbbtwConflictDetailLevel (\s a -> s {_mbbtwConflictDetailLevel = a})

-- | Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
mbbtwConflictResolutionStrategy :: Lens' MergeBranchesByThreeWay (Maybe ConflictResolutionStrategyTypeEnum)
mbbtwConflictResolutionStrategy = lens _mbbtwConflictResolutionStrategy (\s a -> s {_mbbtwConflictResolutionStrategy = a})

-- | If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.
mbbtwKeepEmptyFolders :: Lens' MergeBranchesByThreeWay (Maybe Bool)
mbbtwKeepEmptyFolders = lens _mbbtwKeepEmptyFolders (\s a -> s {_mbbtwKeepEmptyFolders = a})

-- | If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
mbbtwConflictResolution :: Lens' MergeBranchesByThreeWay (Maybe ConflictResolution)
mbbtwConflictResolution = lens _mbbtwConflictResolution (\s a -> s {_mbbtwConflictResolution = a})

-- | The branch where the merge is applied.
mbbtwTargetBranch :: Lens' MergeBranchesByThreeWay (Maybe Text)
mbbtwTargetBranch = lens _mbbtwTargetBranch (\s a -> s {_mbbtwTargetBranch = a})

-- | The name of the repository where you want to merge two branches.
mbbtwRepositoryName :: Lens' MergeBranchesByThreeWay Text
mbbtwRepositoryName = lens _mbbtwRepositoryName (\s a -> s {_mbbtwRepositoryName = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
mbbtwSourceCommitSpecifier :: Lens' MergeBranchesByThreeWay Text
mbbtwSourceCommitSpecifier = lens _mbbtwSourceCommitSpecifier (\s a -> s {_mbbtwSourceCommitSpecifier = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
mbbtwDestinationCommitSpecifier :: Lens' MergeBranchesByThreeWay Text
mbbtwDestinationCommitSpecifier = lens _mbbtwDestinationCommitSpecifier (\s a -> s {_mbbtwDestinationCommitSpecifier = a})

instance AWSRequest MergeBranchesByThreeWay where
  type
    Rs MergeBranchesByThreeWay =
      MergeBranchesByThreeWayResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          MergeBranchesByThreeWayResponse'
            <$> (x .?> "commitId")
            <*> (x .?> "treeId")
            <*> (pure (fromEnum s))
      )

instance Hashable MergeBranchesByThreeWay

instance NFData MergeBranchesByThreeWay

instance ToHeaders MergeBranchesByThreeWay where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.MergeBranchesByThreeWay" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON MergeBranchesByThreeWay where
  toJSON MergeBranchesByThreeWay' {..} =
    object
      ( catMaybes
          [ ("commitMessage" .=) <$> _mbbtwCommitMessage,
            ("authorName" .=) <$> _mbbtwAuthorName,
            ("email" .=) <$> _mbbtwEmail,
            ("conflictDetailLevel" .=)
              <$> _mbbtwConflictDetailLevel,
            ("conflictResolutionStrategy" .=)
              <$> _mbbtwConflictResolutionStrategy,
            ("keepEmptyFolders" .=) <$> _mbbtwKeepEmptyFolders,
            ("conflictResolution" .=)
              <$> _mbbtwConflictResolution,
            ("targetBranch" .=) <$> _mbbtwTargetBranch,
            Just ("repositoryName" .= _mbbtwRepositoryName),
            Just
              ( "sourceCommitSpecifier"
                  .= _mbbtwSourceCommitSpecifier
              ),
            Just
              ( "destinationCommitSpecifier"
                  .= _mbbtwDestinationCommitSpecifier
              )
          ]
      )

instance ToPath MergeBranchesByThreeWay where
  toPath = const "/"

instance ToQuery MergeBranchesByThreeWay where
  toQuery = const mempty

-- | /See:/ 'mergeBranchesByThreeWayResponse' smart constructor.
data MergeBranchesByThreeWayResponse = MergeBranchesByThreeWayResponse'
  { _mbbtwrrsCommitId ::
      !( Maybe
           Text
       ),
    _mbbtwrrsTreeId ::
      !( Maybe
           Text
       ),
    _mbbtwrrsResponseStatus ::
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

-- | Creates a value of 'MergeBranchesByThreeWayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbbtwrrsCommitId' - The commit ID of the merge in the destination or target branch.
--
-- * 'mbbtwrrsTreeId' - The tree ID of the merge in the destination or target branch.
--
-- * 'mbbtwrrsResponseStatus' - -- | The response status code.
mergeBranchesByThreeWayResponse ::
  -- | 'mbbtwrrsResponseStatus'
  Int ->
  MergeBranchesByThreeWayResponse
mergeBranchesByThreeWayResponse pResponseStatus_ =
  MergeBranchesByThreeWayResponse'
    { _mbbtwrrsCommitId =
        Nothing,
      _mbbtwrrsTreeId = Nothing,
      _mbbtwrrsResponseStatus = pResponseStatus_
    }

-- | The commit ID of the merge in the destination or target branch.
mbbtwrrsCommitId :: Lens' MergeBranchesByThreeWayResponse (Maybe Text)
mbbtwrrsCommitId = lens _mbbtwrrsCommitId (\s a -> s {_mbbtwrrsCommitId = a})

-- | The tree ID of the merge in the destination or target branch.
mbbtwrrsTreeId :: Lens' MergeBranchesByThreeWayResponse (Maybe Text)
mbbtwrrsTreeId = lens _mbbtwrrsTreeId (\s a -> s {_mbbtwrrsTreeId = a})

-- | -- | The response status code.
mbbtwrrsResponseStatus :: Lens' MergeBranchesByThreeWayResponse Int
mbbtwrrsResponseStatus = lens _mbbtwrrsResponseStatus (\s a -> s {_mbbtwrrsResponseStatus = a})

instance NFData MergeBranchesByThreeWayResponse
