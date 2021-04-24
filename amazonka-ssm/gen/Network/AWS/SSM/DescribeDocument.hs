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
-- Module      : Network.AWS.SSM.DescribeDocument
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified Systems Manager document.
module Network.AWS.SSM.DescribeDocument
  ( -- * Creating a Request
    describeDocument,
    DescribeDocument,

    -- * Request Lenses
    desVersionName,
    desDocumentVersion,
    desName,

    -- * Destructuring the Response
    describeDocumentResponse,
    DescribeDocumentResponse,

    -- * Response Lenses
    ddrrsDocument,
    ddrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeDocument' smart constructor.
data DescribeDocument = DescribeDocument'
  { _desVersionName ::
      !(Maybe Text),
    _desDocumentVersion :: !(Maybe Text),
    _desName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDocument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desVersionName' - An optional field specifying the version of the artifact associated with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
--
-- * 'desDocumentVersion' - The document version for which you want information. Can be a specific version or the default version.
--
-- * 'desName' - The name of the Systems Manager document.
describeDocument ::
  -- | 'desName'
  Text ->
  DescribeDocument
describeDocument pName_ =
  DescribeDocument'
    { _desVersionName = Nothing,
      _desDocumentVersion = Nothing,
      _desName = pName_
    }

-- | An optional field specifying the version of the artifact associated with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
desVersionName :: Lens' DescribeDocument (Maybe Text)
desVersionName = lens _desVersionName (\s a -> s {_desVersionName = a})

-- | The document version for which you want information. Can be a specific version or the default version.
desDocumentVersion :: Lens' DescribeDocument (Maybe Text)
desDocumentVersion = lens _desDocumentVersion (\s a -> s {_desDocumentVersion = a})

-- | The name of the Systems Manager document.
desName :: Lens' DescribeDocument Text
desName = lens _desName (\s a -> s {_desName = a})

instance AWSRequest DescribeDocument where
  type Rs DescribeDocument = DescribeDocumentResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeDocumentResponse'
            <$> (x .?> "Document") <*> (pure (fromEnum s))
      )

instance Hashable DescribeDocument

instance NFData DescribeDocument

instance ToHeaders DescribeDocument where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DescribeDocument" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDocument where
  toJSON DescribeDocument' {..} =
    object
      ( catMaybes
          [ ("VersionName" .=) <$> _desVersionName,
            ("DocumentVersion" .=) <$> _desDocumentVersion,
            Just ("Name" .= _desName)
          ]
      )

instance ToPath DescribeDocument where
  toPath = const "/"

instance ToQuery DescribeDocument where
  toQuery = const mempty

-- | /See:/ 'describeDocumentResponse' smart constructor.
data DescribeDocumentResponse = DescribeDocumentResponse'
  { _ddrrsDocument ::
      !( Maybe
           DocumentDescription
       ),
    _ddrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDocumentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrrsDocument' - Information about the Systems Manager document.
--
-- * 'ddrrsResponseStatus' - -- | The response status code.
describeDocumentResponse ::
  -- | 'ddrrsResponseStatus'
  Int ->
  DescribeDocumentResponse
describeDocumentResponse pResponseStatus_ =
  DescribeDocumentResponse'
    { _ddrrsDocument = Nothing,
      _ddrrsResponseStatus = pResponseStatus_
    }

-- | Information about the Systems Manager document.
ddrrsDocument :: Lens' DescribeDocumentResponse (Maybe DocumentDescription)
ddrrsDocument = lens _ddrrsDocument (\s a -> s {_ddrrsDocument = a})

-- | -- | The response status code.
ddrrsResponseStatus :: Lens' DescribeDocumentResponse Int
ddrrsResponseStatus = lens _ddrrsResponseStatus (\s a -> s {_ddrrsResponseStatus = a})

instance NFData DescribeDocumentResponse
