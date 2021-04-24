{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        TransitGateway,
        VirtualPrivateGateway
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GatewayType = GatewayType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TransitGateway :: GatewayType
pattern TransitGateway = GatewayType' "transitGateway"

pattern VirtualPrivateGateway :: GatewayType
pattern VirtualPrivateGateway = GatewayType' "virtualPrivateGateway"

{-# COMPLETE
  TransitGateway,
  VirtualPrivateGateway,
  GatewayType'
  #-}

instance FromText GatewayType where
  parser = (GatewayType' . mk) <$> takeText

instance ToText GatewayType where
  toText (GatewayType' ci) = original ci

instance Hashable GatewayType

instance NFData GatewayType

instance ToByteString GatewayType

instance ToQuery GatewayType

instance ToHeader GatewayType

instance FromJSON GatewayType where
  parseJSON = parseJSONText "GatewayType"
