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
-- Module      : Network.AWS.CodeCommit.GetMergeOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the merge options available for merging two specified branches. For details about why a merge option is not available, use GetMergeConflicts or DescribeMergeConflicts.
module Network.AWS.CodeCommit.GetMergeOptions
  ( -- * Creating a Request
    getMergeOptions,
    GetMergeOptions,

    -- * Request Lenses
    gmoConflictDetailLevel,
    gmoConflictResolutionStrategy,
    gmoRepositoryName,
    gmoSourceCommitSpecifier,
    gmoDestinationCommitSpecifier,

    -- * Destructuring the Response
    getMergeOptionsResponse,
    GetMergeOptionsResponse,

    -- * Response Lenses
    gmorrsResponseStatus,
    gmorrsMergeOptions,
    gmorrsSourceCommitId,
    gmorrsDestinationCommitId,
    gmorrsBaseCommitId,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getMergeOptions' smart constructor.
data GetMergeOptions = GetMergeOptions'
  { _gmoConflictDetailLevel ::
      !(Maybe ConflictDetailLevelTypeEnum),
    _gmoConflictResolutionStrategy ::
      !( Maybe
           ConflictResolutionStrategyTypeEnum
       ),
    _gmoRepositoryName :: !Text,
    _gmoSourceCommitSpecifier :: !Text,
    _gmoDestinationCommitSpecifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMergeOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmoConflictDetailLevel' - The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
--
-- * 'gmoConflictResolutionStrategy' - Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
--
-- * 'gmoRepositoryName' - The name of the repository that contains the commits about which you want to get merge options.
--
-- * 'gmoSourceCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- * 'gmoDestinationCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
getMergeOptions ::
  -- | 'gmoRepositoryName'
  Text ->
  -- | 'gmoSourceCommitSpecifier'
  Text ->
  -- | 'gmoDestinationCommitSpecifier'
  Text ->
  GetMergeOptions
getMergeOptions
  pRepositoryName_
  pSourceCommitSpecifier_
  pDestinationCommitSpecifier_ =
    GetMergeOptions'
      { _gmoConflictDetailLevel = Nothing,
        _gmoConflictResolutionStrategy = Nothing,
        _gmoRepositoryName = pRepositoryName_,
        _gmoSourceCommitSpecifier = pSourceCommitSpecifier_,
        _gmoDestinationCommitSpecifier =
          pDestinationCommitSpecifier_
      }

-- | The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
gmoConflictDetailLevel :: Lens' GetMergeOptions (Maybe ConflictDetailLevelTypeEnum)
gmoConflictDetailLevel = lens _gmoConflictDetailLevel (\s a -> s {_gmoConflictDetailLevel = a})

-- | Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
gmoConflictResolutionStrategy :: Lens' GetMergeOptions (Maybe ConflictResolutionStrategyTypeEnum)
gmoConflictResolutionStrategy = lens _gmoConflictResolutionStrategy (\s a -> s {_gmoConflictResolutionStrategy = a})

-- | The name of the repository that contains the commits about which you want to get merge options.
gmoRepositoryName :: Lens' GetMergeOptions Text
gmoRepositoryName = lens _gmoRepositoryName (\s a -> s {_gmoRepositoryName = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
gmoSourceCommitSpecifier :: Lens' GetMergeOptions Text
gmoSourceCommitSpecifier = lens _gmoSourceCommitSpecifier (\s a -> s {_gmoSourceCommitSpecifier = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
gmoDestinationCommitSpecifier :: Lens' GetMergeOptions Text
gmoDestinationCommitSpecifier = lens _gmoDestinationCommitSpecifier (\s a -> s {_gmoDestinationCommitSpecifier = a})

instance AWSRequest GetMergeOptions where
  type Rs GetMergeOptions = GetMergeOptionsResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetMergeOptionsResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "mergeOptions" .!@ mempty)
            <*> (x .:> "sourceCommitId")
            <*> (x .:> "destinationCommitId")
            <*> (x .:> "baseCommitId")
      )

instance Hashable GetMergeOptions

instance NFData GetMergeOptions

instance ToHeaders GetMergeOptions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.GetMergeOptions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMergeOptions where
  toJSON GetMergeOptions' {..} =
    object
      ( catMaybes
          [ ("conflictDetailLevel" .=)
              <$> _gmoConflictDetailLevel,
            ("conflictResolutionStrategy" .=)
              <$> _gmoConflictResolutionStrategy,
            Just ("repositoryName" .= _gmoRepositoryName),
            Just
              ( "sourceCommitSpecifier"
                  .= _gmoSourceCommitSpecifier
              ),
            Just
              ( "destinationCommitSpecifier"
                  .= _gmoDestinationCommitSpecifier
              )
          ]
      )

instance ToPath GetMergeOptions where
  toPath = const "/"

instance ToQuery GetMergeOptions where
  toQuery = const mempty

-- | /See:/ 'getMergeOptionsResponse' smart constructor.
data GetMergeOptionsResponse = GetMergeOptionsResponse'
  { _gmorrsResponseStatus ::
      !Int,
    _gmorrsMergeOptions ::
      ![MergeOptionTypeEnum],
    _gmorrsSourceCommitId ::
      !Text,
    _gmorrsDestinationCommitId ::
      !Text,
    _gmorrsBaseCommitId ::
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

-- | Creates a value of 'GetMergeOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmorrsResponseStatus' - -- | The response status code.
--
-- * 'gmorrsMergeOptions' - The merge option or strategy used to merge the code.
--
-- * 'gmorrsSourceCommitId' - The commit ID of the source commit specifier that was used in the merge evaluation.
--
-- * 'gmorrsDestinationCommitId' - The commit ID of the destination commit specifier that was used in the merge evaluation.
--
-- * 'gmorrsBaseCommitId' - The commit ID of the merge base.
getMergeOptionsResponse ::
  -- | 'gmorrsResponseStatus'
  Int ->
  -- | 'gmorrsSourceCommitId'
  Text ->
  -- | 'gmorrsDestinationCommitId'
  Text ->
  -- | 'gmorrsBaseCommitId'
  Text ->
  GetMergeOptionsResponse
getMergeOptionsResponse
  pResponseStatus_
  pSourceCommitId_
  pDestinationCommitId_
  pBaseCommitId_ =
    GetMergeOptionsResponse'
      { _gmorrsResponseStatus =
          pResponseStatus_,
        _gmorrsMergeOptions = mempty,
        _gmorrsSourceCommitId = pSourceCommitId_,
        _gmorrsDestinationCommitId = pDestinationCommitId_,
        _gmorrsBaseCommitId = pBaseCommitId_
      }

-- | -- | The response status code.
gmorrsResponseStatus :: Lens' GetMergeOptionsResponse Int
gmorrsResponseStatus = lens _gmorrsResponseStatus (\s a -> s {_gmorrsResponseStatus = a})

-- | The merge option or strategy used to merge the code.
gmorrsMergeOptions :: Lens' GetMergeOptionsResponse [MergeOptionTypeEnum]
gmorrsMergeOptions = lens _gmorrsMergeOptions (\s a -> s {_gmorrsMergeOptions = a}) . _Coerce

-- | The commit ID of the source commit specifier that was used in the merge evaluation.
gmorrsSourceCommitId :: Lens' GetMergeOptionsResponse Text
gmorrsSourceCommitId = lens _gmorrsSourceCommitId (\s a -> s {_gmorrsSourceCommitId = a})

-- | The commit ID of the destination commit specifier that was used in the merge evaluation.
gmorrsDestinationCommitId :: Lens' GetMergeOptionsResponse Text
gmorrsDestinationCommitId = lens _gmorrsDestinationCommitId (\s a -> s {_gmorrsDestinationCommitId = a})

-- | The commit ID of the merge base.
gmorrsBaseCommitId :: Lens' GetMergeOptionsResponse Text
gmorrsBaseCommitId = lens _gmorrsBaseCommitId (\s a -> s {_gmorrsBaseCommitId = a})

instance NFData GetMergeOptionsResponse
