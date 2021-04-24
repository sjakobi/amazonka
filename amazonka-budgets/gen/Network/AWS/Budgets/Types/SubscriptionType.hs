{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.SubscriptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.SubscriptionType
  ( SubscriptionType
      ( ..,
        Email,
        SNS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The subscription type of the subscriber. It can be SMS or EMAIL.
data SubscriptionType = SubscriptionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Email :: SubscriptionType
pattern Email = SubscriptionType' "EMAIL"

pattern SNS :: SubscriptionType
pattern SNS = SubscriptionType' "SNS"

{-# COMPLETE
  Email,
  SNS,
  SubscriptionType'
  #-}

instance FromText SubscriptionType where
  parser = (SubscriptionType' . mk) <$> takeText

instance ToText SubscriptionType where
  toText (SubscriptionType' ci) = original ci

instance Hashable SubscriptionType

instance NFData SubscriptionType

instance ToByteString SubscriptionType

instance ToQuery SubscriptionType

instance ToHeader SubscriptionType

instance ToJSON SubscriptionType where
  toJSON = toJSONText

instance FromJSON SubscriptionType where
  parseJSON = parseJSONText "SubscriptionType"
