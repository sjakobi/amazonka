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
-- Module      : Network.AWS.ECR.BatchGetImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets detailed information for an image. Images are specified with either an @imageTag@ or @imageDigest@ .
--
--
-- When an image is pulled, the BatchGetImage API is called once to retrieve the image manifest.
module Network.AWS.ECR.BatchGetImage
  ( -- * Creating a Request
    batchGetImage,
    BatchGetImage,

    -- * Request Lenses
    bgiAcceptedMediaTypes,
    bgiRegistryId,
    bgiRepositoryName,
    bgiImageIds,

    -- * Destructuring the Response
    batchGetImageResponse,
    BatchGetImageResponse,

    -- * Response Lenses
    bgirrsImages,
    bgirrsFailures,
    bgirrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetImage' smart constructor.
data BatchGetImage = BatchGetImage'
  { _bgiAcceptedMediaTypes ::
      !(Maybe (List1 Text)),
    _bgiRegistryId :: !(Maybe Text),
    _bgiRepositoryName :: !Text,
    _bgiImageIds :: ![ImageIdentifier]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgiAcceptedMediaTypes' - The accepted media types for the request. Valid values: @application/vnd.docker.distribution.manifest.v1+json@ | @application/vnd.docker.distribution.manifest.v2+json@ | @application/vnd.oci.image.manifest.v1+json@
--
-- * 'bgiRegistryId' - The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.
--
-- * 'bgiRepositoryName' - The repository that contains the images to describe.
--
-- * 'bgiImageIds' - A list of image ID references that correspond to images to describe. The format of the @imageIds@ reference is @imageTag=tag@ or @imageDigest=digest@ .
batchGetImage ::
  -- | 'bgiRepositoryName'
  Text ->
  BatchGetImage
batchGetImage pRepositoryName_ =
  BatchGetImage'
    { _bgiAcceptedMediaTypes = Nothing,
      _bgiRegistryId = Nothing,
      _bgiRepositoryName = pRepositoryName_,
      _bgiImageIds = mempty
    }

-- | The accepted media types for the request. Valid values: @application/vnd.docker.distribution.manifest.v1+json@ | @application/vnd.docker.distribution.manifest.v2+json@ | @application/vnd.oci.image.manifest.v1+json@
bgiAcceptedMediaTypes :: Lens' BatchGetImage (Maybe (NonEmpty Text))
bgiAcceptedMediaTypes = lens _bgiAcceptedMediaTypes (\s a -> s {_bgiAcceptedMediaTypes = a}) . mapping _List1

-- | The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.
bgiRegistryId :: Lens' BatchGetImage (Maybe Text)
bgiRegistryId = lens _bgiRegistryId (\s a -> s {_bgiRegistryId = a})

-- | The repository that contains the images to describe.
bgiRepositoryName :: Lens' BatchGetImage Text
bgiRepositoryName = lens _bgiRepositoryName (\s a -> s {_bgiRepositoryName = a})

-- | A list of image ID references that correspond to images to describe. The format of the @imageIds@ reference is @imageTag=tag@ or @imageDigest=digest@ .
bgiImageIds :: Lens' BatchGetImage [ImageIdentifier]
bgiImageIds = lens _bgiImageIds (\s a -> s {_bgiImageIds = a}) . _Coerce

instance AWSRequest BatchGetImage where
  type Rs BatchGetImage = BatchGetImageResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          BatchGetImageResponse'
            <$> (x .?> "images" .!@ mempty)
            <*> (x .?> "failures" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetImage

instance NFData BatchGetImage

instance ToHeaders BatchGetImage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.BatchGetImage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetImage where
  toJSON BatchGetImage' {..} =
    object
      ( catMaybes
          [ ("acceptedMediaTypes" .=)
              <$> _bgiAcceptedMediaTypes,
            ("registryId" .=) <$> _bgiRegistryId,
            Just ("repositoryName" .= _bgiRepositoryName),
            Just ("imageIds" .= _bgiImageIds)
          ]
      )

instance ToPath BatchGetImage where
  toPath = const "/"

instance ToQuery BatchGetImage where
  toQuery = const mempty

-- | /See:/ 'batchGetImageResponse' smart constructor.
data BatchGetImageResponse = BatchGetImageResponse'
  { _bgirrsImages ::
      !(Maybe [Image]),
    _bgirrsFailures ::
      !(Maybe [ImageFailure]),
    _bgirrsResponseStatus ::
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

-- | Creates a value of 'BatchGetImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgirrsImages' - A list of image objects corresponding to the image references in the request.
--
-- * 'bgirrsFailures' - Any failures associated with the call.
--
-- * 'bgirrsResponseStatus' - -- | The response status code.
batchGetImageResponse ::
  -- | 'bgirrsResponseStatus'
  Int ->
  BatchGetImageResponse
batchGetImageResponse pResponseStatus_ =
  BatchGetImageResponse'
    { _bgirrsImages = Nothing,
      _bgirrsFailures = Nothing,
      _bgirrsResponseStatus = pResponseStatus_
    }

-- | A list of image objects corresponding to the image references in the request.
bgirrsImages :: Lens' BatchGetImageResponse [Image]
bgirrsImages = lens _bgirrsImages (\s a -> s {_bgirrsImages = a}) . _Default . _Coerce

-- | Any failures associated with the call.
bgirrsFailures :: Lens' BatchGetImageResponse [ImageFailure]
bgirrsFailures = lens _bgirrsFailures (\s a -> s {_bgirrsFailures = a}) . _Default . _Coerce

-- | -- | The response status code.
bgirrsResponseStatus :: Lens' BatchGetImageResponse Int
bgirrsResponseStatus = lens _bgirrsResponseStatus (\s a -> s {_bgirrsResponseStatus = a})

instance NFData BatchGetImageResponse
