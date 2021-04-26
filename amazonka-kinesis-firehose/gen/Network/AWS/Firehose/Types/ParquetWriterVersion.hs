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
-- Module      : Network.AWS.Firehose.Types.ParquetWriterVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ParquetWriterVersion
  ( ParquetWriterVersion
      ( ..,
        ParquetWriterVersionV1,
        ParquetWriterVersionV2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ParquetWriterVersion = ParquetWriterVersion'
  { fromParquetWriterVersion ::
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

pattern ParquetWriterVersionV1 :: ParquetWriterVersion
pattern ParquetWriterVersionV1 = ParquetWriterVersion' "V1"

pattern ParquetWriterVersionV2 :: ParquetWriterVersion
pattern ParquetWriterVersionV2 = ParquetWriterVersion' "V2"

{-# COMPLETE
  ParquetWriterVersionV1,
  ParquetWriterVersionV2,
  ParquetWriterVersion'
  #-}

instance Prelude.FromText ParquetWriterVersion where
  parser = ParquetWriterVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText ParquetWriterVersion where
  toText (ParquetWriterVersion' x) = x

instance Prelude.Hashable ParquetWriterVersion

instance Prelude.NFData ParquetWriterVersion

instance Prelude.ToByteString ParquetWriterVersion

instance Prelude.ToQuery ParquetWriterVersion

instance Prelude.ToHeader ParquetWriterVersion

instance Prelude.ToJSON ParquetWriterVersion where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ParquetWriterVersion where
  parseJSON = Prelude.parseJSONText "ParquetWriterVersion"
