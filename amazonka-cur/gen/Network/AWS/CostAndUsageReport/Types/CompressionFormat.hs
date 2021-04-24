{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostAndUsageReport.Types.CompressionFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostAndUsageReport.Types.CompressionFormat
  ( CompressionFormat
      ( ..,
        Gzip,
        Parquet,
        Zip
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The compression format that AWS uses for the report.
data CompressionFormat = CompressionFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Gzip :: CompressionFormat
pattern Gzip = CompressionFormat' "GZIP"

pattern Parquet :: CompressionFormat
pattern Parquet = CompressionFormat' "Parquet"

pattern Zip :: CompressionFormat
pattern Zip = CompressionFormat' "ZIP"

{-# COMPLETE
  Gzip,
  Parquet,
  Zip,
  CompressionFormat'
  #-}

instance FromText CompressionFormat where
  parser = (CompressionFormat' . mk) <$> takeText

instance ToText CompressionFormat where
  toText (CompressionFormat' ci) = original ci

instance Hashable CompressionFormat

instance NFData CompressionFormat

instance ToByteString CompressionFormat

instance ToQuery CompressionFormat

instance ToHeader CompressionFormat

instance ToJSON CompressionFormat where
  toJSON = toJSONText

instance FromJSON CompressionFormat where
  parseJSON = parseJSONText "CompressionFormat"
