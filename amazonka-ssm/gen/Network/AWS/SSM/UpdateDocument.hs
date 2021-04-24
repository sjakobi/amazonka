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
-- Module      : Network.AWS.SSM.UpdateDocument
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more values for an SSM document.
module Network.AWS.SSM.UpdateDocument
  ( -- * Creating a Request
    updateDocument,
    UpdateDocument,

    -- * Request Lenses
    udTargetType,
    udVersionName,
    udDocumentFormat,
    udDocumentVersion,
    udAttachments,
    udContent,
    udName,

    -- * Destructuring the Response
    updateDocumentResponse,
    UpdateDocumentResponse,

    -- * Response Lenses
    udrrsDocumentDescription,
    udrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'updateDocument' smart constructor.
data UpdateDocument = UpdateDocument'
  { _udTargetType ::
      !(Maybe Text),
    _udVersionName :: !(Maybe Text),
    _udDocumentFormat ::
      !(Maybe DocumentFormat),
    _udDocumentVersion :: !(Maybe Text),
    _udAttachments ::
      !(Maybe [AttachmentsSource]),
    _udContent :: !Text,
    _udName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDocument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udTargetType' - Specify a new target type for the document.
--
-- * 'udVersionName' - An optional field specifying the version of the artifact you are updating with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
--
-- * 'udDocumentFormat' - Specify the document format for the new document version. Systems Manager supports JSON and YAML documents. JSON is the default format.
--
-- * 'udDocumentVersion' - (Required) The latest version of the document that you want to update. The latest document version can be specified using the $LATEST variable or by the version number. Updating a previous version of a document is not supported.
--
-- * 'udAttachments' - A list of key and value pairs that describe attachments to a version of a document.
--
-- * 'udContent' - A valid JSON or YAML string.
--
-- * 'udName' - The name of the document that you want to update.
updateDocument ::
  -- | 'udContent'
  Text ->
  -- | 'udName'
  Text ->
  UpdateDocument
updateDocument pContent_ pName_ =
  UpdateDocument'
    { _udTargetType = Nothing,
      _udVersionName = Nothing,
      _udDocumentFormat = Nothing,
      _udDocumentVersion = Nothing,
      _udAttachments = Nothing,
      _udContent = pContent_,
      _udName = pName_
    }

-- | Specify a new target type for the document.
udTargetType :: Lens' UpdateDocument (Maybe Text)
udTargetType = lens _udTargetType (\s a -> s {_udTargetType = a})

-- | An optional field specifying the version of the artifact you are updating with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
udVersionName :: Lens' UpdateDocument (Maybe Text)
udVersionName = lens _udVersionName (\s a -> s {_udVersionName = a})

-- | Specify the document format for the new document version. Systems Manager supports JSON and YAML documents. JSON is the default format.
udDocumentFormat :: Lens' UpdateDocument (Maybe DocumentFormat)
udDocumentFormat = lens _udDocumentFormat (\s a -> s {_udDocumentFormat = a})

-- | (Required) The latest version of the document that you want to update. The latest document version can be specified using the $LATEST variable or by the version number. Updating a previous version of a document is not supported.
udDocumentVersion :: Lens' UpdateDocument (Maybe Text)
udDocumentVersion = lens _udDocumentVersion (\s a -> s {_udDocumentVersion = a})

-- | A list of key and value pairs that describe attachments to a version of a document.
udAttachments :: Lens' UpdateDocument [AttachmentsSource]
udAttachments = lens _udAttachments (\s a -> s {_udAttachments = a}) . _Default . _Coerce

-- | A valid JSON or YAML string.
udContent :: Lens' UpdateDocument Text
udContent = lens _udContent (\s a -> s {_udContent = a})

-- | The name of the document that you want to update.
udName :: Lens' UpdateDocument Text
udName = lens _udName (\s a -> s {_udName = a})

instance AWSRequest UpdateDocument where
  type Rs UpdateDocument = UpdateDocumentResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          UpdateDocumentResponse'
            <$> (x .?> "DocumentDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateDocument

instance NFData UpdateDocument

instance ToHeaders UpdateDocument where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.UpdateDocument" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDocument where
  toJSON UpdateDocument' {..} =
    object
      ( catMaybes
          [ ("TargetType" .=) <$> _udTargetType,
            ("VersionName" .=) <$> _udVersionName,
            ("DocumentFormat" .=) <$> _udDocumentFormat,
            ("DocumentVersion" .=) <$> _udDocumentVersion,
            ("Attachments" .=) <$> _udAttachments,
            Just ("Content" .= _udContent),
            Just ("Name" .= _udName)
          ]
      )

instance ToPath UpdateDocument where
  toPath = const "/"

instance ToQuery UpdateDocument where
  toQuery = const mempty

-- | /See:/ 'updateDocumentResponse' smart constructor.
data UpdateDocumentResponse = UpdateDocumentResponse'
  { _udrrsDocumentDescription ::
      !( Maybe
           DocumentDescription
       ),
    _udrrsResponseStatus ::
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

-- | Creates a value of 'UpdateDocumentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udrrsDocumentDescription' - A description of the document that was updated.
--
-- * 'udrrsResponseStatus' - -- | The response status code.
updateDocumentResponse ::
  -- | 'udrrsResponseStatus'
  Int ->
  UpdateDocumentResponse
updateDocumentResponse pResponseStatus_ =
  UpdateDocumentResponse'
    { _udrrsDocumentDescription =
        Nothing,
      _udrrsResponseStatus = pResponseStatus_
    }

-- | A description of the document that was updated.
udrrsDocumentDescription :: Lens' UpdateDocumentResponse (Maybe DocumentDescription)
udrrsDocumentDescription = lens _udrrsDocumentDescription (\s a -> s {_udrrsDocumentDescription = a})

-- | -- | The response status code.
udrrsResponseStatus :: Lens' UpdateDocumentResponse Int
udrrsResponseStatus = lens _udrrsResponseStatus (\s a -> s {_udrrsResponseStatus = a})

instance NFData UpdateDocumentResponse
