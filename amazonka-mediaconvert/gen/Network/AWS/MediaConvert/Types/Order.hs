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
-- Module      : Network.AWS.MediaConvert.Types.Order
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Order
  ( Order
      ( ..,
        OrderASCENDING,
        OrderDESCENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. When you request lists of resources, you can specify whether
-- they are sorted in ASCENDING or DESCENDING order. Default varies by
-- resource.
newtype Order = Order' {fromOrder :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern OrderASCENDING :: Order
pattern OrderASCENDING = Order' "ASCENDING"

pattern OrderDESCENDING :: Order
pattern OrderDESCENDING = Order' "DESCENDING"

{-# COMPLETE
  OrderASCENDING,
  OrderDESCENDING,
  Order'
  #-}

instance Prelude.FromText Order where
  parser = Order' Prelude.<$> Prelude.takeText

instance Prelude.ToText Order where
  toText (Order' x) = x

instance Prelude.Hashable Order

instance Prelude.NFData Order

instance Prelude.ToByteString Order

instance Prelude.ToQuery Order

instance Prelude.ToHeader Order

instance Prelude.ToJSON Order where
  toJSON = Prelude.toJSONText
