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
-- Module      : Network.AWS.CodeCommit.MergeBranchesByFastForward
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Merges two branches using the fast-forward merge strategy.
module Network.AWS.CodeCommit.MergeBranchesByFastForward
  ( -- * Creating a Request
    mergeBranchesByFastForward,
    MergeBranchesByFastForward,

    -- * Request Lenses
    mbbffTargetBranch,
    mbbffRepositoryName,
    mbbffSourceCommitSpecifier,
    mbbffDestinationCommitSpecifier,

    -- * Destructuring the Response
    mergeBranchesByFastForwardResponse,
    MergeBranchesByFastForwardResponse,

    -- * Response Lenses
    mbbffrrsCommitId,
    mbbffrrsTreeId,
    mbbffrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'mergeBranchesByFastForward' smart constructor.
data MergeBranchesByFastForward = MergeBranchesByFastForward'
  { _mbbffTargetBranch ::
      !(Maybe Text),
    _mbbffRepositoryName ::
      !Text,
    _mbbffSourceCommitSpecifier ::
      !Text,
    _mbbffDestinationCommitSpecifier ::
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

-- | Creates a value of 'MergeBranchesByFastForward' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbbffTargetBranch' - The branch where the merge is applied.
--
-- * 'mbbffRepositoryName' - The name of the repository where you want to merge two branches.
--
-- * 'mbbffSourceCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- * 'mbbffDestinationCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
mergeBranchesByFastForward ::
  -- | 'mbbffRepositoryName'
  Text ->
  -- | 'mbbffSourceCommitSpecifier'
  Text ->
  -- | 'mbbffDestinationCommitSpecifier'
  Text ->
  MergeBranchesByFastForward
mergeBranchesByFastForward
  pRepositoryName_
  pSourceCommitSpecifier_
  pDestinationCommitSpecifier_ =
    MergeBranchesByFastForward'
      { _mbbffTargetBranch =
          Nothing,
        _mbbffRepositoryName = pRepositoryName_,
        _mbbffSourceCommitSpecifier =
          pSourceCommitSpecifier_,
        _mbbffDestinationCommitSpecifier =
          pDestinationCommitSpecifier_
      }

-- | The branch where the merge is applied.
mbbffTargetBranch :: Lens' MergeBranchesByFastForward (Maybe Text)
mbbffTargetBranch = lens _mbbffTargetBranch (\s a -> s {_mbbffTargetBranch = a})

-- | The name of the repository where you want to merge two branches.
mbbffRepositoryName :: Lens' MergeBranchesByFastForward Text
mbbffRepositoryName = lens _mbbffRepositoryName (\s a -> s {_mbbffRepositoryName = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
mbbffSourceCommitSpecifier :: Lens' MergeBranchesByFastForward Text
mbbffSourceCommitSpecifier = lens _mbbffSourceCommitSpecifier (\s a -> s {_mbbffSourceCommitSpecifier = a})

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
mbbffDestinationCommitSpecifier :: Lens' MergeBranchesByFastForward Text
mbbffDestinationCommitSpecifier = lens _mbbffDestinationCommitSpecifier (\s a -> s {_mbbffDestinationCommitSpecifier = a})

instance AWSRequest MergeBranchesByFastForward where
  type
    Rs MergeBranchesByFastForward =
      MergeBranchesByFastForwardResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          MergeBranchesByFastForwardResponse'
            <$> (x .?> "commitId")
            <*> (x .?> "treeId")
            <*> (pure (fromEnum s))
      )

instance Hashable MergeBranchesByFastForward

instance NFData MergeBranchesByFastForward

instance ToHeaders MergeBranchesByFastForward where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.MergeBranchesByFastForward" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON MergeBranchesByFastForward where
  toJSON MergeBranchesByFastForward' {..} =
    object
      ( catMaybes
          [ ("targetBranch" .=) <$> _mbbffTargetBranch,
            Just ("repositoryName" .= _mbbffRepositoryName),
            Just
              ( "sourceCommitSpecifier"
                  .= _mbbffSourceCommitSpecifier
              ),
            Just
              ( "destinationCommitSpecifier"
                  .= _mbbffDestinationCommitSpecifier
              )
          ]
      )

instance ToPath MergeBranchesByFastForward where
  toPath = const "/"

instance ToQuery MergeBranchesByFastForward where
  toQuery = const mempty

-- | /See:/ 'mergeBranchesByFastForwardResponse' smart constructor.
data MergeBranchesByFastForwardResponse = MergeBranchesByFastForwardResponse'
  { _mbbffrrsCommitId ::
      !( Maybe
           Text
       ),
    _mbbffrrsTreeId ::
      !( Maybe
           Text
       ),
    _mbbffrrsResponseStatus ::
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

-- | Creates a value of 'MergeBranchesByFastForwardResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbbffrrsCommitId' - The commit ID of the merge in the destination or target branch.
--
-- * 'mbbffrrsTreeId' - The tree ID of the merge in the destination or target branch.
--
-- * 'mbbffrrsResponseStatus' - -- | The response status code.
mergeBranchesByFastForwardResponse ::
  -- | 'mbbffrrsResponseStatus'
  Int ->
  MergeBranchesByFastForwardResponse
mergeBranchesByFastForwardResponse pResponseStatus_ =
  MergeBranchesByFastForwardResponse'
    { _mbbffrrsCommitId =
        Nothing,
      _mbbffrrsTreeId = Nothing,
      _mbbffrrsResponseStatus =
        pResponseStatus_
    }

-- | The commit ID of the merge in the destination or target branch.
mbbffrrsCommitId :: Lens' MergeBranchesByFastForwardResponse (Maybe Text)
mbbffrrsCommitId = lens _mbbffrrsCommitId (\s a -> s {_mbbffrrsCommitId = a})

-- | The tree ID of the merge in the destination or target branch.
mbbffrrsTreeId :: Lens' MergeBranchesByFastForwardResponse (Maybe Text)
mbbffrrsTreeId = lens _mbbffrrsTreeId (\s a -> s {_mbbffrrsTreeId = a})

-- | -- | The response status code.
mbbffrrsResponseStatus :: Lens' MergeBranchesByFastForwardResponse Int
mbbffrrsResponseStatus = lens _mbbffrrsResponseStatus (\s a -> s {_mbbffrrsResponseStatus = a})

instance NFData MergeBranchesByFastForwardResponse
