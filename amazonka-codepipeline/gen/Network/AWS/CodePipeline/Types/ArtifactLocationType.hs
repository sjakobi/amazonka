{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ArtifactLocationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ArtifactLocationType
  ( ArtifactLocationType
      ( ..,
        S3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ArtifactLocationType
  = ArtifactLocationType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern S3 :: ArtifactLocationType
pattern S3 = ArtifactLocationType' "S3"

{-# COMPLETE
  S3,
  ArtifactLocationType'
  #-}

instance FromText ArtifactLocationType where
  parser = (ArtifactLocationType' . mk) <$> takeText

instance ToText ArtifactLocationType where
  toText (ArtifactLocationType' ci) = original ci

instance Hashable ArtifactLocationType

instance NFData ArtifactLocationType

instance ToByteString ArtifactLocationType

instance ToQuery ArtifactLocationType

instance ToHeader ArtifactLocationType

instance FromJSON ArtifactLocationType where
  parseJSON = parseJSONText "ArtifactLocationType"
