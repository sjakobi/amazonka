{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.SubscriptionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.SubscriptionState
  ( SubscriptionState
      ( ..,
        Active,
        Inactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SubscriptionState = SubscriptionState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: SubscriptionState
pattern Active = SubscriptionState' "ACTIVE"

pattern Inactive :: SubscriptionState
pattern Inactive = SubscriptionState' "INACTIVE"

{-# COMPLETE
  Active,
  Inactive,
  SubscriptionState'
  #-}

instance FromText SubscriptionState where
  parser = (SubscriptionState' . mk) <$> takeText

instance ToText SubscriptionState where
  toText (SubscriptionState' ci) = original ci

instance Hashable SubscriptionState

instance NFData SubscriptionState

instance ToByteString SubscriptionState

instance ToQuery SubscriptionState

instance ToHeader SubscriptionState

instance FromJSON SubscriptionState where
  parseJSON = parseJSONText "SubscriptionState"
