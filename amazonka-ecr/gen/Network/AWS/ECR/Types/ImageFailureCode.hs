{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ImageFailureCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ImageFailureCode
  ( ImageFailureCode
      ( ..,
        ImageNotFound,
        ImageReferencedByManifestList,
        ImageTagDoesNotMatchDigest,
        InvalidImageDigest,
        InvalidImageTag,
        KMSError,
        MissingDigestAndTag
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageFailureCode = ImageFailureCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ImageNotFound :: ImageFailureCode
pattern ImageNotFound = ImageFailureCode' "ImageNotFound"

pattern ImageReferencedByManifestList :: ImageFailureCode
pattern ImageReferencedByManifestList = ImageFailureCode' "ImageReferencedByManifestList"

pattern ImageTagDoesNotMatchDigest :: ImageFailureCode
pattern ImageTagDoesNotMatchDigest = ImageFailureCode' "ImageTagDoesNotMatchDigest"

pattern InvalidImageDigest :: ImageFailureCode
pattern InvalidImageDigest = ImageFailureCode' "InvalidImageDigest"

pattern InvalidImageTag :: ImageFailureCode
pattern InvalidImageTag = ImageFailureCode' "InvalidImageTag"

pattern KMSError :: ImageFailureCode
pattern KMSError = ImageFailureCode' "KmsError"

pattern MissingDigestAndTag :: ImageFailureCode
pattern MissingDigestAndTag = ImageFailureCode' "MissingDigestAndTag"

{-# COMPLETE
  ImageNotFound,
  ImageReferencedByManifestList,
  ImageTagDoesNotMatchDigest,
  InvalidImageDigest,
  InvalidImageTag,
  KMSError,
  MissingDigestAndTag,
  ImageFailureCode'
  #-}

instance FromText ImageFailureCode where
  parser = (ImageFailureCode' . mk) <$> takeText

instance ToText ImageFailureCode where
  toText (ImageFailureCode' ci) = original ci

instance Hashable ImageFailureCode

instance NFData ImageFailureCode

instance ToByteString ImageFailureCode

instance ToQuery ImageFailureCode

instance ToHeader ImageFailureCode

instance FromJSON ImageFailureCode where
  parseJSON = parseJSONText "ImageFailureCode"
