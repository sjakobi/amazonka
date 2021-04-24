{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CodeHook,
        ReturnIntent
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FulfillmentActivityType
  = FulfillmentActivityType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CodeHook :: FulfillmentActivityType
pattern CodeHook = FulfillmentActivityType' "CodeHook"

pattern ReturnIntent :: FulfillmentActivityType
pattern ReturnIntent = FulfillmentActivityType' "ReturnIntent"

{-# COMPLETE
  CodeHook,
  ReturnIntent,
  FulfillmentActivityType'
  #-}

instance FromText FulfillmentActivityType where
  parser = (FulfillmentActivityType' . mk) <$> takeText

instance ToText FulfillmentActivityType where
  toText (FulfillmentActivityType' ci) = original ci

instance Hashable FulfillmentActivityType

instance NFData FulfillmentActivityType

instance ToByteString FulfillmentActivityType

instance ToQuery FulfillmentActivityType

instance ToHeader FulfillmentActivityType

instance ToJSON FulfillmentActivityType where
  toJSON = toJSONText

instance FromJSON FulfillmentActivityType where
  parseJSON = parseJSONText "FulfillmentActivityType"
