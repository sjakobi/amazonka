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
-- Module      : Network.AWS.CodeCommit.GetBlob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the base-64 encoded content of an individual blob in a repository.
module Network.AWS.CodeCommit.GetBlob
  ( -- * Creating a Request
    getBlob,
    GetBlob,

    -- * Request Lenses
    gbRepositoryName,
    gbBlobId,

    -- * Destructuring the Response
    getBlobResponse,
    GetBlobResponse,

    -- * Response Lenses
    gbrrsResponseStatus,
    gbrrsContent,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a get blob operation.
--
--
--
-- /See:/ 'getBlob' smart constructor.
data GetBlob = GetBlob'
  { _gbRepositoryName :: !Text,
    _gbBlobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBlob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbRepositoryName' - The name of the repository that contains the blob.
--
-- * 'gbBlobId' - The ID of the blob, which is its SHA-1 pointer.
getBlob ::
  -- | 'gbRepositoryName'
  Text ->
  -- | 'gbBlobId'
  Text ->
  GetBlob
getBlob pRepositoryName_ pBlobId_ =
  GetBlob'
    { _gbRepositoryName = pRepositoryName_,
      _gbBlobId = pBlobId_
    }

-- | The name of the repository that contains the blob.
gbRepositoryName :: Lens' GetBlob Text
gbRepositoryName = lens _gbRepositoryName (\s a -> s {_gbRepositoryName = a})

-- | The ID of the blob, which is its SHA-1 pointer.
gbBlobId :: Lens' GetBlob Text
gbBlobId = lens _gbBlobId (\s a -> s {_gbBlobId = a})

instance AWSRequest GetBlob where
  type Rs GetBlob = GetBlobResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetBlobResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "content")
      )

instance Hashable GetBlob

instance NFData GetBlob

instance ToHeaders GetBlob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeCommit_20150413.GetBlob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetBlob where
  toJSON GetBlob' {..} =
    object
      ( catMaybes
          [ Just ("repositoryName" .= _gbRepositoryName),
            Just ("blobId" .= _gbBlobId)
          ]
      )

instance ToPath GetBlob where
  toPath = const "/"

instance ToQuery GetBlob where
  toQuery = const mempty

-- | Represents the output of a get blob operation.
--
--
--
-- /See:/ 'getBlobResponse' smart constructor.
data GetBlobResponse = GetBlobResponse'
  { _gbrrsResponseStatus ::
      !Int,
    _gbrrsContent :: !Base64
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBlobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbrrsResponseStatus' - -- | The response status code.
--
-- * 'gbrrsContent' - The content of the blob, usually a file.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
getBlobResponse ::
  -- | 'gbrrsResponseStatus'
  Int ->
  -- | 'gbrrsContent'
  ByteString ->
  GetBlobResponse
getBlobResponse pResponseStatus_ pContent_ =
  GetBlobResponse'
    { _gbrrsResponseStatus =
        pResponseStatus_,
      _gbrrsContent = _Base64 # pContent_
    }

-- | -- | The response status code.
gbrrsResponseStatus :: Lens' GetBlobResponse Int
gbrrsResponseStatus = lens _gbrrsResponseStatus (\s a -> s {_gbrrsResponseStatus = a})

-- | The content of the blob, usually a file.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
gbrrsContent :: Lens' GetBlobResponse ByteString
gbrrsContent = lens _gbrrsContent (\s a -> s {_gbrrsContent = a}) . _Base64

instance NFData GetBlobResponse
