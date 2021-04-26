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
-- Module      : Network.AWS.LexRuntime.Types.FulfillmentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.FulfillmentState
  ( FulfillmentState
      ( ..,
        FulfillmentStateFailed,
        FulfillmentStateFulfilled,
        FulfillmentStateReadyForFulfillment
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FulfillmentState = FulfillmentState'
  { fromFulfillmentState ::
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

pattern FulfillmentStateFailed :: FulfillmentState
pattern FulfillmentStateFailed = FulfillmentState' "Failed"

pattern FulfillmentStateFulfilled :: FulfillmentState
pattern FulfillmentStateFulfilled = FulfillmentState' "Fulfilled"

pattern FulfillmentStateReadyForFulfillment :: FulfillmentState
pattern FulfillmentStateReadyForFulfillment = FulfillmentState' "ReadyForFulfillment"

{-# COMPLETE
  FulfillmentStateFailed,
  FulfillmentStateFulfilled,
  FulfillmentStateReadyForFulfillment,
  FulfillmentState'
  #-}

instance Prelude.FromText FulfillmentState where
  parser = FulfillmentState' Prelude.<$> Prelude.takeText

instance Prelude.ToText FulfillmentState where
  toText (FulfillmentState' x) = x

instance Prelude.Hashable FulfillmentState

instance Prelude.NFData FulfillmentState

instance Prelude.ToByteString FulfillmentState

instance Prelude.ToQuery FulfillmentState

instance Prelude.ToHeader FulfillmentState

instance Prelude.ToJSON FulfillmentState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FulfillmentState where
  parseJSON = Prelude.parseJSONText "FulfillmentState"
