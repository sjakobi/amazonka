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
-- Module      : Network.AWS.CodeCommit.CreateCommit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a commit for a repository on the tip of a specified branch.
module Network.AWS.CodeCommit.CreateCommit
  ( -- * Creating a Request
    createCommit,
    CreateCommit,

    -- * Request Lenses
    ccDeleteFiles,
    ccSetFileModes,
    ccParentCommitId,
    ccCommitMessage,
    ccAuthorName,
    ccPutFiles,
    ccEmail,
    ccKeepEmptyFolders,
    ccRepositoryName,
    ccBranchName,

    -- * Destructuring the Response
    createCommitResponse,
    CreateCommitResponse,

    -- * Response Lenses
    ccrrsCommitId,
    ccrrsTreeId,
    ccrrsFilesAdded,
    ccrrsFilesUpdated,
    ccrrsFilesDeleted,
    ccrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createCommit' smart constructor.
data CreateCommit = CreateCommit'
  { _ccDeleteFiles ::
      !(Maybe [DeleteFileEntry]),
    _ccSetFileModes ::
      !(Maybe [SetFileModeEntry]),
    _ccParentCommitId :: !(Maybe Text),
    _ccCommitMessage :: !(Maybe Text),
    _ccAuthorName :: !(Maybe Text),
    _ccPutFiles :: !(Maybe [PutFileEntry]),
    _ccEmail :: !(Maybe Text),
    _ccKeepEmptyFolders :: !(Maybe Bool),
    _ccRepositoryName :: !Text,
    _ccBranchName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccDeleteFiles' - The files to delete in this commit. These files still exist in earlier commits.
--
-- * 'ccSetFileModes' - The file modes to update for files in this commit.
--
-- * 'ccParentCommitId' - The ID of the commit that is the parent of the commit you create. Not required if this is an empty repository.
--
-- * 'ccCommitMessage' - The commit message you want to include in the commit. Commit messages are limited to 256 KB. If no message is specified, a default message is used.
--
-- * 'ccAuthorName' - The name of the author who created the commit. This information is used as both the author and committer for the commit.
--
-- * 'ccPutFiles' - The files to add or update in this commit.
--
-- * 'ccEmail' - The email address of the person who created the commit.
--
-- * 'ccKeepEmptyFolders' - If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a ..gitkeep file is created for empty folders. The default is false.
--
-- * 'ccRepositoryName' - The name of the repository where you create the commit.
--
-- * 'ccBranchName' - The name of the branch where you create the commit.
createCommit ::
  -- | 'ccRepositoryName'
  Text ->
  -- | 'ccBranchName'
  Text ->
  CreateCommit
createCommit pRepositoryName_ pBranchName_ =
  CreateCommit'
    { _ccDeleteFiles = Nothing,
      _ccSetFileModes = Nothing,
      _ccParentCommitId = Nothing,
      _ccCommitMessage = Nothing,
      _ccAuthorName = Nothing,
      _ccPutFiles = Nothing,
      _ccEmail = Nothing,
      _ccKeepEmptyFolders = Nothing,
      _ccRepositoryName = pRepositoryName_,
      _ccBranchName = pBranchName_
    }

-- | The files to delete in this commit. These files still exist in earlier commits.
ccDeleteFiles :: Lens' CreateCommit [DeleteFileEntry]
ccDeleteFiles = lens _ccDeleteFiles (\s a -> s {_ccDeleteFiles = a}) . _Default . _Coerce

-- | The file modes to update for files in this commit.
ccSetFileModes :: Lens' CreateCommit [SetFileModeEntry]
ccSetFileModes = lens _ccSetFileModes (\s a -> s {_ccSetFileModes = a}) . _Default . _Coerce

-- | The ID of the commit that is the parent of the commit you create. Not required if this is an empty repository.
ccParentCommitId :: Lens' CreateCommit (Maybe Text)
ccParentCommitId = lens _ccParentCommitId (\s a -> s {_ccParentCommitId = a})

-- | The commit message you want to include in the commit. Commit messages are limited to 256 KB. If no message is specified, a default message is used.
ccCommitMessage :: Lens' CreateCommit (Maybe Text)
ccCommitMessage = lens _ccCommitMessage (\s a -> s {_ccCommitMessage = a})

-- | The name of the author who created the commit. This information is used as both the author and committer for the commit.
ccAuthorName :: Lens' CreateCommit (Maybe Text)
ccAuthorName = lens _ccAuthorName (\s a -> s {_ccAuthorName = a})

-- | The files to add or update in this commit.
ccPutFiles :: Lens' CreateCommit [PutFileEntry]
ccPutFiles = lens _ccPutFiles (\s a -> s {_ccPutFiles = a}) . _Default . _Coerce

-- | The email address of the person who created the commit.
ccEmail :: Lens' CreateCommit (Maybe Text)
ccEmail = lens _ccEmail (\s a -> s {_ccEmail = a})

-- | If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a ..gitkeep file is created for empty folders. The default is false.
ccKeepEmptyFolders :: Lens' CreateCommit (Maybe Bool)
ccKeepEmptyFolders = lens _ccKeepEmptyFolders (\s a -> s {_ccKeepEmptyFolders = a})

-- | The name of the repository where you create the commit.
ccRepositoryName :: Lens' CreateCommit Text
ccRepositoryName = lens _ccRepositoryName (\s a -> s {_ccRepositoryName = a})

-- | The name of the branch where you create the commit.
ccBranchName :: Lens' CreateCommit Text
ccBranchName = lens _ccBranchName (\s a -> s {_ccBranchName = a})

instance AWSRequest CreateCommit where
  type Rs CreateCommit = CreateCommitResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          CreateCommitResponse'
            <$> (x .?> "commitId")
            <*> (x .?> "treeId")
            <*> (x .?> "filesAdded" .!@ mempty)
            <*> (x .?> "filesUpdated" .!@ mempty)
            <*> (x .?> "filesDeleted" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable CreateCommit

instance NFData CreateCommit

instance ToHeaders CreateCommit where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeCommit_20150413.CreateCommit" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateCommit where
  toJSON CreateCommit' {..} =
    object
      ( catMaybes
          [ ("deleteFiles" .=) <$> _ccDeleteFiles,
            ("setFileModes" .=) <$> _ccSetFileModes,
            ("parentCommitId" .=) <$> _ccParentCommitId,
            ("commitMessage" .=) <$> _ccCommitMessage,
            ("authorName" .=) <$> _ccAuthorName,
            ("putFiles" .=) <$> _ccPutFiles,
            ("email" .=) <$> _ccEmail,
            ("keepEmptyFolders" .=) <$> _ccKeepEmptyFolders,
            Just ("repositoryName" .= _ccRepositoryName),
            Just ("branchName" .= _ccBranchName)
          ]
      )

instance ToPath CreateCommit where
  toPath = const "/"

instance ToQuery CreateCommit where
  toQuery = const mempty

-- | /See:/ 'createCommitResponse' smart constructor.
data CreateCommitResponse = CreateCommitResponse'
  { _ccrrsCommitId ::
      !(Maybe Text),
    _ccrrsTreeId :: !(Maybe Text),
    _ccrrsFilesAdded ::
      !(Maybe [FileMetadata]),
    _ccrrsFilesUpdated ::
      !(Maybe [FileMetadata]),
    _ccrrsFilesDeleted ::
      !(Maybe [FileMetadata]),
    _ccrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateCommitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsCommitId' - The full commit ID of the commit that contains your committed file changes.
--
-- * 'ccrrsTreeId' - The full SHA-1 pointer of the tree information for the commit that contains the commited file changes.
--
-- * 'ccrrsFilesAdded' - The files added as part of the committed file changes.
--
-- * 'ccrrsFilesUpdated' - The files updated as part of the commited file changes.
--
-- * 'ccrrsFilesDeleted' - The files deleted as part of the committed file changes.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createCommitResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateCommitResponse
createCommitResponse pResponseStatus_ =
  CreateCommitResponse'
    { _ccrrsCommitId = Nothing,
      _ccrrsTreeId = Nothing,
      _ccrrsFilesAdded = Nothing,
      _ccrrsFilesUpdated = Nothing,
      _ccrrsFilesDeleted = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | The full commit ID of the commit that contains your committed file changes.
ccrrsCommitId :: Lens' CreateCommitResponse (Maybe Text)
ccrrsCommitId = lens _ccrrsCommitId (\s a -> s {_ccrrsCommitId = a})

-- | The full SHA-1 pointer of the tree information for the commit that contains the commited file changes.
ccrrsTreeId :: Lens' CreateCommitResponse (Maybe Text)
ccrrsTreeId = lens _ccrrsTreeId (\s a -> s {_ccrrsTreeId = a})

-- | The files added as part of the committed file changes.
ccrrsFilesAdded :: Lens' CreateCommitResponse [FileMetadata]
ccrrsFilesAdded = lens _ccrrsFilesAdded (\s a -> s {_ccrrsFilesAdded = a}) . _Default . _Coerce

-- | The files updated as part of the commited file changes.
ccrrsFilesUpdated :: Lens' CreateCommitResponse [FileMetadata]
ccrrsFilesUpdated = lens _ccrrsFilesUpdated (\s a -> s {_ccrrsFilesUpdated = a}) . _Default . _Coerce

-- | The files deleted as part of the committed file changes.
ccrrsFilesDeleted :: Lens' CreateCommitResponse [FileMetadata]
ccrrsFilesDeleted = lens _ccrrsFilesDeleted (\s a -> s {_ccrrsFilesDeleted = a}) . _Default . _Coerce

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateCommitResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateCommitResponse
