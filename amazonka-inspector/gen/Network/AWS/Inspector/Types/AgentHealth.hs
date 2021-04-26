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
-- Module      : Network.AWS.Inspector.Types.AgentHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AgentHealth
  ( AgentHealth
      ( ..,
        AgentHealthHEALTHY,
        AgentHealthUNHEALTHY,
        AgentHealthUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AgentHealth = AgentHealth'
  { fromAgentHealth ::
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

pattern AgentHealthHEALTHY :: AgentHealth
pattern AgentHealthHEALTHY = AgentHealth' "HEALTHY"

pattern AgentHealthUNHEALTHY :: AgentHealth
pattern AgentHealthUNHEALTHY = AgentHealth' "UNHEALTHY"

pattern AgentHealthUNKNOWN :: AgentHealth
pattern AgentHealthUNKNOWN = AgentHealth' "UNKNOWN"

{-# COMPLETE
  AgentHealthHEALTHY,
  AgentHealthUNHEALTHY,
  AgentHealthUNKNOWN,
  AgentHealth'
  #-}

instance Prelude.FromText AgentHealth where
  parser = AgentHealth' Prelude.<$> Prelude.takeText

instance Prelude.ToText AgentHealth where
  toText (AgentHealth' x) = x

instance Prelude.Hashable AgentHealth

instance Prelude.NFData AgentHealth

instance Prelude.ToByteString AgentHealth

instance Prelude.ToQuery AgentHealth

instance Prelude.ToHeader AgentHealth

instance Prelude.ToJSON AgentHealth where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AgentHealth where
  parseJSON = Prelude.parseJSONText "AgentHealth"
