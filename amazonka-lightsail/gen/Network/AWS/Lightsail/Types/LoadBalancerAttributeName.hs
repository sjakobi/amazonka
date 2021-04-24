{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerAttributeName
  ( LoadBalancerAttributeName
      ( ..,
        HealthCheckPath,
        SessionStickinessEnabled,
        SessionStickinessLbCookieDurationSeconds
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoadBalancerAttributeName
  = LoadBalancerAttributeName'
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

pattern HealthCheckPath :: LoadBalancerAttributeName
pattern HealthCheckPath = LoadBalancerAttributeName' "HealthCheckPath"

pattern SessionStickinessEnabled :: LoadBalancerAttributeName
pattern SessionStickinessEnabled = LoadBalancerAttributeName' "SessionStickinessEnabled"

pattern SessionStickinessLbCookieDurationSeconds :: LoadBalancerAttributeName
pattern SessionStickinessLbCookieDurationSeconds = LoadBalancerAttributeName' "SessionStickiness_LB_CookieDurationSeconds"

{-# COMPLETE
  HealthCheckPath,
  SessionStickinessEnabled,
  SessionStickinessLbCookieDurationSeconds,
  LoadBalancerAttributeName'
  #-}

instance FromText LoadBalancerAttributeName where
  parser = (LoadBalancerAttributeName' . mk) <$> takeText

instance ToText LoadBalancerAttributeName where
  toText (LoadBalancerAttributeName' ci) = original ci

instance Hashable LoadBalancerAttributeName

instance NFData LoadBalancerAttributeName

instance ToByteString LoadBalancerAttributeName

instance ToQuery LoadBalancerAttributeName

instance ToHeader LoadBalancerAttributeName

instance ToJSON LoadBalancerAttributeName where
  toJSON = toJSONText

instance FromJSON LoadBalancerAttributeName where
  parseJSON = parseJSONText "LoadBalancerAttributeName"
