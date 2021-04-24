{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.RoutingStrategyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.RoutingStrategyType
  ( RoutingStrategyType
      ( ..,
        Simple,
        Terminal
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RoutingStrategyType
  = RoutingStrategyType'
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

pattern Simple :: RoutingStrategyType
pattern Simple = RoutingStrategyType' "SIMPLE"

pattern Terminal :: RoutingStrategyType
pattern Terminal = RoutingStrategyType' "TERMINAL"

{-# COMPLETE
  Simple,
  Terminal,
  RoutingStrategyType'
  #-}

instance FromText RoutingStrategyType where
  parser = (RoutingStrategyType' . mk) <$> takeText

instance ToText RoutingStrategyType where
  toText (RoutingStrategyType' ci) = original ci

instance Hashable RoutingStrategyType

instance NFData RoutingStrategyType

instance ToByteString RoutingStrategyType

instance ToQuery RoutingStrategyType

instance ToHeader RoutingStrategyType

instance ToJSON RoutingStrategyType where
  toJSON = toJSONText

instance FromJSON RoutingStrategyType where
  parseJSON = parseJSONText "RoutingStrategyType"
