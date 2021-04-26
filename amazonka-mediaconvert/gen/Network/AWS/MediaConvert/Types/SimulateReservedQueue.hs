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
-- Module      : Network.AWS.MediaConvert.Types.SimulateReservedQueue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.SimulateReservedQueue
  ( SimulateReservedQueue
      ( ..,
        SimulateReservedQueueDISABLED,
        SimulateReservedQueueENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enable this setting when you run a test job to estimate how many
-- reserved transcoding slots (RTS) you need. When this is enabled,
-- MediaConvert runs your job from an on-demand queue with similar
-- performance to what you will see with one RTS in a reserved queue. This
-- setting is disabled by default.
newtype SimulateReservedQueue = SimulateReservedQueue'
  { fromSimulateReservedQueue ::
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

pattern SimulateReservedQueueDISABLED :: SimulateReservedQueue
pattern SimulateReservedQueueDISABLED = SimulateReservedQueue' "DISABLED"

pattern SimulateReservedQueueENABLED :: SimulateReservedQueue
pattern SimulateReservedQueueENABLED = SimulateReservedQueue' "ENABLED"

{-# COMPLETE
  SimulateReservedQueueDISABLED,
  SimulateReservedQueueENABLED,
  SimulateReservedQueue'
  #-}

instance Prelude.FromText SimulateReservedQueue where
  parser = SimulateReservedQueue' Prelude.<$> Prelude.takeText

instance Prelude.ToText SimulateReservedQueue where
  toText (SimulateReservedQueue' x) = x

instance Prelude.Hashable SimulateReservedQueue

instance Prelude.NFData SimulateReservedQueue

instance Prelude.ToByteString SimulateReservedQueue

instance Prelude.ToQuery SimulateReservedQueue

instance Prelude.ToHeader SimulateReservedQueue

instance Prelude.ToJSON SimulateReservedQueue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SimulateReservedQueue where
  parseJSON = Prelude.parseJSONText "SimulateReservedQueue"
