{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        TGRTSAvailable,
        TGRTSDeleted,
        TGRTSDeleting,
        TGRTSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TransitGatewayRouteTableState
  = TransitGatewayRouteTableState'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TGRTSAvailable :: TransitGatewayRouteTableState
pattern TGRTSAvailable = TransitGatewayRouteTableState' "available"

pattern TGRTSDeleted :: TransitGatewayRouteTableState
pattern TGRTSDeleted = TransitGatewayRouteTableState' "deleted"

pattern TGRTSDeleting :: TransitGatewayRouteTableState
pattern TGRTSDeleting = TransitGatewayRouteTableState' "deleting"

pattern TGRTSPending :: TransitGatewayRouteTableState
pattern TGRTSPending = TransitGatewayRouteTableState' "pending"

{-# COMPLETE
  TGRTSAvailable,
  TGRTSDeleted,
  TGRTSDeleting,
  TGRTSPending,
  TransitGatewayRouteTableState'
  #-}

instance FromText TransitGatewayRouteTableState where
  parser = (TransitGatewayRouteTableState' . mk) <$> takeText

instance ToText TransitGatewayRouteTableState where
  toText (TransitGatewayRouteTableState' ci) = original ci

instance Hashable TransitGatewayRouteTableState

instance NFData TransitGatewayRouteTableState

instance ToByteString TransitGatewayRouteTableState

instance ToQuery TransitGatewayRouteTableState

instance ToHeader TransitGatewayRouteTableState

instance FromXML TransitGatewayRouteTableState where
  parseXML = parseXMLText "TransitGatewayRouteTableState"
