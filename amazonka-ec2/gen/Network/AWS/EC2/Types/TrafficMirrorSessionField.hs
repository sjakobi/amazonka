{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        TMSFDescription,
        TMSFPacketLength,
        TMSFVirtualNetworkId
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TrafficMirrorSessionField
  = TrafficMirrorSessionField'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TMSFDescription :: TrafficMirrorSessionField
pattern TMSFDescription = TrafficMirrorSessionField' "description"

pattern TMSFPacketLength :: TrafficMirrorSessionField
pattern TMSFPacketLength = TrafficMirrorSessionField' "packet-length"

pattern TMSFVirtualNetworkId :: TrafficMirrorSessionField
pattern TMSFVirtualNetworkId = TrafficMirrorSessionField' "virtual-network-id"

{-# COMPLETE
  TMSFDescription,
  TMSFPacketLength,
  TMSFVirtualNetworkId,
  TrafficMirrorSessionField'
  #-}

instance FromText TrafficMirrorSessionField where
  parser = (TrafficMirrorSessionField' . mk) <$> takeText

instance ToText TrafficMirrorSessionField where
  toText (TrafficMirrorSessionField' ci) = original ci

instance Hashable TrafficMirrorSessionField

instance NFData TrafficMirrorSessionField

instance ToByteString TrafficMirrorSessionField

instance ToQuery TrafficMirrorSessionField

instance ToHeader TrafficMirrorSessionField
