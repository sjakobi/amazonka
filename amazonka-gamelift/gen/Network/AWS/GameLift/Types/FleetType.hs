{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.FleetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.FleetType
  ( FleetType
      ( ..,
        OnDemand,
        Spot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FleetType = FleetType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OnDemand :: FleetType
pattern OnDemand = FleetType' "ON_DEMAND"

pattern Spot :: FleetType
pattern Spot = FleetType' "SPOT"

{-# COMPLETE
  OnDemand,
  Spot,
  FleetType'
  #-}

instance FromText FleetType where
  parser = (FleetType' . mk) <$> takeText

instance ToText FleetType where
  toText (FleetType' ci) = original ci

instance Hashable FleetType

instance NFData FleetType

instance ToByteString FleetType

instance ToQuery FleetType

instance ToHeader FleetType

instance ToJSON FleetType where
  toJSON = toJSONText

instance FromJSON FleetType where
  parseJSON = parseJSONText "FleetType"
