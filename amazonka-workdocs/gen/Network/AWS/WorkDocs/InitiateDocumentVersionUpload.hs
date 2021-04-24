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
-- Module      : Network.AWS.WorkDocs.InitiateDocumentVersionUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new document object and version object.
--
--
-- The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call 'UpdateDocumentVersion' .
--
-- To cancel the document upload, call 'AbortDocumentVersionUpload' .
module Network.AWS.WorkDocs.InitiateDocumentVersionUpload
  ( -- * Creating a Request
    initiateDocumentVersionUpload,
    InitiateDocumentVersionUpload,

    -- * Request Lenses
    idvuContentType,
    idvuContentModifiedTimestamp,
    idvuId,
    idvuContentCreatedTimestamp,
    idvuName,
    idvuDocumentSizeInBytes,
    idvuAuthenticationToken,
    idvuParentFolderId,

    -- * Destructuring the Response
    initiateDocumentVersionUploadResponse,
    InitiateDocumentVersionUploadResponse,

    -- * Response Lenses
    idvurrsUploadMetadata,
    idvurrsMetadata,
    idvurrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'initiateDocumentVersionUpload' smart constructor.
data InitiateDocumentVersionUpload = InitiateDocumentVersionUpload'
  { _idvuContentType ::
      !( Maybe
           Text
       ),
    _idvuContentModifiedTimestamp ::
      !( Maybe
           POSIX
       ),
    _idvuId ::
      !( Maybe
           Text
       ),
    _idvuContentCreatedTimestamp ::
      !( Maybe
           POSIX
       ),
    _idvuName ::
      !( Maybe
           Text
       ),
    _idvuDocumentSizeInBytes ::
      !( Maybe
           Integer
       ),
    _idvuAuthenticationToken ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _idvuParentFolderId ::
      !Text
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InitiateDocumentVersionUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idvuContentType' - The content type of the document.
--
-- * 'idvuContentModifiedTimestamp' - The timestamp when the content of the document was modified.
--
-- * 'idvuId' - The ID of the document.
--
-- * 'idvuContentCreatedTimestamp' - The timestamp when the content of the document was originally created.
--
-- * 'idvuName' - The name of the document.
--
-- * 'idvuDocumentSizeInBytes' - The size of the document, in bytes.
--
-- * 'idvuAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'idvuParentFolderId' - The ID of the parent folder.
initiateDocumentVersionUpload ::
  -- | 'idvuParentFolderId'
  Text ->
  InitiateDocumentVersionUpload
initiateDocumentVersionUpload pParentFolderId_ =
  InitiateDocumentVersionUpload'
    { _idvuContentType =
        Nothing,
      _idvuContentModifiedTimestamp = Nothing,
      _idvuId = Nothing,
      _idvuContentCreatedTimestamp = Nothing,
      _idvuName = Nothing,
      _idvuDocumentSizeInBytes = Nothing,
      _idvuAuthenticationToken = Nothing,
      _idvuParentFolderId = pParentFolderId_
    }

-- | The content type of the document.
idvuContentType :: Lens' InitiateDocumentVersionUpload (Maybe Text)
idvuContentType = lens _idvuContentType (\s a -> s {_idvuContentType = a})

-- | The timestamp when the content of the document was modified.
idvuContentModifiedTimestamp :: Lens' InitiateDocumentVersionUpload (Maybe UTCTime)
idvuContentModifiedTimestamp = lens _idvuContentModifiedTimestamp (\s a -> s {_idvuContentModifiedTimestamp = a}) . mapping _Time

-- | The ID of the document.
idvuId :: Lens' InitiateDocumentVersionUpload (Maybe Text)
idvuId = lens _idvuId (\s a -> s {_idvuId = a})

-- | The timestamp when the content of the document was originally created.
idvuContentCreatedTimestamp :: Lens' InitiateDocumentVersionUpload (Maybe UTCTime)
idvuContentCreatedTimestamp = lens _idvuContentCreatedTimestamp (\s a -> s {_idvuContentCreatedTimestamp = a}) . mapping _Time

-- | The name of the document.
idvuName :: Lens' InitiateDocumentVersionUpload (Maybe Text)
idvuName = lens _idvuName (\s a -> s {_idvuName = a})

-- | The size of the document, in bytes.
idvuDocumentSizeInBytes :: Lens' InitiateDocumentVersionUpload (Maybe Integer)
idvuDocumentSizeInBytes = lens _idvuDocumentSizeInBytes (\s a -> s {_idvuDocumentSizeInBytes = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
idvuAuthenticationToken :: Lens' InitiateDocumentVersionUpload (Maybe Text)
idvuAuthenticationToken = lens _idvuAuthenticationToken (\s a -> s {_idvuAuthenticationToken = a}) . mapping _Sensitive

-- | The ID of the parent folder.
idvuParentFolderId :: Lens' InitiateDocumentVersionUpload Text
idvuParentFolderId = lens _idvuParentFolderId (\s a -> s {_idvuParentFolderId = a})

instance AWSRequest InitiateDocumentVersionUpload where
  type
    Rs InitiateDocumentVersionUpload =
      InitiateDocumentVersionUploadResponse
  request = postJSON workDocs
  response =
    receiveJSON
      ( \s h x ->
          InitiateDocumentVersionUploadResponse'
            <$> (x .?> "UploadMetadata")
            <*> (x .?> "Metadata")
            <*> (pure (fromEnum s))
      )

instance Hashable InitiateDocumentVersionUpload

instance NFData InitiateDocumentVersionUpload

instance ToHeaders InitiateDocumentVersionUpload where
  toHeaders InitiateDocumentVersionUpload' {..} =
    mconcat
      [ "Authentication" =# _idvuAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON InitiateDocumentVersionUpload where
  toJSON InitiateDocumentVersionUpload' {..} =
    object
      ( catMaybes
          [ ("ContentType" .=) <$> _idvuContentType,
            ("ContentModifiedTimestamp" .=)
              <$> _idvuContentModifiedTimestamp,
            ("Id" .=) <$> _idvuId,
            ("ContentCreatedTimestamp" .=)
              <$> _idvuContentCreatedTimestamp,
            ("Name" .=) <$> _idvuName,
            ("DocumentSizeInBytes" .=)
              <$> _idvuDocumentSizeInBytes,
            Just ("ParentFolderId" .= _idvuParentFolderId)
          ]
      )

instance ToPath InitiateDocumentVersionUpload where
  toPath = const "/api/v1/documents"

instance ToQuery InitiateDocumentVersionUpload where
  toQuery = const mempty

-- | /See:/ 'initiateDocumentVersionUploadResponse' smart constructor.
data InitiateDocumentVersionUploadResponse = InitiateDocumentVersionUploadResponse'
  { _idvurrsUploadMetadata ::
      !( Maybe
           UploadMetadata
       ),
    _idvurrsMetadata ::
      !( Maybe
           DocumentMetadata
       ),
    _idvurrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InitiateDocumentVersionUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idvurrsUploadMetadata' - The upload metadata.
--
-- * 'idvurrsMetadata' - The document metadata.
--
-- * 'idvurrsResponseStatus' - -- | The response status code.
initiateDocumentVersionUploadResponse ::
  -- | 'idvurrsResponseStatus'
  Int ->
  InitiateDocumentVersionUploadResponse
initiateDocumentVersionUploadResponse
  pResponseStatus_ =
    InitiateDocumentVersionUploadResponse'
      { _idvurrsUploadMetadata =
          Nothing,
        _idvurrsMetadata = Nothing,
        _idvurrsResponseStatus =
          pResponseStatus_
      }

-- | The upload metadata.
idvurrsUploadMetadata :: Lens' InitiateDocumentVersionUploadResponse (Maybe UploadMetadata)
idvurrsUploadMetadata = lens _idvurrsUploadMetadata (\s a -> s {_idvurrsUploadMetadata = a})

-- | The document metadata.
idvurrsMetadata :: Lens' InitiateDocumentVersionUploadResponse (Maybe DocumentMetadata)
idvurrsMetadata = lens _idvurrsMetadata (\s a -> s {_idvurrsMetadata = a})

-- | -- | The response status code.
idvurrsResponseStatus :: Lens' InitiateDocumentVersionUploadResponse Int
idvurrsResponseStatus = lens _idvurrsResponseStatus (\s a -> s {_idvurrsResponseStatus = a})

instance NFData InitiateDocumentVersionUploadResponse
