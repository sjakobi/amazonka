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
-- Module      : Network.AWS.EC2.Types.VpcEndpointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpcEndpointType
  ( VpcEndpointType
      ( ..,
        VpcEndpointTypeGateway,
        VpcEndpointTypeGatewayLoadBalancer,
        VpcEndpointTypeInterface
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VpcEndpointType = VpcEndpointType'
  { fromVpcEndpointType ::
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

pattern VpcEndpointTypeGateway :: VpcEndpointType
pattern VpcEndpointTypeGateway = VpcEndpointType' "Gateway"

pattern VpcEndpointTypeGatewayLoadBalancer :: VpcEndpointType
pattern VpcEndpointTypeGatewayLoadBalancer = VpcEndpointType' "GatewayLoadBalancer"

pattern VpcEndpointTypeInterface :: VpcEndpointType
pattern VpcEndpointTypeInterface = VpcEndpointType' "Interface"

{-# COMPLETE
  VpcEndpointTypeGateway,
  VpcEndpointTypeGatewayLoadBalancer,
  VpcEndpointTypeInterface,
  VpcEndpointType'
  #-}

instance Prelude.FromText VpcEndpointType where
  parser = VpcEndpointType' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpcEndpointType where
  toText (VpcEndpointType' x) = x

instance Prelude.Hashable VpcEndpointType

instance Prelude.NFData VpcEndpointType

instance Prelude.ToByteString VpcEndpointType

instance Prelude.ToQuery VpcEndpointType

instance Prelude.ToHeader VpcEndpointType

instance Prelude.FromXML VpcEndpointType where
  parseXML = Prelude.parseXMLText "VpcEndpointType"
