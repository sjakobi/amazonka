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
-- Module      : Network.AWS.WorkDocs.GetDocument
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a document.
module Network.AWS.WorkDocs.GetDocument
  ( -- * Creating a Request
    getDocument,
    GetDocument,

    -- * Request Lenses
    gdIncludeCustomMetadata,
    gdAuthenticationToken,
    gdDocumentId,

    -- * Destructuring the Response
    getDocumentResponse,
    GetDocumentResponse,

    -- * Response Lenses
    gdrrsMetadata,
    gdrrsCustomMetadata,
    gdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'getDocument' smart constructor.
data GetDocument = GetDocument'
  { _gdIncludeCustomMetadata ::
      !(Maybe Bool),
    _gdAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _gdDocumentId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDocument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdIncludeCustomMetadata' - Set this to @TRUE@ to include custom metadata in the response.
--
-- * 'gdAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'gdDocumentId' - The ID of the document.
getDocument ::
  -- | 'gdDocumentId'
  Text ->
  GetDocument
getDocument pDocumentId_ =
  GetDocument'
    { _gdIncludeCustomMetadata = Nothing,
      _gdAuthenticationToken = Nothing,
      _gdDocumentId = pDocumentId_
    }

-- | Set this to @TRUE@ to include custom metadata in the response.
gdIncludeCustomMetadata :: Lens' GetDocument (Maybe Bool)
gdIncludeCustomMetadata = lens _gdIncludeCustomMetadata (\s a -> s {_gdIncludeCustomMetadata = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
gdAuthenticationToken :: Lens' GetDocument (Maybe Text)
gdAuthenticationToken = lens _gdAuthenticationToken (\s a -> s {_gdAuthenticationToken = a}) . mapping _Sensitive

-- | The ID of the document.
gdDocumentId :: Lens' GetDocument Text
gdDocumentId = lens _gdDocumentId (\s a -> s {_gdDocumentId = a})

instance AWSRequest GetDocument where
  type Rs GetDocument = GetDocumentResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          GetDocumentResponse'
            <$> (x .?> "Metadata")
            <*> (x .?> "CustomMetadata" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDocument

instance NFData GetDocument

instance ToHeaders GetDocument where
  toHeaders GetDocument' {..} =
    mconcat
      [ "Authentication" =# _gdAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath GetDocument where
  toPath GetDocument' {..} =
    mconcat ["/api/v1/documents/", toBS _gdDocumentId]

instance ToQuery GetDocument where
  toQuery GetDocument' {..} =
    mconcat
      ["includeCustomMetadata" =: _gdIncludeCustomMetadata]

-- | /See:/ 'getDocumentResponse' smart constructor.
data GetDocumentResponse = GetDocumentResponse'
  { _gdrrsMetadata ::
      !(Maybe DocumentMetadata),
    _gdrrsCustomMetadata ::
      !(Maybe (Map Text Text)),
    _gdrrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDocumentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrrsMetadata' - The metadata details of the document.
--
-- * 'gdrrsCustomMetadata' - The custom metadata on the document.
--
-- * 'gdrrsResponseStatus' - -- | The response status code.
getDocumentResponse ::
  -- | 'gdrrsResponseStatus'
  Int ->
  GetDocumentResponse
getDocumentResponse pResponseStatus_ =
  GetDocumentResponse'
    { _gdrrsMetadata = Nothing,
      _gdrrsCustomMetadata = Nothing,
      _gdrrsResponseStatus = pResponseStatus_
    }

-- | The metadata details of the document.
gdrrsMetadata :: Lens' GetDocumentResponse (Maybe DocumentMetadata)
gdrrsMetadata = lens _gdrrsMetadata (\s a -> s {_gdrrsMetadata = a})

-- | The custom metadata on the document.
gdrrsCustomMetadata :: Lens' GetDocumentResponse (HashMap Text Text)
gdrrsCustomMetadata = lens _gdrrsCustomMetadata (\s a -> s {_gdrrsCustomMetadata = a}) . _Default . _Map

-- | -- | The response status code.
gdrrsResponseStatus :: Lens' GetDocumentResponse Int
gdrrsResponseStatus = lens _gdrrsResponseStatus (\s a -> s {_gdrrsResponseStatus = a})

instance NFData GetDocumentResponse
