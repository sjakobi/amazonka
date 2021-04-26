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
-- Module      : Network.AWS.EC2.Types.ServiceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ServiceType
  ( ServiceType
      ( ..,
        ServiceTypeGateway,
        ServiceTypeGatewayLoadBalancer,
        ServiceTypeInterface
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ServiceType = ServiceType'
  { fromServiceType ::
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

pattern ServiceTypeGateway :: ServiceType
pattern ServiceTypeGateway = ServiceType' "Gateway"

pattern ServiceTypeGatewayLoadBalancer :: ServiceType
pattern ServiceTypeGatewayLoadBalancer = ServiceType' "GatewayLoadBalancer"

pattern ServiceTypeInterface :: ServiceType
pattern ServiceTypeInterface = ServiceType' "Interface"

{-# COMPLETE
  ServiceTypeGateway,
  ServiceTypeGatewayLoadBalancer,
  ServiceTypeInterface,
  ServiceType'
  #-}

instance Prelude.FromText ServiceType where
  parser = ServiceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceType where
  toText (ServiceType' x) = x

instance Prelude.Hashable ServiceType

instance Prelude.NFData ServiceType

instance Prelude.ToByteString ServiceType

instance Prelude.ToQuery ServiceType

instance Prelude.ToHeader ServiceType

instance Prelude.FromXML ServiceType where
  parseXML = Prelude.parseXMLText "ServiceType"
