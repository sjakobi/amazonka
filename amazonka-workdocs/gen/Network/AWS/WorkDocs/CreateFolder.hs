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
-- Module      : Network.AWS.WorkDocs.CreateFolder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a folder with the specified name and parent folder.
module Network.AWS.WorkDocs.CreateFolder
  ( -- * Creating a Request
    createFolder,
    CreateFolder,

    -- * Request Lenses
    cfName,
    cfAuthenticationToken,
    cfParentFolderId,

    -- * Destructuring the Response
    createFolderResponse,
    CreateFolderResponse,

    -- * Response Lenses
    cfrrsMetadata,
    cfrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'createFolder' smart constructor.
data CreateFolder = CreateFolder'
  { _cfName ::
      !(Maybe Text),
    _cfAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _cfParentFolderId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateFolder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfName' - The name of the new folder.
--
-- * 'cfAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'cfParentFolderId' - The ID of the parent folder.
createFolder ::
  -- | 'cfParentFolderId'
  Text ->
  CreateFolder
createFolder pParentFolderId_ =
  CreateFolder'
    { _cfName = Nothing,
      _cfAuthenticationToken = Nothing,
      _cfParentFolderId = pParentFolderId_
    }

-- | The name of the new folder.
cfName :: Lens' CreateFolder (Maybe Text)
cfName = lens _cfName (\s a -> s {_cfName = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
cfAuthenticationToken :: Lens' CreateFolder (Maybe Text)
cfAuthenticationToken = lens _cfAuthenticationToken (\s a -> s {_cfAuthenticationToken = a}) . mapping _Sensitive

-- | The ID of the parent folder.
cfParentFolderId :: Lens' CreateFolder Text
cfParentFolderId = lens _cfParentFolderId (\s a -> s {_cfParentFolderId = a})

instance AWSRequest CreateFolder where
  type Rs CreateFolder = CreateFolderResponse
  request = postJSON workDocs
  response =
    receiveJSON
      ( \s h x ->
          CreateFolderResponse'
            <$> (x .?> "Metadata") <*> (pure (fromEnum s))
      )

instance Hashable CreateFolder

instance NFData CreateFolder

instance ToHeaders CreateFolder where
  toHeaders CreateFolder' {..} =
    mconcat
      [ "Authentication" =# _cfAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateFolder where
  toJSON CreateFolder' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _cfName,
            Just ("ParentFolderId" .= _cfParentFolderId)
          ]
      )

instance ToPath CreateFolder where
  toPath = const "/api/v1/folders"

instance ToQuery CreateFolder where
  toQuery = const mempty

-- | /See:/ 'createFolderResponse' smart constructor.
data CreateFolderResponse = CreateFolderResponse'
  { _cfrrsMetadata ::
      !(Maybe FolderMetadata),
    _cfrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateFolderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfrrsMetadata' - The metadata of the folder.
--
-- * 'cfrrsResponseStatus' - -- | The response status code.
createFolderResponse ::
  -- | 'cfrrsResponseStatus'
  Int ->
  CreateFolderResponse
createFolderResponse pResponseStatus_ =
  CreateFolderResponse'
    { _cfrrsMetadata = Nothing,
      _cfrrsResponseStatus = pResponseStatus_
    }

-- | The metadata of the folder.
cfrrsMetadata :: Lens' CreateFolderResponse (Maybe FolderMetadata)
cfrrsMetadata = lens _cfrrsMetadata (\s a -> s {_cfrrsMetadata = a})

-- | -- | The response status code.
cfrrsResponseStatus :: Lens' CreateFolderResponse Int
cfrrsResponseStatus = lens _cfrrsResponseStatus (\s a -> s {_cfrrsResponseStatus = a})

instance NFData CreateFolderResponse
