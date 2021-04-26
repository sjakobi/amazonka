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
-- Module      : Network.AWS.ElastiCache.Types.NodeUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.NodeUpdateStatus
  ( NodeUpdateStatus
      ( ..,
        NodeUpdateStatusComplete,
        NodeUpdateStatusInProgress,
        NodeUpdateStatusNotApplied,
        NodeUpdateStatusStopped,
        NodeUpdateStatusStopping,
        NodeUpdateStatusWaitingToStart
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NodeUpdateStatus = NodeUpdateStatus'
  { fromNodeUpdateStatus ::
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

pattern NodeUpdateStatusComplete :: NodeUpdateStatus
pattern NodeUpdateStatusComplete = NodeUpdateStatus' "complete"

pattern NodeUpdateStatusInProgress :: NodeUpdateStatus
pattern NodeUpdateStatusInProgress = NodeUpdateStatus' "in-progress"

pattern NodeUpdateStatusNotApplied :: NodeUpdateStatus
pattern NodeUpdateStatusNotApplied = NodeUpdateStatus' "not-applied"

pattern NodeUpdateStatusStopped :: NodeUpdateStatus
pattern NodeUpdateStatusStopped = NodeUpdateStatus' "stopped"

pattern NodeUpdateStatusStopping :: NodeUpdateStatus
pattern NodeUpdateStatusStopping = NodeUpdateStatus' "stopping"

pattern NodeUpdateStatusWaitingToStart :: NodeUpdateStatus
pattern NodeUpdateStatusWaitingToStart = NodeUpdateStatus' "waiting-to-start"

{-# COMPLETE
  NodeUpdateStatusComplete,
  NodeUpdateStatusInProgress,
  NodeUpdateStatusNotApplied,
  NodeUpdateStatusStopped,
  NodeUpdateStatusStopping,
  NodeUpdateStatusWaitingToStart,
  NodeUpdateStatus'
  #-}

instance Prelude.FromText NodeUpdateStatus where
  parser = NodeUpdateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText NodeUpdateStatus where
  toText (NodeUpdateStatus' x) = x

instance Prelude.Hashable NodeUpdateStatus

instance Prelude.NFData NodeUpdateStatus

instance Prelude.ToByteString NodeUpdateStatus

instance Prelude.ToQuery NodeUpdateStatus

instance Prelude.ToHeader NodeUpdateStatus

instance Prelude.FromXML NodeUpdateStatus where
  parseXML = Prelude.parseXMLText "NodeUpdateStatus"
