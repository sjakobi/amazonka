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
-- Module      : Network.AWS.WorkDocs.GetFolder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the specified folder.
module Network.AWS.WorkDocs.GetFolder
  ( -- * Creating a Request
    getFolder,
    GetFolder,

    -- * Request Lenses
    gfIncludeCustomMetadata,
    gfAuthenticationToken,
    gfFolderId,

    -- * Destructuring the Response
    getFolderResponse,
    GetFolderResponse,

    -- * Response Lenses
    gfrrsMetadata,
    gfrrsCustomMetadata,
    gfrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'getFolder' smart constructor.
data GetFolder = GetFolder'
  { _gfIncludeCustomMetadata ::
      !(Maybe Bool),
    _gfAuthenticationToken :: !(Maybe (Sensitive Text)),
    _gfFolderId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFolder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfIncludeCustomMetadata' - Set to TRUE to include custom metadata in the response.
--
-- * 'gfAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'gfFolderId' - The ID of the folder.
getFolder ::
  -- | 'gfFolderId'
  Text ->
  GetFolder
getFolder pFolderId_ =
  GetFolder'
    { _gfIncludeCustomMetadata = Nothing,
      _gfAuthenticationToken = Nothing,
      _gfFolderId = pFolderId_
    }

-- | Set to TRUE to include custom metadata in the response.
gfIncludeCustomMetadata :: Lens' GetFolder (Maybe Bool)
gfIncludeCustomMetadata = lens _gfIncludeCustomMetadata (\s a -> s {_gfIncludeCustomMetadata = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
gfAuthenticationToken :: Lens' GetFolder (Maybe Text)
gfAuthenticationToken = lens _gfAuthenticationToken (\s a -> s {_gfAuthenticationToken = a}) . mapping _Sensitive

-- | The ID of the folder.
gfFolderId :: Lens' GetFolder Text
gfFolderId = lens _gfFolderId (\s a -> s {_gfFolderId = a})

instance AWSRequest GetFolder where
  type Rs GetFolder = GetFolderResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          GetFolderResponse'
            <$> (x .?> "Metadata")
            <*> (x .?> "CustomMetadata" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetFolder

instance NFData GetFolder

instance ToHeaders GetFolder where
  toHeaders GetFolder' {..} =
    mconcat
      [ "Authentication" =# _gfAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath GetFolder where
  toPath GetFolder' {..} =
    mconcat ["/api/v1/folders/", toBS _gfFolderId]

instance ToQuery GetFolder where
  toQuery GetFolder' {..} =
    mconcat
      ["includeCustomMetadata" =: _gfIncludeCustomMetadata]

-- | /See:/ 'getFolderResponse' smart constructor.
data GetFolderResponse = GetFolderResponse'
  { _gfrrsMetadata ::
      !(Maybe FolderMetadata),
    _gfrrsCustomMetadata ::
      !(Maybe (Map Text Text)),
    _gfrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFolderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrrsMetadata' - The metadata of the folder.
--
-- * 'gfrrsCustomMetadata' - The custom metadata on the folder.
--
-- * 'gfrrsResponseStatus' - -- | The response status code.
getFolderResponse ::
  -- | 'gfrrsResponseStatus'
  Int ->
  GetFolderResponse
getFolderResponse pResponseStatus_ =
  GetFolderResponse'
    { _gfrrsMetadata = Nothing,
      _gfrrsCustomMetadata = Nothing,
      _gfrrsResponseStatus = pResponseStatus_
    }

-- | The metadata of the folder.
gfrrsMetadata :: Lens' GetFolderResponse (Maybe FolderMetadata)
gfrrsMetadata = lens _gfrrsMetadata (\s a -> s {_gfrrsMetadata = a})

-- | The custom metadata on the folder.
gfrrsCustomMetadata :: Lens' GetFolderResponse (HashMap Text Text)
gfrrsCustomMetadata = lens _gfrrsCustomMetadata (\s a -> s {_gfrrsCustomMetadata = a}) . _Default . _Map

-- | -- | The response status code.
gfrrsResponseStatus :: Lens' GetFolderResponse Int
gfrrsResponseStatus = lens _gfrrsResponseStatus (\s a -> s {_gfrrsResponseStatus = a})

instance NFData GetFolderResponse
