{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.Image
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.Image where

import Network.AWS.ECR.Types.ImageIdentifier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an Amazon ECR image.
--
--
--
-- /See:/ 'image' smart constructor.
data Image = Image'
  { _iImageManifest :: !(Maybe Text),
    _iRegistryId :: !(Maybe Text),
    _iRepositoryName :: !(Maybe Text),
    _iImageId :: !(Maybe ImageIdentifier),
    _iImageManifestMediaType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iImageManifest' - The image manifest associated with the image.
--
-- * 'iRegistryId' - The AWS account ID associated with the registry containing the image.
--
-- * 'iRepositoryName' - The name of the repository associated with the image.
--
-- * 'iImageId' - An object containing the image tag and image digest associated with an image.
--
-- * 'iImageManifestMediaType' - The manifest media type of the image.
image ::
  Image
image =
  Image'
    { _iImageManifest = Nothing,
      _iRegistryId = Nothing,
      _iRepositoryName = Nothing,
      _iImageId = Nothing,
      _iImageManifestMediaType = Nothing
    }

-- | The image manifest associated with the image.
iImageManifest :: Lens' Image (Maybe Text)
iImageManifest = lens _iImageManifest (\s a -> s {_iImageManifest = a})

-- | The AWS account ID associated with the registry containing the image.
iRegistryId :: Lens' Image (Maybe Text)
iRegistryId = lens _iRegistryId (\s a -> s {_iRegistryId = a})

-- | The name of the repository associated with the image.
iRepositoryName :: Lens' Image (Maybe Text)
iRepositoryName = lens _iRepositoryName (\s a -> s {_iRepositoryName = a})

-- | An object containing the image tag and image digest associated with an image.
iImageId :: Lens' Image (Maybe ImageIdentifier)
iImageId = lens _iImageId (\s a -> s {_iImageId = a})

-- | The manifest media type of the image.
iImageManifestMediaType :: Lens' Image (Maybe Text)
iImageManifestMediaType = lens _iImageManifestMediaType (\s a -> s {_iImageManifestMediaType = a})

instance FromJSON Image where
  parseJSON =
    withObject
      "Image"
      ( \x ->
          Image'
            <$> (x .:? "imageManifest")
            <*> (x .:? "registryId")
            <*> (x .:? "repositoryName")
            <*> (x .:? "imageId")
            <*> (x .:? "imageManifestMediaType")
      )

instance Hashable Image

instance NFData Image
