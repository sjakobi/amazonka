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
-- Module      : Network.AWS.S3.Types.ReplicaModificationsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ReplicaModificationsStatus
  ( ReplicaModificationsStatus
      ( ..,
        ReplicaModificationsStatusDisabled,
        ReplicaModificationsStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ReplicaModificationsStatus = ReplicaModificationsStatus'
  { fromReplicaModificationsStatus ::
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

pattern ReplicaModificationsStatusDisabled :: ReplicaModificationsStatus
pattern ReplicaModificationsStatusDisabled = ReplicaModificationsStatus' "Disabled"

pattern ReplicaModificationsStatusEnabled :: ReplicaModificationsStatus
pattern ReplicaModificationsStatusEnabled = ReplicaModificationsStatus' "Enabled"

{-# COMPLETE
  ReplicaModificationsStatusDisabled,
  ReplicaModificationsStatusEnabled,
  ReplicaModificationsStatus'
  #-}

instance Prelude.FromText ReplicaModificationsStatus where
  parser = ReplicaModificationsStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicaModificationsStatus where
  toText (ReplicaModificationsStatus' x) = x

instance Prelude.Hashable ReplicaModificationsStatus

instance Prelude.NFData ReplicaModificationsStatus

instance Prelude.ToByteString ReplicaModificationsStatus

instance Prelude.ToQuery ReplicaModificationsStatus

instance Prelude.ToHeader ReplicaModificationsStatus

instance Prelude.FromXML ReplicaModificationsStatus where
  parseXML = Prelude.parseXMLText "ReplicaModificationsStatus"

instance Prelude.ToXML ReplicaModificationsStatus where
  toXML = Prelude.toXMLText
