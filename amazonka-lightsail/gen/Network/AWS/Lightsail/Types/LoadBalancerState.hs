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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerState
  ( LoadBalancerState
      ( ..,
        LoadBalancerStateActive,
        LoadBalancerStateActiveImpaired,
        LoadBalancerStateFailed,
        LoadBalancerStateProvisioning,
        LoadBalancerStateUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerState = LoadBalancerState'
  { fromLoadBalancerState ::
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

pattern LoadBalancerStateActive :: LoadBalancerState
pattern LoadBalancerStateActive = LoadBalancerState' "active"

pattern LoadBalancerStateActiveImpaired :: LoadBalancerState
pattern LoadBalancerStateActiveImpaired = LoadBalancerState' "active_impaired"

pattern LoadBalancerStateFailed :: LoadBalancerState
pattern LoadBalancerStateFailed = LoadBalancerState' "failed"

pattern LoadBalancerStateProvisioning :: LoadBalancerState
pattern LoadBalancerStateProvisioning = LoadBalancerState' "provisioning"

pattern LoadBalancerStateUnknown :: LoadBalancerState
pattern LoadBalancerStateUnknown = LoadBalancerState' "unknown"

{-# COMPLETE
  LoadBalancerStateActive,
  LoadBalancerStateActiveImpaired,
  LoadBalancerStateFailed,
  LoadBalancerStateProvisioning,
  LoadBalancerStateUnknown,
  LoadBalancerState'
  #-}

instance Prelude.FromText LoadBalancerState where
  parser = LoadBalancerState' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerState where
  toText (LoadBalancerState' x) = x

instance Prelude.Hashable LoadBalancerState

instance Prelude.NFData LoadBalancerState

instance Prelude.ToByteString LoadBalancerState

instance Prelude.ToQuery LoadBalancerState

instance Prelude.ToHeader LoadBalancerState

instance Prelude.FromJSON LoadBalancerState where
  parseJSON = Prelude.parseJSONText "LoadBalancerState"
