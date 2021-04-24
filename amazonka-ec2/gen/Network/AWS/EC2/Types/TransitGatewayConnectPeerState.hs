{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        TGCPSAvailable,
        TGCPSDeleted,
        TGCPSDeleting,
        TGCPSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TransitGatewayConnectPeerState
  = TransitGatewayConnectPeerState'
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

pattern TGCPSAvailable :: TransitGatewayConnectPeerState
pattern TGCPSAvailable = TransitGatewayConnectPeerState' "available"

pattern TGCPSDeleted :: TransitGatewayConnectPeerState
pattern TGCPSDeleted = TransitGatewayConnectPeerState' "deleted"

pattern TGCPSDeleting :: TransitGatewayConnectPeerState
pattern TGCPSDeleting = TransitGatewayConnectPeerState' "deleting"

pattern TGCPSPending :: TransitGatewayConnectPeerState
pattern TGCPSPending = TransitGatewayConnectPeerState' "pending"

{-# COMPLETE
  TGCPSAvailable,
  TGCPSDeleted,
  TGCPSDeleting,
  TGCPSPending,
  TransitGatewayConnectPeerState'
  #-}

instance FromText TransitGatewayConnectPeerState where
  parser = (TransitGatewayConnectPeerState' . mk) <$> takeText

instance ToText TransitGatewayConnectPeerState where
  toText (TransitGatewayConnectPeerState' ci) = original ci

instance Hashable TransitGatewayConnectPeerState

instance NFData TransitGatewayConnectPeerState

instance ToByteString TransitGatewayConnectPeerState

instance ToQuery TransitGatewayConnectPeerState

instance ToHeader TransitGatewayConnectPeerState

instance FromXML TransitGatewayConnectPeerState where
  parseXML = parseXMLText "TransitGatewayConnectPeerState"
