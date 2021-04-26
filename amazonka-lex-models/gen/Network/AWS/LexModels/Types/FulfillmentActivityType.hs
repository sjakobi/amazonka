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
-- Module      : Network.AWS.LexModels.Types.FulfillmentActivityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.FulfillmentActivityType
  ( FulfillmentActivityType
      ( ..,
        FulfillmentActivityTypeCodeHook,
        FulfillmentActivityTypeReturnIntent
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FulfillmentActivityType = FulfillmentActivityType'
  { fromFulfillmentActivityType ::
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

pattern FulfillmentActivityTypeCodeHook :: FulfillmentActivityType
pattern FulfillmentActivityTypeCodeHook = FulfillmentActivityType' "CodeHook"

pattern FulfillmentActivityTypeReturnIntent :: FulfillmentActivityType
pattern FulfillmentActivityTypeReturnIntent = FulfillmentActivityType' "ReturnIntent"

{-# COMPLETE
  FulfillmentActivityTypeCodeHook,
  FulfillmentActivityTypeReturnIntent,
  FulfillmentActivityType'
  #-}

instance Prelude.FromText FulfillmentActivityType where
  parser = FulfillmentActivityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FulfillmentActivityType where
  toText (FulfillmentActivityType' x) = x

instance Prelude.Hashable FulfillmentActivityType

instance Prelude.NFData FulfillmentActivityType

instance Prelude.ToByteString FulfillmentActivityType

instance Prelude.ToQuery FulfillmentActivityType

instance Prelude.ToHeader FulfillmentActivityType

instance Prelude.ToJSON FulfillmentActivityType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FulfillmentActivityType where
  parseJSON = Prelude.parseJSONText "FulfillmentActivityType"
