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
-- Module      : Network.AWS.Lightsail.Types.InstanceHealthState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceHealthState
  ( InstanceHealthState
      ( ..,
        InstanceHealthStateDraining,
        InstanceHealthStateHealthy,
        InstanceHealthStateInitial,
        InstanceHealthStateUnavailable,
        InstanceHealthStateUnhealthy,
        InstanceHealthStateUnused
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceHealthState = InstanceHealthState'
  { fromInstanceHealthState ::
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

pattern InstanceHealthStateDraining :: InstanceHealthState
pattern InstanceHealthStateDraining = InstanceHealthState' "draining"

pattern InstanceHealthStateHealthy :: InstanceHealthState
pattern InstanceHealthStateHealthy = InstanceHealthState' "healthy"

pattern InstanceHealthStateInitial :: InstanceHealthState
pattern InstanceHealthStateInitial = InstanceHealthState' "initial"

pattern InstanceHealthStateUnavailable :: InstanceHealthState
pattern InstanceHealthStateUnavailable = InstanceHealthState' "unavailable"

pattern InstanceHealthStateUnhealthy :: InstanceHealthState
pattern InstanceHealthStateUnhealthy = InstanceHealthState' "unhealthy"

pattern InstanceHealthStateUnused :: InstanceHealthState
pattern InstanceHealthStateUnused = InstanceHealthState' "unused"

{-# COMPLETE
  InstanceHealthStateDraining,
  InstanceHealthStateHealthy,
  InstanceHealthStateInitial,
  InstanceHealthStateUnavailable,
  InstanceHealthStateUnhealthy,
  InstanceHealthStateUnused,
  InstanceHealthState'
  #-}

instance Prelude.FromText InstanceHealthState where
  parser = InstanceHealthState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceHealthState where
  toText (InstanceHealthState' x) = x

instance Prelude.Hashable InstanceHealthState

instance Prelude.NFData InstanceHealthState

instance Prelude.ToByteString InstanceHealthState

instance Prelude.ToQuery InstanceHealthState

instance Prelude.ToHeader InstanceHealthState

instance Prelude.FromJSON InstanceHealthState where
  parseJSON = Prelude.parseJSONText "InstanceHealthState"
