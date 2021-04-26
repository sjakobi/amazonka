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
-- Module      : Network.AWS.EC2.Types.TransitGatewayRouteType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayRouteType
  ( TransitGatewayRouteType
      ( ..,
        TransitGatewayRouteTypePropagated,
        TransitGatewayRouteTypeStatic
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayRouteType = TransitGatewayRouteType'
  { fromTransitGatewayRouteType ::
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

pattern TransitGatewayRouteTypePropagated :: TransitGatewayRouteType
pattern TransitGatewayRouteTypePropagated = TransitGatewayRouteType' "propagated"

pattern TransitGatewayRouteTypeStatic :: TransitGatewayRouteType
pattern TransitGatewayRouteTypeStatic = TransitGatewayRouteType' "static"

{-# COMPLETE
  TransitGatewayRouteTypePropagated,
  TransitGatewayRouteTypeStatic,
  TransitGatewayRouteType'
  #-}

instance Prelude.FromText TransitGatewayRouteType where
  parser = TransitGatewayRouteType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayRouteType where
  toText (TransitGatewayRouteType' x) = x

instance Prelude.Hashable TransitGatewayRouteType

instance Prelude.NFData TransitGatewayRouteType

instance Prelude.ToByteString TransitGatewayRouteType

instance Prelude.ToQuery TransitGatewayRouteType

instance Prelude.ToHeader TransitGatewayRouteType

instance Prelude.FromXML TransitGatewayRouteType where
  parseXML = Prelude.parseXMLText "TransitGatewayRouteType"
