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
-- Module      : Network.AWS.EC2.Types.TransitGatewayConnectPeerState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayConnectPeerState
  ( TransitGatewayConnectPeerState
      ( ..,
        TransitGatewayConnectPeerStateAvailable,
        TransitGatewayConnectPeerStateDeleted,
        TransitGatewayConnectPeerStateDeleting,
        TransitGatewayConnectPeerStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayConnectPeerState = TransitGatewayConnectPeerState'
  { fromTransitGatewayConnectPeerState ::
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

pattern TransitGatewayConnectPeerStateAvailable :: TransitGatewayConnectPeerState
pattern TransitGatewayConnectPeerStateAvailable = TransitGatewayConnectPeerState' "available"

pattern TransitGatewayConnectPeerStateDeleted :: TransitGatewayConnectPeerState
pattern TransitGatewayConnectPeerStateDeleted = TransitGatewayConnectPeerState' "deleted"

pattern TransitGatewayConnectPeerStateDeleting :: TransitGatewayConnectPeerState
pattern TransitGatewayConnectPeerStateDeleting = TransitGatewayConnectPeerState' "deleting"

pattern TransitGatewayConnectPeerStatePending :: TransitGatewayConnectPeerState
pattern TransitGatewayConnectPeerStatePending = TransitGatewayConnectPeerState' "pending"

{-# COMPLETE
  TransitGatewayConnectPeerStateAvailable,
  TransitGatewayConnectPeerStateDeleted,
  TransitGatewayConnectPeerStateDeleting,
  TransitGatewayConnectPeerStatePending,
  TransitGatewayConnectPeerState'
  #-}

instance Prelude.FromText TransitGatewayConnectPeerState where
  parser = TransitGatewayConnectPeerState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayConnectPeerState where
  toText (TransitGatewayConnectPeerState' x) = x

instance Prelude.Hashable TransitGatewayConnectPeerState

instance Prelude.NFData TransitGatewayConnectPeerState

instance Prelude.ToByteString TransitGatewayConnectPeerState

instance Prelude.ToQuery TransitGatewayConnectPeerState

instance Prelude.ToHeader TransitGatewayConnectPeerState

instance Prelude.FromXML TransitGatewayConnectPeerState where
  parseXML = Prelude.parseXMLText "TransitGatewayConnectPeerState"
