{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentVersionInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentVersionInfo where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.DocumentFormat
import Network.AWS.SSM.Types.DocumentStatus
import Network.AWS.SSM.Types.ReviewStatus

-- | Version information about the document.
--
--
--
-- /See:/ 'documentVersionInfo' smart constructor.
data DocumentVersionInfo = DocumentVersionInfo'
  { _dviStatus ::
      !(Maybe DocumentStatus),
    _dviCreatedDate ::
      !(Maybe POSIX),
    _dviStatusInformation ::
      !(Maybe Text),
    _dviVersionName ::
      !(Maybe Text),
    _dviName :: !(Maybe Text),
    _dviDocumentFormat ::
      !(Maybe DocumentFormat),
    _dviReviewStatus ::
      !(Maybe ReviewStatus),
    _dviIsDefaultVersion ::
      !(Maybe Bool),
    _dviDocumentVersion ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentVersionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dviStatus' - The status of the Systems Manager document, such as @Creating@ , @Active@ , @Failed@ , and @Deleting@ .
--
-- * 'dviCreatedDate' - The date the document was created.
--
-- * 'dviStatusInformation' - A message returned by AWS Systems Manager that explains the @Status@ value. For example, a @Failed@ status might be explained by the @StatusInformation@ message, "The specified S3 bucket does not exist. Verify that the URL of the S3 bucket is correct."
--
-- * 'dviVersionName' - The version of the artifact associated with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
--
-- * 'dviName' - The document name.
--
-- * 'dviDocumentFormat' - The document format, either JSON or YAML.
--
-- * 'dviReviewStatus' - The current status of the approval review for the latest version of the document.
--
-- * 'dviIsDefaultVersion' - An identifier for the default version of the document.
--
-- * 'dviDocumentVersion' - The document version.
documentVersionInfo ::
  DocumentVersionInfo
documentVersionInfo =
  DocumentVersionInfo'
    { _dviStatus = Nothing,
      _dviCreatedDate = Nothing,
      _dviStatusInformation = Nothing,
      _dviVersionName = Nothing,
      _dviName = Nothing,
      _dviDocumentFormat = Nothing,
      _dviReviewStatus = Nothing,
      _dviIsDefaultVersion = Nothing,
      _dviDocumentVersion = Nothing
    }

-- | The status of the Systems Manager document, such as @Creating@ , @Active@ , @Failed@ , and @Deleting@ .
dviStatus :: Lens' DocumentVersionInfo (Maybe DocumentStatus)
dviStatus = lens _dviStatus (\s a -> s {_dviStatus = a})

-- | The date the document was created.
dviCreatedDate :: Lens' DocumentVersionInfo (Maybe UTCTime)
dviCreatedDate = lens _dviCreatedDate (\s a -> s {_dviCreatedDate = a}) . mapping _Time

-- | A message returned by AWS Systems Manager that explains the @Status@ value. For example, a @Failed@ status might be explained by the @StatusInformation@ message, "The specified S3 bucket does not exist. Verify that the URL of the S3 bucket is correct."
dviStatusInformation :: Lens' DocumentVersionInfo (Maybe Text)
dviStatusInformation = lens _dviStatusInformation (\s a -> s {_dviStatusInformation = a})

-- | The version of the artifact associated with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
dviVersionName :: Lens' DocumentVersionInfo (Maybe Text)
dviVersionName = lens _dviVersionName (\s a -> s {_dviVersionName = a})

-- | The document name.
dviName :: Lens' DocumentVersionInfo (Maybe Text)
dviName = lens _dviName (\s a -> s {_dviName = a})

-- | The document format, either JSON or YAML.
dviDocumentFormat :: Lens' DocumentVersionInfo (Maybe DocumentFormat)
dviDocumentFormat = lens _dviDocumentFormat (\s a -> s {_dviDocumentFormat = a})

-- | The current status of the approval review for the latest version of the document.
dviReviewStatus :: Lens' DocumentVersionInfo (Maybe ReviewStatus)
dviReviewStatus = lens _dviReviewStatus (\s a -> s {_dviReviewStatus = a})

-- | An identifier for the default version of the document.
dviIsDefaultVersion :: Lens' DocumentVersionInfo (Maybe Bool)
dviIsDefaultVersion = lens _dviIsDefaultVersion (\s a -> s {_dviIsDefaultVersion = a})

-- | The document version.
dviDocumentVersion :: Lens' DocumentVersionInfo (Maybe Text)
dviDocumentVersion = lens _dviDocumentVersion (\s a -> s {_dviDocumentVersion = a})

instance FromJSON DocumentVersionInfo where
  parseJSON =
    withObject
      "DocumentVersionInfo"
      ( \x ->
          DocumentVersionInfo'
            <$> (x .:? "Status")
            <*> (x .:? "CreatedDate")
            <*> (x .:? "StatusInformation")
            <*> (x .:? "VersionName")
            <*> (x .:? "Name")
            <*> (x .:? "DocumentFormat")
            <*> (x .:? "ReviewStatus")
            <*> (x .:? "IsDefaultVersion")
            <*> (x .:? "DocumentVersion")
      )

instance Hashable DocumentVersionInfo

instance NFData DocumentVersionInfo
