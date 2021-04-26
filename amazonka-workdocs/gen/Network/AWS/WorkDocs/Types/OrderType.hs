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
-- Module      : Network.AWS.WorkDocs.Types.OrderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.OrderType
  ( OrderType
      ( ..,
        OrderTypeASCENDING,
        OrderTypeDESCENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrderType = OrderType'
  { fromOrderType ::
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

pattern OrderTypeASCENDING :: OrderType
pattern OrderTypeASCENDING = OrderType' "ASCENDING"

pattern OrderTypeDESCENDING :: OrderType
pattern OrderTypeDESCENDING = OrderType' "DESCENDING"

{-# COMPLETE
  OrderTypeASCENDING,
  OrderTypeDESCENDING,
  OrderType'
  #-}

instance Prelude.FromText OrderType where
  parser = OrderType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrderType where
  toText (OrderType' x) = x

instance Prelude.Hashable OrderType

instance Prelude.NFData OrderType

instance Prelude.ToByteString OrderType

instance Prelude.ToQuery OrderType

instance Prelude.ToHeader OrderType

instance Prelude.ToJSON OrderType where
  toJSON = Prelude.toJSONText
