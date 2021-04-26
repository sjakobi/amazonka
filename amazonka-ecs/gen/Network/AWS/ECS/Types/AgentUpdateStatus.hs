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
-- Module      : Network.AWS.ECS.Types.AgentUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.AgentUpdateStatus
  ( AgentUpdateStatus
      ( ..,
        AgentUpdateStatusFAILED,
        AgentUpdateStatusPENDING,
        AgentUpdateStatusSTAGED,
        AgentUpdateStatusSTAGING,
        AgentUpdateStatusUPDATED,
        AgentUpdateStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AgentUpdateStatus = AgentUpdateStatus'
  { fromAgentUpdateStatus ::
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

pattern AgentUpdateStatusFAILED :: AgentUpdateStatus
pattern AgentUpdateStatusFAILED = AgentUpdateStatus' "FAILED"

pattern AgentUpdateStatusPENDING :: AgentUpdateStatus
pattern AgentUpdateStatusPENDING = AgentUpdateStatus' "PENDING"

pattern AgentUpdateStatusSTAGED :: AgentUpdateStatus
pattern AgentUpdateStatusSTAGED = AgentUpdateStatus' "STAGED"

pattern AgentUpdateStatusSTAGING :: AgentUpdateStatus
pattern AgentUpdateStatusSTAGING = AgentUpdateStatus' "STAGING"

pattern AgentUpdateStatusUPDATED :: AgentUpdateStatus
pattern AgentUpdateStatusUPDATED = AgentUpdateStatus' "UPDATED"

pattern AgentUpdateStatusUPDATING :: AgentUpdateStatus
pattern AgentUpdateStatusUPDATING = AgentUpdateStatus' "UPDATING"

{-# COMPLETE
  AgentUpdateStatusFAILED,
  AgentUpdateStatusPENDING,
  AgentUpdateStatusSTAGED,
  AgentUpdateStatusSTAGING,
  AgentUpdateStatusUPDATED,
  AgentUpdateStatusUPDATING,
  AgentUpdateStatus'
  #-}

instance Prelude.FromText AgentUpdateStatus where
  parser = AgentUpdateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AgentUpdateStatus where
  toText (AgentUpdateStatus' x) = x

instance Prelude.Hashable AgentUpdateStatus

instance Prelude.NFData AgentUpdateStatus

instance Prelude.ToByteString AgentUpdateStatus

instance Prelude.ToQuery AgentUpdateStatus

instance Prelude.ToHeader AgentUpdateStatus

instance Prelude.FromJSON AgentUpdateStatus where
  parseJSON = Prelude.parseJSONText "AgentUpdateStatus"
