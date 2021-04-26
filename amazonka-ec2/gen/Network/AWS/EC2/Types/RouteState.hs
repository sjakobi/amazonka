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
-- Module      : Network.AWS.EC2.Types.RouteState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RouteState
  ( RouteState
      ( ..,
        RouteStateActive,
        RouteStateBlackhole
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype RouteState = RouteState'
  { fromRouteState ::
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

pattern RouteStateActive :: RouteState
pattern RouteStateActive = RouteState' "active"

pattern RouteStateBlackhole :: RouteState
pattern RouteStateBlackhole = RouteState' "blackhole"

{-# COMPLETE
  RouteStateActive,
  RouteStateBlackhole,
  RouteState'
  #-}

instance Prelude.FromText RouteState where
  parser = RouteState' Prelude.<$> Prelude.takeText

instance Prelude.ToText RouteState where
  toText (RouteState' x) = x

instance Prelude.Hashable RouteState

instance Prelude.NFData RouteState

instance Prelude.ToByteString RouteState

instance Prelude.ToQuery RouteState

instance Prelude.ToHeader RouteState

instance Prelude.FromXML RouteState where
  parseXML = Prelude.parseXMLText "RouteState"
