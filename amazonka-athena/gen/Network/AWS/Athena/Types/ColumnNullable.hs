{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        NotNull,
        Nullable,
        Unknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ColumnNullable = ColumnNullable' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NotNull :: ColumnNullable
pattern NotNull = ColumnNullable' "NOT_NULL"

pattern Nullable :: ColumnNullable
pattern Nullable = ColumnNullable' "NULLABLE"

pattern Unknown :: ColumnNullable
pattern Unknown = ColumnNullable' "UNKNOWN"

{-# COMPLETE
  NotNull,
  Nullable,
  Unknown,
  ColumnNullable'
  #-}

instance FromText ColumnNullable where
  parser = (ColumnNullable' . mk) <$> takeText

instance ToText ColumnNullable where
  toText (ColumnNullable' ci) = original ci

instance Hashable ColumnNullable

instance NFData ColumnNullable

instance ToByteString ColumnNullable

instance ToQuery ColumnNullable

instance ToHeader ColumnNullable

instance FromJSON ColumnNullable where
  parseJSON = parseJSONText "ColumnNullable"
