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
-- Module      : Network.AWS.Glue.Types.ColumnStatisticsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ColumnStatisticsType
  ( ColumnStatisticsType
      ( ..,
        ColumnStatisticsTypeBINARY,
        ColumnStatisticsTypeBOOLEAN,
        ColumnStatisticsTypeDATE,
        ColumnStatisticsTypeDECIMAL,
        ColumnStatisticsTypeDOUBLE,
        ColumnStatisticsTypeLONG,
        ColumnStatisticsTypeSTRING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ColumnStatisticsType = ColumnStatisticsType'
  { fromColumnStatisticsType ::
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

pattern ColumnStatisticsTypeBINARY :: ColumnStatisticsType
pattern ColumnStatisticsTypeBINARY = ColumnStatisticsType' "BINARY"

pattern ColumnStatisticsTypeBOOLEAN :: ColumnStatisticsType
pattern ColumnStatisticsTypeBOOLEAN = ColumnStatisticsType' "BOOLEAN"

pattern ColumnStatisticsTypeDATE :: ColumnStatisticsType
pattern ColumnStatisticsTypeDATE = ColumnStatisticsType' "DATE"

pattern ColumnStatisticsTypeDECIMAL :: ColumnStatisticsType
pattern ColumnStatisticsTypeDECIMAL = ColumnStatisticsType' "DECIMAL"

pattern ColumnStatisticsTypeDOUBLE :: ColumnStatisticsType
pattern ColumnStatisticsTypeDOUBLE = ColumnStatisticsType' "DOUBLE"

pattern ColumnStatisticsTypeLONG :: ColumnStatisticsType
pattern ColumnStatisticsTypeLONG = ColumnStatisticsType' "LONG"

pattern ColumnStatisticsTypeSTRING :: ColumnStatisticsType
pattern ColumnStatisticsTypeSTRING = ColumnStatisticsType' "STRING"

{-# COMPLETE
  ColumnStatisticsTypeBINARY,
  ColumnStatisticsTypeBOOLEAN,
  ColumnStatisticsTypeDATE,
  ColumnStatisticsTypeDECIMAL,
  ColumnStatisticsTypeDOUBLE,
  ColumnStatisticsTypeLONG,
  ColumnStatisticsTypeSTRING,
  ColumnStatisticsType'
  #-}

instance Prelude.FromText ColumnStatisticsType where
  parser = ColumnStatisticsType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ColumnStatisticsType where
  toText (ColumnStatisticsType' x) = x

instance Prelude.Hashable ColumnStatisticsType

instance Prelude.NFData ColumnStatisticsType

instance Prelude.ToByteString ColumnStatisticsType

instance Prelude.ToQuery ColumnStatisticsType

instance Prelude.ToHeader ColumnStatisticsType

instance Prelude.ToJSON ColumnStatisticsType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ColumnStatisticsType where
  parseJSON = Prelude.parseJSONText "ColumnStatisticsType"
