{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        TGMDSAvailable,
        TGMDSDeleted,
        TGMDSDeleting,
        TGMDSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TransitGatewayMulticastDomainState
  = TransitGatewayMulticastDomainState'
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

pattern TGMDSAvailable :: TransitGatewayMulticastDomainState
pattern TGMDSAvailable = TransitGatewayMulticastDomainState' "available"

pattern TGMDSDeleted :: TransitGatewayMulticastDomainState
pattern TGMDSDeleted = TransitGatewayMulticastDomainState' "deleted"

pattern TGMDSDeleting :: TransitGatewayMulticastDomainState
pattern TGMDSDeleting = TransitGatewayMulticastDomainState' "deleting"

pattern TGMDSPending :: TransitGatewayMulticastDomainState
pattern TGMDSPending = TransitGatewayMulticastDomainState' "pending"

{-# COMPLETE
  TGMDSAvailable,
  TGMDSDeleted,
  TGMDSDeleting,
  TGMDSPending,
  TransitGatewayMulticastDomainState'
  #-}

instance FromText TransitGatewayMulticastDomainState where
  parser = (TransitGatewayMulticastDomainState' . mk) <$> takeText

instance ToText TransitGatewayMulticastDomainState where
  toText (TransitGatewayMulticastDomainState' ci) = original ci

instance Hashable TransitGatewayMulticastDomainState

instance NFData TransitGatewayMulticastDomainState

instance ToByteString TransitGatewayMulticastDomainState

instance ToQuery TransitGatewayMulticastDomainState

instance ToHeader TransitGatewayMulticastDomainState

instance FromXML TransitGatewayMulticastDomainState where
  parseXML = parseXMLText "TransitGatewayMulticastDomainState"
