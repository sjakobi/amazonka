{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.S3DataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.S3DataType
  ( S3DataType
      ( ..,
        AugmentedManifestFile,
        ManifestFile,
        S3Prefix
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data S3DataType = S3DataType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AugmentedManifestFile :: S3DataType
pattern AugmentedManifestFile = S3DataType' "AugmentedManifestFile"

pattern ManifestFile :: S3DataType
pattern ManifestFile = S3DataType' "ManifestFile"

pattern S3Prefix :: S3DataType
pattern S3Prefix = S3DataType' "S3Prefix"

{-# COMPLETE
  AugmentedManifestFile,
  ManifestFile,
  S3Prefix,
  S3DataType'
  #-}

instance FromText S3DataType where
  parser = (S3DataType' . mk) <$> takeText

instance ToText S3DataType where
  toText (S3DataType' ci) = original ci

instance Hashable S3DataType

instance NFData S3DataType

instance ToByteString S3DataType

instance ToQuery S3DataType

instance ToHeader S3DataType

instance ToJSON S3DataType where
  toJSON = toJSONText

instance FromJSON S3DataType where
  parseJSON = parseJSONText "S3DataType"
