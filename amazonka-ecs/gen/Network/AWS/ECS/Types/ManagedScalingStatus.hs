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
-- Module      : Network.AWS.ECS.Types.ManagedScalingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ManagedScalingStatus
  ( ManagedScalingStatus
      ( ..,
        ManagedScalingStatusDISABLED,
        ManagedScalingStatusENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ManagedScalingStatus = ManagedScalingStatus'
  { fromManagedScalingStatus ::
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

pattern ManagedScalingStatusDISABLED :: ManagedScalingStatus
pattern ManagedScalingStatusDISABLED = ManagedScalingStatus' "DISABLED"

pattern ManagedScalingStatusENABLED :: ManagedScalingStatus
pattern ManagedScalingStatusENABLED = ManagedScalingStatus' "ENABLED"

{-# COMPLETE
  ManagedScalingStatusDISABLED,
  ManagedScalingStatusENABLED,
  ManagedScalingStatus'
  #-}

instance Prelude.FromText ManagedScalingStatus where
  parser = ManagedScalingStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ManagedScalingStatus where
  toText (ManagedScalingStatus' x) = x

instance Prelude.Hashable ManagedScalingStatus

instance Prelude.NFData ManagedScalingStatus

instance Prelude.ToByteString ManagedScalingStatus

instance Prelude.ToQuery ManagedScalingStatus

instance Prelude.ToHeader ManagedScalingStatus

instance Prelude.ToJSON ManagedScalingStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ManagedScalingStatus where
  parseJSON = Prelude.parseJSONText "ManagedScalingStatus"
