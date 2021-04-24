{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerState
  ( LoadBalancerState
      ( ..,
        LBSActive,
        LBSActiveImpaired,
        LBSFailed,
        LBSProvisioning,
        LBSUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoadBalancerState = LoadBalancerState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LBSActive :: LoadBalancerState
pattern LBSActive = LoadBalancerState' "active"

pattern LBSActiveImpaired :: LoadBalancerState
pattern LBSActiveImpaired = LoadBalancerState' "active_impaired"

pattern LBSFailed :: LoadBalancerState
pattern LBSFailed = LoadBalancerState' "failed"

pattern LBSProvisioning :: LoadBalancerState
pattern LBSProvisioning = LoadBalancerState' "provisioning"

pattern LBSUnknown :: LoadBalancerState
pattern LBSUnknown = LoadBalancerState' "unknown"

{-# COMPLETE
  LBSActive,
  LBSActiveImpaired,
  LBSFailed,
  LBSProvisioning,
  LBSUnknown,
  LoadBalancerState'
  #-}

instance FromText LoadBalancerState where
  parser = (LoadBalancerState' . mk) <$> takeText

instance ToText LoadBalancerState where
  toText (LoadBalancerState' ci) = original ci

instance Hashable LoadBalancerState

instance NFData LoadBalancerState

instance ToByteString LoadBalancerState

instance ToQuery LoadBalancerState

instance ToHeader LoadBalancerState

instance FromJSON LoadBalancerState where
  parseJSON = parseJSONText "LoadBalancerState"
