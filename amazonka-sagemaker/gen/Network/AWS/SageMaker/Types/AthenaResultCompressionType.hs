{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Gzip,
        Snappy,
        Zlib
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The compression used for Athena query results.
data AthenaResultCompressionType
  = AthenaResultCompressionType'
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

pattern Gzip :: AthenaResultCompressionType
pattern Gzip = AthenaResultCompressionType' "GZIP"

pattern Snappy :: AthenaResultCompressionType
pattern Snappy = AthenaResultCompressionType' "SNAPPY"

pattern Zlib :: AthenaResultCompressionType
pattern Zlib = AthenaResultCompressionType' "ZLIB"

{-# COMPLETE
  Gzip,
  Snappy,
  Zlib,
  AthenaResultCompressionType'
  #-}

instance FromText AthenaResultCompressionType where
  parser = (AthenaResultCompressionType' . mk) <$> takeText

instance ToText AthenaResultCompressionType where
  toText (AthenaResultCompressionType' ci) = original ci

instance Hashable AthenaResultCompressionType

instance NFData AthenaResultCompressionType

instance ToByteString AthenaResultCompressionType

instance ToQuery AthenaResultCompressionType

instance ToHeader AthenaResultCompressionType

instance ToJSON AthenaResultCompressionType where
  toJSON = toJSONText

instance FromJSON AthenaResultCompressionType where
  parseJSON = parseJSONText "AthenaResultCompressionType"
