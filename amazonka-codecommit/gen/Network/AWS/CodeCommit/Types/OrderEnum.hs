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
-- Module      : Network.AWS.CodeCommit.Types.OrderEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.OrderEnum
  ( OrderEnum
      ( ..,
        OrderEnumAscending,
        OrderEnumDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrderEnum = OrderEnum'
  { fromOrderEnum ::
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

pattern OrderEnumAscending :: OrderEnum
pattern OrderEnumAscending = OrderEnum' "ascending"

pattern OrderEnumDescending :: OrderEnum
pattern OrderEnumDescending = OrderEnum' "descending"

{-# COMPLETE
  OrderEnumAscending,
  OrderEnumDescending,
  OrderEnum'
  #-}

instance Prelude.FromText OrderEnum where
  parser = OrderEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrderEnum where
  toText (OrderEnum' x) = x

instance Prelude.Hashable OrderEnum

instance Prelude.NFData OrderEnum

instance Prelude.ToByteString OrderEnum

instance Prelude.ToQuery OrderEnum

instance Prelude.ToHeader OrderEnum

instance Prelude.ToJSON OrderEnum where
  toJSON = Prelude.toJSONText
