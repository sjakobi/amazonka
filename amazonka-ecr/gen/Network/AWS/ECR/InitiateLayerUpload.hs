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
-- Module      : Network.AWS.ECR.InitiateLayerUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notifies Amazon ECR that you intend to upload an image layer.
--
--
-- When an image is pushed, the InitiateLayerUpload API is called once per image layer that has not already been uploaded. Whether or not an image layer has been uploaded is determined by the BatchCheckLayerAvailability API action.
module Network.AWS.ECR.InitiateLayerUpload
  ( -- * Creating a Request
    initiateLayerUpload,
    InitiateLayerUpload,

    -- * Request Lenses
    iluRegistryId,
    iluRepositoryName,

    -- * Destructuring the Response
    initiateLayerUploadResponse,
    InitiateLayerUploadResponse,

    -- * Response Lenses
    ilurrsUploadId,
    ilurrsPartSize,
    ilurrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'initiateLayerUpload' smart constructor.
data InitiateLayerUpload = InitiateLayerUpload'
  { _iluRegistryId ::
      !(Maybe Text),
    _iluRepositoryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InitiateLayerUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iluRegistryId' - The AWS account ID associated with the registry to which you intend to upload layers. If you do not specify a registry, the default registry is assumed.
--
-- * 'iluRepositoryName' - The name of the repository to which you intend to upload layers.
initiateLayerUpload ::
  -- | 'iluRepositoryName'
  Text ->
  InitiateLayerUpload
initiateLayerUpload pRepositoryName_ =
  InitiateLayerUpload'
    { _iluRegistryId = Nothing,
      _iluRepositoryName = pRepositoryName_
    }

-- | The AWS account ID associated with the registry to which you intend to upload layers. If you do not specify a registry, the default registry is assumed.
iluRegistryId :: Lens' InitiateLayerUpload (Maybe Text)
iluRegistryId = lens _iluRegistryId (\s a -> s {_iluRegistryId = a})

-- | The name of the repository to which you intend to upload layers.
iluRepositoryName :: Lens' InitiateLayerUpload Text
iluRepositoryName = lens _iluRepositoryName (\s a -> s {_iluRepositoryName = a})

instance AWSRequest InitiateLayerUpload where
  type
    Rs InitiateLayerUpload =
      InitiateLayerUploadResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          InitiateLayerUploadResponse'
            <$> (x .?> "uploadId")
            <*> (x .?> "partSize")
            <*> (pure (fromEnum s))
      )

instance Hashable InitiateLayerUpload

instance NFData InitiateLayerUpload

instance ToHeaders InitiateLayerUpload where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.InitiateLayerUpload" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON InitiateLayerUpload where
  toJSON InitiateLayerUpload' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _iluRegistryId,
            Just ("repositoryName" .= _iluRepositoryName)
          ]
      )

instance ToPath InitiateLayerUpload where
  toPath = const "/"

instance ToQuery InitiateLayerUpload where
  toQuery = const mempty

-- | /See:/ 'initiateLayerUploadResponse' smart constructor.
data InitiateLayerUploadResponse = InitiateLayerUploadResponse'
  { _ilurrsUploadId ::
      !(Maybe Text),
    _ilurrsPartSize ::
      !(Maybe Nat),
    _ilurrsResponseStatus ::
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

-- | Creates a value of 'InitiateLayerUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilurrsUploadId' - The upload ID for the layer upload. This parameter is passed to further 'UploadLayerPart' and 'CompleteLayerUpload' operations.
--
-- * 'ilurrsPartSize' - The size, in bytes, that Amazon ECR expects future layer part uploads to be.
--
-- * 'ilurrsResponseStatus' - -- | The response status code.
initiateLayerUploadResponse ::
  -- | 'ilurrsResponseStatus'
  Int ->
  InitiateLayerUploadResponse
initiateLayerUploadResponse pResponseStatus_ =
  InitiateLayerUploadResponse'
    { _ilurrsUploadId =
        Nothing,
      _ilurrsPartSize = Nothing,
      _ilurrsResponseStatus = pResponseStatus_
    }

-- | The upload ID for the layer upload. This parameter is passed to further 'UploadLayerPart' and 'CompleteLayerUpload' operations.
ilurrsUploadId :: Lens' InitiateLayerUploadResponse (Maybe Text)
ilurrsUploadId = lens _ilurrsUploadId (\s a -> s {_ilurrsUploadId = a})

-- | The size, in bytes, that Amazon ECR expects future layer part uploads to be.
ilurrsPartSize :: Lens' InitiateLayerUploadResponse (Maybe Natural)
ilurrsPartSize = lens _ilurrsPartSize (\s a -> s {_ilurrsPartSize = a}) . mapping _Nat

-- | -- | The response status code.
ilurrsResponseStatus :: Lens' InitiateLayerUploadResponse Int
ilurrsResponseStatus = lens _ilurrsResponseStatus (\s a -> s {_ilurrsResponseStatus = a})

instance NFData InitiateLayerUploadResponse
