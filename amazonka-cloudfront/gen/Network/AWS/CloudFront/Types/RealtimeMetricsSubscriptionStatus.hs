{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.RealtimeMetricsSubscriptionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.RealtimeMetricsSubscriptionStatus
  ( RealtimeMetricsSubscriptionStatus
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RealtimeMetricsSubscriptionStatus
  = RealtimeMetricsSubscriptionStatus'
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

pattern Disabled :: RealtimeMetricsSubscriptionStatus
pattern Disabled = RealtimeMetricsSubscriptionStatus' "Disabled"

pattern Enabled :: RealtimeMetricsSubscriptionStatus
pattern Enabled = RealtimeMetricsSubscriptionStatus' "Enabled"

{-# COMPLETE
  Disabled,
  Enabled,
  RealtimeMetricsSubscriptionStatus'
  #-}

instance FromText RealtimeMetricsSubscriptionStatus where
  parser = (RealtimeMetricsSubscriptionStatus' . mk) <$> takeText

instance ToText RealtimeMetricsSubscriptionStatus where
  toText (RealtimeMetricsSubscriptionStatus' ci) = original ci

instance Hashable RealtimeMetricsSubscriptionStatus

instance NFData RealtimeMetricsSubscriptionStatus

instance ToByteString RealtimeMetricsSubscriptionStatus

instance ToQuery RealtimeMetricsSubscriptionStatus

instance ToHeader RealtimeMetricsSubscriptionStatus

instance FromXML RealtimeMetricsSubscriptionStatus where
  parseXML = parseXMLText "RealtimeMetricsSubscriptionStatus"

instance ToXML RealtimeMetricsSubscriptionStatus where
  toXML = toXMLText
