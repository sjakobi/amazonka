{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.Layer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.Layer where

import Network.AWS.ECR.Types.LayerAvailability
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an Amazon ECR image layer.
--
--
--
-- /See:/ 'layer' smart constructor.
data Layer = Layer'
  { _lLayerSize :: !(Maybe Integer),
    _lLayerAvailability :: !(Maybe LayerAvailability),
    _lMediaType :: !(Maybe Text),
    _lLayerDigest :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Layer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLayerSize' - The size, in bytes, of the image layer.
--
-- * 'lLayerAvailability' - The availability status of the image layer.
--
-- * 'lMediaType' - The media type of the layer, such as @application/vnd.docker.image.rootfs.diff.tar.gzip@ or @application/vnd.oci.image.layer.v1.tar+gzip@ .
--
-- * 'lLayerDigest' - The @sha256@ digest of the image layer.
layer ::
  Layer
layer =
  Layer'
    { _lLayerSize = Nothing,
      _lLayerAvailability = Nothing,
      _lMediaType = Nothing,
      _lLayerDigest = Nothing
    }

-- | The size, in bytes, of the image layer.
lLayerSize :: Lens' Layer (Maybe Integer)
lLayerSize = lens _lLayerSize (\s a -> s {_lLayerSize = a})

-- | The availability status of the image layer.
lLayerAvailability :: Lens' Layer (Maybe LayerAvailability)
lLayerAvailability = lens _lLayerAvailability (\s a -> s {_lLayerAvailability = a})

-- | The media type of the layer, such as @application/vnd.docker.image.rootfs.diff.tar.gzip@ or @application/vnd.oci.image.layer.v1.tar+gzip@ .
lMediaType :: Lens' Layer (Maybe Text)
lMediaType = lens _lMediaType (\s a -> s {_lMediaType = a})

-- | The @sha256@ digest of the image layer.
lLayerDigest :: Lens' Layer (Maybe Text)
lLayerDigest = lens _lLayerDigest (\s a -> s {_lLayerDigest = a})

instance FromJSON Layer where
  parseJSON =
    withObject
      "Layer"
      ( \x ->
          Layer'
            <$> (x .:? "layerSize")
            <*> (x .:? "layerAvailability")
            <*> (x .:? "mediaType")
            <*> (x .:? "layerDigest")
      )

instance Hashable Layer

instance NFData Layer
