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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerAttributeName
  ( LoadBalancerAttributeName
      ( ..,
        LoadBalancerAttributeNameHealthCheckPath,
        LoadBalancerAttributeNameSessionStickinessEnabled,
        LoadBalancerAttributeNameSessionStickinessLBCookieDurationSeconds
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerAttributeName = LoadBalancerAttributeName'
  { fromLoadBalancerAttributeName ::
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

pattern LoadBalancerAttributeNameHealthCheckPath :: LoadBalancerAttributeName
pattern LoadBalancerAttributeNameHealthCheckPath = LoadBalancerAttributeName' "HealthCheckPath"

pattern LoadBalancerAttributeNameSessionStickinessEnabled :: LoadBalancerAttributeName
pattern LoadBalancerAttributeNameSessionStickinessEnabled = LoadBalancerAttributeName' "SessionStickinessEnabled"

pattern LoadBalancerAttributeNameSessionStickinessLBCookieDurationSeconds :: LoadBalancerAttributeName
pattern LoadBalancerAttributeNameSessionStickinessLBCookieDurationSeconds = LoadBalancerAttributeName' "SessionStickiness_LB_CookieDurationSeconds"

{-# COMPLETE
  LoadBalancerAttributeNameHealthCheckPath,
  LoadBalancerAttributeNameSessionStickinessEnabled,
  LoadBalancerAttributeNameSessionStickinessLBCookieDurationSeconds,
  LoadBalancerAttributeName'
  #-}

instance Prelude.FromText LoadBalancerAttributeName where
  parser = LoadBalancerAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerAttributeName where
  toText (LoadBalancerAttributeName' x) = x

instance Prelude.Hashable LoadBalancerAttributeName

instance Prelude.NFData LoadBalancerAttributeName

instance Prelude.ToByteString LoadBalancerAttributeName

instance Prelude.ToQuery LoadBalancerAttributeName

instance Prelude.ToHeader LoadBalancerAttributeName

instance Prelude.ToJSON LoadBalancerAttributeName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LoadBalancerAttributeName where
  parseJSON = Prelude.parseJSONText "LoadBalancerAttributeName"
