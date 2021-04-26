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
-- Module      : Network.AWS.DMS.Types.DataFormatValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.DataFormatValue
  ( DataFormatValue
      ( ..,
        DataFormatValueCsv,
        DataFormatValueParquet
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataFormatValue = DataFormatValue'
  { fromDataFormatValue ::
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

pattern DataFormatValueCsv :: DataFormatValue
pattern DataFormatValueCsv = DataFormatValue' "csv"

pattern DataFormatValueParquet :: DataFormatValue
pattern DataFormatValueParquet = DataFormatValue' "parquet"

{-# COMPLETE
  DataFormatValueCsv,
  DataFormatValueParquet,
  DataFormatValue'
  #-}

instance Prelude.FromText DataFormatValue where
  parser = DataFormatValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataFormatValue where
  toText (DataFormatValue' x) = x

instance Prelude.Hashable DataFormatValue

instance Prelude.NFData DataFormatValue

instance Prelude.ToByteString DataFormatValue

instance Prelude.ToQuery DataFormatValue

instance Prelude.ToHeader DataFormatValue

instance Prelude.ToJSON DataFormatValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DataFormatValue where
  parseJSON = Prelude.parseJSONText "DataFormatValue"
