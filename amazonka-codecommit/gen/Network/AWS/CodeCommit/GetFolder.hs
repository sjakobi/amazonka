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
-- Module      : Network.AWS.CodeCommit.GetFolder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the contents of a specified folder in a repository.
module Network.AWS.CodeCommit.GetFolder
  ( -- * Creating a Request
    getFolder,
    GetFolder,

    -- * Request Lenses
    getCommitSpecifier,
    getRepositoryName,
    getFolderPath,

    -- * Destructuring the Response
    getFolderResponse,
    GetFolderResponse,

    -- * Response Lenses
    gfrfrsSymbolicLinks,
    gfrfrsSubFolders,
    gfrfrsTreeId,
    gfrfrsSubModules,
    gfrfrsFiles,
    gfrfrsResponseStatus,
    gfrfrsCommitId,
    gfrfrsFolderPath,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFolder' smart constructor.
data GetFolder = GetFolder'
  { _getCommitSpecifier ::
      !(Maybe Text),
    _getRepositoryName :: !Text,
    _getFolderPath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFolder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getCommitSpecifier' - A fully qualified reference used to identify a commit that contains the version of the folder's content to return. A fully qualified reference can be a commit ID, branch name, tag, or reference such as HEAD. If no specifier is provided, the folder content is returned as it exists in the HEAD commit.
--
-- * 'getRepositoryName' - The name of the repository.
--
-- * 'getFolderPath' - The fully qualified path to the folder whose contents are returned, including the folder name. For example, /examples is a fully-qualified path to a folder named examples that was created off of the root directory (/) of a repository.
getFolder ::
  -- | 'getRepositoryName'
  Text ->
  -- | 'getFolderPath'
  Text ->
  GetFolder
getFolder pRepositoryName_ pFolderPath_ =
  GetFolder'
    { _getCommitSpecifier = Nothing,
      _getRepositoryName = pRepositoryName_,
      _getFolderPath = pFolderPath_
    }

-- | A fully qualified reference used to identify a commit that contains the version of the folder's content to return. A fully qualified reference can be a commit ID, branch name, tag, or reference such as HEAD. If no specifier is provided, the folder content is returned as it exists in the HEAD commit.
getCommitSpecifier :: Lens' GetFolder (Maybe Text)
getCommitSpecifier = lens _getCommitSpecifier (\s a -> s {_getCommitSpecifier = a})

-- | The name of the repository.
getRepositoryName :: Lens' GetFolder Text
getRepositoryName = lens _getRepositoryName (\s a -> s {_getRepositoryName = a})

-- | The fully qualified path to the folder whose contents are returned, including the folder name. For example, /examples is a fully-qualified path to a folder named examples that was created off of the root directory (/) of a repository.
getFolderPath :: Lens' GetFolder Text
getFolderPath = lens _getFolderPath (\s a -> s {_getFolderPath = a})

instance AWSRequest GetFolder where
  type Rs GetFolder = GetFolderResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetFolderResponse'
            <$> (x .?> "symbolicLinks" .!@ mempty)
            <*> (x .?> "subFolders" .!@ mempty)
            <*> (x .?> "treeId")
            <*> (x .?> "subModules" .!@ mempty)
            <*> (x .?> "files" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "commitId")
            <*> (x .:> "folderPath")
      )

instance Hashable GetFolder

instance NFData GetFolder

instance ToHeaders GetFolder where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeCommit_20150413.GetFolder" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetFolder where
  toJSON GetFolder' {..} =
    object
      ( catMaybes
          [ ("commitSpecifier" .=) <$> _getCommitSpecifier,
            Just ("repositoryName" .= _getRepositoryName),
            Just ("folderPath" .= _getFolderPath)
          ]
      )

instance ToPath GetFolder where
  toPath = const "/"

instance ToQuery GetFolder where
  toQuery = const mempty

-- | /See:/ 'getFolderResponse' smart constructor.
data GetFolderResponse = GetFolderResponse'
  { _gfrfrsSymbolicLinks ::
      !(Maybe [SymbolicLink]),
    _gfrfrsSubFolders ::
      !(Maybe [Folder]),
    _gfrfrsTreeId :: !(Maybe Text),
    _gfrfrsSubModules ::
      !(Maybe [SubModule]),
    _gfrfrsFiles :: !(Maybe [File]),
    _gfrfrsResponseStatus :: !Int,
    _gfrfrsCommitId :: !Text,
    _gfrfrsFolderPath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFolderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrfrsSymbolicLinks' - The list of symbolic links to other files and folders in the specified folder, if any.
--
-- * 'gfrfrsSubFolders' - The list of folders that exist under the specified folder, if any.
--
-- * 'gfrfrsTreeId' - The full SHA-1 pointer of the tree information for the commit that contains the folder.
--
-- * 'gfrfrsSubModules' - The list of submodules in the specified folder, if any.
--
-- * 'gfrfrsFiles' - The list of files in the specified folder, if any.
--
-- * 'gfrfrsResponseStatus' - -- | The response status code.
--
-- * 'gfrfrsCommitId' - The full commit ID used as a reference for the returned version of the folder content.
--
-- * 'gfrfrsFolderPath' - The fully qualified path of the folder whose contents are returned.
getFolderResponse ::
  -- | 'gfrfrsResponseStatus'
  Int ->
  -- | 'gfrfrsCommitId'
  Text ->
  -- | 'gfrfrsFolderPath'
  Text ->
  GetFolderResponse
getFolderResponse
  pResponseStatus_
  pCommitId_
  pFolderPath_ =
    GetFolderResponse'
      { _gfrfrsSymbolicLinks = Nothing,
        _gfrfrsSubFolders = Nothing,
        _gfrfrsTreeId = Nothing,
        _gfrfrsSubModules = Nothing,
        _gfrfrsFiles = Nothing,
        _gfrfrsResponseStatus = pResponseStatus_,
        _gfrfrsCommitId = pCommitId_,
        _gfrfrsFolderPath = pFolderPath_
      }

-- | The list of symbolic links to other files and folders in the specified folder, if any.
gfrfrsSymbolicLinks :: Lens' GetFolderResponse [SymbolicLink]
gfrfrsSymbolicLinks = lens _gfrfrsSymbolicLinks (\s a -> s {_gfrfrsSymbolicLinks = a}) . _Default . _Coerce

-- | The list of folders that exist under the specified folder, if any.
gfrfrsSubFolders :: Lens' GetFolderResponse [Folder]
gfrfrsSubFolders = lens _gfrfrsSubFolders (\s a -> s {_gfrfrsSubFolders = a}) . _Default . _Coerce

-- | The full SHA-1 pointer of the tree information for the commit that contains the folder.
gfrfrsTreeId :: Lens' GetFolderResponse (Maybe Text)
gfrfrsTreeId = lens _gfrfrsTreeId (\s a -> s {_gfrfrsTreeId = a})

-- | The list of submodules in the specified folder, if any.
gfrfrsSubModules :: Lens' GetFolderResponse [SubModule]
gfrfrsSubModules = lens _gfrfrsSubModules (\s a -> s {_gfrfrsSubModules = a}) . _Default . _Coerce

-- | The list of files in the specified folder, if any.
gfrfrsFiles :: Lens' GetFolderResponse [File]
gfrfrsFiles = lens _gfrfrsFiles (\s a -> s {_gfrfrsFiles = a}) . _Default . _Coerce

-- | -- | The response status code.
gfrfrsResponseStatus :: Lens' GetFolderResponse Int
gfrfrsResponseStatus = lens _gfrfrsResponseStatus (\s a -> s {_gfrfrsResponseStatus = a})

-- | The full commit ID used as a reference for the returned version of the folder content.
gfrfrsCommitId :: Lens' GetFolderResponse Text
gfrfrsCommitId = lens _gfrfrsCommitId (\s a -> s {_gfrfrsCommitId = a})

-- | The fully qualified path of the folder whose contents are returned.
gfrfrsFolderPath :: Lens' GetFolderResponse Text
gfrfrsFolderPath = lens _gfrfrsFolderPath (\s a -> s {_gfrfrsFolderPath = a})

instance NFData GetFolderResponse
