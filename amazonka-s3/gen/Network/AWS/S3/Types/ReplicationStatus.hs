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
-- Module      : Network.AWS.S3.Types.ReplicationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ReplicationStatus
  ( ReplicationStatus
      ( ..,
        ReplicationStatusCOMPLETED,
        ReplicationStatusFAILED,
        ReplicationStatusPENDING,
        ReplicationStatusREPLICA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ReplicationStatus = ReplicationStatus'
  { fromReplicationStatus ::
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

pattern ReplicationStatusCOMPLETED :: ReplicationStatus
pattern ReplicationStatusCOMPLETED = ReplicationStatus' "COMPLETED"

pattern ReplicationStatusFAILED :: ReplicationStatus
pattern ReplicationStatusFAILED = ReplicationStatus' "FAILED"

pattern ReplicationStatusPENDING :: ReplicationStatus
pattern ReplicationStatusPENDING = ReplicationStatus' "PENDING"

pattern ReplicationStatusREPLICA :: ReplicationStatus
pattern ReplicationStatusREPLICA = ReplicationStatus' "REPLICA"

{-# COMPLETE
  ReplicationStatusCOMPLETED,
  ReplicationStatusFAILED,
  ReplicationStatusPENDING,
  ReplicationStatusREPLICA,
  ReplicationStatus'
  #-}

instance Prelude.FromText ReplicationStatus where
  parser = ReplicationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicationStatus where
  toText (ReplicationStatus' x) = x

instance Prelude.Hashable ReplicationStatus

instance Prelude.NFData ReplicationStatus

instance Prelude.ToByteString ReplicationStatus

instance Prelude.ToQuery ReplicationStatus

instance Prelude.ToHeader ReplicationStatus

instance Prelude.FromXML ReplicationStatus where
  parseXML = Prelude.parseXMLText "ReplicationStatus"
