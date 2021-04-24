{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TrafficMirrorNetworkService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficMirrorNetworkService
  ( TrafficMirrorNetworkService
      ( ..,
        AmazonDNS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TrafficMirrorNetworkService
  = TrafficMirrorNetworkService'
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

pattern AmazonDNS :: TrafficMirrorNetworkService
pattern AmazonDNS = TrafficMirrorNetworkService' "amazon-dns"

{-# COMPLETE
  AmazonDNS,
  TrafficMirrorNetworkService'
  #-}

instance FromText TrafficMirrorNetworkService where
  parser = (TrafficMirrorNetworkService' . mk) <$> takeText

instance ToText TrafficMirrorNetworkService where
  toText (TrafficMirrorNetworkService' ci) = original ci

instance Hashable TrafficMirrorNetworkService

instance NFData TrafficMirrorNetworkService

instance ToByteString TrafficMirrorNetworkService

instance ToQuery TrafficMirrorNetworkService

instance ToHeader TrafficMirrorNetworkService

instance FromXML TrafficMirrorNetworkService where
  parseXML = parseXMLText "TrafficMirrorNetworkService"
