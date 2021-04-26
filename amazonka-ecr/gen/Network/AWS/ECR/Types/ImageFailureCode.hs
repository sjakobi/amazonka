{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ImageFailureCodeImageNotFound,
        ImageFailureCodeImageReferencedByManifestList,
        ImageFailureCodeImageTagDoesNotMatchDigest,
        ImageFailureCodeInvalidImageDigest,
        ImageFailureCodeInvalidImageTag,
        ImageFailureCodeKmsError,
        ImageFailureCodeMissingDigestAndTag
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageFailureCode = ImageFailureCode'
  { fromImageFailureCode ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ImageFailureCodeImageNotFound :: ImageFailureCode
pattern ImageFailureCodeImageNotFound = ImageFailureCode' "ImageNotFound"

pattern ImageFailureCodeImageReferencedByManifestList :: ImageFailureCode
pattern ImageFailureCodeImageReferencedByManifestList = ImageFailureCode' "ImageReferencedByManifestList"

pattern ImageFailureCodeImageTagDoesNotMatchDigest :: ImageFailureCode
pattern ImageFailureCodeImageTagDoesNotMatchDigest = ImageFailureCode' "ImageTagDoesNotMatchDigest"

pattern ImageFailureCodeInvalidImageDigest :: ImageFailureCode
pattern ImageFailureCodeInvalidImageDigest = ImageFailureCode' "InvalidImageDigest"

pattern ImageFailureCodeInvalidImageTag :: ImageFailureCode
pattern ImageFailureCodeInvalidImageTag = ImageFailureCode' "InvalidImageTag"

pattern ImageFailureCodeKmsError :: ImageFailureCode
pattern ImageFailureCodeKmsError = ImageFailureCode' "KmsError"

pattern ImageFailureCodeMissingDigestAndTag :: ImageFailureCode
pattern ImageFailureCodeMissingDigestAndTag = ImageFailureCode' "MissingDigestAndTag"

{-# COMPLETE
  ImageFailureCodeImageNotFound,
  ImageFailureCodeImageReferencedByManifestList,
  ImageFailureCodeImageTagDoesNotMatchDigest,
  ImageFailureCodeInvalidImageDigest,
  ImageFailureCodeInvalidImageTag,
  ImageFailureCodeKmsError,
  ImageFailureCodeMissingDigestAndTag,
  ImageFailureCode'
  #-}

instance Prelude.FromText ImageFailureCode where
  parser = ImageFailureCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageFailureCode where
  toText (ImageFailureCode' x) = x

instance Prelude.Hashable ImageFailureCode

instance Prelude.NFData ImageFailureCode

instance Prelude.ToByteString ImageFailureCode

instance Prelude.ToQuery ImageFailureCode

instance Prelude.ToHeader ImageFailureCode

instance Prelude.FromJSON ImageFailureCode where
  parseJSON = Prelude.parseJSONText "ImageFailureCode"
