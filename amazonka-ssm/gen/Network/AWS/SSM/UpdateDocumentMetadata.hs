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
-- Module      : Network.AWS.SSM.UpdateDocumentMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information related to approval reviews for a specific version of a document.
module Network.AWS.SSM.UpdateDocumentMetadata
  ( -- * Creating a Request
    updateDocumentMetadata,
    UpdateDocumentMetadata,

    -- * Request Lenses
    udmDocumentVersion,
    udmName,
    udmDocumentReviews,

    -- * Destructuring the Response
    updateDocumentMetadataResponse,
    UpdateDocumentMetadataResponse,

    -- * Response Lenses
    udmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'updateDocumentMetadata' smart constructor.
data UpdateDocumentMetadata = UpdateDocumentMetadata'
  { _udmDocumentVersion ::
      !(Maybe Text),
    _udmName :: !Text,
    _udmDocumentReviews ::
      !DocumentReviews
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateDocumentMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udmDocumentVersion' - The version of a document to update.
--
-- * 'udmName' - The name of the document for which a version is to be updated.
--
-- * 'udmDocumentReviews' - The document review details to update.
updateDocumentMetadata ::
  -- | 'udmName'
  Text ->
  -- | 'udmDocumentReviews'
  DocumentReviews ->
  UpdateDocumentMetadata
updateDocumentMetadata pName_ pDocumentReviews_ =
  UpdateDocumentMetadata'
    { _udmDocumentVersion =
        Nothing,
      _udmName = pName_,
      _udmDocumentReviews = pDocumentReviews_
    }

-- | The version of a document to update.
udmDocumentVersion :: Lens' UpdateDocumentMetadata (Maybe Text)
udmDocumentVersion = lens _udmDocumentVersion (\s a -> s {_udmDocumentVersion = a})

-- | The name of the document for which a version is to be updated.
udmName :: Lens' UpdateDocumentMetadata Text
udmName = lens _udmName (\s a -> s {_udmName = a})

-- | The document review details to update.
udmDocumentReviews :: Lens' UpdateDocumentMetadata DocumentReviews
udmDocumentReviews = lens _udmDocumentReviews (\s a -> s {_udmDocumentReviews = a})

instance AWSRequest UpdateDocumentMetadata where
  type
    Rs UpdateDocumentMetadata =
      UpdateDocumentMetadataResponse
  request = postJSON ssm
  response =
    receiveEmpty
      ( \s h x ->
          UpdateDocumentMetadataResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable UpdateDocumentMetadata

instance NFData UpdateDocumentMetadata

instance ToHeaders UpdateDocumentMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.UpdateDocumentMetadata" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDocumentMetadata where
  toJSON UpdateDocumentMetadata' {..} =
    object
      ( catMaybes
          [ ("DocumentVersion" .=) <$> _udmDocumentVersion,
            Just ("Name" .= _udmName),
            Just ("DocumentReviews" .= _udmDocumentReviews)
          ]
      )

instance ToPath UpdateDocumentMetadata where
  toPath = const "/"

instance ToQuery UpdateDocumentMetadata where
  toQuery = const mempty

-- | /See:/ 'updateDocumentMetadataResponse' smart constructor.
newtype UpdateDocumentMetadataResponse = UpdateDocumentMetadataResponse'
  { _udmrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateDocumentMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udmrrsResponseStatus' - -- | The response status code.
updateDocumentMetadataResponse ::
  -- | 'udmrrsResponseStatus'
  Int ->
  UpdateDocumentMetadataResponse
updateDocumentMetadataResponse pResponseStatus_ =
  UpdateDocumentMetadataResponse'
    { _udmrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
udmrrsResponseStatus :: Lens' UpdateDocumentMetadataResponse Int
udmrrsResponseStatus = lens _udmrrsResponseStatus (\s a -> s {_udmrrsResponseStatus = a})

instance NFData UpdateDocumentMetadataResponse
