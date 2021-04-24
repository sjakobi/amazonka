{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelDigests
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelDigests where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information to verify the integrity of stored model artifacts.
--
--
--
-- /See:/ 'modelDigests' smart constructor.
newtype ModelDigests = ModelDigests'
  { _mdArtifactDigest ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModelDigests' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdArtifactDigest' - Provides a hash value that uniquely identifies the stored model artifacts.
modelDigests ::
  ModelDigests
modelDigests =
  ModelDigests' {_mdArtifactDigest = Nothing}

-- | Provides a hash value that uniquely identifies the stored model artifacts.
mdArtifactDigest :: Lens' ModelDigests (Maybe Text)
mdArtifactDigest = lens _mdArtifactDigest (\s a -> s {_mdArtifactDigest = a})

instance FromJSON ModelDigests where
  parseJSON =
    withObject
      "ModelDigests"
      (\x -> ModelDigests' <$> (x .:? "ArtifactDigest"))

instance Hashable ModelDigests

instance NFData ModelDigests
