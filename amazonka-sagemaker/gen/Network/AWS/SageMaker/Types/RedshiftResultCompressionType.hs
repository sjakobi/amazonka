{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        RRCTBZIP2,
        RRCTGzip,
        RRCTNone,
        RRCTSnappy,
        RRCTZstd
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The compression used for Redshift query results.
data RedshiftResultCompressionType
  = RedshiftResultCompressionType'
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

pattern RRCTBZIP2 :: RedshiftResultCompressionType
pattern RRCTBZIP2 = RedshiftResultCompressionType' "BZIP2"

pattern RRCTGzip :: RedshiftResultCompressionType
pattern RRCTGzip = RedshiftResultCompressionType' "GZIP"

pattern RRCTNone :: RedshiftResultCompressionType
pattern RRCTNone = RedshiftResultCompressionType' "None"

pattern RRCTSnappy :: RedshiftResultCompressionType
pattern RRCTSnappy = RedshiftResultCompressionType' "SNAPPY"

pattern RRCTZstd :: RedshiftResultCompressionType
pattern RRCTZstd = RedshiftResultCompressionType' "ZSTD"

{-# COMPLETE
  RRCTBZIP2,
  RRCTGzip,
  RRCTNone,
  RRCTSnappy,
  RRCTZstd,
  RedshiftResultCompressionType'
  #-}

instance FromText RedshiftResultCompressionType where
  parser = (RedshiftResultCompressionType' . mk) <$> takeText

instance ToText RedshiftResultCompressionType where
  toText (RedshiftResultCompressionType' ci) = original ci

instance Hashable RedshiftResultCompressionType

instance NFData RedshiftResultCompressionType

instance ToByteString RedshiftResultCompressionType

instance ToQuery RedshiftResultCompressionType

instance ToHeader RedshiftResultCompressionType

instance ToJSON RedshiftResultCompressionType where
  toJSON = toJSONText

instance FromJSON RedshiftResultCompressionType where
  parseJSON = parseJSONText "RedshiftResultCompressionType"
