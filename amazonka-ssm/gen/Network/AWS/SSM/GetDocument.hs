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
-- Module      : Network.AWS.SSM.GetDocument
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the contents of the specified Systems Manager document.
module Network.AWS.SSM.GetDocument
  ( -- * Creating a Request
    getDocument,
    GetDocument,

    -- * Request Lenses
    gdVersionName,
    gdDocumentFormat,
    gdDocumentVersion,
    gdName,

    -- * Destructuring the Response
    getDocumentResponse,
    GetDocumentResponse,

    -- * Response Lenses
    gdrrsDocumentType,
    gdrrsStatus,
    gdrrsRequires,
    gdrrsAttachmentsContent,
    gdrrsStatusInformation,
    gdrrsVersionName,
    gdrrsName,
    gdrrsDocumentFormat,
    gdrrsContent,
    gdrrsReviewStatus,
    gdrrsDocumentVersion,
    gdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getDocument' smart constructor.
data GetDocument = GetDocument'
  { _gdVersionName ::
      !(Maybe Text),
    _gdDocumentFormat :: !(Maybe DocumentFormat),
    _gdDocumentVersion :: !(Maybe Text),
    _gdName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDocument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdVersionName' - An optional field specifying the version of the artifact associated with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document and can't be changed.
--
-- * 'gdDocumentFormat' - Returns the document in the specified format. The document format can be either JSON or YAML. JSON is the default format.
--
-- * 'gdDocumentVersion' - The document version for which you want information.
--
-- * 'gdName' - The name of the Systems Manager document.
getDocument ::
  -- | 'gdName'
  Text ->
  GetDocument
getDocument pName_ =
  GetDocument'
    { _gdVersionName = Nothing,
      _gdDocumentFormat = Nothing,
      _gdDocumentVersion = Nothing,
      _gdName = pName_
    }

-- | An optional field specifying the version of the artifact associated with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document and can't be changed.
gdVersionName :: Lens' GetDocument (Maybe Text)
gdVersionName = lens _gdVersionName (\s a -> s {_gdVersionName = a})

-- | Returns the document in the specified format. The document format can be either JSON or YAML. JSON is the default format.
gdDocumentFormat :: Lens' GetDocument (Maybe DocumentFormat)
gdDocumentFormat = lens _gdDocumentFormat (\s a -> s {_gdDocumentFormat = a})

-- | The document version for which you want information.
gdDocumentVersion :: Lens' GetDocument (Maybe Text)
gdDocumentVersion = lens _gdDocumentVersion (\s a -> s {_gdDocumentVersion = a})

-- | The name of the Systems Manager document.
gdName :: Lens' GetDocument Text
gdName = lens _gdName (\s a -> s {_gdName = a})

instance AWSRequest GetDocument where
  type Rs GetDocument = GetDocumentResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetDocumentResponse'
            <$> (x .?> "DocumentType")
            <*> (x .?> "Status")
            <*> (x .?> "Requires")
            <*> (x .?> "AttachmentsContent" .!@ mempty)
            <*> (x .?> "StatusInformation")
            <*> (x .?> "VersionName")
            <*> (x .?> "Name")
            <*> (x .?> "DocumentFormat")
            <*> (x .?> "Content")
            <*> (x .?> "ReviewStatus")
            <*> (x .?> "DocumentVersion")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDocument

instance NFData GetDocument

instance ToHeaders GetDocument where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetDocument" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDocument where
  toJSON GetDocument' {..} =
    object
      ( catMaybes
          [ ("VersionName" .=) <$> _gdVersionName,
            ("DocumentFormat" .=) <$> _gdDocumentFormat,
            ("DocumentVersion" .=) <$> _gdDocumentVersion,
            Just ("Name" .= _gdName)
          ]
      )

instance ToPath GetDocument where
  toPath = const "/"

instance ToQuery GetDocument where
  toQuery = const mempty

-- | /See:/ 'getDocumentResponse' smart constructor.
data GetDocumentResponse = GetDocumentResponse'
  { _gdrrsDocumentType ::
      !(Maybe DocumentType),
    _gdrrsStatus ::
      !(Maybe DocumentStatus),
    _gdrrsRequires ::
      !( Maybe
           (List1 DocumentRequires)
       ),
    _gdrrsAttachmentsContent ::
      !(Maybe [AttachmentContent]),
    _gdrrsStatusInformation ::
      !(Maybe Text),
    _gdrrsVersionName ::
      !(Maybe Text),
    _gdrrsName :: !(Maybe Text),
    _gdrrsDocumentFormat ::
      !(Maybe DocumentFormat),
    _gdrrsContent :: !(Maybe Text),
    _gdrrsReviewStatus ::
      !(Maybe ReviewStatus),
    _gdrrsDocumentVersion ::
      !(Maybe Text),
    _gdrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDocumentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrrsDocumentType' - The document type.
--
-- * 'gdrrsStatus' - The status of the Systems Manager document, such as @Creating@ , @Active@ , @Updating@ , @Failed@ , and @Deleting@ .
--
-- * 'gdrrsRequires' - A list of SSM documents required by a document. For example, an @ApplicationConfiguration@ document requires an @ApplicationConfigurationSchema@ document.
--
-- * 'gdrrsAttachmentsContent' - A description of the document attachments, including names, locations, sizes, and so on.
--
-- * 'gdrrsStatusInformation' - A message returned by AWS Systems Manager that explains the @Status@ value. For example, a @Failed@ status might be explained by the @StatusInformation@ message, "The specified S3 bucket does not exist. Verify that the URL of the S3 bucket is correct."
--
-- * 'gdrrsVersionName' - The version of the artifact associated with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
--
-- * 'gdrrsName' - The name of the Systems Manager document.
--
-- * 'gdrrsDocumentFormat' - The document format, either JSON or YAML.
--
-- * 'gdrrsContent' - The contents of the Systems Manager document.
--
-- * 'gdrrsReviewStatus' - The current review status of a new custom Systems Manager document (SSM document) created by a member of your organization, or of the latest version of an existing SSM document. Only one version of an SSM document can be in the APPROVED state at a time. When a new version is approved, the status of the previous version changes to REJECTED. Only one version of an SSM document can be in review, or PENDING, at a time.
--
-- * 'gdrrsDocumentVersion' - The document version.
--
-- * 'gdrrsResponseStatus' - -- | The response status code.
getDocumentResponse ::
  -- | 'gdrrsResponseStatus'
  Int ->
  GetDocumentResponse
getDocumentResponse pResponseStatus_ =
  GetDocumentResponse'
    { _gdrrsDocumentType = Nothing,
      _gdrrsStatus = Nothing,
      _gdrrsRequires = Nothing,
      _gdrrsAttachmentsContent = Nothing,
      _gdrrsStatusInformation = Nothing,
      _gdrrsVersionName = Nothing,
      _gdrrsName = Nothing,
      _gdrrsDocumentFormat = Nothing,
      _gdrrsContent = Nothing,
      _gdrrsReviewStatus = Nothing,
      _gdrrsDocumentVersion = Nothing,
      _gdrrsResponseStatus = pResponseStatus_
    }

-- | The document type.
gdrrsDocumentType :: Lens' GetDocumentResponse (Maybe DocumentType)
gdrrsDocumentType = lens _gdrrsDocumentType (\s a -> s {_gdrrsDocumentType = a})

-- | The status of the Systems Manager document, such as @Creating@ , @Active@ , @Updating@ , @Failed@ , and @Deleting@ .
gdrrsStatus :: Lens' GetDocumentResponse (Maybe DocumentStatus)
gdrrsStatus = lens _gdrrsStatus (\s a -> s {_gdrrsStatus = a})

-- | A list of SSM documents required by a document. For example, an @ApplicationConfiguration@ document requires an @ApplicationConfigurationSchema@ document.
gdrrsRequires :: Lens' GetDocumentResponse (Maybe (NonEmpty DocumentRequires))
gdrrsRequires = lens _gdrrsRequires (\s a -> s {_gdrrsRequires = a}) . mapping _List1

-- | A description of the document attachments, including names, locations, sizes, and so on.
gdrrsAttachmentsContent :: Lens' GetDocumentResponse [AttachmentContent]
gdrrsAttachmentsContent = lens _gdrrsAttachmentsContent (\s a -> s {_gdrrsAttachmentsContent = a}) . _Default . _Coerce

-- | A message returned by AWS Systems Manager that explains the @Status@ value. For example, a @Failed@ status might be explained by the @StatusInformation@ message, "The specified S3 bucket does not exist. Verify that the URL of the S3 bucket is correct."
gdrrsStatusInformation :: Lens' GetDocumentResponse (Maybe Text)
gdrrsStatusInformation = lens _gdrrsStatusInformation (\s a -> s {_gdrrsStatusInformation = a})

-- | The version of the artifact associated with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
gdrrsVersionName :: Lens' GetDocumentResponse (Maybe Text)
gdrrsVersionName = lens _gdrrsVersionName (\s a -> s {_gdrrsVersionName = a})

-- | The name of the Systems Manager document.
gdrrsName :: Lens' GetDocumentResponse (Maybe Text)
gdrrsName = lens _gdrrsName (\s a -> s {_gdrrsName = a})

-- | The document format, either JSON or YAML.
gdrrsDocumentFormat :: Lens' GetDocumentResponse (Maybe DocumentFormat)
gdrrsDocumentFormat = lens _gdrrsDocumentFormat (\s a -> s {_gdrrsDocumentFormat = a})

-- | The contents of the Systems Manager document.
gdrrsContent :: Lens' GetDocumentResponse (Maybe Text)
gdrrsContent = lens _gdrrsContent (\s a -> s {_gdrrsContent = a})

-- | The current review status of a new custom Systems Manager document (SSM document) created by a member of your organization, or of the latest version of an existing SSM document. Only one version of an SSM document can be in the APPROVED state at a time. When a new version is approved, the status of the previous version changes to REJECTED. Only one version of an SSM document can be in review, or PENDING, at a time.
gdrrsReviewStatus :: Lens' GetDocumentResponse (Maybe ReviewStatus)
gdrrsReviewStatus = lens _gdrrsReviewStatus (\s a -> s {_gdrrsReviewStatus = a})

-- | The document version.
gdrrsDocumentVersion :: Lens' GetDocumentResponse (Maybe Text)
gdrrsDocumentVersion = lens _gdrrsDocumentVersion (\s a -> s {_gdrrsDocumentVersion = a})

-- | -- | The response status code.
gdrrsResponseStatus :: Lens' GetDocumentResponse Int
gdrrsResponseStatus = lens _gdrrsResponseStatus (\s a -> s {_gdrrsResponseStatus = a})

instance NFData GetDocumentResponse
