{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.Types.ReachabilityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.ReachabilityStatus
  ( ReachabilityStatus
      ( ..,
        Done,
        Expired,
        Pending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReachabilityStatus
  = ReachabilityStatus'
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

pattern Done :: ReachabilityStatus
pattern Done = ReachabilityStatus' "DONE"

pattern Expired :: ReachabilityStatus
pattern Expired = ReachabilityStatus' "EXPIRED"

pattern Pending :: ReachabilityStatus
pattern Pending = ReachabilityStatus' "PENDING"

{-# COMPLETE
  Done,
  Expired,
  Pending,
  ReachabilityStatus'
  #-}

instance FromText ReachabilityStatus where
  parser = (ReachabilityStatus' . mk) <$> takeText

instance ToText ReachabilityStatus where
  toText (ReachabilityStatus' ci) = original ci

instance Hashable ReachabilityStatus

instance NFData ReachabilityStatus

instance ToByteString ReachabilityStatus

instance ToQuery ReachabilityStatus

instance ToHeader ReachabilityStatus

instance FromJSON ReachabilityStatus where
  parseJSON = parseJSONText "ReachabilityStatus"
