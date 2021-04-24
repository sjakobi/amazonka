{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ArtifactSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ArtifactSource where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ArtifactSourceType

-- | A structure describing the source of an artifact.
--
--
--
-- /See:/ 'artifactSource' smart constructor.
data ArtifactSource = ArtifactSource'
  { _asSourceTypes ::
      !(Maybe [ArtifactSourceType]),
    _asSourceURI :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ArtifactSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asSourceTypes' - A list of source types.
--
-- * 'asSourceURI' - The URI of the source.
artifactSource ::
  -- | 'asSourceURI'
  Text ->
  ArtifactSource
artifactSource pSourceURI_ =
  ArtifactSource'
    { _asSourceTypes = Nothing,
      _asSourceURI = pSourceURI_
    }

-- | A list of source types.
asSourceTypes :: Lens' ArtifactSource [ArtifactSourceType]
asSourceTypes = lens _asSourceTypes (\s a -> s {_asSourceTypes = a}) . _Default . _Coerce

-- | The URI of the source.
asSourceURI :: Lens' ArtifactSource Text
asSourceURI = lens _asSourceURI (\s a -> s {_asSourceURI = a})

instance FromJSON ArtifactSource where
  parseJSON =
    withObject
      "ArtifactSource"
      ( \x ->
          ArtifactSource'
            <$> (x .:? "SourceTypes" .!= mempty)
            <*> (x .: "SourceUri")
      )

instance Hashable ArtifactSource

instance NFData ArtifactSource

instance ToJSON ArtifactSource where
  toJSON ArtifactSource' {..} =
    object
      ( catMaybes
          [ ("SourceTypes" .=) <$> _asSourceTypes,
            Just ("SourceUri" .= _asSourceURI)
          ]
      )
