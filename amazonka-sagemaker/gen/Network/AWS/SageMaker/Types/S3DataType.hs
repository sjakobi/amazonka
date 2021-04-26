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
-- Module      : Network.AWS.SageMaker.Types.S3DataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.S3DataType
  ( S3DataType
      ( ..,
        S3DataTypeAugmentedManifestFile,
        S3DataTypeManifestFile,
        S3DataTypeS3Prefix
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype S3DataType = S3DataType'
  { fromS3DataType ::
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

pattern S3DataTypeAugmentedManifestFile :: S3DataType
pattern S3DataTypeAugmentedManifestFile = S3DataType' "AugmentedManifestFile"

pattern S3DataTypeManifestFile :: S3DataType
pattern S3DataTypeManifestFile = S3DataType' "ManifestFile"

pattern S3DataTypeS3Prefix :: S3DataType
pattern S3DataTypeS3Prefix = S3DataType' "S3Prefix"

{-# COMPLETE
  S3DataTypeAugmentedManifestFile,
  S3DataTypeManifestFile,
  S3DataTypeS3Prefix,
  S3DataType'
  #-}

instance Prelude.FromText S3DataType where
  parser = S3DataType' Prelude.<$> Prelude.takeText

instance Prelude.ToText S3DataType where
  toText (S3DataType' x) = x

instance Prelude.Hashable S3DataType

instance Prelude.NFData S3DataType

instance Prelude.ToByteString S3DataType

instance Prelude.ToQuery S3DataType

instance Prelude.ToHeader S3DataType

instance Prelude.ToJSON S3DataType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON S3DataType where
  parseJSON = Prelude.parseJSONText "S3DataType"
