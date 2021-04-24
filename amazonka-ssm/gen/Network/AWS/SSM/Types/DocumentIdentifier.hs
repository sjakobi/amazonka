{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentIdentifier where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.DocumentFormat
import Network.AWS.SSM.Types.DocumentRequires
import Network.AWS.SSM.Types.DocumentType
import Network.AWS.SSM.Types.PlatformType
import Network.AWS.SSM.Types.ReviewStatus
import Network.AWS.SSM.Types.Tag

-- | Describes the name of a Systems Manager document.
--
--
--
-- /See:/ 'documentIdentifier' smart constructor.
data DocumentIdentifier = DocumentIdentifier'
  { _diDocumentType ::
      !(Maybe DocumentType),
    _diPlatformTypes ::
      !(Maybe [PlatformType]),
    _diTargetType :: !(Maybe Text),
    _diRequires ::
      !(Maybe (List1 DocumentRequires)),
    _diVersionName :: !(Maybe Text),
    _diAuthor :: !(Maybe Text),
    _diName :: !(Maybe Text),
    _diDocumentFormat ::
      !(Maybe DocumentFormat),
    _diTags :: !(Maybe [Tag]),
    _diOwner :: !(Maybe Text),
    _diReviewStatus ::
      !(Maybe ReviewStatus),
    _diSchemaVersion :: !(Maybe Text),
    _diDocumentVersion ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diDocumentType' - The document type.
--
-- * 'diPlatformTypes' - The operating system platform.
--
-- * 'diTargetType' - The target type which defines the kinds of resources the document can run on. For example, /AWS::EC2::Instance. For a list of valid resource types, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS resource and property types reference> in the /AWS CloudFormation User Guide/ .
--
-- * 'diRequires' - A list of SSM documents required by a document. For example, an @ApplicationConfiguration@ document requires an @ApplicationConfigurationSchema@ document.
--
-- * 'diVersionName' - An optional field specifying the version of the artifact associated with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
--
-- * 'diAuthor' - The user in your organization who created the document.
--
-- * 'diName' - The name of the Systems Manager document.
--
-- * 'diDocumentFormat' - The document format, either JSON or YAML.
--
-- * 'diTags' - The tags, or metadata, that have been applied to the document.
--
-- * 'diOwner' - The AWS user account that created the document.
--
-- * 'diReviewStatus' - The current status of a document review.
--
-- * 'diSchemaVersion' - The schema version.
--
-- * 'diDocumentVersion' - The document version.
documentIdentifier ::
  DocumentIdentifier
documentIdentifier =
  DocumentIdentifier'
    { _diDocumentType = Nothing,
      _diPlatformTypes = Nothing,
      _diTargetType = Nothing,
      _diRequires = Nothing,
      _diVersionName = Nothing,
      _diAuthor = Nothing,
      _diName = Nothing,
      _diDocumentFormat = Nothing,
      _diTags = Nothing,
      _diOwner = Nothing,
      _diReviewStatus = Nothing,
      _diSchemaVersion = Nothing,
      _diDocumentVersion = Nothing
    }

-- | The document type.
diDocumentType :: Lens' DocumentIdentifier (Maybe DocumentType)
diDocumentType = lens _diDocumentType (\s a -> s {_diDocumentType = a})

-- | The operating system platform.
diPlatformTypes :: Lens' DocumentIdentifier [PlatformType]
diPlatformTypes = lens _diPlatformTypes (\s a -> s {_diPlatformTypes = a}) . _Default . _Coerce

-- | The target type which defines the kinds of resources the document can run on. For example, /AWS::EC2::Instance. For a list of valid resource types, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS resource and property types reference> in the /AWS CloudFormation User Guide/ .
diTargetType :: Lens' DocumentIdentifier (Maybe Text)
diTargetType = lens _diTargetType (\s a -> s {_diTargetType = a})

-- | A list of SSM documents required by a document. For example, an @ApplicationConfiguration@ document requires an @ApplicationConfigurationSchema@ document.
diRequires :: Lens' DocumentIdentifier (Maybe (NonEmpty DocumentRequires))
diRequires = lens _diRequires (\s a -> s {_diRequires = a}) . mapping _List1

-- | An optional field specifying the version of the artifact associated with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
diVersionName :: Lens' DocumentIdentifier (Maybe Text)
diVersionName = lens _diVersionName (\s a -> s {_diVersionName = a})

-- | The user in your organization who created the document.
diAuthor :: Lens' DocumentIdentifier (Maybe Text)
diAuthor = lens _diAuthor (\s a -> s {_diAuthor = a})

-- | The name of the Systems Manager document.
diName :: Lens' DocumentIdentifier (Maybe Text)
diName = lens _diName (\s a -> s {_diName = a})

-- | The document format, either JSON or YAML.
diDocumentFormat :: Lens' DocumentIdentifier (Maybe DocumentFormat)
diDocumentFormat = lens _diDocumentFormat (\s a -> s {_diDocumentFormat = a})

-- | The tags, or metadata, that have been applied to the document.
diTags :: Lens' DocumentIdentifier [Tag]
diTags = lens _diTags (\s a -> s {_diTags = a}) . _Default . _Coerce

-- | The AWS user account that created the document.
diOwner :: Lens' DocumentIdentifier (Maybe Text)
diOwner = lens _diOwner (\s a -> s {_diOwner = a})

-- | The current status of a document review.
diReviewStatus :: Lens' DocumentIdentifier (Maybe ReviewStatus)
diReviewStatus = lens _diReviewStatus (\s a -> s {_diReviewStatus = a})

-- | The schema version.
diSchemaVersion :: Lens' DocumentIdentifier (Maybe Text)
diSchemaVersion = lens _diSchemaVersion (\s a -> s {_diSchemaVersion = a})

-- | The document version.
diDocumentVersion :: Lens' DocumentIdentifier (Maybe Text)
diDocumentVersion = lens _diDocumentVersion (\s a -> s {_diDocumentVersion = a})

instance FromJSON DocumentIdentifier where
  parseJSON =
    withObject
      "DocumentIdentifier"
      ( \x ->
          DocumentIdentifier'
            <$> (x .:? "DocumentType")
            <*> (x .:? "PlatformTypes" .!= mempty)
            <*> (x .:? "TargetType")
            <*> (x .:? "Requires")
            <*> (x .:? "VersionName")
            <*> (x .:? "Author")
            <*> (x .:? "Name")
            <*> (x .:? "DocumentFormat")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "Owner")
            <*> (x .:? "ReviewStatus")
            <*> (x .:? "SchemaVersion")
            <*> (x .:? "DocumentVersion")
      )

instance Hashable DocumentIdentifier

instance NFData DocumentIdentifier
