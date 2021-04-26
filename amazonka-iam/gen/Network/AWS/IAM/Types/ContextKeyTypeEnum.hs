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
-- Module      : Network.AWS.IAM.Types.ContextKeyTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.ContextKeyTypeEnum
  ( ContextKeyTypeEnum
      ( ..,
        ContextKeyTypeEnumBinary,
        ContextKeyTypeEnumBinaryList,
        ContextKeyTypeEnumBoolean,
        ContextKeyTypeEnumBooleanList,
        ContextKeyTypeEnumDate,
        ContextKeyTypeEnumDateList,
        ContextKeyTypeEnumIP,
        ContextKeyTypeEnumIpList,
        ContextKeyTypeEnumNumeric,
        ContextKeyTypeEnumNumericList,
        ContextKeyTypeEnumString,
        ContextKeyTypeEnumStringList
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContextKeyTypeEnum = ContextKeyTypeEnum'
  { fromContextKeyTypeEnum ::
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

pattern ContextKeyTypeEnumBinary :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumBinary = ContextKeyTypeEnum' "binary"

pattern ContextKeyTypeEnumBinaryList :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumBinaryList = ContextKeyTypeEnum' "binaryList"

pattern ContextKeyTypeEnumBoolean :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumBoolean = ContextKeyTypeEnum' "boolean"

pattern ContextKeyTypeEnumBooleanList :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumBooleanList = ContextKeyTypeEnum' "booleanList"

pattern ContextKeyTypeEnumDate :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumDate = ContextKeyTypeEnum' "date"

pattern ContextKeyTypeEnumDateList :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumDateList = ContextKeyTypeEnum' "dateList"

pattern ContextKeyTypeEnumIP :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumIP = ContextKeyTypeEnum' "ip"

pattern ContextKeyTypeEnumIpList :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumIpList = ContextKeyTypeEnum' "ipList"

pattern ContextKeyTypeEnumNumeric :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumNumeric = ContextKeyTypeEnum' "numeric"

pattern ContextKeyTypeEnumNumericList :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumNumericList = ContextKeyTypeEnum' "numericList"

pattern ContextKeyTypeEnumString :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumString = ContextKeyTypeEnum' "string"

pattern ContextKeyTypeEnumStringList :: ContextKeyTypeEnum
pattern ContextKeyTypeEnumStringList = ContextKeyTypeEnum' "stringList"

{-# COMPLETE
  ContextKeyTypeEnumBinary,
  ContextKeyTypeEnumBinaryList,
  ContextKeyTypeEnumBoolean,
  ContextKeyTypeEnumBooleanList,
  ContextKeyTypeEnumDate,
  ContextKeyTypeEnumDateList,
  ContextKeyTypeEnumIP,
  ContextKeyTypeEnumIpList,
  ContextKeyTypeEnumNumeric,
  ContextKeyTypeEnumNumericList,
  ContextKeyTypeEnumString,
  ContextKeyTypeEnumStringList,
  ContextKeyTypeEnum'
  #-}

instance Prelude.FromText ContextKeyTypeEnum where
  parser = ContextKeyTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContextKeyTypeEnum where
  toText (ContextKeyTypeEnum' x) = x

instance Prelude.Hashable ContextKeyTypeEnum

instance Prelude.NFData ContextKeyTypeEnum

instance Prelude.ToByteString ContextKeyTypeEnum

instance Prelude.ToQuery ContextKeyTypeEnum

instance Prelude.ToHeader ContextKeyTypeEnum
