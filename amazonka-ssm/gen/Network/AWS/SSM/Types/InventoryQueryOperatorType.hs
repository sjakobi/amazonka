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
-- Module      : Network.AWS.SSM.Types.InventoryQueryOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InventoryQueryOperatorType
  ( InventoryQueryOperatorType
      ( ..,
        InventoryQueryOperatorTypeBeginWith,
        InventoryQueryOperatorTypeEqual,
        InventoryQueryOperatorTypeExists,
        InventoryQueryOperatorTypeGreaterThan,
        InventoryQueryOperatorTypeLessThan,
        InventoryQueryOperatorTypeNotEqual
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InventoryQueryOperatorType = InventoryQueryOperatorType'
  { fromInventoryQueryOperatorType ::
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

pattern InventoryQueryOperatorTypeBeginWith :: InventoryQueryOperatorType
pattern InventoryQueryOperatorTypeBeginWith = InventoryQueryOperatorType' "BeginWith"

pattern InventoryQueryOperatorTypeEqual :: InventoryQueryOperatorType
pattern InventoryQueryOperatorTypeEqual = InventoryQueryOperatorType' "Equal"

pattern InventoryQueryOperatorTypeExists :: InventoryQueryOperatorType
pattern InventoryQueryOperatorTypeExists = InventoryQueryOperatorType' "Exists"

pattern InventoryQueryOperatorTypeGreaterThan :: InventoryQueryOperatorType
pattern InventoryQueryOperatorTypeGreaterThan = InventoryQueryOperatorType' "GreaterThan"

pattern InventoryQueryOperatorTypeLessThan :: InventoryQueryOperatorType
pattern InventoryQueryOperatorTypeLessThan = InventoryQueryOperatorType' "LessThan"

pattern InventoryQueryOperatorTypeNotEqual :: InventoryQueryOperatorType
pattern InventoryQueryOperatorTypeNotEqual = InventoryQueryOperatorType' "NotEqual"

{-# COMPLETE
  InventoryQueryOperatorTypeBeginWith,
  InventoryQueryOperatorTypeEqual,
  InventoryQueryOperatorTypeExists,
  InventoryQueryOperatorTypeGreaterThan,
  InventoryQueryOperatorTypeLessThan,
  InventoryQueryOperatorTypeNotEqual,
  InventoryQueryOperatorType'
  #-}

instance Prelude.FromText InventoryQueryOperatorType where
  parser = InventoryQueryOperatorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InventoryQueryOperatorType where
  toText (InventoryQueryOperatorType' x) = x

instance Prelude.Hashable InventoryQueryOperatorType

instance Prelude.NFData InventoryQueryOperatorType

instance Prelude.ToByteString InventoryQueryOperatorType

instance Prelude.ToQuery InventoryQueryOperatorType

instance Prelude.ToHeader InventoryQueryOperatorType

instance Prelude.ToJSON InventoryQueryOperatorType where
  toJSON = Prelude.toJSONText
