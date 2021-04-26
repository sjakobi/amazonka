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
-- Module      : Network.AWS.Athena.Types.ColumnNullable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.ColumnNullable
  ( ColumnNullable
      ( ..,
        ColumnNullableNOTNULL,
        ColumnNullableNULLABLE,
        ColumnNullableUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ColumnNullable = ColumnNullable'
  { fromColumnNullable ::
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

pattern ColumnNullableNOTNULL :: ColumnNullable
pattern ColumnNullableNOTNULL = ColumnNullable' "NOT_NULL"

pattern ColumnNullableNULLABLE :: ColumnNullable
pattern ColumnNullableNULLABLE = ColumnNullable' "NULLABLE"

pattern ColumnNullableUNKNOWN :: ColumnNullable
pattern ColumnNullableUNKNOWN = ColumnNullable' "UNKNOWN"

{-# COMPLETE
  ColumnNullableNOTNULL,
  ColumnNullableNULLABLE,
  ColumnNullableUNKNOWN,
  ColumnNullable'
  #-}

instance Prelude.FromText ColumnNullable where
  parser = ColumnNullable' Prelude.<$> Prelude.takeText

instance Prelude.ToText ColumnNullable where
  toText (ColumnNullable' x) = x

instance Prelude.Hashable ColumnNullable

instance Prelude.NFData ColumnNullable

instance Prelude.ToByteString ColumnNullable

instance Prelude.ToQuery ColumnNullable

instance Prelude.ToHeader ColumnNullable

instance Prelude.FromJSON ColumnNullable where
  parseJSON = Prelude.parseJSONText "ColumnNullable"
