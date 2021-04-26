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
-- Module      : Network.AWS.EC2.Types.TransitGatewayRouteState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayRouteState
  ( TransitGatewayRouteState
      ( ..,
        TransitGatewayRouteStateActive,
        TransitGatewayRouteStateBlackhole,
        TransitGatewayRouteStateDeleted,
        TransitGatewayRouteStateDeleting,
        TransitGatewayRouteStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayRouteState = TransitGatewayRouteState'
  { fromTransitGatewayRouteState ::
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

pattern TransitGatewayRouteStateActive :: TransitGatewayRouteState
pattern TransitGatewayRouteStateActive = TransitGatewayRouteState' "active"

pattern TransitGatewayRouteStateBlackhole :: TransitGatewayRouteState
pattern TransitGatewayRouteStateBlackhole = TransitGatewayRouteState' "blackhole"

pattern TransitGatewayRouteStateDeleted :: TransitGatewayRouteState
pattern TransitGatewayRouteStateDeleted = TransitGatewayRouteState' "deleted"

pattern TransitGatewayRouteStateDeleting :: TransitGatewayRouteState
pattern TransitGatewayRouteStateDeleting = TransitGatewayRouteState' "deleting"

pattern TransitGatewayRouteStatePending :: TransitGatewayRouteState
pattern TransitGatewayRouteStatePending = TransitGatewayRouteState' "pending"

{-# COMPLETE
  TransitGatewayRouteStateActive,
  TransitGatewayRouteStateBlackhole,
  TransitGatewayRouteStateDeleted,
  TransitGatewayRouteStateDeleting,
  TransitGatewayRouteStatePending,
  TransitGatewayRouteState'
  #-}

instance Prelude.FromText TransitGatewayRouteState where
  parser = TransitGatewayRouteState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayRouteState where
  toText (TransitGatewayRouteState' x) = x

instance Prelude.Hashable TransitGatewayRouteState

instance Prelude.NFData TransitGatewayRouteState

instance Prelude.ToByteString TransitGatewayRouteState

instance Prelude.ToQuery TransitGatewayRouteState

instance Prelude.ToHeader TransitGatewayRouteState

instance Prelude.FromXML TransitGatewayRouteState where
  parseXML = Prelude.parseXMLText "TransitGatewayRouteState"
