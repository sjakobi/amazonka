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
-- Module      : Network.AWS.SSM.ListDocumentMetadataHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Information about approval reviews for a version of an SSM document.
module Network.AWS.SSM.ListDocumentMetadataHistory
  ( -- * Creating a Request
    listDocumentMetadataHistory,
    ListDocumentMetadataHistory,

    -- * Request Lenses
    ldmhNextToken,
    ldmhMaxResults,
    ldmhDocumentVersion,
    ldmhName,
    ldmhMetadata,

    -- * Destructuring the Response
    listDocumentMetadataHistoryResponse,
    ListDocumentMetadataHistoryResponse,

    -- * Response Lenses
    ldmhrrsNextToken,
    ldmhrrsAuthor,
    ldmhrrsMetadata,
    ldmhrrsName,
    ldmhrrsDocumentVersion,
    ldmhrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listDocumentMetadataHistory' smart constructor.
data ListDocumentMetadataHistory = ListDocumentMetadataHistory'
  { _ldmhNextToken ::
      !(Maybe Text),
    _ldmhMaxResults ::
      !(Maybe Nat),
    _ldmhDocumentVersion ::
      !(Maybe Text),
    _ldmhName ::
      !Text,
    _ldmhMetadata ::
      !DocumentMetadataEnum
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListDocumentMetadataHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldmhNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'ldmhMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'ldmhDocumentVersion' - The version of the document.
--
-- * 'ldmhName' - The name of the document.
--
-- * 'ldmhMetadata' - The type of data for which details are being requested. Currently, the only supported value is @DocumentReviews@ .
listDocumentMetadataHistory ::
  -- | 'ldmhName'
  Text ->
  -- | 'ldmhMetadata'
  DocumentMetadataEnum ->
  ListDocumentMetadataHistory
listDocumentMetadataHistory pName_ pMetadata_ =
  ListDocumentMetadataHistory'
    { _ldmhNextToken =
        Nothing,
      _ldmhMaxResults = Nothing,
      _ldmhDocumentVersion = Nothing,
      _ldmhName = pName_,
      _ldmhMetadata = pMetadata_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
ldmhNextToken :: Lens' ListDocumentMetadataHistory (Maybe Text)
ldmhNextToken = lens _ldmhNextToken (\s a -> s {_ldmhNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
ldmhMaxResults :: Lens' ListDocumentMetadataHistory (Maybe Natural)
ldmhMaxResults = lens _ldmhMaxResults (\s a -> s {_ldmhMaxResults = a}) . mapping _Nat

-- | The version of the document.
ldmhDocumentVersion :: Lens' ListDocumentMetadataHistory (Maybe Text)
ldmhDocumentVersion = lens _ldmhDocumentVersion (\s a -> s {_ldmhDocumentVersion = a})

-- | The name of the document.
ldmhName :: Lens' ListDocumentMetadataHistory Text
ldmhName = lens _ldmhName (\s a -> s {_ldmhName = a})

-- | The type of data for which details are being requested. Currently, the only supported value is @DocumentReviews@ .
ldmhMetadata :: Lens' ListDocumentMetadataHistory DocumentMetadataEnum
ldmhMetadata = lens _ldmhMetadata (\s a -> s {_ldmhMetadata = a})

instance AWSRequest ListDocumentMetadataHistory where
  type
    Rs ListDocumentMetadataHistory =
      ListDocumentMetadataHistoryResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListDocumentMetadataHistoryResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Author")
            <*> (x .?> "Metadata")
            <*> (x .?> "Name")
            <*> (x .?> "DocumentVersion")
            <*> (pure (fromEnum s))
      )

instance Hashable ListDocumentMetadataHistory

instance NFData ListDocumentMetadataHistory

instance ToHeaders ListDocumentMetadataHistory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.ListDocumentMetadataHistory" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDocumentMetadataHistory where
  toJSON ListDocumentMetadataHistory' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ldmhNextToken,
            ("MaxResults" .=) <$> _ldmhMaxResults,
            ("DocumentVersion" .=) <$> _ldmhDocumentVersion,
            Just ("Name" .= _ldmhName),
            Just ("Metadata" .= _ldmhMetadata)
          ]
      )

instance ToPath ListDocumentMetadataHistory where
  toPath = const "/"

instance ToQuery ListDocumentMetadataHistory where
  toQuery = const mempty

-- | /See:/ 'listDocumentMetadataHistoryResponse' smart constructor.
data ListDocumentMetadataHistoryResponse = ListDocumentMetadataHistoryResponse'
  { _ldmhrrsNextToken ::
      !( Maybe
           Text
       ),
    _ldmhrrsAuthor ::
      !( Maybe
           Text
       ),
    _ldmhrrsMetadata ::
      !( Maybe
           DocumentMetadataResponseInfo
       ),
    _ldmhrrsName ::
      !( Maybe
           Text
       ),
    _ldmhrrsDocumentVersion ::
      !( Maybe
           Text
       ),
    _ldmhrrsResponseStatus ::
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

-- | Creates a value of 'ListDocumentMetadataHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldmhrrsNextToken' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'ldmhrrsAuthor' - The user ID of the person in the organization who requested the document review.
--
-- * 'ldmhrrsMetadata' - Information about the response to the document approval request.
--
-- * 'ldmhrrsName' - The name of the document.
--
-- * 'ldmhrrsDocumentVersion' - The version of the document.
--
-- * 'ldmhrrsResponseStatus' - -- | The response status code.
listDocumentMetadataHistoryResponse ::
  -- | 'ldmhrrsResponseStatus'
  Int ->
  ListDocumentMetadataHistoryResponse
listDocumentMetadataHistoryResponse pResponseStatus_ =
  ListDocumentMetadataHistoryResponse'
    { _ldmhrrsNextToken =
        Nothing,
      _ldmhrrsAuthor = Nothing,
      _ldmhrrsMetadata = Nothing,
      _ldmhrrsName = Nothing,
      _ldmhrrsDocumentVersion = Nothing,
      _ldmhrrsResponseStatus =
        pResponseStatus_
    }

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
ldmhrrsNextToken :: Lens' ListDocumentMetadataHistoryResponse (Maybe Text)
ldmhrrsNextToken = lens _ldmhrrsNextToken (\s a -> s {_ldmhrrsNextToken = a})

-- | The user ID of the person in the organization who requested the document review.
ldmhrrsAuthor :: Lens' ListDocumentMetadataHistoryResponse (Maybe Text)
ldmhrrsAuthor = lens _ldmhrrsAuthor (\s a -> s {_ldmhrrsAuthor = a})

-- | Information about the response to the document approval request.
ldmhrrsMetadata :: Lens' ListDocumentMetadataHistoryResponse (Maybe DocumentMetadataResponseInfo)
ldmhrrsMetadata = lens _ldmhrrsMetadata (\s a -> s {_ldmhrrsMetadata = a})

-- | The name of the document.
ldmhrrsName :: Lens' ListDocumentMetadataHistoryResponse (Maybe Text)
ldmhrrsName = lens _ldmhrrsName (\s a -> s {_ldmhrrsName = a})

-- | The version of the document.
ldmhrrsDocumentVersion :: Lens' ListDocumentMetadataHistoryResponse (Maybe Text)
ldmhrrsDocumentVersion = lens _ldmhrrsDocumentVersion (\s a -> s {_ldmhrrsDocumentVersion = a})

-- | -- | The response status code.
ldmhrrsResponseStatus :: Lens' ListDocumentMetadataHistoryResponse Int
ldmhrrsResponseStatus = lens _ldmhrrsResponseStatus (\s a -> s {_ldmhrrsResponseStatus = a})

instance NFData ListDocumentMetadataHistoryResponse
