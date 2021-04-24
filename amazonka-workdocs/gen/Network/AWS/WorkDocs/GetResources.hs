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
-- Module      : Network.AWS.WorkDocs.GetResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a collection of resources, including folders and documents. The only @CollectionType@ supported is @SHARED_WITH_ME@ .
module Network.AWS.WorkDocs.GetResources
  ( -- * Creating a Request
    getResources,
    GetResources,

    -- * Request Lenses
    grCollectionType,
    grUserId,
    grAuthenticationToken,
    grLimit,
    grMarker,

    -- * Destructuring the Response
    getResourcesResponse,
    GetResourcesResponse,

    -- * Response Lenses
    grrrsDocuments,
    grrrsFolders,
    grrrsMarker,
    grrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'getResources' smart constructor.
data GetResources = GetResources'
  { _grCollectionType ::
      !(Maybe ResourceCollectionType),
    _grUserId :: !(Maybe Text),
    _grAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _grLimit :: !(Maybe Nat),
    _grMarker :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grCollectionType' - The collection type.
--
-- * 'grUserId' - The user ID for the resource collection. This is a required field for accessing the API operation using IAM credentials.
--
-- * 'grAuthenticationToken' - The Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'grLimit' - The maximum number of resources to return.
--
-- * 'grMarker' - The marker for the next set of results. This marker was received from a previous call.
getResources ::
  GetResources
getResources =
  GetResources'
    { _grCollectionType = Nothing,
      _grUserId = Nothing,
      _grAuthenticationToken = Nothing,
      _grLimit = Nothing,
      _grMarker = Nothing
    }

-- | The collection type.
grCollectionType :: Lens' GetResources (Maybe ResourceCollectionType)
grCollectionType = lens _grCollectionType (\s a -> s {_grCollectionType = a})

-- | The user ID for the resource collection. This is a required field for accessing the API operation using IAM credentials.
grUserId :: Lens' GetResources (Maybe Text)
grUserId = lens _grUserId (\s a -> s {_grUserId = a})

-- | The Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
grAuthenticationToken :: Lens' GetResources (Maybe Text)
grAuthenticationToken = lens _grAuthenticationToken (\s a -> s {_grAuthenticationToken = a}) . mapping _Sensitive

-- | The maximum number of resources to return.
grLimit :: Lens' GetResources (Maybe Natural)
grLimit = lens _grLimit (\s a -> s {_grLimit = a}) . mapping _Nat

-- | The marker for the next set of results. This marker was received from a previous call.
grMarker :: Lens' GetResources (Maybe Text)
grMarker = lens _grMarker (\s a -> s {_grMarker = a})

instance AWSRequest GetResources where
  type Rs GetResources = GetResourcesResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          GetResourcesResponse'
            <$> (x .?> "Documents" .!@ mempty)
            <*> (x .?> "Folders" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable GetResources

instance NFData GetResources

instance ToHeaders GetResources where
  toHeaders GetResources' {..} =
    mconcat
      [ "Authentication" =# _grAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath GetResources where
  toPath = const "/api/v1/resources"

instance ToQuery GetResources where
  toQuery GetResources' {..} =
    mconcat
      [ "collectionType" =: _grCollectionType,
        "userId" =: _grUserId,
        "limit" =: _grLimit,
        "marker" =: _grMarker
      ]

-- | /See:/ 'getResourcesResponse' smart constructor.
data GetResourcesResponse = GetResourcesResponse'
  { _grrrsDocuments ::
      !(Maybe [DocumentMetadata]),
    _grrrsFolders ::
      !(Maybe [FolderMetadata]),
    _grrrsMarker :: !(Maybe Text),
    _grrrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrrsDocuments' - The documents in the specified collection.
--
-- * 'grrrsFolders' - The folders in the specified folder.
--
-- * 'grrrsMarker' - The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
--
-- * 'grrrsResponseStatus' - -- | The response status code.
getResourcesResponse ::
  -- | 'grrrsResponseStatus'
  Int ->
  GetResourcesResponse
getResourcesResponse pResponseStatus_ =
  GetResourcesResponse'
    { _grrrsDocuments = Nothing,
      _grrrsFolders = Nothing,
      _grrrsMarker = Nothing,
      _grrrsResponseStatus = pResponseStatus_
    }

-- | The documents in the specified collection.
grrrsDocuments :: Lens' GetResourcesResponse [DocumentMetadata]
grrrsDocuments = lens _grrrsDocuments (\s a -> s {_grrrsDocuments = a}) . _Default . _Coerce

-- | The folders in the specified folder.
grrrsFolders :: Lens' GetResourcesResponse [FolderMetadata]
grrrsFolders = lens _grrrsFolders (\s a -> s {_grrrsFolders = a}) . _Default . _Coerce

-- | The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
grrrsMarker :: Lens' GetResourcesResponse (Maybe Text)
grrrsMarker = lens _grrrsMarker (\s a -> s {_grrrsMarker = a})

-- | -- | The response status code.
grrrsResponseStatus :: Lens' GetResourcesResponse Int
grrrsResponseStatus = lens _grrrsResponseStatus (\s a -> s {_grrrsResponseStatus = a})

instance NFData GetResourcesResponse
