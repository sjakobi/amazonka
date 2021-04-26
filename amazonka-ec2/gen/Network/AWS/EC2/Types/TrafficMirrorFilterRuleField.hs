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
-- Module      : Network.AWS.EC2.Types.TrafficMirrorFilterRuleField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficMirrorFilterRuleField
  ( TrafficMirrorFilterRuleField
      ( ..,
        TrafficMirrorFilterRuleFieldDescription,
        TrafficMirrorFilterRuleFieldDestinationPortRange,
        TrafficMirrorFilterRuleFieldProtocol,
        TrafficMirrorFilterRuleFieldSourcePortRange
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TrafficMirrorFilterRuleField = TrafficMirrorFilterRuleField'
  { fromTrafficMirrorFilterRuleField ::
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

pattern TrafficMirrorFilterRuleFieldDescription :: TrafficMirrorFilterRuleField
pattern TrafficMirrorFilterRuleFieldDescription = TrafficMirrorFilterRuleField' "description"

pattern TrafficMirrorFilterRuleFieldDestinationPortRange :: TrafficMirrorFilterRuleField
pattern TrafficMirrorFilterRuleFieldDestinationPortRange = TrafficMirrorFilterRuleField' "destination-port-range"

pattern TrafficMirrorFilterRuleFieldProtocol :: TrafficMirrorFilterRuleField
pattern TrafficMirrorFilterRuleFieldProtocol = TrafficMirrorFilterRuleField' "protocol"

pattern TrafficMirrorFilterRuleFieldSourcePortRange :: TrafficMirrorFilterRuleField
pattern TrafficMirrorFilterRuleFieldSourcePortRange = TrafficMirrorFilterRuleField' "source-port-range"

{-# COMPLETE
  TrafficMirrorFilterRuleFieldDescription,
  TrafficMirrorFilterRuleFieldDestinationPortRange,
  TrafficMirrorFilterRuleFieldProtocol,
  TrafficMirrorFilterRuleFieldSourcePortRange,
  TrafficMirrorFilterRuleField'
  #-}

instance Prelude.FromText TrafficMirrorFilterRuleField where
  parser = TrafficMirrorFilterRuleField' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrafficMirrorFilterRuleField where
  toText (TrafficMirrorFilterRuleField' x) = x

instance Prelude.Hashable TrafficMirrorFilterRuleField

instance Prelude.NFData TrafficMirrorFilterRuleField

instance Prelude.ToByteString TrafficMirrorFilterRuleField

instance Prelude.ToQuery TrafficMirrorFilterRuleField

instance Prelude.ToHeader TrafficMirrorFilterRuleField
