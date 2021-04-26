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
-- Module      : Network.AWS.S3.Types.ReplicationRuleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ReplicationRuleStatus
  ( ReplicationRuleStatus
      ( ..,
        ReplicationRuleStatusDisabled,
        ReplicationRuleStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ReplicationRuleStatus = ReplicationRuleStatus'
  { fromReplicationRuleStatus ::
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

pattern ReplicationRuleStatusDisabled :: ReplicationRuleStatus
pattern ReplicationRuleStatusDisabled = ReplicationRuleStatus' "Disabled"

pattern ReplicationRuleStatusEnabled :: ReplicationRuleStatus
pattern ReplicationRuleStatusEnabled = ReplicationRuleStatus' "Enabled"

{-# COMPLETE
  ReplicationRuleStatusDisabled,
  ReplicationRuleStatusEnabled,
  ReplicationRuleStatus'
  #-}

instance Prelude.FromText ReplicationRuleStatus where
  parser = ReplicationRuleStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicationRuleStatus where
  toText (ReplicationRuleStatus' x) = x

instance Prelude.Hashable ReplicationRuleStatus

instance Prelude.NFData ReplicationRuleStatus

instance Prelude.ToByteString ReplicationRuleStatus

instance Prelude.ToQuery ReplicationRuleStatus

instance Prelude.ToHeader ReplicationRuleStatus

instance Prelude.FromXML ReplicationRuleStatus where
  parseXML = Prelude.parseXMLText "ReplicationRuleStatus"

instance Prelude.ToXML ReplicationRuleStatus where
  toXML = Prelude.toXMLText
