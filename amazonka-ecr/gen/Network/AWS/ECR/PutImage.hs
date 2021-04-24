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
-- Module      : Network.AWS.ECR.PutImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the image manifest and tags associated with an image.
--
--
-- When an image is pushed and all new image layers have been uploaded, the PutImage API is called once to create or update the image manifest and the tags associated with the image.
module Network.AWS.ECR.PutImage
  ( -- * Creating a Request
    putImage,
    PutImage,

    -- * Request Lenses
    piImageDigest,
    piRegistryId,
    piImageTag,
    piImageManifestMediaType,
    piRepositoryName,
    piImageManifest,

    -- * Destructuring the Response
    putImageResponse,
    PutImageResponse,

    -- * Response Lenses
    pirrsImage,
    pirrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putImage' smart constructor.
data PutImage = PutImage'
  { _piImageDigest ::
      !(Maybe Text),
    _piRegistryId :: !(Maybe Text),
    _piImageTag :: !(Maybe Text),
    _piImageManifestMediaType :: !(Maybe Text),
    _piRepositoryName :: !Text,
    _piImageManifest :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piImageDigest' - The image digest of the image manifest corresponding to the image.
--
-- * 'piRegistryId' - The AWS account ID associated with the registry that contains the repository in which to put the image. If you do not specify a registry, the default registry is assumed.
--
-- * 'piImageTag' - The tag to associate with the image. This parameter is required for images that use the Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.
--
-- * 'piImageManifestMediaType' - The media type of the image manifest. If you push an image manifest that does not contain the @mediaType@ field, you must specify the @imageManifestMediaType@ in the request.
--
-- * 'piRepositoryName' - The name of the repository in which to put the image.
--
-- * 'piImageManifest' - The image manifest corresponding to the image to be uploaded.
putImage ::
  -- | 'piRepositoryName'
  Text ->
  -- | 'piImageManifest'
  Text ->
  PutImage
putImage pRepositoryName_ pImageManifest_ =
  PutImage'
    { _piImageDigest = Nothing,
      _piRegistryId = Nothing,
      _piImageTag = Nothing,
      _piImageManifestMediaType = Nothing,
      _piRepositoryName = pRepositoryName_,
      _piImageManifest = pImageManifest_
    }

-- | The image digest of the image manifest corresponding to the image.
piImageDigest :: Lens' PutImage (Maybe Text)
piImageDigest = lens _piImageDigest (\s a -> s {_piImageDigest = a})

-- | The AWS account ID associated with the registry that contains the repository in which to put the image. If you do not specify a registry, the default registry is assumed.
piRegistryId :: Lens' PutImage (Maybe Text)
piRegistryId = lens _piRegistryId (\s a -> s {_piRegistryId = a})

-- | The tag to associate with the image. This parameter is required for images that use the Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.
piImageTag :: Lens' PutImage (Maybe Text)
piImageTag = lens _piImageTag (\s a -> s {_piImageTag = a})

-- | The media type of the image manifest. If you push an image manifest that does not contain the @mediaType@ field, you must specify the @imageManifestMediaType@ in the request.
piImageManifestMediaType :: Lens' PutImage (Maybe Text)
piImageManifestMediaType = lens _piImageManifestMediaType (\s a -> s {_piImageManifestMediaType = a})

-- | The name of the repository in which to put the image.
piRepositoryName :: Lens' PutImage Text
piRepositoryName = lens _piRepositoryName (\s a -> s {_piRepositoryName = a})

-- | The image manifest corresponding to the image to be uploaded.
piImageManifest :: Lens' PutImage Text
piImageManifest = lens _piImageManifest (\s a -> s {_piImageManifest = a})

instance AWSRequest PutImage where
  type Rs PutImage = PutImageResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          PutImageResponse'
            <$> (x .?> "image") <*> (pure (fromEnum s))
      )

instance Hashable PutImage

instance NFData PutImage

instance ToHeaders PutImage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.PutImage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutImage where
  toJSON PutImage' {..} =
    object
      ( catMaybes
          [ ("imageDigest" .=) <$> _piImageDigest,
            ("registryId" .=) <$> _piRegistryId,
            ("imageTag" .=) <$> _piImageTag,
            ("imageManifestMediaType" .=)
              <$> _piImageManifestMediaType,
            Just ("repositoryName" .= _piRepositoryName),
            Just ("imageManifest" .= _piImageManifest)
          ]
      )

instance ToPath PutImage where
  toPath = const "/"

instance ToQuery PutImage where
  toQuery = const mempty

-- | /See:/ 'putImageResponse' smart constructor.
data PutImageResponse = PutImageResponse'
  { _pirrsImage ::
      !(Maybe Image),
    _pirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirrsImage' - Details of the image uploaded.
--
-- * 'pirrsResponseStatus' - -- | The response status code.
putImageResponse ::
  -- | 'pirrsResponseStatus'
  Int ->
  PutImageResponse
putImageResponse pResponseStatus_ =
  PutImageResponse'
    { _pirrsImage = Nothing,
      _pirrsResponseStatus = pResponseStatus_
    }

-- | Details of the image uploaded.
pirrsImage :: Lens' PutImageResponse (Maybe Image)
pirrsImage = lens _pirrsImage (\s a -> s {_pirrsImage = a})

-- | -- | The response status code.
pirrsResponseStatus :: Lens' PutImageResponse Int
pirrsResponseStatus = lens _pirrsResponseStatus (\s a -> s {_pirrsResponseStatus = a})

instance NFData PutImageResponse
