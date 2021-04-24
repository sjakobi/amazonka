{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ResolvedArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ResolvedArtifact where

import Network.AWS.CodeBuild.Types.ArtifactsType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a resolved build artifact. A resolve artifact is an artifact that is built and deployed to the destination, such as Amazon S3.
--
--
--
-- /See:/ 'resolvedArtifact' smart constructor.
data ResolvedArtifact = ResolvedArtifact'
  { _raIdentifier ::
      !(Maybe Text),
    _raType :: !(Maybe ArtifactsType),
    _raLocation :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResolvedArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raIdentifier' - The identifier of the artifact.
--
-- * 'raType' - Specifies the type of artifact.
--
-- * 'raLocation' - The location of the artifact.
resolvedArtifact ::
  ResolvedArtifact
resolvedArtifact =
  ResolvedArtifact'
    { _raIdentifier = Nothing,
      _raType = Nothing,
      _raLocation = Nothing
    }

-- | The identifier of the artifact.
raIdentifier :: Lens' ResolvedArtifact (Maybe Text)
raIdentifier = lens _raIdentifier (\s a -> s {_raIdentifier = a})

-- | Specifies the type of artifact.
raType :: Lens' ResolvedArtifact (Maybe ArtifactsType)
raType = lens _raType (\s a -> s {_raType = a})

-- | The location of the artifact.
raLocation :: Lens' ResolvedArtifact (Maybe Text)
raLocation = lens _raLocation (\s a -> s {_raLocation = a})

instance FromJSON ResolvedArtifact where
  parseJSON =
    withObject
      "ResolvedArtifact"
      ( \x ->
          ResolvedArtifact'
            <$> (x .:? "identifier")
            <*> (x .:? "type")
            <*> (x .:? "location")
      )

instance Hashable ResolvedArtifact

instance NFData ResolvedArtifact
