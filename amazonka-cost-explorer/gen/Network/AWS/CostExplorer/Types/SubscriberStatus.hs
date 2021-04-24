{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.SubscriberStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SubscriberStatus
  ( SubscriberStatus
      ( ..,
        Confirmed,
        Declined
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SubscriberStatus = SubscriberStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Confirmed :: SubscriberStatus
pattern Confirmed = SubscriberStatus' "CONFIRMED"

pattern Declined :: SubscriberStatus
pattern Declined = SubscriberStatus' "DECLINED"

{-# COMPLETE
  Confirmed,
  Declined,
  SubscriberStatus'
  #-}

instance FromText SubscriberStatus where
  parser = (SubscriberStatus' . mk) <$> takeText

instance ToText SubscriberStatus where
  toText (SubscriberStatus' ci) = original ci

instance Hashable SubscriberStatus

instance NFData SubscriberStatus

instance ToByteString SubscriberStatus

instance ToQuery SubscriberStatus

instance ToHeader SubscriberStatus

instance ToJSON SubscriberStatus where
  toJSON = toJSONText

instance FromJSON SubscriberStatus where
  parseJSON = parseJSONText "SubscriberStatus"
