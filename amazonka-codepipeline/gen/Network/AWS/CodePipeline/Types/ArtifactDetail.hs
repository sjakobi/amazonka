{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ArtifactDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ArtifactDetail where

import Network.AWS.CodePipeline.Types.S3Location
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Artifact details for the action execution, such as the artifact location.
--
--
--
-- /See:/ 'artifactDetail' smart constructor.
data ArtifactDetail = ArtifactDetail'
  { _adS3location ::
      !(Maybe S3Location),
    _adName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ArtifactDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adS3location' - The Amazon S3 artifact location for the action execution.
--
-- * 'adName' - The artifact object name for the action execution.
artifactDetail ::
  ArtifactDetail
artifactDetail =
  ArtifactDetail'
    { _adS3location = Nothing,
      _adName = Nothing
    }

-- | The Amazon S3 artifact location for the action execution.
adS3location :: Lens' ArtifactDetail (Maybe S3Location)
adS3location = lens _adS3location (\s a -> s {_adS3location = a})

-- | The artifact object name for the action execution.
adName :: Lens' ArtifactDetail (Maybe Text)
adName = lens _adName (\s a -> s {_adName = a})

instance FromJSON ArtifactDetail where
  parseJSON =
    withObject
      "ArtifactDetail"
      ( \x ->
          ArtifactDetail'
            <$> (x .:? "s3location") <*> (x .:? "name")
      )

instance Hashable ArtifactDetail

instance NFData ArtifactDetail
