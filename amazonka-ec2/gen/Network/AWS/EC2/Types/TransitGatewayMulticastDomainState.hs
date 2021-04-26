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
-- Module      : Network.AWS.EC2.Types.TransitGatewayMulticastDomainState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayMulticastDomainState
  ( TransitGatewayMulticastDomainState
      ( ..,
        TransitGatewayMulticastDomainStateAvailable,
        TransitGatewayMulticastDomainStateDeleted,
        TransitGatewayMulticastDomainStateDeleting,
        TransitGatewayMulticastDomainStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayMulticastDomainState = TransitGatewayMulticastDomainState'
  { fromTransitGatewayMulticastDomainState ::
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

pattern TransitGatewayMulticastDomainStateAvailable :: TransitGatewayMulticastDomainState
pattern TransitGatewayMulticastDomainStateAvailable = TransitGatewayMulticastDomainState' "available"

pattern TransitGatewayMulticastDomainStateDeleted :: TransitGatewayMulticastDomainState
pattern TransitGatewayMulticastDomainStateDeleted = TransitGatewayMulticastDomainState' "deleted"

pattern TransitGatewayMulticastDomainStateDeleting :: TransitGatewayMulticastDomainState
pattern TransitGatewayMulticastDomainStateDeleting = TransitGatewayMulticastDomainState' "deleting"

pattern TransitGatewayMulticastDomainStatePending :: TransitGatewayMulticastDomainState
pattern TransitGatewayMulticastDomainStatePending = TransitGatewayMulticastDomainState' "pending"

{-# COMPLETE
  TransitGatewayMulticastDomainStateAvailable,
  TransitGatewayMulticastDomainStateDeleted,
  TransitGatewayMulticastDomainStateDeleting,
  TransitGatewayMulticastDomainStatePending,
  TransitGatewayMulticastDomainState'
  #-}

instance Prelude.FromText TransitGatewayMulticastDomainState where
  parser = TransitGatewayMulticastDomainState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayMulticastDomainState where
  toText (TransitGatewayMulticastDomainState' x) = x

instance Prelude.Hashable TransitGatewayMulticastDomainState

instance Prelude.NFData TransitGatewayMulticastDomainState

instance Prelude.ToByteString TransitGatewayMulticastDomainState

instance Prelude.ToQuery TransitGatewayMulticastDomainState

instance Prelude.ToHeader TransitGatewayMulticastDomainState

instance Prelude.FromXML TransitGatewayMulticastDomainState where
  parseXML = Prelude.parseXMLText "TransitGatewayMulticastDomainState"
