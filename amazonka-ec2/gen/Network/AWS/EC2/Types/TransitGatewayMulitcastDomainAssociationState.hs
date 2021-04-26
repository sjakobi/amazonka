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
-- Module      : Network.AWS.EC2.Types.TransitGatewayMulitcastDomainAssociationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayMulitcastDomainAssociationState
  ( TransitGatewayMulitcastDomainAssociationState
      ( ..,
        TransitGatewayMulitcastDomainAssociationStateAssociated,
        TransitGatewayMulitcastDomainAssociationStateAssociating,
        TransitGatewayMulitcastDomainAssociationStateDisassociated,
        TransitGatewayMulitcastDomainAssociationStateDisassociating,
        TransitGatewayMulitcastDomainAssociationStateFailed,
        TransitGatewayMulitcastDomainAssociationStatePendingAcceptance,
        TransitGatewayMulitcastDomainAssociationStateRejected
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayMulitcastDomainAssociationState = TransitGatewayMulitcastDomainAssociationState'
  { fromTransitGatewayMulitcastDomainAssociationState ::
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

pattern TransitGatewayMulitcastDomainAssociationStateAssociated :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStateAssociated = TransitGatewayMulitcastDomainAssociationState' "associated"

pattern TransitGatewayMulitcastDomainAssociationStateAssociating :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStateAssociating = TransitGatewayMulitcastDomainAssociationState' "associating"

pattern TransitGatewayMulitcastDomainAssociationStateDisassociated :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStateDisassociated = TransitGatewayMulitcastDomainAssociationState' "disassociated"

pattern TransitGatewayMulitcastDomainAssociationStateDisassociating :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStateDisassociating = TransitGatewayMulitcastDomainAssociationState' "disassociating"

pattern TransitGatewayMulitcastDomainAssociationStateFailed :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStateFailed = TransitGatewayMulitcastDomainAssociationState' "failed"

pattern TransitGatewayMulitcastDomainAssociationStatePendingAcceptance :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStatePendingAcceptance = TransitGatewayMulitcastDomainAssociationState' "pendingAcceptance"

pattern TransitGatewayMulitcastDomainAssociationStateRejected :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStateRejected = TransitGatewayMulitcastDomainAssociationState' "rejected"

{-# COMPLETE
  TransitGatewayMulitcastDomainAssociationStateAssociated,
  TransitGatewayMulitcastDomainAssociationStateAssociating,
  TransitGatewayMulitcastDomainAssociationStateDisassociated,
  TransitGatewayMulitcastDomainAssociationStateDisassociating,
  TransitGatewayMulitcastDomainAssociationStateFailed,
  TransitGatewayMulitcastDomainAssociationStatePendingAcceptance,
  TransitGatewayMulitcastDomainAssociationStateRejected,
  TransitGatewayMulitcastDomainAssociationState'
  #-}

instance Prelude.FromText TransitGatewayMulitcastDomainAssociationState where
  parser = TransitGatewayMulitcastDomainAssociationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayMulitcastDomainAssociationState where
  toText (TransitGatewayMulitcastDomainAssociationState' x) = x

instance Prelude.Hashable TransitGatewayMulitcastDomainAssociationState

instance Prelude.NFData TransitGatewayMulitcastDomainAssociationState

instance Prelude.ToByteString TransitGatewayMulitcastDomainAssociationState

instance Prelude.ToQuery TransitGatewayMulitcastDomainAssociationState

instance Prelude.ToHeader TransitGatewayMulitcastDomainAssociationState

instance Prelude.FromXML TransitGatewayMulitcastDomainAssociationState where
  parseXML = Prelude.parseXMLText "TransitGatewayMulitcastDomainAssociationState"
