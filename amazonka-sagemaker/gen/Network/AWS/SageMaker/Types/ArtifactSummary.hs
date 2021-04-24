{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ArtifactSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ArtifactSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ArtifactSource

-- | Lists a summary of the properties of an artifact. An artifact represents a URI addressable object or data. Some examples are a dataset and a model.
--
--
--
-- /See:/ 'artifactSummary' smart constructor.
data ArtifactSummary = ArtifactSummary'
  { _asCreationTime ::
      !(Maybe POSIX),
    _asArtifactName :: !(Maybe Text),
    _asArtifactType :: !(Maybe Text),
    _asArtifactARN :: !(Maybe Text),
    _asSource :: !(Maybe ArtifactSource),
    _asLastModifiedTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ArtifactSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asCreationTime' - When the artifact was created.
--
-- * 'asArtifactName' - The name of the artifact.
--
-- * 'asArtifactType' - The type of the artifact.
--
-- * 'asArtifactARN' - The Amazon Resource Name (ARN) of the artifact.
--
-- * 'asSource' - The source of the artifact.
--
-- * 'asLastModifiedTime' - When the artifact was last modified.
artifactSummary ::
  ArtifactSummary
artifactSummary =
  ArtifactSummary'
    { _asCreationTime = Nothing,
      _asArtifactName = Nothing,
      _asArtifactType = Nothing,
      _asArtifactARN = Nothing,
      _asSource = Nothing,
      _asLastModifiedTime = Nothing
    }

-- | When the artifact was created.
asCreationTime :: Lens' ArtifactSummary (Maybe UTCTime)
asCreationTime = lens _asCreationTime (\s a -> s {_asCreationTime = a}) . mapping _Time

-- | The name of the artifact.
asArtifactName :: Lens' ArtifactSummary (Maybe Text)
asArtifactName = lens _asArtifactName (\s a -> s {_asArtifactName = a})

-- | The type of the artifact.
asArtifactType :: Lens' ArtifactSummary (Maybe Text)
asArtifactType = lens _asArtifactType (\s a -> s {_asArtifactType = a})

-- | The Amazon Resource Name (ARN) of the artifact.
asArtifactARN :: Lens' ArtifactSummary (Maybe Text)
asArtifactARN = lens _asArtifactARN (\s a -> s {_asArtifactARN = a})

-- | The source of the artifact.
asSource :: Lens' ArtifactSummary (Maybe ArtifactSource)
asSource = lens _asSource (\s a -> s {_asSource = a})

-- | When the artifact was last modified.
asLastModifiedTime :: Lens' ArtifactSummary (Maybe UTCTime)
asLastModifiedTime = lens _asLastModifiedTime (\s a -> s {_asLastModifiedTime = a}) . mapping _Time

instance FromJSON ArtifactSummary where
  parseJSON =
    withObject
      "ArtifactSummary"
      ( \x ->
          ArtifactSummary'
            <$> (x .:? "CreationTime")
            <*> (x .:? "ArtifactName")
            <*> (x .:? "ArtifactType")
            <*> (x .:? "ArtifactArn")
            <*> (x .:? "Source")
            <*> (x .:? "LastModifiedTime")
      )

instance Hashable ArtifactSummary

instance NFData ArtifactSummary
