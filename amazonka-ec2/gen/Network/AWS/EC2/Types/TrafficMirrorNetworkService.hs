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
-- Module      : Network.AWS.EC2.Types.TrafficMirrorNetworkService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficMirrorNetworkService
  ( TrafficMirrorNetworkService
      ( ..,
        TrafficMirrorNetworkServiceAmazonDns
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TrafficMirrorNetworkService = TrafficMirrorNetworkService'
  { fromTrafficMirrorNetworkService ::
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

pattern TrafficMirrorNetworkServiceAmazonDns :: TrafficMirrorNetworkService
pattern TrafficMirrorNetworkServiceAmazonDns = TrafficMirrorNetworkService' "amazon-dns"

{-# COMPLETE
  TrafficMirrorNetworkServiceAmazonDns,
  TrafficMirrorNetworkService'
  #-}

instance Prelude.FromText TrafficMirrorNetworkService where
  parser = TrafficMirrorNetworkService' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrafficMirrorNetworkService where
  toText (TrafficMirrorNetworkService' x) = x

instance Prelude.Hashable TrafficMirrorNetworkService

instance Prelude.NFData TrafficMirrorNetworkService

instance Prelude.ToByteString TrafficMirrorNetworkService

instance Prelude.ToQuery TrafficMirrorNetworkService

instance Prelude.ToHeader TrafficMirrorNetworkService

instance Prelude.FromXML TrafficMirrorNetworkService where
  parseXML = Prelude.parseXMLText "TrafficMirrorNetworkService"
