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
-- Module      : Network.AWS.MediaStoreData.PutObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.
module Network.AWS.MediaStoreData.PutObject
  ( -- * Creating a Request
    putObject,
    PutObject,

    -- * Request Lenses
    poContentType,
    poStorageClass,
    poCacheControl,
    poUploadAvailability,
    poPath,
    poBody,

    -- * Destructuring the Response
    putObjectResponse,
    PutObjectResponse,

    -- * Response Lenses
    porrsETag,
    porrsContentSHA256,
    porrsStorageClass,
    porrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaStoreData.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putObject' smart constructor.
data PutObject = PutObject'
  { _poContentType ::
      !(Maybe Text),
    _poStorageClass :: !(Maybe StorageClass),
    _poCacheControl :: !(Maybe Text),
    _poUploadAvailability ::
      !(Maybe UploadAvailability),
    _poPath :: !Text,
    _poBody :: !HashedBody
  }
  deriving (Show, Generic)

-- | Creates a value of 'PutObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poContentType' - The content type of the object.
--
-- * 'poStorageClass' - Indicates the storage class of a @Put@ request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.
--
-- * 'poCacheControl' - An optional @CacheControl@ header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9 https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9> . Headers with a custom user-defined value are also accepted.
--
-- * 'poUploadAvailability' - Indicates the availability of an object while it is still uploading. If the value is set to @streaming@ , the object is available for downloading after some initial buffering but before the object is uploaded completely. If the value is set to @standard@ , the object is available for downloading only when it is uploaded completely. The default value for this header is @standard@ . To use this header, you must also set the HTTP @Transfer-Encoding@ header to @chunked@ .
--
-- * 'poPath' - The path (including the file name) where the object is stored in the container. Format: <folder name>/<folder name>/<file name> For example, to upload the file @mlaw.avi@ to the folder path @premium\canada@ in the container @movies@ , enter the path @premium/canada/mlaw.avi@ . Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing @premium/usa@ subfolder. If you specify @premium/canada@ , the service creates a @canada@ subfolder in the @premium@ folder. You then have two subfolders, @usa@ and @canada@ , in the @premium@ folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the <http://docs.aws.amazon.com/mediastore/latest/ug/ AWS Elemental MediaStore User Guide> . The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.
--
-- * 'poBody' - The bytes to be stored.
putObject ::
  -- | 'poPath'
  Text ->
  -- | 'poBody'
  HashedBody ->
  PutObject
putObject pPath_ pBody_ =
  PutObject'
    { _poContentType = Nothing,
      _poStorageClass = Nothing,
      _poCacheControl = Nothing,
      _poUploadAvailability = Nothing,
      _poPath = pPath_,
      _poBody = pBody_
    }

-- | The content type of the object.
poContentType :: Lens' PutObject (Maybe Text)
poContentType = lens _poContentType (\s a -> s {_poContentType = a})

-- | Indicates the storage class of a @Put@ request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.
poStorageClass :: Lens' PutObject (Maybe StorageClass)
poStorageClass = lens _poStorageClass (\s a -> s {_poStorageClass = a})

-- | An optional @CacheControl@ header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9 https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9> . Headers with a custom user-defined value are also accepted.
poCacheControl :: Lens' PutObject (Maybe Text)
poCacheControl = lens _poCacheControl (\s a -> s {_poCacheControl = a})

-- | Indicates the availability of an object while it is still uploading. If the value is set to @streaming@ , the object is available for downloading after some initial buffering but before the object is uploaded completely. If the value is set to @standard@ , the object is available for downloading only when it is uploaded completely. The default value for this header is @standard@ . To use this header, you must also set the HTTP @Transfer-Encoding@ header to @chunked@ .
poUploadAvailability :: Lens' PutObject (Maybe UploadAvailability)
poUploadAvailability = lens _poUploadAvailability (\s a -> s {_poUploadAvailability = a})

-- | The path (including the file name) where the object is stored in the container. Format: <folder name>/<folder name>/<file name> For example, to upload the file @mlaw.avi@ to the folder path @premium\canada@ in the container @movies@ , enter the path @premium/canada/mlaw.avi@ . Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing @premium/usa@ subfolder. If you specify @premium/canada@ , the service creates a @canada@ subfolder in the @premium@ folder. You then have two subfolders, @usa@ and @canada@ , in the @premium@ folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the <http://docs.aws.amazon.com/mediastore/latest/ug/ AWS Elemental MediaStore User Guide> . The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.
poPath :: Lens' PutObject Text
poPath = lens _poPath (\s a -> s {_poPath = a})

-- | The bytes to be stored.
poBody :: Lens' PutObject HashedBody
poBody = lens _poBody (\s a -> s {_poBody = a})

instance AWSRequest PutObject where
  type Rs PutObject = PutObjectResponse
  request = putBody mediaStoreData
  response =
    receiveJSON
      ( \s h x ->
          PutObjectResponse'
            <$> (x .?> "ETag")
            <*> (x .?> "ContentSHA256")
            <*> (x .?> "StorageClass")
            <*> (pure (fromEnum s))
      )

instance ToBody PutObject where
  toBody = toBody . _poBody

instance ToHeaders PutObject where
  toHeaders PutObject' {..} =
    mconcat
      [ "Content-Type" =# _poContentType,
        "x-amz-storage-class" =# _poStorageClass,
        "Cache-Control" =# _poCacheControl,
        "x-amz-upload-availability" =# _poUploadAvailability
      ]

instance ToPath PutObject where
  toPath PutObject' {..} = mconcat ["/", toBS _poPath]

instance ToQuery PutObject where
  toQuery = const mempty

-- | /See:/ 'putObjectResponse' smart constructor.
data PutObjectResponse = PutObjectResponse'
  { _porrsETag ::
      !(Maybe Text),
    _porrsContentSHA256 ::
      !(Maybe Text),
    _porrsStorageClass ::
      !(Maybe StorageClass),
    _porrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutObjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'porrsETag' - Unique identifier of the object in the container.
--
-- * 'porrsContentSHA256' - The SHA256 digest of the object that is persisted.
--
-- * 'porrsStorageClass' - The storage class where the object was persisted. The class should be “Temporal”.
--
-- * 'porrsResponseStatus' - -- | The response status code.
putObjectResponse ::
  -- | 'porrsResponseStatus'
  Int ->
  PutObjectResponse
putObjectResponse pResponseStatus_ =
  PutObjectResponse'
    { _porrsETag = Nothing,
      _porrsContentSHA256 = Nothing,
      _porrsStorageClass = Nothing,
      _porrsResponseStatus = pResponseStatus_
    }

-- | Unique identifier of the object in the container.
porrsETag :: Lens' PutObjectResponse (Maybe Text)
porrsETag = lens _porrsETag (\s a -> s {_porrsETag = a})

-- | The SHA256 digest of the object that is persisted.
porrsContentSHA256 :: Lens' PutObjectResponse (Maybe Text)
porrsContentSHA256 = lens _porrsContentSHA256 (\s a -> s {_porrsContentSHA256 = a})

-- | The storage class where the object was persisted. The class should be “Temporal”.
porrsStorageClass :: Lens' PutObjectResponse (Maybe StorageClass)
porrsStorageClass = lens _porrsStorageClass (\s a -> s {_porrsStorageClass = a})

-- | -- | The response status code.
porrsResponseStatus :: Lens' PutObjectResponse Int
porrsResponseStatus = lens _porrsResponseStatus (\s a -> s {_porrsResponseStatus = a})

instance NFData PutObjectResponse
