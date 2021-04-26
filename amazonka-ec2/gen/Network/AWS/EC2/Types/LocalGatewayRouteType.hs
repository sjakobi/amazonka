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
-- Module      : Network.AWS.EC2.Types.LocalGatewayRouteType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LocalGatewayRouteType
  ( LocalGatewayRouteType
      ( ..,
        LocalGatewayRouteTypePropagated,
        LocalGatewayRouteTypeStatic
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype LocalGatewayRouteType = LocalGatewayRouteType'
  { fromLocalGatewayRouteType ::
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

pattern LocalGatewayRouteTypePropagated :: LocalGatewayRouteType
pattern LocalGatewayRouteTypePropagated = LocalGatewayRouteType' "propagated"

pattern LocalGatewayRouteTypeStatic :: LocalGatewayRouteType
pattern LocalGatewayRouteTypeStatic = LocalGatewayRouteType' "static"

{-# COMPLETE
  LocalGatewayRouteTypePropagated,
  LocalGatewayRouteTypeStatic,
  LocalGatewayRouteType'
  #-}

instance Prelude.FromText LocalGatewayRouteType where
  parser = LocalGatewayRouteType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LocalGatewayRouteType where
  toText (LocalGatewayRouteType' x) = x

instance Prelude.Hashable LocalGatewayRouteType

instance Prelude.NFData LocalGatewayRouteType

instance Prelude.ToByteString LocalGatewayRouteType

instance Prelude.ToQuery LocalGatewayRouteType

instance Prelude.ToHeader LocalGatewayRouteType

instance Prelude.FromXML LocalGatewayRouteType where
  parseXML = Prelude.parseXMLText "LocalGatewayRouteType"
