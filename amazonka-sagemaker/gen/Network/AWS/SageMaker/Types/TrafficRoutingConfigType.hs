{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrafficRoutingConfigType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrafficRoutingConfigType
  ( TrafficRoutingConfigType
      ( ..,
        AllAtOnce,
        Canary
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TrafficRoutingConfigType
  = TrafficRoutingConfigType'
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

pattern AllAtOnce :: TrafficRoutingConfigType
pattern AllAtOnce = TrafficRoutingConfigType' "ALL_AT_ONCE"

pattern Canary :: TrafficRoutingConfigType
pattern Canary = TrafficRoutingConfigType' "CANARY"

{-# COMPLETE
  AllAtOnce,
  Canary,
  TrafficRoutingConfigType'
  #-}

instance FromText TrafficRoutingConfigType where
  parser = (TrafficRoutingConfigType' . mk) <$> takeText

instance ToText TrafficRoutingConfigType where
  toText (TrafficRoutingConfigType' ci) = original ci

instance Hashable TrafficRoutingConfigType

instance NFData TrafficRoutingConfigType

instance ToByteString TrafficRoutingConfigType

instance ToQuery TrafficRoutingConfigType

instance ToHeader TrafficRoutingConfigType

instance ToJSON TrafficRoutingConfigType where
  toJSON = toJSONText

instance FromJSON TrafficRoutingConfigType where
  parseJSON = parseJSONText "TrafficRoutingConfigType"
