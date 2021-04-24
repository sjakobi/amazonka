{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.RecommendationTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.RecommendationTarget
  ( RecommendationTarget
      ( ..,
        CrossInstanceFamily,
        SameInstanceFamily
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RecommendationTarget
  = RecommendationTarget'
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

pattern CrossInstanceFamily :: RecommendationTarget
pattern CrossInstanceFamily = RecommendationTarget' "CROSS_INSTANCE_FAMILY"

pattern SameInstanceFamily :: RecommendationTarget
pattern SameInstanceFamily = RecommendationTarget' "SAME_INSTANCE_FAMILY"

{-# COMPLETE
  CrossInstanceFamily,
  SameInstanceFamily,
  RecommendationTarget'
  #-}

instance FromText RecommendationTarget where
  parser = (RecommendationTarget' . mk) <$> takeText

instance ToText RecommendationTarget where
  toText (RecommendationTarget' ci) = original ci

instance Hashable RecommendationTarget

instance NFData RecommendationTarget

instance ToByteString RecommendationTarget

instance ToQuery RecommendationTarget

instance ToHeader RecommendationTarget

instance ToJSON RecommendationTarget where
  toJSON = toJSONText

instance FromJSON RecommendationTarget where
  parseJSON = parseJSONText "RecommendationTarget"
