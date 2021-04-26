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
-- Module      : Network.AWS.EC2.Types.TrafficMirrorSessionField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficMirrorSessionField
  ( TrafficMirrorSessionField
      ( ..,
        TrafficMirrorSessionFieldDescription,
        TrafficMirrorSessionFieldPacketLength,
        TrafficMirrorSessionFieldVirtualNetworkId
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TrafficMirrorSessionField = TrafficMirrorSessionField'
  { fromTrafficMirrorSessionField ::
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

pattern TrafficMirrorSessionFieldDescription :: TrafficMirrorSessionField
pattern TrafficMirrorSessionFieldDescription = TrafficMirrorSessionField' "description"

pattern TrafficMirrorSessionFieldPacketLength :: TrafficMirrorSessionField
pattern TrafficMirrorSessionFieldPacketLength = TrafficMirrorSessionField' "packet-length"

pattern TrafficMirrorSessionFieldVirtualNetworkId :: TrafficMirrorSessionField
pattern TrafficMirrorSessionFieldVirtualNetworkId = TrafficMirrorSessionField' "virtual-network-id"

{-# COMPLETE
  TrafficMirrorSessionFieldDescription,
  TrafficMirrorSessionFieldPacketLength,
  TrafficMirrorSessionFieldVirtualNetworkId,
  TrafficMirrorSessionField'
  #-}

instance Prelude.FromText TrafficMirrorSessionField where
  parser = TrafficMirrorSessionField' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrafficMirrorSessionField where
  toText (TrafficMirrorSessionField' x) = x

instance Prelude.Hashable TrafficMirrorSessionField

instance Prelude.NFData TrafficMirrorSessionField

instance Prelude.ToByteString TrafficMirrorSessionField

instance Prelude.ToQuery TrafficMirrorSessionField

instance Prelude.ToHeader TrafficMirrorSessionField
