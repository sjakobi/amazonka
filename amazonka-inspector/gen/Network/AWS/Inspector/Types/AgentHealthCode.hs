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
-- Module      : Network.AWS.Inspector.Types.AgentHealthCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AgentHealthCode
  ( AgentHealthCode
      ( ..,
        AgentHealthCodeIDLE,
        AgentHealthCodeRUNNING,
        AgentHealthCodeSHUTDOWN,
        AgentHealthCodeTHROTTLED,
        AgentHealthCodeUNHEALTHY,
        AgentHealthCodeUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AgentHealthCode = AgentHealthCode'
  { fromAgentHealthCode ::
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

pattern AgentHealthCodeIDLE :: AgentHealthCode
pattern AgentHealthCodeIDLE = AgentHealthCode' "IDLE"

pattern AgentHealthCodeRUNNING :: AgentHealthCode
pattern AgentHealthCodeRUNNING = AgentHealthCode' "RUNNING"

pattern AgentHealthCodeSHUTDOWN :: AgentHealthCode
pattern AgentHealthCodeSHUTDOWN = AgentHealthCode' "SHUTDOWN"

pattern AgentHealthCodeTHROTTLED :: AgentHealthCode
pattern AgentHealthCodeTHROTTLED = AgentHealthCode' "THROTTLED"

pattern AgentHealthCodeUNHEALTHY :: AgentHealthCode
pattern AgentHealthCodeUNHEALTHY = AgentHealthCode' "UNHEALTHY"

pattern AgentHealthCodeUNKNOWN :: AgentHealthCode
pattern AgentHealthCodeUNKNOWN = AgentHealthCode' "UNKNOWN"

{-# COMPLETE
  AgentHealthCodeIDLE,
  AgentHealthCodeRUNNING,
  AgentHealthCodeSHUTDOWN,
  AgentHealthCodeTHROTTLED,
  AgentHealthCodeUNHEALTHY,
  AgentHealthCodeUNKNOWN,
  AgentHealthCode'
  #-}

instance Prelude.FromText AgentHealthCode where
  parser = AgentHealthCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AgentHealthCode where
  toText (AgentHealthCode' x) = x

instance Prelude.Hashable AgentHealthCode

instance Prelude.NFData AgentHealthCode

instance Prelude.ToByteString AgentHealthCode

instance Prelude.ToQuery AgentHealthCode

instance Prelude.ToHeader AgentHealthCode

instance Prelude.ToJSON AgentHealthCode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AgentHealthCode where
  parseJSON = Prelude.parseJSONText "AgentHealthCode"
