{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        TMFRFDescription,
        TMFRFDestinationPortRange,
        TMFRFProtocol,
        TMFRFSourcePortRange
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TrafficMirrorFilterRuleField
  = TrafficMirrorFilterRuleField'
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

pattern TMFRFDescription :: TrafficMirrorFilterRuleField
pattern TMFRFDescription = TrafficMirrorFilterRuleField' "description"

pattern TMFRFDestinationPortRange :: TrafficMirrorFilterRuleField
pattern TMFRFDestinationPortRange = TrafficMirrorFilterRuleField' "destination-port-range"

pattern TMFRFProtocol :: TrafficMirrorFilterRuleField
pattern TMFRFProtocol = TrafficMirrorFilterRuleField' "protocol"

pattern TMFRFSourcePortRange :: TrafficMirrorFilterRuleField
pattern TMFRFSourcePortRange = TrafficMirrorFilterRuleField' "source-port-range"

{-# COMPLETE
  TMFRFDescription,
  TMFRFDestinationPortRange,
  TMFRFProtocol,
  TMFRFSourcePortRange,
  TrafficMirrorFilterRuleField'
  #-}

instance FromText TrafficMirrorFilterRuleField where
  parser = (TrafficMirrorFilterRuleField' . mk) <$> takeText

instance ToText TrafficMirrorFilterRuleField where
  toText (TrafficMirrorFilterRuleField' ci) = original ci

instance Hashable TrafficMirrorFilterRuleField

instance NFData TrafficMirrorFilterRuleField

instance ToByteString TrafficMirrorFilterRuleField

instance ToQuery TrafficMirrorFilterRuleField

instance ToHeader TrafficMirrorFilterRuleField
