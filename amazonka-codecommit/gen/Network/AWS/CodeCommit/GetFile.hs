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
-- Module      : Network.AWS.CodeCommit.GetFile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the base-64 encoded contents of a specified file and its metadata.
module Network.AWS.CodeCommit.GetFile
  ( -- * Creating a Request
    getFile,
    GetFile,

    -- * Request Lenses
    gfCommitSpecifier,
    gfRepositoryName,
    gfFilePath,

    -- * Destructuring the Response
    getFileResponse,
    GetFileResponse,

    -- * Response Lenses
    gfrrsResponseStatus,
    gfrrsCommitId,
    gfrrsBlobId,
    gfrrsFilePath,
    gfrrsFileMode,
    gfrrsFileSize,
    gfrrsFileContent,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFile' smart constructor.
data GetFile = GetFile'
  { _gfCommitSpecifier ::
      !(Maybe Text),
    _gfRepositoryName :: !Text,
    _gfFilePath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfCommitSpecifier' - The fully quaified reference that identifies the commit that contains the file. For example, you can specify a full commit ID, a tag, a branch name, or a reference such as refs/heads/master. If none is provided, the head commit is used.
--
-- * 'gfRepositoryName' - The name of the repository that contains the file.
--
-- * 'gfFilePath' - The fully qualified path to the file, including the full name and extension of the file. For example, /examples/file.md is the fully qualified path to a file named file.md in a folder named examples.
getFile ::
  -- | 'gfRepositoryName'
  Text ->
  -- | 'gfFilePath'
  Text ->
  GetFile
getFile pRepositoryName_ pFilePath_ =
  GetFile'
    { _gfCommitSpecifier = Nothing,
      _gfRepositoryName = pRepositoryName_,
      _gfFilePath = pFilePath_
    }

-- | The fully quaified reference that identifies the commit that contains the file. For example, you can specify a full commit ID, a tag, a branch name, or a reference such as refs/heads/master. If none is provided, the head commit is used.
gfCommitSpecifier :: Lens' GetFile (Maybe Text)
gfCommitSpecifier = lens _gfCommitSpecifier (\s a -> s {_gfCommitSpecifier = a})

-- | The name of the repository that contains the file.
gfRepositoryName :: Lens' GetFile Text
gfRepositoryName = lens _gfRepositoryName (\s a -> s {_gfRepositoryName = a})

-- | The fully qualified path to the file, including the full name and extension of the file. For example, /examples/file.md is the fully qualified path to a file named file.md in a folder named examples.
gfFilePath :: Lens' GetFile Text
gfFilePath = lens _gfFilePath (\s a -> s {_gfFilePath = a})

instance AWSRequest GetFile where
  type Rs GetFile = GetFileResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetFileResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "commitId")
            <*> (x .:> "blobId")
            <*> (x .:> "filePath")
            <*> (x .:> "fileMode")
            <*> (x .:> "fileSize")
            <*> (x .:> "fileContent")
      )

instance Hashable GetFile

instance NFData GetFile

instance ToHeaders GetFile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeCommit_20150413.GetFile" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetFile where
  toJSON GetFile' {..} =
    object
      ( catMaybes
          [ ("commitSpecifier" .=) <$> _gfCommitSpecifier,
            Just ("repositoryName" .= _gfRepositoryName),
            Just ("filePath" .= _gfFilePath)
          ]
      )

instance ToPath GetFile where
  toPath = const "/"

instance ToQuery GetFile where
  toQuery = const mempty

-- | /See:/ 'getFileResponse' smart constructor.
data GetFileResponse = GetFileResponse'
  { _gfrrsResponseStatus ::
      !Int,
    _gfrrsCommitId :: !Text,
    _gfrrsBlobId :: !Text,
    _gfrrsFilePath :: !Text,
    _gfrrsFileMode :: !FileModeTypeEnum,
    _gfrrsFileSize :: !Integer,
    _gfrrsFileContent :: !Base64
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrrsResponseStatus' - -- | The response status code.
--
-- * 'gfrrsCommitId' - The full commit ID of the commit that contains the content returned by GetFile.
--
-- * 'gfrrsBlobId' - The blob ID of the object that represents the file content.
--
-- * 'gfrrsFilePath' - The fully qualified path to the specified file. Returns the name and extension of the file.
--
-- * 'gfrrsFileMode' - The extrapolated file mode permissions of the blob. Valid values include strings such as EXECUTABLE and not numeric values.
--
-- * 'gfrrsFileSize' - The size of the contents of the file, in bytes.
--
-- * 'gfrrsFileContent' - The base-64 encoded binary data object that represents the content of the file.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
getFileResponse ::
  -- | 'gfrrsResponseStatus'
  Int ->
  -- | 'gfrrsCommitId'
  Text ->
  -- | 'gfrrsBlobId'
  Text ->
  -- | 'gfrrsFilePath'
  Text ->
  -- | 'gfrrsFileMode'
  FileModeTypeEnum ->
  -- | 'gfrrsFileSize'
  Integer ->
  -- | 'gfrrsFileContent'
  ByteString ->
  GetFileResponse
getFileResponse
  pResponseStatus_
  pCommitId_
  pBlobId_
  pFilePath_
  pFileMode_
  pFileSize_
  pFileContent_ =
    GetFileResponse'
      { _gfrrsResponseStatus =
          pResponseStatus_,
        _gfrrsCommitId = pCommitId_,
        _gfrrsBlobId = pBlobId_,
        _gfrrsFilePath = pFilePath_,
        _gfrrsFileMode = pFileMode_,
        _gfrrsFileSize = pFileSize_,
        _gfrrsFileContent = _Base64 # pFileContent_
      }

-- | -- | The response status code.
gfrrsResponseStatus :: Lens' GetFileResponse Int
gfrrsResponseStatus = lens _gfrrsResponseStatus (\s a -> s {_gfrrsResponseStatus = a})

-- | The full commit ID of the commit that contains the content returned by GetFile.
gfrrsCommitId :: Lens' GetFileResponse Text
gfrrsCommitId = lens _gfrrsCommitId (\s a -> s {_gfrrsCommitId = a})

-- | The blob ID of the object that represents the file content.
gfrrsBlobId :: Lens' GetFileResponse Text
gfrrsBlobId = lens _gfrrsBlobId (\s a -> s {_gfrrsBlobId = a})

-- | The fully qualified path to the specified file. Returns the name and extension of the file.
gfrrsFilePath :: Lens' GetFileResponse Text
gfrrsFilePath = lens _gfrrsFilePath (\s a -> s {_gfrrsFilePath = a})

-- | The extrapolated file mode permissions of the blob. Valid values include strings such as EXECUTABLE and not numeric values.
gfrrsFileMode :: Lens' GetFileResponse FileModeTypeEnum
gfrrsFileMode = lens _gfrrsFileMode (\s a -> s {_gfrrsFileMode = a})

-- | The size of the contents of the file, in bytes.
gfrrsFileSize :: Lens' GetFileResponse Integer
gfrrsFileSize = lens _gfrrsFileSize (\s a -> s {_gfrrsFileSize = a})

-- | The base-64 encoded binary data object that represents the content of the file.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
gfrrsFileContent :: Lens' GetFileResponse ByteString
gfrrsFileContent = lens _gfrrsFileContent (\s a -> s {_gfrrsFileContent = a}) . _Base64

instance NFData GetFileResponse
