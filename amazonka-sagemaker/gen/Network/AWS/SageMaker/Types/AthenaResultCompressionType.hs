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
-- Module      : Network.AWS.SageMaker.Types.AthenaResultCompressionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AthenaResultCompressionType
  ( AthenaResultCompressionType
      ( ..,
        AthenaResultCompressionTypeGZIP,
        AthenaResultCompressionTypeSNAPPY,
        AthenaResultCompressionTypeZLIB
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The compression used for Athena query results.
newtype AthenaResultCompressionType = AthenaResultCompressionType'
  { fromAthenaResultCompressionType ::
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

pattern AthenaResultCompressionTypeGZIP :: AthenaResultCompressionType
pattern AthenaResultCompressionTypeGZIP = AthenaResultCompressionType' "GZIP"

pattern AthenaResultCompressionTypeSNAPPY :: AthenaResultCompressionType
pattern AthenaResultCompressionTypeSNAPPY = AthenaResultCompressionType' "SNAPPY"

pattern AthenaResultCompressionTypeZLIB :: AthenaResultCompressionType
pattern AthenaResultCompressionTypeZLIB = AthenaResultCompressionType' "ZLIB"

{-# COMPLETE
  AthenaResultCompressionTypeGZIP,
  AthenaResultCompressionTypeSNAPPY,
  AthenaResultCompressionTypeZLIB,
  AthenaResultCompressionType'
  #-}

instance Prelude.FromText AthenaResultCompressionType where
  parser = AthenaResultCompressionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AthenaResultCompressionType where
  toText (AthenaResultCompressionType' x) = x

instance Prelude.Hashable AthenaResultCompressionType

instance Prelude.NFData AthenaResultCompressionType

instance Prelude.ToByteString AthenaResultCompressionType

instance Prelude.ToQuery AthenaResultCompressionType

instance Prelude.ToHeader AthenaResultCompressionType

instance Prelude.ToJSON AthenaResultCompressionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AthenaResultCompressionType where
  parseJSON = Prelude.parseJSONText "AthenaResultCompressionType"
