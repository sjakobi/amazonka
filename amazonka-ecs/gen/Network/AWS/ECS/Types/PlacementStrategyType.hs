{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.PlacementStrategyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.PlacementStrategyType
  ( PlacementStrategyType
      ( ..,
        Binpack,
        Random,
        Spread
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PlacementStrategyType
  = PlacementStrategyType'
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

pattern Binpack :: PlacementStrategyType
pattern Binpack = PlacementStrategyType' "binpack"

pattern Random :: PlacementStrategyType
pattern Random = PlacementStrategyType' "random"

pattern Spread :: PlacementStrategyType
pattern Spread = PlacementStrategyType' "spread"

{-# COMPLETE
  Binpack,
  Random,
  Spread,
  PlacementStrategyType'
  #-}

instance FromText PlacementStrategyType where
  parser = (PlacementStrategyType' . mk) <$> takeText

instance ToText PlacementStrategyType where
  toText (PlacementStrategyType' ci) = original ci

instance Hashable PlacementStrategyType

instance NFData PlacementStrategyType

instance ToByteString PlacementStrategyType

instance ToQuery PlacementStrategyType

instance ToHeader PlacementStrategyType

instance ToJSON PlacementStrategyType where
  toJSON = toJSONText

instance FromJSON PlacementStrategyType where
  parseJSON = parseJSONText "PlacementStrategyType"
