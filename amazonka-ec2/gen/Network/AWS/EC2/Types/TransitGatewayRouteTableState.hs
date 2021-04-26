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
-- Module      : Network.AWS.EC2.Types.TransitGatewayRouteTableState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayRouteTableState
  ( TransitGatewayRouteTableState
      ( ..,
        TransitGatewayRouteTableStateAvailable,
        TransitGatewayRouteTableStateDeleted,
        TransitGatewayRouteTableStateDeleting,
        TransitGatewayRouteTableStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayRouteTableState = TransitGatewayRouteTableState'
  { fromTransitGatewayRouteTableState ::
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

pattern TransitGatewayRouteTableStateAvailable :: TransitGatewayRouteTableState
pattern TransitGatewayRouteTableStateAvailable = TransitGatewayRouteTableState' "available"

pattern TransitGatewayRouteTableStateDeleted :: TransitGatewayRouteTableState
pattern TransitGatewayRouteTableStateDeleted = TransitGatewayRouteTableState' "deleted"

pattern TransitGatewayRouteTableStateDeleting :: TransitGatewayRouteTableState
pattern TransitGatewayRouteTableStateDeleting = TransitGatewayRouteTableState' "deleting"

pattern TransitGatewayRouteTableStatePending :: TransitGatewayRouteTableState
pattern TransitGatewayRouteTableStatePending = TransitGatewayRouteTableState' "pending"

{-# COMPLETE
  TransitGatewayRouteTableStateAvailable,
  TransitGatewayRouteTableStateDeleted,
  TransitGatewayRouteTableStateDeleting,
  TransitGatewayRouteTableStatePending,
  TransitGatewayRouteTableState'
  #-}

instance Prelude.FromText TransitGatewayRouteTableState where
  parser = TransitGatewayRouteTableState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayRouteTableState where
  toText (TransitGatewayRouteTableState' x) = x

instance Prelude.Hashable TransitGatewayRouteTableState

instance Prelude.NFData TransitGatewayRouteTableState

instance Prelude.ToByteString TransitGatewayRouteTableState

instance Prelude.ToQuery TransitGatewayRouteTableState

instance Prelude.ToHeader TransitGatewayRouteTableState

instance Prelude.FromXML TransitGatewayRouteTableState where
  parseXML = Prelude.parseXMLText "TransitGatewayRouteTableState"
