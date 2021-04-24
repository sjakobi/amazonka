{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AttachmentsSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AttachmentsSource where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AttachmentsSourceKey

-- | Identifying information about a document attachment, including the file name and a key-value pair that identifies the location of an attachment to a document.
--
--
--
-- /See:/ 'attachmentsSource' smart constructor.
data AttachmentsSource = AttachmentsSource'
  { _aKey ::
      !(Maybe AttachmentsSourceKey),
    _aValues :: !(Maybe (List1 Text)),
    _aName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AttachmentsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aKey' - The key of a key-value pair that identifies the location of an attachment to a document.
--
-- * 'aValues' - The value of a key-value pair that identifies the location of an attachment to a document. The format for __Value__ depends on the type of key you specify.     * For the key /SourceUrl/ , the value is an S3 bucket location. For example: @"Values": [ "s3://doc-example-bucket/my-folder" ]@      * For the key /S3FileUrl/ , the value is a file in an S3 bucket. For example: @"Values": [ "s3://doc-example-bucket/my-folder/my-file.py" ]@      * For the key /AttachmentReference/ , the value is constructed from the name of another SSM document in your account, a version number of that document, and a file attached to that document version that you want to reuse. For example: @"Values": [ "MyOtherDocument/3/my-other-file.py" ]@  However, if the SSM document is shared with you from another account, the full SSM document ARN must be specified instead of the document name only. For example: @"Values": [ "arn:aws:ssm:us-east-2:111122223333:document/OtherAccountDocument/3/their-file.py" ]@
--
-- * 'aName' - The name of the document attachment file.
attachmentsSource ::
  AttachmentsSource
attachmentsSource =
  AttachmentsSource'
    { _aKey = Nothing,
      _aValues = Nothing,
      _aName = Nothing
    }

-- | The key of a key-value pair that identifies the location of an attachment to a document.
aKey :: Lens' AttachmentsSource (Maybe AttachmentsSourceKey)
aKey = lens _aKey (\s a -> s {_aKey = a})

-- | The value of a key-value pair that identifies the location of an attachment to a document. The format for __Value__ depends on the type of key you specify.     * For the key /SourceUrl/ , the value is an S3 bucket location. For example: @"Values": [ "s3://doc-example-bucket/my-folder" ]@      * For the key /S3FileUrl/ , the value is a file in an S3 bucket. For example: @"Values": [ "s3://doc-example-bucket/my-folder/my-file.py" ]@      * For the key /AttachmentReference/ , the value is constructed from the name of another SSM document in your account, a version number of that document, and a file attached to that document version that you want to reuse. For example: @"Values": [ "MyOtherDocument/3/my-other-file.py" ]@  However, if the SSM document is shared with you from another account, the full SSM document ARN must be specified instead of the document name only. For example: @"Values": [ "arn:aws:ssm:us-east-2:111122223333:document/OtherAccountDocument/3/their-file.py" ]@
aValues :: Lens' AttachmentsSource (Maybe (NonEmpty Text))
aValues = lens _aValues (\s a -> s {_aValues = a}) . mapping _List1

-- | The name of the document attachment file.
aName :: Lens' AttachmentsSource (Maybe Text)
aName = lens _aName (\s a -> s {_aName = a})

instance Hashable AttachmentsSource

instance NFData AttachmentsSource

instance ToJSON AttachmentsSource where
  toJSON AttachmentsSource' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _aKey,
            ("Values" .=) <$> _aValues,
            ("Name" .=) <$> _aName
          ]
      )
