{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.FleetAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.FleetAction
  ( FleetAction
      ( ..,
        AutoScaling
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FleetAction = FleetAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AutoScaling :: FleetAction
pattern AutoScaling = FleetAction' "AUTO_SCALING"

{-# COMPLETE
  AutoScaling,
  FleetAction'
  #-}

instance FromText FleetAction where
  parser = (FleetAction' . mk) <$> takeText

instance ToText FleetAction where
  toText (FleetAction' ci) = original ci

instance Hashable FleetAction

instance NFData FleetAction

instance ToByteString FleetAction

instance ToQuery FleetAction

instance ToHeader FleetAction

instance ToJSON FleetAction where
  toJSON = toJSONText

instance FromJSON FleetAction where
  parseJSON = parseJSONText "FleetAction"
