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
-- Module      : Network.AWS.DMS.Types.ParquetVersionValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ParquetVersionValue
  ( ParquetVersionValue
      ( ..,
        ParquetVersionValueParquet10,
        ParquetVersionValueParquet20
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ParquetVersionValue = ParquetVersionValue'
  { fromParquetVersionValue ::
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

pattern ParquetVersionValueParquet10 :: ParquetVersionValue
pattern ParquetVersionValueParquet10 = ParquetVersionValue' "parquet-1-0"

pattern ParquetVersionValueParquet20 :: ParquetVersionValue
pattern ParquetVersionValueParquet20 = ParquetVersionValue' "parquet-2-0"

{-# COMPLETE
  ParquetVersionValueParquet10,
  ParquetVersionValueParquet20,
  ParquetVersionValue'
  #-}

instance Prelude.FromText ParquetVersionValue where
  parser = ParquetVersionValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText ParquetVersionValue where
  toText (ParquetVersionValue' x) = x

instance Prelude.Hashable ParquetVersionValue

instance Prelude.NFData ParquetVersionValue

instance Prelude.ToByteString ParquetVersionValue

instance Prelude.ToQuery ParquetVersionValue

instance Prelude.ToHeader ParquetVersionValue

instance Prelude.ToJSON ParquetVersionValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ParquetVersionValue where
  parseJSON = Prelude.parseJSONText "ParquetVersionValue"
