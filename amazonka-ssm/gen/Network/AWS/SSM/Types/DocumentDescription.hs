{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentDescription where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AttachmentInformation
import Network.AWS.SSM.Types.DocumentFormat
import Network.AWS.SSM.Types.DocumentHashType
import Network.AWS.SSM.Types.DocumentParameter
import Network.AWS.SSM.Types.DocumentRequires
import Network.AWS.SSM.Types.DocumentStatus
import Network.AWS.SSM.Types.DocumentType
import Network.AWS.SSM.Types.PlatformType
import Network.AWS.SSM.Types.ReviewInformation
import Network.AWS.SSM.Types.ReviewStatus
import Network.AWS.SSM.Types.Tag

-- | Describes a Systems Manager document.
--
--
--
-- /See:/ 'documentDescription' smart constructor.
data DocumentDescription = DocumentDescription'
  { _ddDocumentType ::
      !(Maybe DocumentType),
    _ddStatus ::
      !(Maybe DocumentStatus),
    _ddCreatedDate ::
      !(Maybe POSIX),
    _ddPlatformTypes ::
      !(Maybe [PlatformType]),
    _ddDefaultVersion ::
      !(Maybe Text),
    _ddLatestVersion ::
      !(Maybe Text),
    _ddTargetType :: !(Maybe Text),
    _ddApprovedVersion ::
      !(Maybe Text),
    _ddRequires ::
      !( Maybe
           (List1 DocumentRequires)
       ),
    _ddSha1 :: !(Maybe Text),
    _ddStatusInformation ::
      !(Maybe Text),
    _ddVersionName :: !(Maybe Text),
    _ddAuthor :: !(Maybe Text),
    _ddHash :: !(Maybe Text),
    _ddPendingReviewVersion ::
      !(Maybe Text),
    _ddName :: !(Maybe Text),
    _ddDocumentFormat ::
      !(Maybe DocumentFormat),
    _ddTags :: !(Maybe [Tag]),
    _ddOwner :: !(Maybe Text),
    _ddReviewStatus ::
      !(Maybe ReviewStatus),
    _ddReviewInformation ::
      !( Maybe
           (List1 ReviewInformation)
       ),
    _ddAttachmentsInformation ::
      !( Maybe
           [AttachmentInformation]
       ),
    _ddDescription :: !(Maybe Text),
    _ddSchemaVersion ::
      !(Maybe Text),
    _ddDocumentVersion ::
      !(Maybe Text),
    _ddParameters ::
      !(Maybe [DocumentParameter]),
    _ddHashType ::
      !(Maybe DocumentHashType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDocumentType' - The type of document.
--
-- * 'ddStatus' - The status of the Systems Manager document.
--
-- * 'ddCreatedDate' - The date when the document was created.
--
-- * 'ddPlatformTypes' - The list of OS platforms compatible with this Systems Manager document.
--
-- * 'ddDefaultVersion' - The default version.
--
-- * 'ddLatestVersion' - The latest version of the document.
--
-- * 'ddTargetType' - The target type which defines the kinds of resources the document can run on. For example, /AWS::EC2::Instance. For a list of valid resource types, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS resource and property types reference> in the /AWS CloudFormation User Guide/ .
--
-- * 'ddApprovedVersion' - The version of the document currently approved for use in the organization.
--
-- * 'ddRequires' - A list of SSM documents required by a document. For example, an @ApplicationConfiguration@ document requires an @ApplicationConfigurationSchema@ document.
--
-- * 'ddSha1' - The SHA1 hash of the document, which you can use for verification.
--
-- * 'ddStatusInformation' - A message returned by AWS Systems Manager that explains the @Status@ value. For example, a @Failed@ status might be explained by the @StatusInformation@ message, "The specified S3 bucket does not exist. Verify that the URL of the S3 bucket is correct."
--
-- * 'ddVersionName' - The version of the artifact associated with the document.
--
-- * 'ddAuthor' - The user in your organization who created the document.
--
-- * 'ddHash' - The Sha256 or Sha1 hash created by the system when the document was created.
--
-- * 'ddPendingReviewVersion' - The version of the document that is currently under review.
--
-- * 'ddName' - The name of the Systems Manager document.
--
-- * 'ddDocumentFormat' - The document format, either JSON or YAML.
--
-- * 'ddTags' - The tags, or metadata, that have been applied to the document.
--
-- * 'ddOwner' - The AWS user account that created the document.
--
-- * 'ddReviewStatus' - The current status of the review.
--
-- * 'ddReviewInformation' - Details about the review of a document.
--
-- * 'ddAttachmentsInformation' - Details about the document attachments, including names, locations, sizes, and so on.
--
-- * 'ddDescription' - A description of the document.
--
-- * 'ddSchemaVersion' - The schema version.
--
-- * 'ddDocumentVersion' - The document version.
--
-- * 'ddParameters' - A description of the parameters for a document.
--
-- * 'ddHashType' - The hash type of the document. Valid values include @Sha256@ or @Sha1@ .
documentDescription ::
  DocumentDescription
documentDescription =
  DocumentDescription'
    { _ddDocumentType = Nothing,
      _ddStatus = Nothing,
      _ddCreatedDate = Nothing,
      _ddPlatformTypes = Nothing,
      _ddDefaultVersion = Nothing,
      _ddLatestVersion = Nothing,
      _ddTargetType = Nothing,
      _ddApprovedVersion = Nothing,
      _ddRequires = Nothing,
      _ddSha1 = Nothing,
      _ddStatusInformation = Nothing,
      _ddVersionName = Nothing,
      _ddAuthor = Nothing,
      _ddHash = Nothing,
      _ddPendingReviewVersion = Nothing,
      _ddName = Nothing,
      _ddDocumentFormat = Nothing,
      _ddTags = Nothing,
      _ddOwner = Nothing,
      _ddReviewStatus = Nothing,
      _ddReviewInformation = Nothing,
      _ddAttachmentsInformation = Nothing,
      _ddDescription = Nothing,
      _ddSchemaVersion = Nothing,
      _ddDocumentVersion = Nothing,
      _ddParameters = Nothing,
      _ddHashType = Nothing
    }

-- | The type of document.
ddDocumentType :: Lens' DocumentDescription (Maybe DocumentType)
ddDocumentType = lens _ddDocumentType (\s a -> s {_ddDocumentType = a})

-- | The status of the Systems Manager document.
ddStatus :: Lens' DocumentDescription (Maybe DocumentStatus)
ddStatus = lens _ddStatus (\s a -> s {_ddStatus = a})

-- | The date when the document was created.
ddCreatedDate :: Lens' DocumentDescription (Maybe UTCTime)
ddCreatedDate = lens _ddCreatedDate (\s a -> s {_ddCreatedDate = a}) . mapping _Time

-- | The list of OS platforms compatible with this Systems Manager document.
ddPlatformTypes :: Lens' DocumentDescription [PlatformType]
ddPlatformTypes = lens _ddPlatformTypes (\s a -> s {_ddPlatformTypes = a}) . _Default . _Coerce

-- | The default version.
ddDefaultVersion :: Lens' DocumentDescription (Maybe Text)
ddDefaultVersion = lens _ddDefaultVersion (\s a -> s {_ddDefaultVersion = a})

-- | The latest version of the document.
ddLatestVersion :: Lens' DocumentDescription (Maybe Text)
ddLatestVersion = lens _ddLatestVersion (\s a -> s {_ddLatestVersion = a})

-- | The target type which defines the kinds of resources the document can run on. For example, /AWS::EC2::Instance. For a list of valid resource types, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS resource and property types reference> in the /AWS CloudFormation User Guide/ .
ddTargetType :: Lens' DocumentDescription (Maybe Text)
ddTargetType = lens _ddTargetType (\s a -> s {_ddTargetType = a})

-- | The version of the document currently approved for use in the organization.
ddApprovedVersion :: Lens' DocumentDescription (Maybe Text)
ddApprovedVersion = lens _ddApprovedVersion (\s a -> s {_ddApprovedVersion = a})

-- | A list of SSM documents required by a document. For example, an @ApplicationConfiguration@ document requires an @ApplicationConfigurationSchema@ document.
ddRequires :: Lens' DocumentDescription (Maybe (NonEmpty DocumentRequires))
ddRequires = lens _ddRequires (\s a -> s {_ddRequires = a}) . mapping _List1

-- | The SHA1 hash of the document, which you can use for verification.
ddSha1 :: Lens' DocumentDescription (Maybe Text)
ddSha1 = lens _ddSha1 (\s a -> s {_ddSha1 = a})

-- | A message returned by AWS Systems Manager that explains the @Status@ value. For example, a @Failed@ status might be explained by the @StatusInformation@ message, "The specified S3 bucket does not exist. Verify that the URL of the S3 bucket is correct."
ddStatusInformation :: Lens' DocumentDescription (Maybe Text)
ddStatusInformation = lens _ddStatusInformation (\s a -> s {_ddStatusInformation = a})

-- | The version of the artifact associated with the document.
ddVersionName :: Lens' DocumentDescription (Maybe Text)
ddVersionName = lens _ddVersionName (\s a -> s {_ddVersionName = a})

-- | The user in your organization who created the document.
ddAuthor :: Lens' DocumentDescription (Maybe Text)
ddAuthor = lens _ddAuthor (\s a -> s {_ddAuthor = a})

-- | The Sha256 or Sha1 hash created by the system when the document was created.
ddHash :: Lens' DocumentDescription (Maybe Text)
ddHash = lens _ddHash (\s a -> s {_ddHash = a})

-- | The version of the document that is currently under review.
ddPendingReviewVersion :: Lens' DocumentDescription (Maybe Text)
ddPendingReviewVersion = lens _ddPendingReviewVersion (\s a -> s {_ddPendingReviewVersion = a})

-- | The name of the Systems Manager document.
ddName :: Lens' DocumentDescription (Maybe Text)
ddName = lens _ddName (\s a -> s {_ddName = a})

-- | The document format, either JSON or YAML.
ddDocumentFormat :: Lens' DocumentDescription (Maybe DocumentFormat)
ddDocumentFormat = lens _ddDocumentFormat (\s a -> s {_ddDocumentFormat = a})

-- | The tags, or metadata, that have been applied to the document.
ddTags :: Lens' DocumentDescription [Tag]
ddTags = lens _ddTags (\s a -> s {_ddTags = a}) . _Default . _Coerce

-- | The AWS user account that created the document.
ddOwner :: Lens' DocumentDescription (Maybe Text)
ddOwner = lens _ddOwner (\s a -> s {_ddOwner = a})

-- | The current status of the review.
ddReviewStatus :: Lens' DocumentDescription (Maybe ReviewStatus)
ddReviewStatus = lens _ddReviewStatus (\s a -> s {_ddReviewStatus = a})

-- | Details about the review of a document.
ddReviewInformation :: Lens' DocumentDescription (Maybe (NonEmpty ReviewInformation))
ddReviewInformation = lens _ddReviewInformation (\s a -> s {_ddReviewInformation = a}) . mapping _List1

-- | Details about the document attachments, including names, locations, sizes, and so on.
ddAttachmentsInformation :: Lens' DocumentDescription [AttachmentInformation]
ddAttachmentsInformation = lens _ddAttachmentsInformation (\s a -> s {_ddAttachmentsInformation = a}) . _Default . _Coerce

-- | A description of the document.
ddDescription :: Lens' DocumentDescription (Maybe Text)
ddDescription = lens _ddDescription (\s a -> s {_ddDescription = a})

-- | The schema version.
ddSchemaVersion :: Lens' DocumentDescription (Maybe Text)
ddSchemaVersion = lens _ddSchemaVersion (\s a -> s {_ddSchemaVersion = a})

-- | The document version.
ddDocumentVersion :: Lens' DocumentDescription (Maybe Text)
ddDocumentVersion = lens _ddDocumentVersion (\s a -> s {_ddDocumentVersion = a})

-- | A description of the parameters for a document.
ddParameters :: Lens' DocumentDescription [DocumentParameter]
ddParameters = lens _ddParameters (\s a -> s {_ddParameters = a}) . _Default . _Coerce

-- | The hash type of the document. Valid values include @Sha256@ or @Sha1@ .
ddHashType :: Lens' DocumentDescription (Maybe DocumentHashType)
ddHashType = lens _ddHashType (\s a -> s {_ddHashType = a})

instance FromJSON DocumentDescription where
  parseJSON =
    withObject
      "DocumentDescription"
      ( \x ->
          DocumentDescription'
            <$> (x .:? "DocumentType")
            <*> (x .:? "Status")
            <*> (x .:? "CreatedDate")
            <*> (x .:? "PlatformTypes" .!= mempty)
            <*> (x .:? "DefaultVersion")
            <*> (x .:? "LatestVersion")
            <*> (x .:? "TargetType")
            <*> (x .:? "ApprovedVersion")
            <*> (x .:? "Requires")
            <*> (x .:? "Sha1")
            <*> (x .:? "StatusInformation")
            <*> (x .:? "VersionName")
            <*> (x .:? "Author")
            <*> (x .:? "Hash")
            <*> (x .:? "PendingReviewVersion")
            <*> (x .:? "Name")
            <*> (x .:? "DocumentFormat")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "Owner")
            <*> (x .:? "ReviewStatus")
            <*> (x .:? "ReviewInformation")
            <*> (x .:? "AttachmentsInformation" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "SchemaVersion")
            <*> (x .:? "DocumentVersion")
            <*> (x .:? "Parameters" .!= mempty)
            <*> (x .:? "HashType")
      )

instance Hashable DocumentDescription

instance NFData DocumentDescription
