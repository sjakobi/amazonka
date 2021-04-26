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
-- Module      : Network.AWS.SSM.Types.OpsFilterOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsFilterOperatorType
  ( OpsFilterOperatorType
      ( ..,
        OpsFilterOperatorTypeBeginWith,
        OpsFilterOperatorTypeEqual,
        OpsFilterOperatorTypeExists,
        OpsFilterOperatorTypeGreaterThan,
        OpsFilterOperatorTypeLessThan,
        OpsFilterOperatorTypeNotEqual
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OpsFilterOperatorType = OpsFilterOperatorType'
  { fromOpsFilterOperatorType ::
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

pattern OpsFilterOperatorTypeBeginWith :: OpsFilterOperatorType
pattern OpsFilterOperatorTypeBeginWith = OpsFilterOperatorType' "BeginWith"

pattern OpsFilterOperatorTypeEqual :: OpsFilterOperatorType
pattern OpsFilterOperatorTypeEqual = OpsFilterOperatorType' "Equal"

pattern OpsFilterOperatorTypeExists :: OpsFilterOperatorType
pattern OpsFilterOperatorTypeExists = OpsFilterOperatorType' "Exists"

pattern OpsFilterOperatorTypeGreaterThan :: OpsFilterOperatorType
pattern OpsFilterOperatorTypeGreaterThan = OpsFilterOperatorType' "GreaterThan"

pattern OpsFilterOperatorTypeLessThan :: OpsFilterOperatorType
pattern OpsFilterOperatorTypeLessThan = OpsFilterOperatorType' "LessThan"

pattern OpsFilterOperatorTypeNotEqual :: OpsFilterOperatorType
pattern OpsFilterOperatorTypeNotEqual = OpsFilterOperatorType' "NotEqual"

{-# COMPLETE
  OpsFilterOperatorTypeBeginWith,
  OpsFilterOperatorTypeEqual,
  OpsFilterOperatorTypeExists,
  OpsFilterOperatorTypeGreaterThan,
  OpsFilterOperatorTypeLessThan,
  OpsFilterOperatorTypeNotEqual,
  OpsFilterOperatorType'
  #-}

instance Prelude.FromText OpsFilterOperatorType where
  parser = OpsFilterOperatorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OpsFilterOperatorType where
  toText (OpsFilterOperatorType' x) = x

instance Prelude.Hashable OpsFilterOperatorType

instance Prelude.NFData OpsFilterOperatorType

instance Prelude.ToByteString OpsFilterOperatorType

instance Prelude.ToQuery OpsFilterOperatorType

instance Prelude.ToHeader OpsFilterOperatorType

instance Prelude.ToJSON OpsFilterOperatorType where
  toJSON = Prelude.toJSONText
