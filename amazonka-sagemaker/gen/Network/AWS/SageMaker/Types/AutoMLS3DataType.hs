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
-- Module      : Network.AWS.SageMaker.Types.AutoMLS3DataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLS3DataType
  ( AutoMLS3DataType
      ( ..,
        AutoMLS3DataTypeManifestFile,
        AutoMLS3DataTypeS3Prefix
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoMLS3DataType = AutoMLS3DataType'
  { fromAutoMLS3DataType ::
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

pattern AutoMLS3DataTypeManifestFile :: AutoMLS3DataType
pattern AutoMLS3DataTypeManifestFile = AutoMLS3DataType' "ManifestFile"

pattern AutoMLS3DataTypeS3Prefix :: AutoMLS3DataType
pattern AutoMLS3DataTypeS3Prefix = AutoMLS3DataType' "S3Prefix"

{-# COMPLETE
  AutoMLS3DataTypeManifestFile,
  AutoMLS3DataTypeS3Prefix,
  AutoMLS3DataType'
  #-}

instance Prelude.FromText AutoMLS3DataType where
  parser = AutoMLS3DataType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoMLS3DataType where
  toText (AutoMLS3DataType' x) = x

instance Prelude.Hashable AutoMLS3DataType

instance Prelude.NFData AutoMLS3DataType

instance Prelude.ToByteString AutoMLS3DataType

instance Prelude.ToQuery AutoMLS3DataType

instance Prelude.ToHeader AutoMLS3DataType

instance Prelude.ToJSON AutoMLS3DataType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AutoMLS3DataType where
  parseJSON = Prelude.parseJSONText "AutoMLS3DataType"
