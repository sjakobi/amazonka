{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPCEndpointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPCEndpointType
  ( VPCEndpointType
      ( ..,
        VETGateway,
        VETGatewayLoadBalancer,
        VETInterface
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VPCEndpointType = VPCEndpointType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VETGateway :: VPCEndpointType
pattern VETGateway = VPCEndpointType' "Gateway"

pattern VETGatewayLoadBalancer :: VPCEndpointType
pattern VETGatewayLoadBalancer = VPCEndpointType' "GatewayLoadBalancer"

pattern VETInterface :: VPCEndpointType
pattern VETInterface = VPCEndpointType' "Interface"

{-# COMPLETE
  VETGateway,
  VETGatewayLoadBalancer,
  VETInterface,
  VPCEndpointType'
  #-}

instance FromText VPCEndpointType where
  parser = (VPCEndpointType' . mk) <$> takeText

instance ToText VPCEndpointType where
  toText (VPCEndpointType' ci) = original ci

instance Hashable VPCEndpointType

instance NFData VPCEndpointType

instance ToByteString VPCEndpointType

instance ToQuery VPCEndpointType

instance ToHeader VPCEndpointType

instance FromXML VPCEndpointType where
  parseXML = parseXMLText "VPCEndpointType"
