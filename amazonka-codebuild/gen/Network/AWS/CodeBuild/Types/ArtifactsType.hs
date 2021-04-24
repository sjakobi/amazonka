{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ArtifactsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ArtifactsType
  ( ArtifactsType
      ( ..,
        Codepipeline,
        NoArtifacts,
        S3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ArtifactsType = ArtifactsType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Codepipeline :: ArtifactsType
pattern Codepipeline = ArtifactsType' "CODEPIPELINE"

pattern NoArtifacts :: ArtifactsType
pattern NoArtifacts = ArtifactsType' "NO_ARTIFACTS"

pattern S3 :: ArtifactsType
pattern S3 = ArtifactsType' "S3"

{-# COMPLETE
  Codepipeline,
  NoArtifacts,
  S3,
  ArtifactsType'
  #-}

instance FromText ArtifactsType where
  parser = (ArtifactsType' . mk) <$> takeText

instance ToText ArtifactsType where
  toText (ArtifactsType' ci) = original ci

instance Hashable ArtifactsType

instance NFData ArtifactsType

instance ToByteString ArtifactsType

instance ToQuery ArtifactsType

instance ToHeader ArtifactsType

instance ToJSON ArtifactsType where
  toJSON = toJSONText

instance FromJSON ArtifactsType where
  parseJSON = parseJSONText "ArtifactsType"
