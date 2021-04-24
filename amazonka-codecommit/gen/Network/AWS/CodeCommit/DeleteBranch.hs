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
-- Module      : Network.AWS.CodeCommit.DeleteBranch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a branch from a repository, unless that branch is the default branch for the repository.
module Network.AWS.CodeCommit.DeleteBranch
  ( -- * Creating a Request
    deleteBranch,
    DeleteBranch,

    -- * Request Lenses
    dbRepositoryName,
    dbBranchName,

    -- * Destructuring the Response
    deleteBranchResponse,
    DeleteBranchResponse,

    -- * Response Lenses
    dbrrsDeletedBranch,
    dbrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a delete branch operation.
--
--
--
-- /See:/ 'deleteBranch' smart constructor.
data DeleteBranch = DeleteBranch'
  { _dbRepositoryName ::
      !Text,
    _dbBranchName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBranch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbRepositoryName' - The name of the repository that contains the branch to be deleted.
--
-- * 'dbBranchName' - The name of the branch to delete.
deleteBranch ::
  -- | 'dbRepositoryName'
  Text ->
  -- | 'dbBranchName'
  Text ->
  DeleteBranch
deleteBranch pRepositoryName_ pBranchName_ =
  DeleteBranch'
    { _dbRepositoryName = pRepositoryName_,
      _dbBranchName = pBranchName_
    }

-- | The name of the repository that contains the branch to be deleted.
dbRepositoryName :: Lens' DeleteBranch Text
dbRepositoryName = lens _dbRepositoryName (\s a -> s {_dbRepositoryName = a})

-- | The name of the branch to delete.
dbBranchName :: Lens' DeleteBranch Text
dbBranchName = lens _dbBranchName (\s a -> s {_dbBranchName = a})

instance AWSRequest DeleteBranch where
  type Rs DeleteBranch = DeleteBranchResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          DeleteBranchResponse'
            <$> (x .?> "deletedBranch") <*> (pure (fromEnum s))
      )

instance Hashable DeleteBranch

instance NFData DeleteBranch

instance ToHeaders DeleteBranch where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeCommit_20150413.DeleteBranch" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteBranch where
  toJSON DeleteBranch' {..} =
    object
      ( catMaybes
          [ Just ("repositoryName" .= _dbRepositoryName),
            Just ("branchName" .= _dbBranchName)
          ]
      )

instance ToPath DeleteBranch where
  toPath = const "/"

instance ToQuery DeleteBranch where
  toQuery = const mempty

-- | Represents the output of a delete branch operation.
--
--
--
-- /See:/ 'deleteBranchResponse' smart constructor.
data DeleteBranchResponse = DeleteBranchResponse'
  { _dbrrsDeletedBranch ::
      !(Maybe BranchInfo),
    _dbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBranchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbrrsDeletedBranch' - Information about the branch deleted by the operation, including the branch name and the commit ID that was the tip of the branch.
--
-- * 'dbrrsResponseStatus' - -- | The response status code.
deleteBranchResponse ::
  -- | 'dbrrsResponseStatus'
  Int ->
  DeleteBranchResponse
deleteBranchResponse pResponseStatus_ =
  DeleteBranchResponse'
    { _dbrrsDeletedBranch =
        Nothing,
      _dbrrsResponseStatus = pResponseStatus_
    }

-- | Information about the branch deleted by the operation, including the branch name and the commit ID that was the tip of the branch.
dbrrsDeletedBranch :: Lens' DeleteBranchResponse (Maybe BranchInfo)
dbrrsDeletedBranch = lens _dbrrsDeletedBranch (\s a -> s {_dbrrsDeletedBranch = a})

-- | -- | The response status code.
dbrrsResponseStatus :: Lens' DeleteBranchResponse Int
dbrrsResponseStatus = lens _dbrrsResponseStatus (\s a -> s {_dbrrsResponseStatus = a})

instance NFData DeleteBranchResponse
