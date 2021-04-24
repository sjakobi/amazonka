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
-- Module      : Network.AWS.ECR.BatchCheckLayerAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks the availability of one or more image layers in a repository.
--
--
-- When an image is pushed to a repository, each image layer is checked to verify if it has been uploaded before. If it has been uploaded, then the image layer is skipped.
module Network.AWS.ECR.BatchCheckLayerAvailability
  ( -- * Creating a Request
    batchCheckLayerAvailability,
    BatchCheckLayerAvailability,

    -- * Request Lenses
    bclaRegistryId,
    bclaRepositoryName,
    bclaLayerDigests,

    -- * Destructuring the Response
    batchCheckLayerAvailabilityResponse,
    BatchCheckLayerAvailabilityResponse,

    -- * Response Lenses
    bclarrsFailures,
    bclarrsLayers,
    bclarrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchCheckLayerAvailability' smart constructor.
data BatchCheckLayerAvailability = BatchCheckLayerAvailability'
  { _bclaRegistryId ::
      !(Maybe Text),
    _bclaRepositoryName ::
      !Text,
    _bclaLayerDigests ::
      !(List1 Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchCheckLayerAvailability' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bclaRegistryId' - The AWS account ID associated with the registry that contains the image layers to check. If you do not specify a registry, the default registry is assumed.
--
-- * 'bclaRepositoryName' - The name of the repository that is associated with the image layers to check.
--
-- * 'bclaLayerDigests' - The digests of the image layers to check.
batchCheckLayerAvailability ::
  -- | 'bclaRepositoryName'
  Text ->
  -- | 'bclaLayerDigests'
  NonEmpty Text ->
  BatchCheckLayerAvailability
batchCheckLayerAvailability
  pRepositoryName_
  pLayerDigests_ =
    BatchCheckLayerAvailability'
      { _bclaRegistryId =
          Nothing,
        _bclaRepositoryName = pRepositoryName_,
        _bclaLayerDigests = _List1 # pLayerDigests_
      }

-- | The AWS account ID associated with the registry that contains the image layers to check. If you do not specify a registry, the default registry is assumed.
bclaRegistryId :: Lens' BatchCheckLayerAvailability (Maybe Text)
bclaRegistryId = lens _bclaRegistryId (\s a -> s {_bclaRegistryId = a})

-- | The name of the repository that is associated with the image layers to check.
bclaRepositoryName :: Lens' BatchCheckLayerAvailability Text
bclaRepositoryName = lens _bclaRepositoryName (\s a -> s {_bclaRepositoryName = a})

-- | The digests of the image layers to check.
bclaLayerDigests :: Lens' BatchCheckLayerAvailability (NonEmpty Text)
bclaLayerDigests = lens _bclaLayerDigests (\s a -> s {_bclaLayerDigests = a}) . _List1

instance AWSRequest BatchCheckLayerAvailability where
  type
    Rs BatchCheckLayerAvailability =
      BatchCheckLayerAvailabilityResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          BatchCheckLayerAvailabilityResponse'
            <$> (x .?> "failures" .!@ mempty)
            <*> (x .?> "layers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchCheckLayerAvailability

instance NFData BatchCheckLayerAvailability

instance ToHeaders BatchCheckLayerAvailability where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.BatchCheckLayerAvailability" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchCheckLayerAvailability where
  toJSON BatchCheckLayerAvailability' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _bclaRegistryId,
            Just ("repositoryName" .= _bclaRepositoryName),
            Just ("layerDigests" .= _bclaLayerDigests)
          ]
      )

instance ToPath BatchCheckLayerAvailability where
  toPath = const "/"

instance ToQuery BatchCheckLayerAvailability where
  toQuery = const mempty

-- | /See:/ 'batchCheckLayerAvailabilityResponse' smart constructor.
data BatchCheckLayerAvailabilityResponse = BatchCheckLayerAvailabilityResponse'
  { _bclarrsFailures ::
      !( Maybe
           [LayerFailure]
       ),
    _bclarrsLayers ::
      !( Maybe
           [Layer]
       ),
    _bclarrsResponseStatus ::
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

-- | Creates a value of 'BatchCheckLayerAvailabilityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bclarrsFailures' - Any failures associated with the call.
--
-- * 'bclarrsLayers' - A list of image layer objects corresponding to the image layer references in the request.
--
-- * 'bclarrsResponseStatus' - -- | The response status code.
batchCheckLayerAvailabilityResponse ::
  -- | 'bclarrsResponseStatus'
  Int ->
  BatchCheckLayerAvailabilityResponse
batchCheckLayerAvailabilityResponse pResponseStatus_ =
  BatchCheckLayerAvailabilityResponse'
    { _bclarrsFailures =
        Nothing,
      _bclarrsLayers = Nothing,
      _bclarrsResponseStatus =
        pResponseStatus_
    }

-- | Any failures associated with the call.
bclarrsFailures :: Lens' BatchCheckLayerAvailabilityResponse [LayerFailure]
bclarrsFailures = lens _bclarrsFailures (\s a -> s {_bclarrsFailures = a}) . _Default . _Coerce

-- | A list of image layer objects corresponding to the image layer references in the request.
bclarrsLayers :: Lens' BatchCheckLayerAvailabilityResponse [Layer]
bclarrsLayers = lens _bclarrsLayers (\s a -> s {_bclarrsLayers = a}) . _Default . _Coerce

-- | -- | The response status code.
bclarrsResponseStatus :: Lens' BatchCheckLayerAvailabilityResponse Int
bclarrsResponseStatus = lens _bclarrsResponseStatus (\s a -> s {_bclarrsResponseStatus = a})

instance NFData BatchCheckLayerAvailabilityResponse
