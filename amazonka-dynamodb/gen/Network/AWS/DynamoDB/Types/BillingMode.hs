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
-- Module      : Network.AWS.DynamoDB.Types.BillingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BillingMode
  ( BillingMode
      ( ..,
        BillingModePAYPERREQUEST,
        BillingModePROVISIONED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BillingMode = BillingMode'
  { fromBillingMode ::
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

pattern BillingModePAYPERREQUEST :: BillingMode
pattern BillingModePAYPERREQUEST = BillingMode' "PAY_PER_REQUEST"

pattern BillingModePROVISIONED :: BillingMode
pattern BillingModePROVISIONED = BillingMode' "PROVISIONED"

{-# COMPLETE
  BillingModePAYPERREQUEST,
  BillingModePROVISIONED,
  BillingMode'
  #-}

instance Prelude.FromText BillingMode where
  parser = BillingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText BillingMode where
  toText (BillingMode' x) = x

instance Prelude.Hashable BillingMode

instance Prelude.NFData BillingMode

instance Prelude.ToByteString BillingMode

instance Prelude.ToQuery BillingMode

instance Prelude.ToHeader BillingMode

instance Prelude.ToJSON BillingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BillingMode where
  parseJSON = Prelude.parseJSONText "BillingMode"
