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
-- Module      : Network.AWS.EC2.Types.RouteOrigin
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RouteOrigin
  ( RouteOrigin
      ( ..,
        RouteOriginCreateRoute,
        RouteOriginCreateRouteTable,
        RouteOriginEnableVgwRoutePropagation
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype RouteOrigin = RouteOrigin'
  { fromRouteOrigin ::
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

pattern RouteOriginCreateRoute :: RouteOrigin
pattern RouteOriginCreateRoute = RouteOrigin' "CreateRoute"

pattern RouteOriginCreateRouteTable :: RouteOrigin
pattern RouteOriginCreateRouteTable = RouteOrigin' "CreateRouteTable"

pattern RouteOriginEnableVgwRoutePropagation :: RouteOrigin
pattern RouteOriginEnableVgwRoutePropagation = RouteOrigin' "EnableVgwRoutePropagation"

{-# COMPLETE
  RouteOriginCreateRoute,
  RouteOriginCreateRouteTable,
  RouteOriginEnableVgwRoutePropagation,
  RouteOrigin'
  #-}

instance Prelude.FromText RouteOrigin where
  parser = RouteOrigin' Prelude.<$> Prelude.takeText

instance Prelude.ToText RouteOrigin where
  toText (RouteOrigin' x) = x

instance Prelude.Hashable RouteOrigin

instance Prelude.NFData RouteOrigin

instance Prelude.ToByteString RouteOrigin

instance Prelude.ToQuery RouteOrigin

instance Prelude.ToHeader RouteOrigin

instance Prelude.FromXML RouteOrigin where
  parseXML = Prelude.parseXMLText "RouteOrigin"
