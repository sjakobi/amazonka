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
-- Module      : Network.AWS.EC2.Types.ReservedInstanceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReservedInstanceState
  ( ReservedInstanceState
      ( ..,
        ReservedInstanceStateActive,
        ReservedInstanceStatePaymentFailed,
        ReservedInstanceStatePaymentPending,
        ReservedInstanceStateQueued,
        ReservedInstanceStateQueuedDeleted,
        ReservedInstanceStateRetired
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ReservedInstanceState = ReservedInstanceState'
  { fromReservedInstanceState ::
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

pattern ReservedInstanceStateActive :: ReservedInstanceState
pattern ReservedInstanceStateActive = ReservedInstanceState' "active"

pattern ReservedInstanceStatePaymentFailed :: ReservedInstanceState
pattern ReservedInstanceStatePaymentFailed = ReservedInstanceState' "payment-failed"

pattern ReservedInstanceStatePaymentPending :: ReservedInstanceState
pattern ReservedInstanceStatePaymentPending = ReservedInstanceState' "payment-pending"

pattern ReservedInstanceStateQueued :: ReservedInstanceState
pattern ReservedInstanceStateQueued = ReservedInstanceState' "queued"

pattern ReservedInstanceStateQueuedDeleted :: ReservedInstanceState
pattern ReservedInstanceStateQueuedDeleted = ReservedInstanceState' "queued-deleted"

pattern ReservedInstanceStateRetired :: ReservedInstanceState
pattern ReservedInstanceStateRetired = ReservedInstanceState' "retired"

{-# COMPLETE
  ReservedInstanceStateActive,
  ReservedInstanceStatePaymentFailed,
  ReservedInstanceStatePaymentPending,
  ReservedInstanceStateQueued,
  ReservedInstanceStateQueuedDeleted,
  ReservedInstanceStateRetired,
  ReservedInstanceState'
  #-}

instance Prelude.FromText ReservedInstanceState where
  parser = ReservedInstanceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservedInstanceState where
  toText (ReservedInstanceState' x) = x

instance Prelude.Hashable ReservedInstanceState

instance Prelude.NFData ReservedInstanceState

instance Prelude.ToByteString ReservedInstanceState

instance Prelude.ToQuery ReservedInstanceState

instance Prelude.ToHeader ReservedInstanceState

instance Prelude.FromXML ReservedInstanceState where
  parseXML = Prelude.parseXMLText "ReservedInstanceState"
