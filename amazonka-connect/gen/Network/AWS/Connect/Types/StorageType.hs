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
-- Module      : Network.AWS.Connect.Types.StorageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.StorageType
  ( StorageType
      ( ..,
        StorageTypeKINESISFIREHOSE,
        StorageTypeKINESISSTREAM,
        StorageTypeKINESISVIDEOSTREAM,
        StorageTypeS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StorageType = StorageType'
  { fromStorageType ::
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

pattern StorageTypeKINESISFIREHOSE :: StorageType
pattern StorageTypeKINESISFIREHOSE = StorageType' "KINESIS_FIREHOSE"

pattern StorageTypeKINESISSTREAM :: StorageType
pattern StorageTypeKINESISSTREAM = StorageType' "KINESIS_STREAM"

pattern StorageTypeKINESISVIDEOSTREAM :: StorageType
pattern StorageTypeKINESISVIDEOSTREAM = StorageType' "KINESIS_VIDEO_STREAM"

pattern StorageTypeS3 :: StorageType
pattern StorageTypeS3 = StorageType' "S3"

{-# COMPLETE
  StorageTypeKINESISFIREHOSE,
  StorageTypeKINESISSTREAM,
  StorageTypeKINESISVIDEOSTREAM,
  StorageTypeS3,
  StorageType'
  #-}

instance Prelude.FromText StorageType where
  parser = StorageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StorageType where
  toText (StorageType' x) = x

instance Prelude.Hashable StorageType

instance Prelude.NFData StorageType

instance Prelude.ToByteString StorageType

instance Prelude.ToQuery StorageType

instance Prelude.ToHeader StorageType

instance Prelude.ToJSON StorageType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StorageType where
  parseJSON = Prelude.parseJSONText "StorageType"
