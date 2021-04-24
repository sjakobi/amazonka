{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        FSFailed,
        FSFulfilled,
        FSReadyForFulfillment
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FulfillmentState = FulfillmentState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FSFailed :: FulfillmentState
pattern FSFailed = FulfillmentState' "Failed"

pattern FSFulfilled :: FulfillmentState
pattern FSFulfilled = FulfillmentState' "Fulfilled"

pattern FSReadyForFulfillment :: FulfillmentState
pattern FSReadyForFulfillment = FulfillmentState' "ReadyForFulfillment"

{-# COMPLETE
  FSFailed,
  FSFulfilled,
  FSReadyForFulfillment,
  FulfillmentState'
  #-}

instance FromText FulfillmentState where
  parser = (FulfillmentState' . mk) <$> takeText

instance ToText FulfillmentState where
  toText (FulfillmentState' ci) = original ci

instance Hashable FulfillmentState

instance NFData FulfillmentState

instance ToByteString FulfillmentState

instance ToQuery FulfillmentState

instance ToHeader FulfillmentState

instance ToJSON FulfillmentState where
  toJSON = toJSONText

instance FromJSON FulfillmentState where
  parseJSON = parseJSONText "FulfillmentState"
