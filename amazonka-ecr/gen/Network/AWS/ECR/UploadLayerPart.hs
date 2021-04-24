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
-- Module      : Network.AWS.ECR.UploadLayerPart
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an image layer part to Amazon ECR.
--
--
-- When an image is pushed, each new image layer is uploaded in parts. The maximum size of each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API is called once per each new image layer part.
module Network.AWS.ECR.UploadLayerPart
  ( -- * Creating a Request
    uploadLayerPart,
    UploadLayerPart,

    -- * Request Lenses
    ulpRegistryId,
    ulpRepositoryName,
    ulpUploadId,
    ulpPartFirstByte,
    ulpPartLastByte,
    ulpLayerPartBlob,

    -- * Destructuring the Response
    uploadLayerPartResponse,
    UploadLayerPartResponse,

    -- * Response Lenses
    ulprrsUploadId,
    ulprrsRegistryId,
    ulprrsRepositoryName,
    ulprrsLastByteReceived,
    ulprrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'uploadLayerPart' smart constructor.
data UploadLayerPart = UploadLayerPart'
  { _ulpRegistryId ::
      !(Maybe Text),
    _ulpRepositoryName :: !Text,
    _ulpUploadId :: !Text,
    _ulpPartFirstByte :: !Nat,
    _ulpPartLastByte :: !Nat,
    _ulpLayerPartBlob :: !Base64
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UploadLayerPart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulpRegistryId' - The AWS account ID associated with the registry to which you are uploading layer parts. If you do not specify a registry, the default registry is assumed.
--
-- * 'ulpRepositoryName' - The name of the repository to which you are uploading layer parts.
--
-- * 'ulpUploadId' - The upload ID from a previous 'InitiateLayerUpload' operation to associate with the layer part upload.
--
-- * 'ulpPartFirstByte' - The position of the first byte of the layer part witin the overall image layer.
--
-- * 'ulpPartLastByte' - The position of the last byte of the layer part within the overall image layer.
--
-- * 'ulpLayerPartBlob' - The base64-encoded layer part payload.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
uploadLayerPart ::
  -- | 'ulpRepositoryName'
  Text ->
  -- | 'ulpUploadId'
  Text ->
  -- | 'ulpPartFirstByte'
  Natural ->
  -- | 'ulpPartLastByte'
  Natural ->
  -- | 'ulpLayerPartBlob'
  ByteString ->
  UploadLayerPart
uploadLayerPart
  pRepositoryName_
  pUploadId_
  pPartFirstByte_
  pPartLastByte_
  pLayerPartBlob_ =
    UploadLayerPart'
      { _ulpRegistryId = Nothing,
        _ulpRepositoryName = pRepositoryName_,
        _ulpUploadId = pUploadId_,
        _ulpPartFirstByte = _Nat # pPartFirstByte_,
        _ulpPartLastByte = _Nat # pPartLastByte_,
        _ulpLayerPartBlob = _Base64 # pLayerPartBlob_
      }

-- | The AWS account ID associated with the registry to which you are uploading layer parts. If you do not specify a registry, the default registry is assumed.
ulpRegistryId :: Lens' UploadLayerPart (Maybe Text)
ulpRegistryId = lens _ulpRegistryId (\s a -> s {_ulpRegistryId = a})

-- | The name of the repository to which you are uploading layer parts.
ulpRepositoryName :: Lens' UploadLayerPart Text
ulpRepositoryName = lens _ulpRepositoryName (\s a -> s {_ulpRepositoryName = a})

-- | The upload ID from a previous 'InitiateLayerUpload' operation to associate with the layer part upload.
ulpUploadId :: Lens' UploadLayerPart Text
ulpUploadId = lens _ulpUploadId (\s a -> s {_ulpUploadId = a})

-- | The position of the first byte of the layer part witin the overall image layer.
ulpPartFirstByte :: Lens' UploadLayerPart Natural
ulpPartFirstByte = lens _ulpPartFirstByte (\s a -> s {_ulpPartFirstByte = a}) . _Nat

-- | The position of the last byte of the layer part within the overall image layer.
ulpPartLastByte :: Lens' UploadLayerPart Natural
ulpPartLastByte = lens _ulpPartLastByte (\s a -> s {_ulpPartLastByte = a}) . _Nat

-- | The base64-encoded layer part payload.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
ulpLayerPartBlob :: Lens' UploadLayerPart ByteString
ulpLayerPartBlob = lens _ulpLayerPartBlob (\s a -> s {_ulpLayerPartBlob = a}) . _Base64

instance AWSRequest UploadLayerPart where
  type Rs UploadLayerPart = UploadLayerPartResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          UploadLayerPartResponse'
            <$> (x .?> "uploadId")
            <*> (x .?> "registryId")
            <*> (x .?> "repositoryName")
            <*> (x .?> "lastByteReceived")
            <*> (pure (fromEnum s))
      )

instance Hashable UploadLayerPart

instance NFData UploadLayerPart

instance ToHeaders UploadLayerPart where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.UploadLayerPart" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UploadLayerPart where
  toJSON UploadLayerPart' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _ulpRegistryId,
            Just ("repositoryName" .= _ulpRepositoryName),
            Just ("uploadId" .= _ulpUploadId),
            Just ("partFirstByte" .= _ulpPartFirstByte),
            Just ("partLastByte" .= _ulpPartLastByte),
            Just ("layerPartBlob" .= _ulpLayerPartBlob)
          ]
      )

instance ToPath UploadLayerPart where
  toPath = const "/"

instance ToQuery UploadLayerPart where
  toQuery = const mempty

-- | /See:/ 'uploadLayerPartResponse' smart constructor.
data UploadLayerPartResponse = UploadLayerPartResponse'
  { _ulprrsUploadId ::
      !(Maybe Text),
    _ulprrsRegistryId ::
      !(Maybe Text),
    _ulprrsRepositoryName ::
      !(Maybe Text),
    _ulprrsLastByteReceived ::
      !(Maybe Nat),
    _ulprrsResponseStatus ::
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

-- | Creates a value of 'UploadLayerPartResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulprrsUploadId' - The upload ID associated with the request.
--
-- * 'ulprrsRegistryId' - The registry ID associated with the request.
--
-- * 'ulprrsRepositoryName' - The repository name associated with the request.
--
-- * 'ulprrsLastByteReceived' - The integer value of the last byte received in the request.
--
-- * 'ulprrsResponseStatus' - -- | The response status code.
uploadLayerPartResponse ::
  -- | 'ulprrsResponseStatus'
  Int ->
  UploadLayerPartResponse
uploadLayerPartResponse pResponseStatus_ =
  UploadLayerPartResponse'
    { _ulprrsUploadId = Nothing,
      _ulprrsRegistryId = Nothing,
      _ulprrsRepositoryName = Nothing,
      _ulprrsLastByteReceived = Nothing,
      _ulprrsResponseStatus = pResponseStatus_
    }

-- | The upload ID associated with the request.
ulprrsUploadId :: Lens' UploadLayerPartResponse (Maybe Text)
ulprrsUploadId = lens _ulprrsUploadId (\s a -> s {_ulprrsUploadId = a})

-- | The registry ID associated with the request.
ulprrsRegistryId :: Lens' UploadLayerPartResponse (Maybe Text)
ulprrsRegistryId = lens _ulprrsRegistryId (\s a -> s {_ulprrsRegistryId = a})

-- | The repository name associated with the request.
ulprrsRepositoryName :: Lens' UploadLayerPartResponse (Maybe Text)
ulprrsRepositoryName = lens _ulprrsRepositoryName (\s a -> s {_ulprrsRepositoryName = a})

-- | The integer value of the last byte received in the request.
ulprrsLastByteReceived :: Lens' UploadLayerPartResponse (Maybe Natural)
ulprrsLastByteReceived = lens _ulprrsLastByteReceived (\s a -> s {_ulprrsLastByteReceived = a}) . mapping _Nat

-- | -- | The response status code.
ulprrsResponseStatus :: Lens' UploadLayerPartResponse Int
ulprrsResponseStatus = lens _ulprrsResponseStatus (\s a -> s {_ulprrsResponseStatus = a})

instance NFData UploadLayerPartResponse
