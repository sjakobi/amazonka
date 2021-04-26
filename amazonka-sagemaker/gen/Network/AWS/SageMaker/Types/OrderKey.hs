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
-- Module      : Network.AWS.SageMaker.Types.OrderKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.OrderKey
  ( OrderKey
      ( ..,
        OrderKeyAscending,
        OrderKeyDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrderKey = OrderKey'
  { fromOrderKey ::
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

pattern OrderKeyAscending :: OrderKey
pattern OrderKeyAscending = OrderKey' "Ascending"

pattern OrderKeyDescending :: OrderKey
pattern OrderKeyDescending = OrderKey' "Descending"

{-# COMPLETE
  OrderKeyAscending,
  OrderKeyDescending,
  OrderKey'
  #-}

instance Prelude.FromText OrderKey where
  parser = OrderKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrderKey where
  toText (OrderKey' x) = x

instance Prelude.Hashable OrderKey

instance Prelude.NFData OrderKey

instance Prelude.ToByteString OrderKey

instance Prelude.ToQuery OrderKey

instance Prelude.ToHeader OrderKey

instance Prelude.ToJSON OrderKey where
  toJSON = Prelude.toJSONText
