{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ArtifactSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ArtifactSourceType where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ArtifactSourceIdType

-- | The ID and ID type of an artifact source.
--
--
--
-- /See:/ 'artifactSourceType' smart constructor.
data ArtifactSourceType = ArtifactSourceType'
  { _astSourceIdType ::
      !ArtifactSourceIdType,
    _astValue :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ArtifactSourceType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'astSourceIdType' - The type of ID.
--
-- * 'astValue' - The ID.
artifactSourceType ::
  -- | 'astSourceIdType'
  ArtifactSourceIdType ->
  -- | 'astValue'
  Text ->
  ArtifactSourceType
artifactSourceType pSourceIdType_ pValue_ =
  ArtifactSourceType'
    { _astSourceIdType =
        pSourceIdType_,
      _astValue = pValue_
    }

-- | The type of ID.
astSourceIdType :: Lens' ArtifactSourceType ArtifactSourceIdType
astSourceIdType = lens _astSourceIdType (\s a -> s {_astSourceIdType = a})

-- | The ID.
astValue :: Lens' ArtifactSourceType Text
astValue = lens _astValue (\s a -> s {_astValue = a})

instance FromJSON ArtifactSourceType where
  parseJSON =
    withObject
      "ArtifactSourceType"
      ( \x ->
          ArtifactSourceType'
            <$> (x .: "SourceIdType") <*> (x .: "Value")
      )

instance Hashable ArtifactSourceType

instance NFData ArtifactSourceType

instance ToJSON ArtifactSourceType where
  toJSON ArtifactSourceType' {..} =
    object
      ( catMaybes
          [ Just ("SourceIdType" .= _astSourceIdType),
            Just ("Value" .= _astValue)
          ]
      )
