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
-- Module      : Network.AWS.WorkDocs.GetDocumentVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves version metadata for the specified document.
module Network.AWS.WorkDocs.GetDocumentVersion
  ( -- * Creating a Request
    getDocumentVersion,
    GetDocumentVersion,

    -- * Request Lenses
    gdvIncludeCustomMetadata,
    gdvFields,
    gdvAuthenticationToken,
    gdvDocumentId,
    gdvVersionId,

    -- * Destructuring the Response
    getDocumentVersionResponse,
    GetDocumentVersionResponse,

    -- * Response Lenses
    gdvrrsMetadata,
    gdvrrsCustomMetadata,
    gdvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'getDocumentVersion' smart constructor.
data GetDocumentVersion = GetDocumentVersion'
  { _gdvIncludeCustomMetadata ::
      !(Maybe Bool),
    _gdvFields :: !(Maybe Text),
    _gdvAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _gdvDocumentId :: !Text,
    _gdvVersionId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDocumentVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdvIncludeCustomMetadata' - Set this to TRUE to include custom metadata in the response.
--
-- * 'gdvFields' - A comma-separated list of values. Specify "SOURCE" to include a URL for the source document.
--
-- * 'gdvAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'gdvDocumentId' - The ID of the document.
--
-- * 'gdvVersionId' - The version ID of the document.
getDocumentVersion ::
  -- | 'gdvDocumentId'
  Text ->
  -- | 'gdvVersionId'
  Text ->
  GetDocumentVersion
getDocumentVersion pDocumentId_ pVersionId_ =
  GetDocumentVersion'
    { _gdvIncludeCustomMetadata =
        Nothing,
      _gdvFields = Nothing,
      _gdvAuthenticationToken = Nothing,
      _gdvDocumentId = pDocumentId_,
      _gdvVersionId = pVersionId_
    }

-- | Set this to TRUE to include custom metadata in the response.
gdvIncludeCustomMetadata :: Lens' GetDocumentVersion (Maybe Bool)
gdvIncludeCustomMetadata = lens _gdvIncludeCustomMetadata (\s a -> s {_gdvIncludeCustomMetadata = a})

-- | A comma-separated list of values. Specify "SOURCE" to include a URL for the source document.
gdvFields :: Lens' GetDocumentVersion (Maybe Text)
gdvFields = lens _gdvFields (\s a -> s {_gdvFields = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
gdvAuthenticationToken :: Lens' GetDocumentVersion (Maybe Text)
gdvAuthenticationToken = lens _gdvAuthenticationToken (\s a -> s {_gdvAuthenticationToken = a}) . mapping _Sensitive

-- | The ID of the document.
gdvDocumentId :: Lens' GetDocumentVersion Text
gdvDocumentId = lens _gdvDocumentId (\s a -> s {_gdvDocumentId = a})

-- | The version ID of the document.
gdvVersionId :: Lens' GetDocumentVersion Text
gdvVersionId = lens _gdvVersionId (\s a -> s {_gdvVersionId = a})

instance AWSRequest GetDocumentVersion where
  type
    Rs GetDocumentVersion =
      GetDocumentVersionResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          GetDocumentVersionResponse'
            <$> (x .?> "Metadata")
            <*> (x .?> "CustomMetadata" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDocumentVersion

instance NFData GetDocumentVersion

instance ToHeaders GetDocumentVersion where
  toHeaders GetDocumentVersion' {..} =
    mconcat
      [ "Authentication" =# _gdvAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath GetDocumentVersion where
  toPath GetDocumentVersion' {..} =
    mconcat
      [ "/api/v1/documents/",
        toBS _gdvDocumentId,
        "/versions/",
        toBS _gdvVersionId
      ]

instance ToQuery GetDocumentVersion where
  toQuery GetDocumentVersion' {..} =
    mconcat
      [ "includeCustomMetadata"
          =: _gdvIncludeCustomMetadata,
        "fields" =: _gdvFields
      ]

-- | /See:/ 'getDocumentVersionResponse' smart constructor.
data GetDocumentVersionResponse = GetDocumentVersionResponse'
  { _gdvrrsMetadata ::
      !( Maybe
           DocumentVersionMetadata
       ),
    _gdvrrsCustomMetadata ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gdvrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDocumentVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdvrrsMetadata' - The version metadata.
--
-- * 'gdvrrsCustomMetadata' - The custom metadata on the document version.
--
-- * 'gdvrrsResponseStatus' - -- | The response status code.
getDocumentVersionResponse ::
  -- | 'gdvrrsResponseStatus'
  Int ->
  GetDocumentVersionResponse
getDocumentVersionResponse pResponseStatus_ =
  GetDocumentVersionResponse'
    { _gdvrrsMetadata =
        Nothing,
      _gdvrrsCustomMetadata = Nothing,
      _gdvrrsResponseStatus = pResponseStatus_
    }

-- | The version metadata.
gdvrrsMetadata :: Lens' GetDocumentVersionResponse (Maybe DocumentVersionMetadata)
gdvrrsMetadata = lens _gdvrrsMetadata (\s a -> s {_gdvrrsMetadata = a})

-- | The custom metadata on the document version.
gdvrrsCustomMetadata :: Lens' GetDocumentVersionResponse (HashMap Text Text)
gdvrrsCustomMetadata = lens _gdvrrsCustomMetadata (\s a -> s {_gdvrrsCustomMetadata = a}) . _Default . _Map

-- | -- | The response status code.
gdvrrsResponseStatus :: Lens' GetDocumentVersionResponse Int
gdvrrsResponseStatus = lens _gdvrrsResponseStatus (\s a -> s {_gdvrrsResponseStatus = a})

instance NFData GetDocumentVersionResponse
