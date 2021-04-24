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
-- Module      : Network.AWS.CodeCommit.BatchDescribeMergeConflicts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy.
module Network.AWS.CodeCommit.BatchDescribeMergeConflicts
  ( -- * Creating a Request
    batchDescribeMergeConflicts,
    BatchDescribeMergeConflicts,

    -- * Request Lenses
    bdmcMaxMergeHunks,
    bdmcNextToken,
    bdmcMaxConflictFiles,
    bdmcConflictDetailLevel,
    bdmcConflictResolutionStrategy,
    bdmcFilePaths,
    bdmcRepositoryName,
    bdmcDestinationCommitSpecifier,
    bdmcSourceCommitSpecifier,
    bdmcMergeOption,

    -- * Destructuring the Response
    batchDescribeMergeConflictsResponse,
    BatchDescribeMergeConflictsResponse,

    -- * Response Lenses
    bdmcrrsNextToken,
    bdmcrrsBaseCommitId,
    bdmcrrsErrors,
    bdmcrrsResponseStatus,
    bdmcrrsConflicts,
    bdmcrrsDestinationCommitId,
    bdmcrrsSourceCommitId,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchDescribeMergeConflicts' smart constructor.
data BatchDescribeMergeConflicts = BatchDescribeMergeConflicts'
  { _bdmcMaxMergeHunks ::
      !(Maybe Int),
    _bdmcNextToken ::
      !(Maybe Text),
    _bdmcMaxConflictFiles ::
      !(Maybe Int),
    _bdmcConflictDetailLevel ::
      !( Maybe
           ConflictDetailLevelTypeEnum
       ),
    _bdmcConflictResolutionStrategy ::
      !( Maybe
           ConflictResolutionStrategyTypeEnum
       ),
    _bdmcFilePaths ::
      !(Maybe [Text]),
    _bdmcRepositoryName ::
      !Text,
    _bdmcDestinationCommitSpecifier ::
      !Text,
    _bdmcSourceCommitSpecifier ::
      !Text,
    _bdmcMergeOption ::
      !MergeOptionTypeEnum
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDescribeMergeConflicts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdmcMaxMergeHunks' - The maximum number of merge hunks to include in the output.
--
-- * 'bdmcNextToken' - An enumeration token that, when provided in a request, returns the next batch of the results.
--
-- * 'bdmcMaxConflictFiles' - The maximum number of files to include in the output.
--
-- * 'bdmcConflictDetailLevel' - The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
--
-- * 'bdmcConflictResolutionStrategy' - Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
--
-- * 'bdmcFilePaths' - The path of the target files used to describe the conflicts. If not specified, the default is all conflict files.
--
-- * 'bdmcRepositoryName' - The name of the repository that contains the merge conflicts you want to review.
--
-- * 'bdmcDestinationCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- * 'bdmcSourceCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- * 'bdmcMergeOption' - The merge option or strategy you want to use to merge the code.
batchDescribeMergeConflicts ::
  -- | 'bdmcRepositoryName'
  Text ->
  -- | 'bdmcDestinationCommitSpecifier'
  Text ->
  -- | 'bdmcSourceCommitSpecifier'
  Text ->
  -- | 'bdmcMergeOption'
  MergeOptionTypeEnum ->
  BatchDescribeMergeConflicts
batchDescribeMergeConflicts
  pRepositoryName_
  pDestinationCommitSpecifier_
  pSourceCommitSpecifier_
  pMergeOption_ =
    BatchDescribeMergeConflicts'
      { _bdmcMaxMergeHunks =
          Nothing,
        _bdmcNextToken = Nothing,
        _bdmcMaxConflictFiles = Nothing,
        _bdmcConflictDetailLevel = Nothing,
        _bdmcConflictResolutionStrategy = Nothing,
        _bdmcFilePaths = Nothing,
        _bdmcRepositoryName = pRepositoryName_,
        _bdmcDestinationCommitSpecifier =
          pDestinationCommitSpecifier_,
        _bdmcSourceCommitSpecifier =
          pSourceCommitSpecifier_,
        _bdmcMergeOption = pMergeOption_
      }

-- | The maximum number of merge hunks to include in the output.
bdmcMaxMergeHunks :: Lens' BatchDescribeMergeConflicts (Maybe Int)
bdmcMaxMergeHunks = lens _bdmcMaxMergeHunks (\s a -> s {_bdmcMaxMergeHunks = a})

-- | An enumeration token that, when provided in a request, returns the next batch of the results.
bdmcNextToken :: Lens' BatchDescribeMergeConflicts (Maybe Text)
bdmcNextToken = lens _bdmcNextToken (\s a -> s {_bdmcNextToken = a})

-- | The maximum number of files to include in the output.
bdmcMaxConflictFiles :: Lens' BatchDescribeMergeConflicts (Maybe Int)
bdmcMaxConflictFiles = lens _bdmcMaxConflictFiles (\s a -> s {_bdmcMaxConflictFiles = a})

-- | The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
bdmcConflictDetailLevel :: Lens' BatchDescribeMergeConflicts (Maybe ConflictDetailLevelTypeEnum)
bdmcConflictDetailLevel = lens _bdmcConflictDetailLevel (\s a -> s {_bdmcConflictDetailLevel = a})

-- | Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
bdmcConflictResolutionStrategy :: Lens' BatchDescribeMergeConflicts (Maybe ConflictResolutionStrategyTypeEnum)
bdmcConflictResolutionStrategy = lens _bdmcConflictResolutionStrategy (\s a -> s {_bdmcConflictResolutionStrategy = a})

-- | The path of the target files used to describe the conflicts. If not specified, the default is all conflict files.
bdmcFilePaths :: Lens' BatchDescribeMergeConflicts [Text]
bdmcFilePaths = lens _bdmcFilePaths (\s a -> s {_bdmcFilePaths = a}) . _Default . _Coerce

-- | The name of the repository that contains the merge conflicts you want to review.
bdmcRepositoryName :: Lens' BatchDescribeMergeConflicts Text
bdmcRepositoryName = lens _bdmcRepositoryName (\s a -> s {_bdmcRepositoryName = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
bdmcDestinationCommitSpecifier :: Lens' BatchDescribeMergeConflicts Text
bdmcDestinationCommitSpecifier = lens _bdmcDestinationCommitSpecifier (\s a -> s {_bdmcDestinationCommitSpecifier = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
bdmcSourceCommitSpecifier :: Lens' BatchDescribeMergeConflicts Text
bdmcSourceCommitSpecifier = lens _bdmcSourceCommitSpecifier (\s a -> s {_bdmcSourceCommitSpecifier = a})

-- | The merge option or strategy you want to use to merge the code.
bdmcMergeOption :: Lens' BatchDescribeMergeConflicts MergeOptionTypeEnum
bdmcMergeOption = lens _bdmcMergeOption (\s a -> s {_bdmcMergeOption = a})

instance AWSRequest BatchDescribeMergeConflicts where
  type
    Rs BatchDescribeMergeConflicts =
      BatchDescribeMergeConflictsResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          BatchDescribeMergeConflictsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "baseCommitId")
            <*> (x .?> "errors" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .?> "conflicts" .!@ mempty)
            <*> (x .:> "destinationCommitId")
            <*> (x .:> "sourceCommitId")
      )

instance Hashable BatchDescribeMergeConflicts

instance NFData BatchDescribeMergeConflicts

instance ToHeaders BatchDescribeMergeConflicts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.BatchDescribeMergeConflicts" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchDescribeMergeConflicts where
  toJSON BatchDescribeMergeConflicts' {..} =
    object
      ( catMaybes
          [ ("maxMergeHunks" .=) <$> _bdmcMaxMergeHunks,
            ("nextToken" .=) <$> _bdmcNextToken,
            ("maxConflictFiles" .=) <$> _bdmcMaxConflictFiles,
            ("conflictDetailLevel" .=)
              <$> _bdmcConflictDetailLevel,
            ("conflictResolutionStrategy" .=)
              <$> _bdmcConflictResolutionStrategy,
            ("filePaths" .=) <$> _bdmcFilePaths,
            Just ("repositoryName" .= _bdmcRepositoryName),
            Just
              ( "destinationCommitSpecifier"
                  .= _bdmcDestinationCommitSpecifier
              ),
            Just
              ( "sourceCommitSpecifier"
                  .= _bdmcSourceCommitSpecifier
              ),
            Just ("mergeOption" .= _bdmcMergeOption)
          ]
      )

instance ToPath BatchDescribeMergeConflicts where
  toPath = const "/"

instance ToQuery BatchDescribeMergeConflicts where
  toQuery = const mempty

-- | /See:/ 'batchDescribeMergeConflictsResponse' smart constructor.
data BatchDescribeMergeConflictsResponse = BatchDescribeMergeConflictsResponse'
  { _bdmcrrsNextToken ::
      !( Maybe
           Text
       ),
    _bdmcrrsBaseCommitId ::
      !( Maybe
           Text
       ),
    _bdmcrrsErrors ::
      !( Maybe
           [BatchDescribeMergeConflictsError]
       ),
    _bdmcrrsResponseStatus ::
      !Int,
    _bdmcrrsConflicts ::
      ![Conflict],
    _bdmcrrsDestinationCommitId ::
      !Text,
    _bdmcrrsSourceCommitId ::
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

-- | Creates a value of 'BatchDescribeMergeConflictsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdmcrrsNextToken' - An enumeration token that can be used in a request to return the next batch of the results.
--
-- * 'bdmcrrsBaseCommitId' - The commit ID of the merge base.
--
-- * 'bdmcrrsErrors' - A list of any errors returned while describing the merge conflicts for each file.
--
-- * 'bdmcrrsResponseStatus' - -- | The response status code.
--
-- * 'bdmcrrsConflicts' - A list of conflicts for each file, including the conflict metadata and the hunks of the differences between the files.
--
-- * 'bdmcrrsDestinationCommitId' - The commit ID of the destination commit specifier that was used in the merge evaluation.
--
-- * 'bdmcrrsSourceCommitId' - The commit ID of the source commit specifier that was used in the merge evaluation.
batchDescribeMergeConflictsResponse ::
  -- | 'bdmcrrsResponseStatus'
  Int ->
  -- | 'bdmcrrsDestinationCommitId'
  Text ->
  -- | 'bdmcrrsSourceCommitId'
  Text ->
  BatchDescribeMergeConflictsResponse
batchDescribeMergeConflictsResponse
  pResponseStatus_
  pDestinationCommitId_
  pSourceCommitId_ =
    BatchDescribeMergeConflictsResponse'
      { _bdmcrrsNextToken =
          Nothing,
        _bdmcrrsBaseCommitId = Nothing,
        _bdmcrrsErrors = Nothing,
        _bdmcrrsResponseStatus =
          pResponseStatus_,
        _bdmcrrsConflicts = mempty,
        _bdmcrrsDestinationCommitId =
          pDestinationCommitId_,
        _bdmcrrsSourceCommitId =
          pSourceCommitId_
      }

-- | An enumeration token that can be used in a request to return the next batch of the results.
bdmcrrsNextToken :: Lens' BatchDescribeMergeConflictsResponse (Maybe Text)
bdmcrrsNextToken = lens _bdmcrrsNextToken (\s a -> s {_bdmcrrsNextToken = a})

-- | The commit ID of the merge base.
bdmcrrsBaseCommitId :: Lens' BatchDescribeMergeConflictsResponse (Maybe Text)
bdmcrrsBaseCommitId = lens _bdmcrrsBaseCommitId (\s a -> s {_bdmcrrsBaseCommitId = a})

-- | A list of any errors returned while describing the merge conflicts for each file.
bdmcrrsErrors :: Lens' BatchDescribeMergeConflictsResponse [BatchDescribeMergeConflictsError]
bdmcrrsErrors = lens _bdmcrrsErrors (\s a -> s {_bdmcrrsErrors = a}) . _Default . _Coerce

-- | -- | The response status code.
bdmcrrsResponseStatus :: Lens' BatchDescribeMergeConflictsResponse Int
bdmcrrsResponseStatus = lens _bdmcrrsResponseStatus (\s a -> s {_bdmcrrsResponseStatus = a})

-- | A list of conflicts for each file, including the conflict metadata and the hunks of the differences between the files.
bdmcrrsConflicts :: Lens' BatchDescribeMergeConflictsResponse [Conflict]
bdmcrrsConflicts = lens _bdmcrrsConflicts (\s a -> s {_bdmcrrsConflicts = a}) . _Coerce

-- | The commit ID of the destination commit specifier that was used in the merge evaluation.
bdmcrrsDestinationCommitId :: Lens' BatchDescribeMergeConflictsResponse Text
bdmcrrsDestinationCommitId = lens _bdmcrrsDestinationCommitId (\s a -> s {_bdmcrrsDestinationCommitId = a})

-- | The commit ID of the source commit specifier that was used in the merge evaluation.
bdmcrrsSourceCommitId :: Lens' BatchDescribeMergeConflictsResponse Text
bdmcrrsSourceCommitId = lens _bdmcrrsSourceCommitId (\s a -> s {_bdmcrrsSourceCommitId = a})

instance NFData BatchDescribeMergeConflictsResponse
