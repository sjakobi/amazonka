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
-- Module      : Network.AWS.EC2.Types.LocalGatewayRouteState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LocalGatewayRouteState
  ( LocalGatewayRouteState
      ( ..,
        LocalGatewayRouteStateActive,
        LocalGatewayRouteStateBlackhole,
        LocalGatewayRouteStateDeleted,
        LocalGatewayRouteStateDeleting,
        LocalGatewayRouteStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype LocalGatewayRouteState = LocalGatewayRouteState'
  { fromLocalGatewayRouteState ::
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

pattern LocalGatewayRouteStateActive :: LocalGatewayRouteState
pattern LocalGatewayRouteStateActive = LocalGatewayRouteState' "active"

pattern LocalGatewayRouteStateBlackhole :: LocalGatewayRouteState
pattern LocalGatewayRouteStateBlackhole = LocalGatewayRouteState' "blackhole"

pattern LocalGatewayRouteStateDeleted :: LocalGatewayRouteState
pattern LocalGatewayRouteStateDeleted = LocalGatewayRouteState' "deleted"

pattern LocalGatewayRouteStateDeleting :: LocalGatewayRouteState
pattern LocalGatewayRouteStateDeleting = LocalGatewayRouteState' "deleting"

pattern LocalGatewayRouteStatePending :: LocalGatewayRouteState
pattern LocalGatewayRouteStatePending = LocalGatewayRouteState' "pending"

{-# COMPLETE
  LocalGatewayRouteStateActive,
  LocalGatewayRouteStateBlackhole,
  LocalGatewayRouteStateDeleted,
  LocalGatewayRouteStateDeleting,
  LocalGatewayRouteStatePending,
  LocalGatewayRouteState'
  #-}

instance Prelude.FromText LocalGatewayRouteState where
  parser = LocalGatewayRouteState' Prelude.<$> Prelude.takeText

instance Prelude.ToText LocalGatewayRouteState where
  toText (LocalGatewayRouteState' x) = x

instance Prelude.Hashable LocalGatewayRouteState

instance Prelude.NFData LocalGatewayRouteState

instance Prelude.ToByteString LocalGatewayRouteState

instance Prelude.ToQuery LocalGatewayRouteState

instance Prelude.ToHeader LocalGatewayRouteState

instance Prelude.FromXML LocalGatewayRouteState where
  parseXML = Prelude.parseXMLText "LocalGatewayRouteState"
