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
-- Module      : Network.AWS.S3.Types.ReplicationTimeStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ReplicationTimeStatus
  ( ReplicationTimeStatus
      ( ..,
        ReplicationTimeStatusDisabled,
        ReplicationTimeStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ReplicationTimeStatus = ReplicationTimeStatus'
  { fromReplicationTimeStatus ::
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

pattern ReplicationTimeStatusDisabled :: ReplicationTimeStatus
pattern ReplicationTimeStatusDisabled = ReplicationTimeStatus' "Disabled"

pattern ReplicationTimeStatusEnabled :: ReplicationTimeStatus
pattern ReplicationTimeStatusEnabled = ReplicationTimeStatus' "Enabled"

{-# COMPLETE
  ReplicationTimeStatusDisabled,
  ReplicationTimeStatusEnabled,
  ReplicationTimeStatus'
  #-}

instance Prelude.FromText ReplicationTimeStatus where
  parser = ReplicationTimeStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicationTimeStatus where
  toText (ReplicationTimeStatus' x) = x

instance Prelude.Hashable ReplicationTimeStatus

instance Prelude.NFData ReplicationTimeStatus

instance Prelude.ToByteString ReplicationTimeStatus

instance Prelude.ToQuery ReplicationTimeStatus

instance Prelude.ToHeader ReplicationTimeStatus

instance Prelude.FromXML ReplicationTimeStatus where
  parseXML = Prelude.parseXMLText "ReplicationTimeStatus"

instance Prelude.ToXML ReplicationTimeStatus where
  toXML = Prelude.toXMLText
