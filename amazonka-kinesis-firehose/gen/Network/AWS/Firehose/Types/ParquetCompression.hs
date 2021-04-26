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
-- Module      : Network.AWS.Firehose.Types.ParquetCompression
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ParquetCompression
  ( ParquetCompression
      ( ..,
        ParquetCompressionGZIP,
        ParquetCompressionSNAPPY,
        ParquetCompressionUNCOMPRESSED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ParquetCompression = ParquetCompression'
  { fromParquetCompression ::
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

pattern ParquetCompressionGZIP :: ParquetCompression
pattern ParquetCompressionGZIP = ParquetCompression' "GZIP"

pattern ParquetCompressionSNAPPY :: ParquetCompression
pattern ParquetCompressionSNAPPY = ParquetCompression' "SNAPPY"

pattern ParquetCompressionUNCOMPRESSED :: ParquetCompression
pattern ParquetCompressionUNCOMPRESSED = ParquetCompression' "UNCOMPRESSED"

{-# COMPLETE
  ParquetCompressionGZIP,
  ParquetCompressionSNAPPY,
  ParquetCompressionUNCOMPRESSED,
  ParquetCompression'
  #-}

instance Prelude.FromText ParquetCompression where
  parser = ParquetCompression' Prelude.<$> Prelude.takeText

instance Prelude.ToText ParquetCompression where
  toText (ParquetCompression' x) = x

instance Prelude.Hashable ParquetCompression

instance Prelude.NFData ParquetCompression

instance Prelude.ToByteString ParquetCompression

instance Prelude.ToQuery ParquetCompression

instance Prelude.ToHeader ParquetCompression

instance Prelude.ToJSON ParquetCompression where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ParquetCompression where
  parseJSON = Prelude.parseJSONText "ParquetCompression"
