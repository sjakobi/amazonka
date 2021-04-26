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
-- Module      : Network.AWS.Route53AutoNaming.Types.FilterCondition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.FilterCondition
  ( FilterCondition
      ( ..,
        FilterConditionBETWEEN,
        FilterConditionEQ,
        FilterConditionIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FilterCondition = FilterCondition'
  { fromFilterCondition ::
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

pattern FilterConditionBETWEEN :: FilterCondition
pattern FilterConditionBETWEEN = FilterCondition' "BETWEEN"

pattern FilterConditionEQ :: FilterCondition
pattern FilterConditionEQ = FilterCondition' "EQ"

pattern FilterConditionIN :: FilterCondition
pattern FilterConditionIN = FilterCondition' "IN"

{-# COMPLETE
  FilterConditionBETWEEN,
  FilterConditionEQ,
  FilterConditionIN,
  FilterCondition'
  #-}

instance Prelude.FromText FilterCondition where
  parser = FilterCondition' Prelude.<$> Prelude.takeText

instance Prelude.ToText FilterCondition where
  toText (FilterCondition' x) = x

instance Prelude.Hashable FilterCondition

instance Prelude.NFData FilterCondition

instance Prelude.ToByteString FilterCondition

instance Prelude.ToQuery FilterCondition

instance Prelude.ToHeader FilterCondition

instance Prelude.ToJSON FilterCondition where
  toJSON = Prelude.toJSONText
