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
-- Module      : Network.AWS.ECR.CompleteLayerUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a @sha256@ digest of the image layer for data validation purposes.
--
--
-- When an image is pushed, the CompleteLayerUpload API is called once per each new image layer to verify that the upload has completed.
module Network.AWS.ECR.CompleteLayerUpload
  ( -- * Creating a Request
    completeLayerUpload,
    CompleteLayerUpload,

    -- * Request Lenses
    cluRegistryId,
    cluRepositoryName,
    cluUploadId,
    cluLayerDigests,

    -- * Destructuring the Response
    completeLayerUploadResponse,
    CompleteLayerUploadResponse,

    -- * Response Lenses
    clurrsUploadId,
    clurrsRegistryId,
    clurrsRepositoryName,
    clurrsLayerDigest,
    clurrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'completeLayerUpload' smart constructor.
data CompleteLayerUpload = CompleteLayerUpload'
  { _cluRegistryId ::
      !(Maybe Text),
    _cluRepositoryName :: !Text,
    _cluUploadId :: !Text,
    _cluLayerDigests ::
      !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CompleteLayerUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cluRegistryId' - The AWS account ID associated with the registry to which to upload layers. If you do not specify a registry, the default registry is assumed.
--
-- * 'cluRepositoryName' - The name of the repository to associate with the image layer.
--
-- * 'cluUploadId' - The upload ID from a previous 'InitiateLayerUpload' operation to associate with the image layer.
--
-- * 'cluLayerDigests' - The @sha256@ digest of the image layer.
completeLayerUpload ::
  -- | 'cluRepositoryName'
  Text ->
  -- | 'cluUploadId'
  Text ->
  -- | 'cluLayerDigests'
  NonEmpty Text ->
  CompleteLayerUpload
completeLayerUpload
  pRepositoryName_
  pUploadId_
  pLayerDigests_ =
    CompleteLayerUpload'
      { _cluRegistryId = Nothing,
        _cluRepositoryName = pRepositoryName_,
        _cluUploadId = pUploadId_,
        _cluLayerDigests = _List1 # pLayerDigests_
      }

-- | The AWS account ID associated with the registry to which to upload layers. If you do not specify a registry, the default registry is assumed.
cluRegistryId :: Lens' CompleteLayerUpload (Maybe Text)
cluRegistryId = lens _cluRegistryId (\s a -> s {_cluRegistryId = a})

-- | The name of the repository to associate with the image layer.
cluRepositoryName :: Lens' CompleteLayerUpload Text
cluRepositoryName = lens _cluRepositoryName (\s a -> s {_cluRepositoryName = a})

-- | The upload ID from a previous 'InitiateLayerUpload' operation to associate with the image layer.
cluUploadId :: Lens' CompleteLayerUpload Text
cluUploadId = lens _cluUploadId (\s a -> s {_cluUploadId = a})

-- | The @sha256@ digest of the image layer.
cluLayerDigests :: Lens' CompleteLayerUpload (NonEmpty Text)
cluLayerDigests = lens _cluLayerDigests (\s a -> s {_cluLayerDigests = a}) . _List1

instance AWSRequest CompleteLayerUpload where
  type
    Rs CompleteLayerUpload =
      CompleteLayerUploadResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          CompleteLayerUploadResponse'
            <$> (x .?> "uploadId")
            <*> (x .?> "registryId")
            <*> (x .?> "repositoryName")
            <*> (x .?> "layerDigest")
            <*> (pure (fromEnum s))
      )

instance Hashable CompleteLayerUpload

instance NFData CompleteLayerUpload

instance ToHeaders CompleteLayerUpload where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.CompleteLayerUpload" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CompleteLayerUpload where
  toJSON CompleteLayerUpload' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _cluRegistryId,
            Just ("repositoryName" .= _cluRepositoryName),
            Just ("uploadId" .= _cluUploadId),
            Just ("layerDigests" .= _cluLayerDigests)
          ]
      )

instance ToPath CompleteLayerUpload where
  toPath = const "/"

instance ToQuery CompleteLayerUpload where
  toQuery = const mempty

-- | /See:/ 'completeLayerUploadResponse' smart constructor.
data CompleteLayerUploadResponse = CompleteLayerUploadResponse'
  { _clurrsUploadId ::
      !(Maybe Text),
    _clurrsRegistryId ::
      !(Maybe Text),
    _clurrsRepositoryName ::
      !(Maybe Text),
    _clurrsLayerDigest ::
      !(Maybe Text),
    _clurrsResponseStatus ::
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

-- | Creates a value of 'CompleteLayerUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clurrsUploadId' - The upload ID associated with the layer.
--
-- * 'clurrsRegistryId' - The registry ID associated with the request.
--
-- * 'clurrsRepositoryName' - The repository name associated with the request.
--
-- * 'clurrsLayerDigest' - The @sha256@ digest of the image layer.
--
-- * 'clurrsResponseStatus' - -- | The response status code.
completeLayerUploadResponse ::
  -- | 'clurrsResponseStatus'
  Int ->
  CompleteLayerUploadResponse
completeLayerUploadResponse pResponseStatus_ =
  CompleteLayerUploadResponse'
    { _clurrsUploadId =
        Nothing,
      _clurrsRegistryId = Nothing,
      _clurrsRepositoryName = Nothing,
      _clurrsLayerDigest = Nothing,
      _clurrsResponseStatus = pResponseStatus_
    }

-- | The upload ID associated with the layer.
clurrsUploadId :: Lens' CompleteLayerUploadResponse (Maybe Text)
clurrsUploadId = lens _clurrsUploadId (\s a -> s {_clurrsUploadId = a})

-- | The registry ID associated with the request.
clurrsRegistryId :: Lens' CompleteLayerUploadResponse (Maybe Text)
clurrsRegistryId = lens _clurrsRegistryId (\s a -> s {_clurrsRegistryId = a})

-- | The repository name associated with the request.
clurrsRepositoryName :: Lens' CompleteLayerUploadResponse (Maybe Text)
clurrsRepositoryName = lens _clurrsRepositoryName (\s a -> s {_clurrsRepositoryName = a})

-- | The @sha256@ digest of the image layer.
clurrsLayerDigest :: Lens' CompleteLayerUploadResponse (Maybe Text)
clurrsLayerDigest = lens _clurrsLayerDigest (\s a -> s {_clurrsLayerDigest = a})

-- | -- | The response status code.
clurrsResponseStatus :: Lens' CompleteLayerUploadResponse Int
clurrsResponseStatus = lens _clurrsResponseStatus (\s a -> s {_clurrsResponseStatus = a})

instance NFData CompleteLayerUploadResponse
