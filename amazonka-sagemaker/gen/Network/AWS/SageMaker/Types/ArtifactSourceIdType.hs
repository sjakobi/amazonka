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
-- Module      : Network.AWS.SageMaker.Types.ArtifactSourceIdType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ArtifactSourceIdType
  ( ArtifactSourceIdType
      ( ..,
        ArtifactSourceIdTypeCustom,
        ArtifactSourceIdTypeMD5Hash,
        ArtifactSourceIdTypeS3ETag,
        ArtifactSourceIdTypeS3Version
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ArtifactSourceIdType = ArtifactSourceIdType'
  { fromArtifactSourceIdType ::
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

pattern ArtifactSourceIdTypeCustom :: ArtifactSourceIdType
pattern ArtifactSourceIdTypeCustom = ArtifactSourceIdType' "Custom"

pattern ArtifactSourceIdTypeMD5Hash :: ArtifactSourceIdType
pattern ArtifactSourceIdTypeMD5Hash = ArtifactSourceIdType' "MD5Hash"

pattern ArtifactSourceIdTypeS3ETag :: ArtifactSourceIdType
pattern ArtifactSourceIdTypeS3ETag = ArtifactSourceIdType' "S3ETag"

pattern ArtifactSourceIdTypeS3Version :: ArtifactSourceIdType
pattern ArtifactSourceIdTypeS3Version = ArtifactSourceIdType' "S3Version"

{-# COMPLETE
  ArtifactSourceIdTypeCustom,
  ArtifactSourceIdTypeMD5Hash,
  ArtifactSourceIdTypeS3ETag,
  ArtifactSourceIdTypeS3Version,
  ArtifactSourceIdType'
  #-}

instance Prelude.FromText ArtifactSourceIdType where
  parser = ArtifactSourceIdType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArtifactSourceIdType where
  toText (ArtifactSourceIdType' x) = x

instance Prelude.Hashable ArtifactSourceIdType

instance Prelude.NFData ArtifactSourceIdType

instance Prelude.ToByteString ArtifactSourceIdType

instance Prelude.ToQuery ArtifactSourceIdType

instance Prelude.ToHeader ArtifactSourceIdType

instance Prelude.ToJSON ArtifactSourceIdType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ArtifactSourceIdType where
  parseJSON = Prelude.parseJSONText "ArtifactSourceIdType"
