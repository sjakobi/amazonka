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
-- Module      : Network.AWS.Firehose.Types.CompressionFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.CompressionFormat
  ( CompressionFormat
      ( ..,
        CompressionFormatGZIP,
        CompressionFormatHADOOPSNAPPY,
        CompressionFormatSnappy,
        CompressionFormatUNCOMPRESSED,
        CompressionFormatZIP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

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

pattern CompressionFormatHADOOPSNAPPY :: CompressionFormat
pattern CompressionFormatHADOOPSNAPPY = CompressionFormat' "HADOOP_SNAPPY"

pattern CompressionFormatSnappy :: CompressionFormat
pattern CompressionFormatSnappy = CompressionFormat' "Snappy"

pattern CompressionFormatUNCOMPRESSED :: CompressionFormat
pattern CompressionFormatUNCOMPRESSED = CompressionFormat' "UNCOMPRESSED"

pattern CompressionFormatZIP :: CompressionFormat
pattern CompressionFormatZIP = CompressionFormat' "ZIP"

{-# COMPLETE
  CompressionFormatGZIP,
  CompressionFormatHADOOPSNAPPY,
  CompressionFormatSnappy,
  CompressionFormatUNCOMPRESSED,
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
