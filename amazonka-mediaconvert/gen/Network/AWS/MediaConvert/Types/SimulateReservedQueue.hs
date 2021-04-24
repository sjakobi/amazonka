{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        SRQDisabled,
        SRQEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default.
data SimulateReservedQueue
  = SimulateReservedQueue'
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

pattern SRQDisabled :: SimulateReservedQueue
pattern SRQDisabled = SimulateReservedQueue' "DISABLED"

pattern SRQEnabled :: SimulateReservedQueue
pattern SRQEnabled = SimulateReservedQueue' "ENABLED"

{-# COMPLETE
  SRQDisabled,
  SRQEnabled,
  SimulateReservedQueue'
  #-}

instance FromText SimulateReservedQueue where
  parser = (SimulateReservedQueue' . mk) <$> takeText

instance ToText SimulateReservedQueue where
  toText (SimulateReservedQueue' ci) = original ci

instance Hashable SimulateReservedQueue

instance NFData SimulateReservedQueue

instance ToByteString SimulateReservedQueue

instance ToQuery SimulateReservedQueue

instance ToHeader SimulateReservedQueue

instance ToJSON SimulateReservedQueue where
  toJSON = toJSONText

instance FromJSON SimulateReservedQueue where
  parseJSON = parseJSONText "SimulateReservedQueue"
