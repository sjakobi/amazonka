{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.BalancingStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.BalancingStrategy
  ( BalancingStrategy
      ( ..,
        OnDemandOnly,
        SpotOnly,
        SpotPreferred
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BalancingStrategy = BalancingStrategy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OnDemandOnly :: BalancingStrategy
pattern OnDemandOnly = BalancingStrategy' "ON_DEMAND_ONLY"

pattern SpotOnly :: BalancingStrategy
pattern SpotOnly = BalancingStrategy' "SPOT_ONLY"

pattern SpotPreferred :: BalancingStrategy
pattern SpotPreferred = BalancingStrategy' "SPOT_PREFERRED"

{-# COMPLETE
  OnDemandOnly,
  SpotOnly,
  SpotPreferred,
  BalancingStrategy'
  #-}

instance FromText BalancingStrategy where
  parser = (BalancingStrategy' . mk) <$> takeText

instance ToText BalancingStrategy where
  toText (BalancingStrategy' ci) = original ci

instance Hashable BalancingStrategy

instance NFData BalancingStrategy

instance ToByteString BalancingStrategy

instance ToQuery BalancingStrategy

instance ToHeader BalancingStrategy

instance ToJSON BalancingStrategy where
  toJSON = toJSONText

instance FromJSON BalancingStrategy where
  parseJSON = parseJSONText "BalancingStrategy"
