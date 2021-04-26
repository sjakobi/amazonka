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
-- Module      : Network.AWS.DirectConnect.Types.GatewayType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.GatewayType
  ( GatewayType
      ( ..,
        GatewayTypeTransitGateway,
        GatewayTypeVirtualPrivateGateway
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GatewayType = GatewayType'
  { fromGatewayType ::
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

pattern GatewayTypeTransitGateway :: GatewayType
pattern GatewayTypeTransitGateway = GatewayType' "transitGateway"

pattern GatewayTypeVirtualPrivateGateway :: GatewayType
pattern GatewayTypeVirtualPrivateGateway = GatewayType' "virtualPrivateGateway"

{-# COMPLETE
  GatewayTypeTransitGateway,
  GatewayTypeVirtualPrivateGateway,
  GatewayType'
  #-}

instance Prelude.FromText GatewayType where
  parser = GatewayType' Prelude.<$> Prelude.takeText

instance Prelude.ToText GatewayType where
  toText (GatewayType' x) = x

instance Prelude.Hashable GatewayType

instance Prelude.NFData GatewayType

instance Prelude.ToByteString GatewayType

instance Prelude.ToQuery GatewayType

instance Prelude.ToHeader GatewayType

instance Prelude.FromJSON GatewayType where
  parseJSON = Prelude.parseJSONText "GatewayType"
