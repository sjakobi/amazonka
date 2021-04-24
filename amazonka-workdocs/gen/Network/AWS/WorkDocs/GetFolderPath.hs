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
-- Module      : Network.AWS.WorkDocs.GetFolderPath
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the path information (the hierarchy from the root folder) for the specified folder.
--
--
-- By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.
module Network.AWS.WorkDocs.GetFolderPath
  ( -- * Creating a Request
    getFolderPath,
    GetFolderPath,

    -- * Request Lenses
    gfpFields,
    gfpAuthenticationToken,
    gfpLimit,
    gfpMarker,
    gfpFolderId,

    -- * Destructuring the Response
    getFolderPathResponse,
    GetFolderPathResponse,

    -- * Response Lenses
    gfprrsPath,
    gfprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'getFolderPath' smart constructor.
data GetFolderPath = GetFolderPath'
  { _gfpFields ::
      !(Maybe Text),
    _gfpAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _gfpLimit :: !(Maybe Nat),
    _gfpMarker :: !(Maybe Text),
    _gfpFolderId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFolderPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfpFields' - A comma-separated list of values. Specify "NAME" to include the names of the parent folders.
--
-- * 'gfpAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'gfpLimit' - The maximum number of levels in the hierarchy to return.
--
-- * 'gfpMarker' - This value is not supported.
--
-- * 'gfpFolderId' - The ID of the folder.
getFolderPath ::
  -- | 'gfpFolderId'
  Text ->
  GetFolderPath
getFolderPath pFolderId_ =
  GetFolderPath'
    { _gfpFields = Nothing,
      _gfpAuthenticationToken = Nothing,
      _gfpLimit = Nothing,
      _gfpMarker = Nothing,
      _gfpFolderId = pFolderId_
    }

-- | A comma-separated list of values. Specify "NAME" to include the names of the parent folders.
gfpFields :: Lens' GetFolderPath (Maybe Text)
gfpFields = lens _gfpFields (\s a -> s {_gfpFields = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
gfpAuthenticationToken :: Lens' GetFolderPath (Maybe Text)
gfpAuthenticationToken = lens _gfpAuthenticationToken (\s a -> s {_gfpAuthenticationToken = a}) . mapping _Sensitive

-- | The maximum number of levels in the hierarchy to return.
gfpLimit :: Lens' GetFolderPath (Maybe Natural)
gfpLimit = lens _gfpLimit (\s a -> s {_gfpLimit = a}) . mapping _Nat

-- | This value is not supported.
gfpMarker :: Lens' GetFolderPath (Maybe Text)
gfpMarker = lens _gfpMarker (\s a -> s {_gfpMarker = a})

-- | The ID of the folder.
gfpFolderId :: Lens' GetFolderPath Text
gfpFolderId = lens _gfpFolderId (\s a -> s {_gfpFolderId = a})

instance AWSRequest GetFolderPath where
  type Rs GetFolderPath = GetFolderPathResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          GetFolderPathResponse'
            <$> (x .?> "Path") <*> (pure (fromEnum s))
      )

instance Hashable GetFolderPath

instance NFData GetFolderPath

instance ToHeaders GetFolderPath where
  toHeaders GetFolderPath' {..} =
    mconcat
      [ "Authentication" =# _gfpAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath GetFolderPath where
  toPath GetFolderPath' {..} =
    mconcat
      ["/api/v1/folders/", toBS _gfpFolderId, "/path"]

instance ToQuery GetFolderPath where
  toQuery GetFolderPath' {..} =
    mconcat
      [ "fields" =: _gfpFields,
        "limit" =: _gfpLimit,
        "marker" =: _gfpMarker
      ]

-- | /See:/ 'getFolderPathResponse' smart constructor.
data GetFolderPathResponse = GetFolderPathResponse'
  { _gfprrsPath ::
      !(Maybe ResourcePath),
    _gfprrsResponseStatus ::
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

-- | Creates a value of 'GetFolderPathResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfprrsPath' - The path information.
--
-- * 'gfprrsResponseStatus' - -- | The response status code.
getFolderPathResponse ::
  -- | 'gfprrsResponseStatus'
  Int ->
  GetFolderPathResponse
getFolderPathResponse pResponseStatus_ =
  GetFolderPathResponse'
    { _gfprrsPath = Nothing,
      _gfprrsResponseStatus = pResponseStatus_
    }

-- | The path information.
gfprrsPath :: Lens' GetFolderPathResponse (Maybe ResourcePath)
gfprrsPath = lens _gfprrsPath (\s a -> s {_gfprrsPath = a})

-- | -- | The response status code.
gfprrsResponseStatus :: Lens' GetFolderPathResponse Int
gfprrsResponseStatus = lens _gfprrsResponseStatus (\s a -> s {_gfprrsResponseStatus = a})

instance NFData GetFolderPathResponse
