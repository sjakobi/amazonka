{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.MarketType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.MarketType
  ( MarketType
      ( ..,
        OnDemand,
        Spot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MarketType = MarketType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OnDemand :: MarketType
pattern OnDemand = MarketType' "ON_DEMAND"

pattern Spot :: MarketType
pattern Spot = MarketType' "SPOT"

{-# COMPLETE
  OnDemand,
  Spot,
  MarketType'
  #-}

instance FromText MarketType where
  parser = (MarketType' . mk) <$> takeText

instance ToText MarketType where
  toText (MarketType' ci) = original ci

instance Hashable MarketType

instance NFData MarketType

instance ToByteString MarketType

instance ToQuery MarketType

instance ToHeader MarketType

instance ToJSON MarketType where
  toJSON = toJSONText

instance FromJSON MarketType where
  parseJSON = parseJSONText "MarketType"
