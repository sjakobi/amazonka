{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.Artifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.Artifact where

import Network.AWS.CodePipeline.Types.ArtifactLocation
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents information about an artifact that is worked on by actions in the pipeline.
--
--
--
-- /See:/ 'artifact' smart constructor.
data Artifact = Artifact'
  { _aName :: !(Maybe Text),
    _aRevision :: !(Maybe Text),
    _aLocation :: !(Maybe ArtifactLocation)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Artifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aName' - The artifact's name.
--
-- * 'aRevision' - The artifact's revision ID. Depending on the type of object, this could be a commit ID (GitHub) or a revision ID (Amazon S3).
--
-- * 'aLocation' - The location of an artifact.
artifact ::
  Artifact
artifact =
  Artifact'
    { _aName = Nothing,
      _aRevision = Nothing,
      _aLocation = Nothing
    }

-- | The artifact's name.
aName :: Lens' Artifact (Maybe Text)
aName = lens _aName (\s a -> s {_aName = a})

-- | The artifact's revision ID. Depending on the type of object, this could be a commit ID (GitHub) or a revision ID (Amazon S3).
aRevision :: Lens' Artifact (Maybe Text)
aRevision = lens _aRevision (\s a -> s {_aRevision = a})

-- | The location of an artifact.
aLocation :: Lens' Artifact (Maybe ArtifactLocation)
aLocation = lens _aLocation (\s a -> s {_aLocation = a})

instance FromJSON Artifact where
  parseJSON =
    withObject
      "Artifact"
      ( \x ->
          Artifact'
            <$> (x .:? "name")
            <*> (x .:? "revision")
            <*> (x .:? "location")
      )

instance Hashable Artifact

instance NFData Artifact
