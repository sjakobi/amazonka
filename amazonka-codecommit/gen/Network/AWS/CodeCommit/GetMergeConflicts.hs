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
-- Module      : Network.AWS.CodeCommit.GetMergeConflicts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.
module Network.AWS.CodeCommit.GetMergeConflicts
  ( -- * Creating a Request
    getMergeConflicts,
    GetMergeConflicts,

    -- * Request Lenses
    gmcNextToken,
    gmcMaxConflictFiles,
    gmcConflictDetailLevel,
    gmcConflictResolutionStrategy,
    gmcRepositoryName,
    gmcDestinationCommitSpecifier,
    gmcSourceCommitSpecifier,
    gmcMergeOption,

    -- * Destructuring the Response
    getMergeConflictsResponse,
    GetMergeConflictsResponse,

    -- * Response Lenses
    gmcrrsNextToken,
    gmcrrsBaseCommitId,
    gmcrrsResponseStatus,
    gmcrrsMergeable,
    gmcrrsDestinationCommitId,
    gmcrrsSourceCommitId,
    gmcrrsConflictMetadataList,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getMergeConflicts' smart constructor.
data GetMergeConflicts = GetMergeConflicts'
  { _gmcNextToken ::
      !(Maybe Text),
    _gmcMaxConflictFiles ::
      !(Maybe Int),
    _gmcConflictDetailLevel ::
      !( Maybe
           ConflictDetailLevelTypeEnum
       ),
    _gmcConflictResolutionStrategy ::
      !( Maybe
           ConflictResolutionStrategyTypeEnum
       ),
    _gmcRepositoryName :: !Text,
    _gmcDestinationCommitSpecifier ::
      !Text,
    _gmcSourceCommitSpecifier :: !Text,
    _gmcMergeOption ::
      !MergeOptionTypeEnum
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMergeConflicts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmcNextToken' - An enumeration token that, when provided in a request, returns the next batch of the results.
--
-- * 'gmcMaxConflictFiles' - The maximum number of files to include in the output.
--
-- * 'gmcConflictDetailLevel' - The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
--
-- * 'gmcConflictResolutionStrategy' - Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
--
-- * 'gmcRepositoryName' - The name of the repository where the pull request was created.
--
-- * 'gmcDestinationCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- * 'gmcSourceCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- * 'gmcMergeOption' - The merge option or strategy you want to use to merge the code.
getMergeConflicts ::
  -- | 'gmcRepositoryName'
  Text ->
  -- | 'gmcDestinationCommitSpecifier'
  Text ->
  -- | 'gmcSourceCommitSpecifier'
  Text ->
  -- | 'gmcMergeOption'
  MergeOptionTypeEnum ->
  GetMergeConflicts
getMergeConflicts
  pRepositoryName_
  pDestinationCommitSpecifier_
  pSourceCommitSpecifier_
  pMergeOption_ =
    GetMergeConflicts'
      { _gmcNextToken = Nothing,
        _gmcMaxConflictFiles = Nothing,
        _gmcConflictDetailLevel = Nothing,
        _gmcConflictResolutionStrategy = Nothing,
        _gmcRepositoryName = pRepositoryName_,
        _gmcDestinationCommitSpecifier =
          pDestinationCommitSpecifier_,
        _gmcSourceCommitSpecifier = pSourceCommitSpecifier_,
        _gmcMergeOption = pMergeOption_
      }

-- | An enumeration token that, when provided in a request, returns the next batch of the results.
gmcNextToken :: Lens' GetMergeConflicts (Maybe Text)
gmcNextToken = lens _gmcNextToken (\s a -> s {_gmcNextToken = a})

-- | The maximum number of files to include in the output.
gmcMaxConflictFiles :: Lens' GetMergeConflicts (Maybe Int)
gmcMaxConflictFiles = lens _gmcMaxConflictFiles (\s a -> s {_gmcMaxConflictFiles = a})

-- | The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
gmcConflictDetailLevel :: Lens' GetMergeConflicts (Maybe ConflictDetailLevelTypeEnum)
gmcConflictDetailLevel = lens _gmcConflictDetailLevel (\s a -> s {_gmcConflictDetailLevel = a})

-- | Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
gmcConflictResolutionStrategy :: Lens' GetMergeConflicts (Maybe ConflictResolutionStrategyTypeEnum)
gmcConflictResolutionStrategy = lens _gmcConflictResolutionStrategy (\s a -> s {_gmcConflictResolutionStrategy = a})

-- | The name of the repository where the pull request was created.
gmcRepositoryName :: Lens' GetMergeConflicts Text
gmcRepositoryName = lens _gmcRepositoryName (\s a -> s {_gmcRepositoryName = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
gmcDestinationCommitSpecifier :: Lens' GetMergeConflicts Text
gmcDestinationCommitSpecifier = lens _gmcDestinationCommitSpecifier (\s a -> s {_gmcDestinationCommitSpecifier = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
gmcSourceCommitSpecifier :: Lens' GetMergeConflicts Text
gmcSourceCommitSpecifier = lens _gmcSourceCommitSpecifier (\s a -> s {_gmcSourceCommitSpecifier = a})

-- | The merge option or strategy you want to use to merge the code.
gmcMergeOption :: Lens' GetMergeConflicts MergeOptionTypeEnum
gmcMergeOption = lens _gmcMergeOption (\s a -> s {_gmcMergeOption = a})

instance AWSRequest GetMergeConflicts where
  type Rs GetMergeConflicts = GetMergeConflictsResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetMergeConflictsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "baseCommitId")
            <*> (pure (fromEnum s))
            <*> (x .:> "mergeable")
            <*> (x .:> "destinationCommitId")
            <*> (x .:> "sourceCommitId")
            <*> (x .?> "conflictMetadataList" .!@ mempty)
      )

instance Hashable GetMergeConflicts

instance NFData GetMergeConflicts

instance ToHeaders GetMergeConflicts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.GetMergeConflicts" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMergeConflicts where
  toJSON GetMergeConflicts' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _gmcNextToken,
            ("maxConflictFiles" .=) <$> _gmcMaxConflictFiles,
            ("conflictDetailLevel" .=)
              <$> _gmcConflictDetailLevel,
            ("conflictResolutionStrategy" .=)
              <$> _gmcConflictResolutionStrategy,
            Just ("repositoryName" .= _gmcRepositoryName),
            Just
              ( "destinationCommitSpecifier"
                  .= _gmcDestinationCommitSpecifier
              ),
            Just
              ( "sourceCommitSpecifier"
                  .= _gmcSourceCommitSpecifier
              ),
            Just ("mergeOption" .= _gmcMergeOption)
          ]
      )

instance ToPath GetMergeConflicts where
  toPath = const "/"

instance ToQuery GetMergeConflicts where
  toQuery = const mempty

-- | /See:/ 'getMergeConflictsResponse' smart constructor.
data GetMergeConflictsResponse = GetMergeConflictsResponse'
  { _gmcrrsNextToken ::
      !(Maybe Text),
    _gmcrrsBaseCommitId ::
      !(Maybe Text),
    _gmcrrsResponseStatus ::
      !Int,
    _gmcrrsMergeable ::
      !Bool,
    _gmcrrsDestinationCommitId ::
      !Text,
    _gmcrrsSourceCommitId ::
      !Text,
    _gmcrrsConflictMetadataList ::
      ![ConflictMetadata]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMergeConflictsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmcrrsNextToken' - An enumeration token that can be used in a request to return the next batch of the results.
--
-- * 'gmcrrsBaseCommitId' - The commit ID of the merge base.
--
-- * 'gmcrrsResponseStatus' - -- | The response status code.
--
-- * 'gmcrrsMergeable' - A Boolean value that indicates whether the code is mergeable by the specified merge option.
--
-- * 'gmcrrsDestinationCommitId' - The commit ID of the destination commit specifier that was used in the merge evaluation.
--
-- * 'gmcrrsSourceCommitId' - The commit ID of the source commit specifier that was used in the merge evaluation.
--
-- * 'gmcrrsConflictMetadataList' - A list of metadata for any conflicting files. If the specified merge strategy is FAST_FORWARD_MERGE, this list is always empty.
getMergeConflictsResponse ::
  -- | 'gmcrrsResponseStatus'
  Int ->
  -- | 'gmcrrsMergeable'
  Bool ->
  -- | 'gmcrrsDestinationCommitId'
  Text ->
  -- | 'gmcrrsSourceCommitId'
  Text ->
  GetMergeConflictsResponse
getMergeConflictsResponse
  pResponseStatus_
  pMergeable_
  pDestinationCommitId_
  pSourceCommitId_ =
    GetMergeConflictsResponse'
      { _gmcrrsNextToken =
          Nothing,
        _gmcrrsBaseCommitId = Nothing,
        _gmcrrsResponseStatus = pResponseStatus_,
        _gmcrrsMergeable = pMergeable_,
        _gmcrrsDestinationCommitId =
          pDestinationCommitId_,
        _gmcrrsSourceCommitId = pSourceCommitId_,
        _gmcrrsConflictMetadataList = mempty
      }

-- | An enumeration token that can be used in a request to return the next batch of the results.
gmcrrsNextToken :: Lens' GetMergeConflictsResponse (Maybe Text)
gmcrrsNextToken = lens _gmcrrsNextToken (\s a -> s {_gmcrrsNextToken = a})

-- | The commit ID of the merge base.
gmcrrsBaseCommitId :: Lens' GetMergeConflictsResponse (Maybe Text)
gmcrrsBaseCommitId = lens _gmcrrsBaseCommitId (\s a -> s {_gmcrrsBaseCommitId = a})

-- | -- | The response status code.
gmcrrsResponseStatus :: Lens' GetMergeConflictsResponse Int
gmcrrsResponseStatus = lens _gmcrrsResponseStatus (\s a -> s {_gmcrrsResponseStatus = a})

-- | A Boolean value that indicates whether the code is mergeable by the specified merge option.
gmcrrsMergeable :: Lens' GetMergeConflictsResponse Bool
gmcrrsMergeable = lens _gmcrrsMergeable (\s a -> s {_gmcrrsMergeable = a})

-- | The commit ID of the destination commit specifier that was used in the merge evaluation.
gmcrrsDestinationCommitId :: Lens' GetMergeConflictsResponse Text
gmcrrsDestinationCommitId = lens _gmcrrsDestinationCommitId (\s a -> s {_gmcrrsDestinationCommitId = a})

-- | The commit ID of the source commit specifier that was used in the merge evaluation.
gmcrrsSourceCommitId :: Lens' GetMergeConflictsResponse Text
gmcrrsSourceCommitId = lens _gmcrrsSourceCommitId (\s a -> s {_gmcrrsSourceCommitId = a})

-- | A list of metadata for any conflicting files. If the specified merge strategy is FAST_FORWARD_MERGE, this list is always empty.
gmcrrsConflictMetadataList :: Lens' GetMergeConflictsResponse [ConflictMetadata]
gmcrrsConflictMetadataList = lens _gmcrrsConflictMetadataList (\s a -> s {_gmcrrsConflictMetadataList = a}) . _Coerce

instance NFData GetMergeConflictsResponse
