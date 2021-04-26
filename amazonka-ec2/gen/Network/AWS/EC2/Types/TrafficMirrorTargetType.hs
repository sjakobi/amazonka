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
-- Module      : Network.AWS.EC2.Types.TrafficMirrorTargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficMirrorTargetType
  ( TrafficMirrorTargetType
      ( ..,
        TrafficMirrorTargetTypeNetworkInterface,
        TrafficMirrorTargetTypeNetworkLoadBalancer
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TrafficMirrorTargetType = TrafficMirrorTargetType'
  { fromTrafficMirrorTargetType ::
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

pattern TrafficMirrorTargetTypeNetworkInterface :: TrafficMirrorTargetType
pattern TrafficMirrorTargetTypeNetworkInterface = TrafficMirrorTargetType' "network-interface"

pattern TrafficMirrorTargetTypeNetworkLoadBalancer :: TrafficMirrorTargetType
pattern TrafficMirrorTargetTypeNetworkLoadBalancer = TrafficMirrorTargetType' "network-load-balancer"

{-# COMPLETE
  TrafficMirrorTargetTypeNetworkInterface,
  TrafficMirrorTargetTypeNetworkLoadBalancer,
  TrafficMirrorTargetType'
  #-}

instance Prelude.FromText TrafficMirrorTargetType where
  parser = TrafficMirrorTargetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrafficMirrorTargetType where
  toText (TrafficMirrorTargetType' x) = x

instance Prelude.Hashable TrafficMirrorTargetType

instance Prelude.NFData TrafficMirrorTargetType

instance Prelude.ToByteString TrafficMirrorTargetType

instance Prelude.ToQuery TrafficMirrorTargetType

instance Prelude.ToHeader TrafficMirrorTargetType

instance Prelude.FromXML TrafficMirrorTargetType where
  parseXML = Prelude.parseXMLText "TrafficMirrorTargetType"
