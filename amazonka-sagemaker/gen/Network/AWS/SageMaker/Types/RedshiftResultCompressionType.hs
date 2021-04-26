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
-- Module      : Network.AWS.SageMaker.Types.RedshiftResultCompressionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RedshiftResultCompressionType
  ( RedshiftResultCompressionType
      ( ..,
        RedshiftResultCompressionTypeBZIP2,
        RedshiftResultCompressionTypeGZIP,
        RedshiftResultCompressionTypeNone,
        RedshiftResultCompressionTypeSNAPPY,
        RedshiftResultCompressionTypeZSTD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The compression used for Redshift query results.
newtype RedshiftResultCompressionType = RedshiftResultCompressionType'
  { fromRedshiftResultCompressionType ::
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

pattern RedshiftResultCompressionTypeBZIP2 :: RedshiftResultCompressionType
pattern RedshiftResultCompressionTypeBZIP2 = RedshiftResultCompressionType' "BZIP2"

pattern RedshiftResultCompressionTypeGZIP :: RedshiftResultCompressionType
pattern RedshiftResultCompressionTypeGZIP = RedshiftResultCompressionType' "GZIP"

pattern RedshiftResultCompressionTypeNone :: RedshiftResultCompressionType
pattern RedshiftResultCompressionTypeNone = RedshiftResultCompressionType' "None"

pattern RedshiftResultCompressionTypeSNAPPY :: RedshiftResultCompressionType
pattern RedshiftResultCompressionTypeSNAPPY = RedshiftResultCompressionType' "SNAPPY"

pattern RedshiftResultCompressionTypeZSTD :: RedshiftResultCompressionType
pattern RedshiftResultCompressionTypeZSTD = RedshiftResultCompressionType' "ZSTD"

{-# COMPLETE
  RedshiftResultCompressionTypeBZIP2,
  RedshiftResultCompressionTypeGZIP,
  RedshiftResultCompressionTypeNone,
  RedshiftResultCompressionTypeSNAPPY,
  RedshiftResultCompressionTypeZSTD,
  RedshiftResultCompressionType'
  #-}

instance Prelude.FromText RedshiftResultCompressionType where
  parser = RedshiftResultCompressionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RedshiftResultCompressionType where
  toText (RedshiftResultCompressionType' x) = x

instance Prelude.Hashable RedshiftResultCompressionType

instance Prelude.NFData RedshiftResultCompressionType

instance Prelude.ToByteString RedshiftResultCompressionType

instance Prelude.ToQuery RedshiftResultCompressionType

instance Prelude.ToHeader RedshiftResultCompressionType

instance Prelude.ToJSON RedshiftResultCompressionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RedshiftResultCompressionType where
  parseJSON = Prelude.parseJSONText "RedshiftResultCompressionType"
