{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        TGRSActive,
        TGRSBlackhole,
        TGRSDeleted,
        TGRSDeleting,
        TGRSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TransitGatewayRouteState
  = TransitGatewayRouteState'
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

pattern TGRSActive :: TransitGatewayRouteState
pattern TGRSActive = TransitGatewayRouteState' "active"

pattern TGRSBlackhole :: TransitGatewayRouteState
pattern TGRSBlackhole = TransitGatewayRouteState' "blackhole"

pattern TGRSDeleted :: TransitGatewayRouteState
pattern TGRSDeleted = TransitGatewayRouteState' "deleted"

pattern TGRSDeleting :: TransitGatewayRouteState
pattern TGRSDeleting = TransitGatewayRouteState' "deleting"

pattern TGRSPending :: TransitGatewayRouteState
pattern TGRSPending = TransitGatewayRouteState' "pending"

{-# COMPLETE
  TGRSActive,
  TGRSBlackhole,
  TGRSDeleted,
  TGRSDeleting,
  TGRSPending,
  TransitGatewayRouteState'
  #-}

instance FromText TransitGatewayRouteState where
  parser = (TransitGatewayRouteState' . mk) <$> takeText

instance ToText TransitGatewayRouteState where
  toText (TransitGatewayRouteState' ci) = original ci

instance Hashable TransitGatewayRouteState

instance NFData TransitGatewayRouteState

instance ToByteString TransitGatewayRouteState

instance ToQuery TransitGatewayRouteState

instance ToHeader TransitGatewayRouteState

instance FromXML TransitGatewayRouteState where
  parseXML = parseXMLText "TransitGatewayRouteState"
