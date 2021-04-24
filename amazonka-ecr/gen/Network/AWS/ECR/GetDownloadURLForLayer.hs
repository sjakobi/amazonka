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
-- Module      : Network.AWS.ECR.GetDownloadURLForLayer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.
--
--
-- When an image is pulled, the GetDownloadUrlForLayer API is called once per image layer that is not already cached.
module Network.AWS.ECR.GetDownloadURLForLayer
  ( -- * Creating a Request
    getDownloadURLForLayer,
    GetDownloadURLForLayer,

    -- * Request Lenses
    gduflRegistryId,
    gduflRepositoryName,
    gduflLayerDigest,

    -- * Destructuring the Response
    getDownloadURLForLayerResponse,
    GetDownloadURLForLayerResponse,

    -- * Response Lenses
    gduflrrsDownloadURL,
    gduflrrsLayerDigest,
    gduflrrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDownloadURLForLayer' smart constructor.
data GetDownloadURLForLayer = GetDownloadURLForLayer'
  { _gduflRegistryId ::
      !(Maybe Text),
    _gduflRepositoryName ::
      !Text,
    _gduflLayerDigest ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDownloadURLForLayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gduflRegistryId' - The AWS account ID associated with the registry that contains the image layer to download. If you do not specify a registry, the default registry is assumed.
--
-- * 'gduflRepositoryName' - The name of the repository that is associated with the image layer to download.
--
-- * 'gduflLayerDigest' - The digest of the image layer to download.
getDownloadURLForLayer ::
  -- | 'gduflRepositoryName'
  Text ->
  -- | 'gduflLayerDigest'
  Text ->
  GetDownloadURLForLayer
getDownloadURLForLayer pRepositoryName_ pLayerDigest_ =
  GetDownloadURLForLayer'
    { _gduflRegistryId = Nothing,
      _gduflRepositoryName = pRepositoryName_,
      _gduflLayerDigest = pLayerDigest_
    }

-- | The AWS account ID associated with the registry that contains the image layer to download. If you do not specify a registry, the default registry is assumed.
gduflRegistryId :: Lens' GetDownloadURLForLayer (Maybe Text)
gduflRegistryId = lens _gduflRegistryId (\s a -> s {_gduflRegistryId = a})

-- | The name of the repository that is associated with the image layer to download.
gduflRepositoryName :: Lens' GetDownloadURLForLayer Text
gduflRepositoryName = lens _gduflRepositoryName (\s a -> s {_gduflRepositoryName = a})

-- | The digest of the image layer to download.
gduflLayerDigest :: Lens' GetDownloadURLForLayer Text
gduflLayerDigest = lens _gduflLayerDigest (\s a -> s {_gduflLayerDigest = a})

instance AWSRequest GetDownloadURLForLayer where
  type
    Rs GetDownloadURLForLayer =
      GetDownloadURLForLayerResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          GetDownloadURLForLayerResponse'
            <$> (x .?> "downloadUrl")
            <*> (x .?> "layerDigest")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDownloadURLForLayer

instance NFData GetDownloadURLForLayer

instance ToHeaders GetDownloadURLForLayer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.GetDownloadUrlForLayer" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDownloadURLForLayer where
  toJSON GetDownloadURLForLayer' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _gduflRegistryId,
            Just ("repositoryName" .= _gduflRepositoryName),
            Just ("layerDigest" .= _gduflLayerDigest)
          ]
      )

instance ToPath GetDownloadURLForLayer where
  toPath = const "/"

instance ToQuery GetDownloadURLForLayer where
  toQuery = const mempty

-- | /See:/ 'getDownloadURLForLayerResponse' smart constructor.
data GetDownloadURLForLayerResponse = GetDownloadURLForLayerResponse'
  { _gduflrrsDownloadURL ::
      !( Maybe
           Text
       ),
    _gduflrrsLayerDigest ::
      !( Maybe
           Text
       ),
    _gduflrrsResponseStatus ::
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

-- | Creates a value of 'GetDownloadURLForLayerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gduflrrsDownloadURL' - The pre-signed Amazon S3 download URL for the requested layer.
--
-- * 'gduflrrsLayerDigest' - The digest of the image layer to download.
--
-- * 'gduflrrsResponseStatus' - -- | The response status code.
getDownloadURLForLayerResponse ::
  -- | 'gduflrrsResponseStatus'
  Int ->
  GetDownloadURLForLayerResponse
getDownloadURLForLayerResponse pResponseStatus_ =
  GetDownloadURLForLayerResponse'
    { _gduflrrsDownloadURL =
        Nothing,
      _gduflrrsLayerDigest = Nothing,
      _gduflrrsResponseStatus = pResponseStatus_
    }

-- | The pre-signed Amazon S3 download URL for the requested layer.
gduflrrsDownloadURL :: Lens' GetDownloadURLForLayerResponse (Maybe Text)
gduflrrsDownloadURL = lens _gduflrrsDownloadURL (\s a -> s {_gduflrrsDownloadURL = a})

-- | The digest of the image layer to download.
gduflrrsLayerDigest :: Lens' GetDownloadURLForLayerResponse (Maybe Text)
gduflrrsLayerDigest = lens _gduflrrsLayerDigest (\s a -> s {_gduflrrsLayerDigest = a})

-- | -- | The response status code.
gduflrrsResponseStatus :: Lens' GetDownloadURLForLayerResponse Int
gduflrrsResponseStatus = lens _gduflrrsResponseStatus (\s a -> s {_gduflrrsResponseStatus = a})

instance NFData GetDownloadURLForLayerResponse
