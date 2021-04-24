{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ArtifactSourceIdType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ArtifactSourceIdType
  ( ArtifactSourceIdType
      ( ..,
        Custom,
        MD5Hash,
        S3ETag,
        S3Version
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ArtifactSourceIdType
  = ArtifactSourceIdType'
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

pattern Custom :: ArtifactSourceIdType
pattern Custom = ArtifactSourceIdType' "Custom"

pattern MD5Hash :: ArtifactSourceIdType
pattern MD5Hash = ArtifactSourceIdType' "MD5Hash"

pattern S3ETag :: ArtifactSourceIdType
pattern S3ETag = ArtifactSourceIdType' "S3ETag"

pattern S3Version :: ArtifactSourceIdType
pattern S3Version = ArtifactSourceIdType' "S3Version"

{-# COMPLETE
  Custom,
  MD5Hash,
  S3ETag,
  S3Version,
  ArtifactSourceIdType'
  #-}

instance FromText ArtifactSourceIdType where
  parser = (ArtifactSourceIdType' . mk) <$> takeText

instance ToText ArtifactSourceIdType where
  toText (ArtifactSourceIdType' ci) = original ci

instance Hashable ArtifactSourceIdType

instance NFData ArtifactSourceIdType

instance ToByteString ArtifactSourceIdType

instance ToQuery ArtifactSourceIdType

instance ToHeader ArtifactSourceIdType

instance ToJSON ArtifactSourceIdType where
  toJSON = toJSONText

instance FromJSON ArtifactSourceIdType where
  parseJSON = parseJSONText "ArtifactSourceIdType"
