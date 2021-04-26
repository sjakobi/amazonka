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
-- Module      : Network.AWS.SSM.Types.InstancePatchStateOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InstancePatchStateOperatorType
  ( InstancePatchStateOperatorType
      ( ..,
        InstancePatchStateOperatorTypeEqual,
        InstancePatchStateOperatorTypeGreaterThan,
        InstancePatchStateOperatorTypeLessThan,
        InstancePatchStateOperatorTypeNotEqual
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstancePatchStateOperatorType = InstancePatchStateOperatorType'
  { fromInstancePatchStateOperatorType ::
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

pattern InstancePatchStateOperatorTypeEqual :: InstancePatchStateOperatorType
pattern InstancePatchStateOperatorTypeEqual = InstancePatchStateOperatorType' "Equal"

pattern InstancePatchStateOperatorTypeGreaterThan :: InstancePatchStateOperatorType
pattern InstancePatchStateOperatorTypeGreaterThan = InstancePatchStateOperatorType' "GreaterThan"

pattern InstancePatchStateOperatorTypeLessThan :: InstancePatchStateOperatorType
pattern InstancePatchStateOperatorTypeLessThan = InstancePatchStateOperatorType' "LessThan"

pattern InstancePatchStateOperatorTypeNotEqual :: InstancePatchStateOperatorType
pattern InstancePatchStateOperatorTypeNotEqual = InstancePatchStateOperatorType' "NotEqual"

{-# COMPLETE
  InstancePatchStateOperatorTypeEqual,
  InstancePatchStateOperatorTypeGreaterThan,
  InstancePatchStateOperatorTypeLessThan,
  InstancePatchStateOperatorTypeNotEqual,
  InstancePatchStateOperatorType'
  #-}

instance Prelude.FromText InstancePatchStateOperatorType where
  parser = InstancePatchStateOperatorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstancePatchStateOperatorType where
  toText (InstancePatchStateOperatorType' x) = x

instance Prelude.Hashable InstancePatchStateOperatorType

instance Prelude.NFData InstancePatchStateOperatorType

instance Prelude.ToByteString InstancePatchStateOperatorType

instance Prelude.ToQuery InstancePatchStateOperatorType

instance Prelude.ToHeader InstancePatchStateOperatorType

instance Prelude.ToJSON InstancePatchStateOperatorType where
  toJSON = Prelude.toJSONText
