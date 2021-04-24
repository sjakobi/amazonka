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
-- Module      : Network.AWS.CodeCommit.GetMergeCommit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specified merge commit.
module Network.AWS.CodeCommit.GetMergeCommit
  ( -- * Creating a Request
    getMergeCommit,
    GetMergeCommit,

    -- * Request Lenses
    gConflictDetailLevel,
    gConflictResolutionStrategy,
    gRepositoryName,
    gSourceCommitSpecifier,
    gDestinationCommitSpecifier,

    -- * Destructuring the Response
    getMergeCommitResponse,
    GetMergeCommitResponse,

    -- * Response Lenses
    grsBaseCommitId,
    grsMergedCommitId,
    grsSourceCommitId,
    grsDestinationCommitId,
    grsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getMergeCommit' smart constructor.
data GetMergeCommit = GetMergeCommit'
  { _gConflictDetailLevel ::
      !(Maybe ConflictDetailLevelTypeEnum),
    _gConflictResolutionStrategy ::
      !( Maybe
           ConflictResolutionStrategyTypeEnum
       ),
    _gRepositoryName :: !Text,
    _gSourceCommitSpecifier :: !Text,
    _gDestinationCommitSpecifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMergeCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gConflictDetailLevel' - The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
--
-- * 'gConflictResolutionStrategy' - Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
--
-- * 'gRepositoryName' - The name of the repository that contains the merge commit about which you want to get information.
--
-- * 'gSourceCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- * 'gDestinationCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
getMergeCommit ::
  -- | 'gRepositoryName'
  Text ->
  -- | 'gSourceCommitSpecifier'
  Text ->
  -- | 'gDestinationCommitSpecifier'
  Text ->
  GetMergeCommit
getMergeCommit
  pRepositoryName_
  pSourceCommitSpecifier_
  pDestinationCommitSpecifier_ =
    GetMergeCommit'
      { _gConflictDetailLevel = Nothing,
        _gConflictResolutionStrategy = Nothing,
        _gRepositoryName = pRepositoryName_,
        _gSourceCommitSpecifier = pSourceCommitSpecifier_,
        _gDestinationCommitSpecifier =
          pDestinationCommitSpecifier_
      }

-- | The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
gConflictDetailLevel :: Lens' GetMergeCommit (Maybe ConflictDetailLevelTypeEnum)
gConflictDetailLevel = lens _gConflictDetailLevel (\s a -> s {_gConflictDetailLevel = a})

-- | Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
gConflictResolutionStrategy :: Lens' GetMergeCommit (Maybe ConflictResolutionStrategyTypeEnum)
gConflictResolutionStrategy = lens _gConflictResolutionStrategy (\s a -> s {_gConflictResolutionStrategy = a})

-- | The name of the repository that contains the merge commit about which you want to get information.
gRepositoryName :: Lens' GetMergeCommit Text
gRepositoryName = lens _gRepositoryName (\s a -> s {_gRepositoryName = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
gSourceCommitSpecifier :: Lens' GetMergeCommit Text
gSourceCommitSpecifier = lens _gSourceCommitSpecifier (\s a -> s {_gSourceCommitSpecifier = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
gDestinationCommitSpecifier :: Lens' GetMergeCommit Text
gDestinationCommitSpecifier = lens _gDestinationCommitSpecifier (\s a -> s {_gDestinationCommitSpecifier = a})

instance AWSRequest GetMergeCommit where
  type Rs GetMergeCommit = GetMergeCommitResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetMergeCommitResponse'
            <$> (x .?> "baseCommitId")
            <*> (x .?> "mergedCommitId")
            <*> (x .?> "sourceCommitId")
            <*> (x .?> "destinationCommitId")
            <*> (pure (fromEnum s))
      )

instance Hashable GetMergeCommit

instance NFData GetMergeCommit

instance ToHeaders GetMergeCommit where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeCommit_20150413.GetMergeCommit" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMergeCommit where
  toJSON GetMergeCommit' {..} =
    object
      ( catMaybes
          [ ("conflictDetailLevel" .=)
              <$> _gConflictDetailLevel,
            ("conflictResolutionStrategy" .=)
              <$> _gConflictResolutionStrategy,
            Just ("repositoryName" .= _gRepositoryName),
            Just
              ("sourceCommitSpecifier" .= _gSourceCommitSpecifier),
            Just
              ( "destinationCommitSpecifier"
                  .= _gDestinationCommitSpecifier
              )
          ]
      )

instance ToPath GetMergeCommit where
  toPath = const "/"

instance ToQuery GetMergeCommit where
  toQuery = const mempty

-- | /See:/ 'getMergeCommitResponse' smart constructor.
data GetMergeCommitResponse = GetMergeCommitResponse'
  { _grsBaseCommitId ::
      !(Maybe Text),
    _grsMergedCommitId ::
      !(Maybe Text),
    _grsSourceCommitId ::
      !(Maybe Text),
    _grsDestinationCommitId ::
      !(Maybe Text),
    _grsResponseStatus ::
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

-- | Creates a value of 'GetMergeCommitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsBaseCommitId' - The commit ID of the merge base.
--
-- * 'grsMergedCommitId' - The commit ID for the merge commit created when the source branch was merged into the destination branch. If the fast-forward merge strategy was used, there is no merge commit.
--
-- * 'grsSourceCommitId' - The commit ID of the source commit specifier that was used in the merge evaluation.
--
-- * 'grsDestinationCommitId' - The commit ID of the destination commit specifier that was used in the merge evaluation.
--
-- * 'grsResponseStatus' - -- | The response status code.
getMergeCommitResponse ::
  -- | 'grsResponseStatus'
  Int ->
  GetMergeCommitResponse
getMergeCommitResponse pResponseStatus_ =
  GetMergeCommitResponse'
    { _grsBaseCommitId = Nothing,
      _grsMergedCommitId = Nothing,
      _grsSourceCommitId = Nothing,
      _grsDestinationCommitId = Nothing,
      _grsResponseStatus = pResponseStatus_
    }

-- | The commit ID of the merge base.
grsBaseCommitId :: Lens' GetMergeCommitResponse (Maybe Text)
grsBaseCommitId = lens _grsBaseCommitId (\s a -> s {_grsBaseCommitId = a})

-- | The commit ID for the merge commit created when the source branch was merged into the destination branch. If the fast-forward merge strategy was used, there is no merge commit.
grsMergedCommitId :: Lens' GetMergeCommitResponse (Maybe Text)
grsMergedCommitId = lens _grsMergedCommitId (\s a -> s {_grsMergedCommitId = a})

-- | The commit ID of the source commit specifier that was used in the merge evaluation.
grsSourceCommitId :: Lens' GetMergeCommitResponse (Maybe Text)
grsSourceCommitId = lens _grsSourceCommitId (\s a -> s {_grsSourceCommitId = a})

-- | The commit ID of the destination commit specifier that was used in the merge evaluation.
grsDestinationCommitId :: Lens' GetMergeCommitResponse (Maybe Text)
grsDestinationCommitId = lens _grsDestinationCommitId (\s a -> s {_grsDestinationCommitId = a})

-- | -- | The response status code.
grsResponseStatus :: Lens' GetMergeCommitResponse Int
grsResponseStatus = lens _grsResponseStatus (\s a -> s {_grsResponseStatus = a})

instance NFData GetMergeCommitResponse
