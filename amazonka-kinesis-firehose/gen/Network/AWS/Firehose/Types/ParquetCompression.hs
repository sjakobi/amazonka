{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.ParquetCompression
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ParquetCompression
  ( ParquetCompression
      ( ..,
        PCGzip,
        PCSnappy,
        PCUncompressed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ParquetCompression
  = ParquetCompression'
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

pattern PCGzip :: ParquetCompression
pattern PCGzip = ParquetCompression' "GZIP"

pattern PCSnappy :: ParquetCompression
pattern PCSnappy = ParquetCompression' "SNAPPY"

pattern PCUncompressed :: ParquetCompression
pattern PCUncompressed = ParquetCompression' "UNCOMPRESSED"

{-# COMPLETE
  PCGzip,
  PCSnappy,
  PCUncompressed,
  ParquetCompression'
  #-}

instance FromText ParquetCompression where
  parser = (ParquetCompression' . mk) <$> takeText

instance ToText ParquetCompression where
  toText (ParquetCompression' ci) = original ci

instance Hashable ParquetCompression

instance NFData ParquetCompression

instance ToByteString ParquetCompression

instance ToQuery ParquetCompression

instance ToHeader ParquetCompression

instance ToJSON ParquetCompression where
  toJSON = toJSONText

instance FromJSON ParquetCompression where
  parseJSON = parseJSONText "ParquetCompression"
