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
-- Module      : Network.AWS.CodeCommit.PutFile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates a file in a branch in an AWS CodeCommit repository, and generates a commit for the addition in the specified branch.
module Network.AWS.CodeCommit.PutFile
  ( -- * Creating a Request
    putFile,
    PutFile,

    -- * Request Lenses
    pfParentCommitId,
    pfCommitMessage,
    pfName,
    pfEmail,
    pfFileMode,
    pfRepositoryName,
    pfBranchName,
    pfFileContent,
    pfFilePath,

    -- * Destructuring the Response
    putFileResponse,
    PutFileResponse,

    -- * Response Lenses
    pfrrsResponseStatus,
    pfrrsCommitId,
    pfrrsBlobId,
    pfrrsTreeId,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putFile' smart constructor.
data PutFile = PutFile'
  { _pfParentCommitId ::
      !(Maybe Text),
    _pfCommitMessage :: !(Maybe Text),
    _pfName :: !(Maybe Text),
    _pfEmail :: !(Maybe Text),
    _pfFileMode :: !(Maybe FileModeTypeEnum),
    _pfRepositoryName :: !Text,
    _pfBranchName :: !Text,
    _pfFileContent :: !Base64,
    _pfFilePath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfParentCommitId' - The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository, no commit ID is required. If this is not an empty repository, a commit ID is required.  The commit ID must match the ID of the head commit at the time of the operation. Otherwise, an error occurs, and the file is not added or updated.
--
-- * 'pfCommitMessage' - A message about why this file was added or updated. Although it is optional, a message makes the commit history for your repository more useful.
--
-- * 'pfName' - The name of the person adding or updating the file. Although it is optional, a name makes the commit history for your repository more useful.
--
-- * 'pfEmail' - An email address for the person adding or updating the file.
--
-- * 'pfFileMode' - The file mode permissions of the blob. Valid file mode permissions are listed here.
--
-- * 'pfRepositoryName' - The name of the repository where you want to add or update the file.
--
-- * 'pfBranchName' - The name of the branch where you want to add or update the file. If this is an empty repository, this branch is created.
--
-- * 'pfFileContent' - The content of the file, in binary object format. -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'pfFilePath' - The name of the file you want to add or update, including the relative path to the file in the repository.
putFile ::
  -- | 'pfRepositoryName'
  Text ->
  -- | 'pfBranchName'
  Text ->
  -- | 'pfFileContent'
  ByteString ->
  -- | 'pfFilePath'
  Text ->
  PutFile
putFile
  pRepositoryName_
  pBranchName_
  pFileContent_
  pFilePath_ =
    PutFile'
      { _pfParentCommitId = Nothing,
        _pfCommitMessage = Nothing,
        _pfName = Nothing,
        _pfEmail = Nothing,
        _pfFileMode = Nothing,
        _pfRepositoryName = pRepositoryName_,
        _pfBranchName = pBranchName_,
        _pfFileContent = _Base64 # pFileContent_,
        _pfFilePath = pFilePath_
      }

-- | The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository, no commit ID is required. If this is not an empty repository, a commit ID is required.  The commit ID must match the ID of the head commit at the time of the operation. Otherwise, an error occurs, and the file is not added or updated.
pfParentCommitId :: Lens' PutFile (Maybe Text)
pfParentCommitId = lens _pfParentCommitId (\s a -> s {_pfParentCommitId = a})

-- | A message about why this file was added or updated. Although it is optional, a message makes the commit history for your repository more useful.
pfCommitMessage :: Lens' PutFile (Maybe Text)
pfCommitMessage = lens _pfCommitMessage (\s a -> s {_pfCommitMessage = a})

-- | The name of the person adding or updating the file. Although it is optional, a name makes the commit history for your repository more useful.
pfName :: Lens' PutFile (Maybe Text)
pfName = lens _pfName (\s a -> s {_pfName = a})

-- | An email address for the person adding or updating the file.
pfEmail :: Lens' PutFile (Maybe Text)
pfEmail = lens _pfEmail (\s a -> s {_pfEmail = a})

-- | The file mode permissions of the blob. Valid file mode permissions are listed here.
pfFileMode :: Lens' PutFile (Maybe FileModeTypeEnum)
pfFileMode = lens _pfFileMode (\s a -> s {_pfFileMode = a})

-- | The name of the repository where you want to add or update the file.
pfRepositoryName :: Lens' PutFile Text
pfRepositoryName = lens _pfRepositoryName (\s a -> s {_pfRepositoryName = a})

-- | The name of the branch where you want to add or update the file. If this is an empty repository, this branch is created.
pfBranchName :: Lens' PutFile Text
pfBranchName = lens _pfBranchName (\s a -> s {_pfBranchName = a})

-- | The content of the file, in binary object format. -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
pfFileContent :: Lens' PutFile ByteString
pfFileContent = lens _pfFileContent (\s a -> s {_pfFileContent = a}) . _Base64

-- | The name of the file you want to add or update, including the relative path to the file in the repository.
pfFilePath :: Lens' PutFile Text
pfFilePath = lens _pfFilePath (\s a -> s {_pfFilePath = a})

instance AWSRequest PutFile where
  type Rs PutFile = PutFileResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          PutFileResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "commitId")
            <*> (x .:> "blobId")
            <*> (x .:> "treeId")
      )

instance Hashable PutFile

instance NFData PutFile

instance ToHeaders PutFile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeCommit_20150413.PutFile" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutFile where
  toJSON PutFile' {..} =
    object
      ( catMaybes
          [ ("parentCommitId" .=) <$> _pfParentCommitId,
            ("commitMessage" .=) <$> _pfCommitMessage,
            ("name" .=) <$> _pfName,
            ("email" .=) <$> _pfEmail,
            ("fileMode" .=) <$> _pfFileMode,
            Just ("repositoryName" .= _pfRepositoryName),
            Just ("branchName" .= _pfBranchName),
            Just ("fileContent" .= _pfFileContent),
            Just ("filePath" .= _pfFilePath)
          ]
      )

instance ToPath PutFile where
  toPath = const "/"

instance ToQuery PutFile where
  toQuery = const mempty

-- | /See:/ 'putFileResponse' smart constructor.
data PutFileResponse = PutFileResponse'
  { _pfrrsResponseStatus ::
      !Int,
    _pfrrsCommitId :: !Text,
    _pfrrsBlobId :: !Text,
    _pfrrsTreeId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfrrsResponseStatus' - -- | The response status code.
--
-- * 'pfrrsCommitId' - The full SHA ID of the commit that contains this file change.
--
-- * 'pfrrsBlobId' - The ID of the blob, which is its SHA-1 pointer.
--
-- * 'pfrrsTreeId' - The full SHA-1 pointer of the tree information for the commit that contains this file change.
putFileResponse ::
  -- | 'pfrrsResponseStatus'
  Int ->
  -- | 'pfrrsCommitId'
  Text ->
  -- | 'pfrrsBlobId'
  Text ->
  -- | 'pfrrsTreeId'
  Text ->
  PutFileResponse
putFileResponse
  pResponseStatus_
  pCommitId_
  pBlobId_
  pTreeId_ =
    PutFileResponse'
      { _pfrrsResponseStatus =
          pResponseStatus_,
        _pfrrsCommitId = pCommitId_,
        _pfrrsBlobId = pBlobId_,
        _pfrrsTreeId = pTreeId_
      }

-- | -- | The response status code.
pfrrsResponseStatus :: Lens' PutFileResponse Int
pfrrsResponseStatus = lens _pfrrsResponseStatus (\s a -> s {_pfrrsResponseStatus = a})

-- | The full SHA ID of the commit that contains this file change.
pfrrsCommitId :: Lens' PutFileResponse Text
pfrrsCommitId = lens _pfrrsCommitId (\s a -> s {_pfrrsCommitId = a})

-- | The ID of the blob, which is its SHA-1 pointer.
pfrrsBlobId :: Lens' PutFileResponse Text
pfrrsBlobId = lens _pfrrsBlobId (\s a -> s {_pfrrsBlobId = a})

-- | The full SHA-1 pointer of the tree information for the commit that contains this file change.
pfrrsTreeId :: Lens' PutFileResponse Text
pfrrsTreeId = lens _pfrrsTreeId (\s a -> s {_pfrrsTreeId = a})

instance NFData PutFileResponse
