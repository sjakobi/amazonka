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
-- Module      : Network.AWS.IoT.Types.FieldType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.FieldType
  ( FieldType
      ( ..,
        FieldTypeBoolean,
        FieldTypeNumber,
        FieldTypeString
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FieldType = FieldType'
  { fromFieldType ::
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

pattern FieldTypeBoolean :: FieldType
pattern FieldTypeBoolean = FieldType' "Boolean"

pattern FieldTypeNumber :: FieldType
pattern FieldTypeNumber = FieldType' "Number"

pattern FieldTypeString :: FieldType
pattern FieldTypeString = FieldType' "String"

{-# COMPLETE
  FieldTypeBoolean,
  FieldTypeNumber,
  FieldTypeString,
  FieldType'
  #-}

instance Prelude.FromText FieldType where
  parser = FieldType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FieldType where
  toText (FieldType' x) = x

instance Prelude.Hashable FieldType

instance Prelude.NFData FieldType

instance Prelude.ToByteString FieldType

instance Prelude.ToQuery FieldType

instance Prelude.ToHeader FieldType

instance Prelude.ToJSON FieldType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FieldType where
  parseJSON = Prelude.parseJSONText "FieldType"
