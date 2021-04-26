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
-- Module      : Network.AWS.CostAndUsageReport.Types.CompressionFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostAndUsageReport.Types.CompressionFormat
  ( CompressionFormat
      ( ..,
        CompressionFormatGZIP,
        CompressionFormatParquet,
        CompressionFormatZIP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The compression format that AWS uses for the report.
newtype CompressionFormat = CompressionFormat'
  { fromCompressionFormat ::
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

pattern CompressionFormatGZIP :: CompressionFormat
pattern CompressionFormatGZIP = CompressionFormat' "GZIP"

pattern CompressionFormatParquet :: CompressionFormat
pattern CompressionFormatParquet = CompressionFormat' "Parquet"

pattern CompressionFormatZIP :: CompressionFormat
pattern CompressionFormatZIP = CompressionFormat' "ZIP"

{-# COMPLETE
  CompressionFormatGZIP,
  CompressionFormatParquet,
  CompressionFormatZIP,
  CompressionFormat'
  #-}

instance Prelude.FromText CompressionFormat where
  parser = CompressionFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText CompressionFormat where
  toText (CompressionFormat' x) = x

instance Prelude.Hashable CompressionFormat

instance Prelude.NFData CompressionFormat

instance Prelude.ToByteString CompressionFormat

instance Prelude.ToQuery CompressionFormat

instance Prelude.ToHeader CompressionFormat

instance Prelude.ToJSON CompressionFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CompressionFormat where
  parseJSON = Prelude.parseJSONText "CompressionFormat"
