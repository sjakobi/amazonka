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
-- Module      : Network.AWS.EC2.Types.TransitGatewayAttachmentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayAttachmentState
  ( TransitGatewayAttachmentState
      ( ..,
        TransitGatewayAttachmentStateAvailable,
        TransitGatewayAttachmentStateDeleted,
        TransitGatewayAttachmentStateDeleting,
        TransitGatewayAttachmentStateFailed,
        TransitGatewayAttachmentStateFailing,
        TransitGatewayAttachmentStateInitiating,
        TransitGatewayAttachmentStateInitiatingRequest,
        TransitGatewayAttachmentStateModifying,
        TransitGatewayAttachmentStatePending,
        TransitGatewayAttachmentStatePendingAcceptance,
        TransitGatewayAttachmentStateRejected,
        TransitGatewayAttachmentStateRejecting,
        TransitGatewayAttachmentStateRollingBack
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayAttachmentState = TransitGatewayAttachmentState'
  { fromTransitGatewayAttachmentState ::
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

pattern TransitGatewayAttachmentStateAvailable :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateAvailable = TransitGatewayAttachmentState' "available"

pattern TransitGatewayAttachmentStateDeleted :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateDeleted = TransitGatewayAttachmentState' "deleted"

pattern TransitGatewayAttachmentStateDeleting :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateDeleting = TransitGatewayAttachmentState' "deleting"

pattern TransitGatewayAttachmentStateFailed :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateFailed = TransitGatewayAttachmentState' "failed"

pattern TransitGatewayAttachmentStateFailing :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateFailing = TransitGatewayAttachmentState' "failing"

pattern TransitGatewayAttachmentStateInitiating :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateInitiating = TransitGatewayAttachmentState' "initiating"

pattern TransitGatewayAttachmentStateInitiatingRequest :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateInitiatingRequest = TransitGatewayAttachmentState' "initiatingRequest"

pattern TransitGatewayAttachmentStateModifying :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateModifying = TransitGatewayAttachmentState' "modifying"

pattern TransitGatewayAttachmentStatePending :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStatePending = TransitGatewayAttachmentState' "pending"

pattern TransitGatewayAttachmentStatePendingAcceptance :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStatePendingAcceptance = TransitGatewayAttachmentState' "pendingAcceptance"

pattern TransitGatewayAttachmentStateRejected :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateRejected = TransitGatewayAttachmentState' "rejected"

pattern TransitGatewayAttachmentStateRejecting :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateRejecting = TransitGatewayAttachmentState' "rejecting"

pattern TransitGatewayAttachmentStateRollingBack :: TransitGatewayAttachmentState
pattern TransitGatewayAttachmentStateRollingBack = TransitGatewayAttachmentState' "rollingBack"

{-# COMPLETE
  TransitGatewayAttachmentStateAvailable,
  TransitGatewayAttachmentStateDeleted,
  TransitGatewayAttachmentStateDeleting,
  TransitGatewayAttachmentStateFailed,
  TransitGatewayAttachmentStateFailing,
  TransitGatewayAttachmentStateInitiating,
  TransitGatewayAttachmentStateInitiatingRequest,
  TransitGatewayAttachmentStateModifying,
  TransitGatewayAttachmentStatePending,
  TransitGatewayAttachmentStatePendingAcceptance,
  TransitGatewayAttachmentStateRejected,
  TransitGatewayAttachmentStateRejecting,
  TransitGatewayAttachmentStateRollingBack,
  TransitGatewayAttachmentState'
  #-}

instance Prelude.FromText TransitGatewayAttachmentState where
  parser = TransitGatewayAttachmentState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayAttachmentState where
  toText (TransitGatewayAttachmentState' x) = x

instance Prelude.Hashable TransitGatewayAttachmentState

instance Prelude.NFData TransitGatewayAttachmentState

instance Prelude.ToByteString TransitGatewayAttachmentState

instance Prelude.ToQuery TransitGatewayAttachmentState

instance Prelude.ToHeader TransitGatewayAttachmentState

instance Prelude.FromXML TransitGatewayAttachmentState where
  parseXML = Prelude.parseXMLText "TransitGatewayAttachmentState"
