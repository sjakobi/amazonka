{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceState
  ( InstanceState
      ( ..,
        ISAwaitingFulfillment,
        ISBootstrapping,
        ISProvisioning,
        ISRunning,
        ISTerminated
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceState = InstanceState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISAwaitingFulfillment :: InstanceState
pattern ISAwaitingFulfillment = InstanceState' "AWAITING_FULFILLMENT"

pattern ISBootstrapping :: InstanceState
pattern ISBootstrapping = InstanceState' "BOOTSTRAPPING"

pattern ISProvisioning :: InstanceState
pattern ISProvisioning = InstanceState' "PROVISIONING"

pattern ISRunning :: InstanceState
pattern ISRunning = InstanceState' "RUNNING"

pattern ISTerminated :: InstanceState
pattern ISTerminated = InstanceState' "TERMINATED"

{-# COMPLETE
  ISAwaitingFulfillment,
  ISBootstrapping,
  ISProvisioning,
  ISRunning,
  ISTerminated,
  InstanceState'
  #-}

instance FromText InstanceState where
  parser = (InstanceState' . mk) <$> takeText

instance ToText InstanceState where
  toText (InstanceState' ci) = original ci

instance Hashable InstanceState

instance NFData InstanceState

instance ToByteString InstanceState

instance ToQuery InstanceState

instance ToHeader InstanceState

instance ToJSON InstanceState where
  toJSON = toJSONText

instance FromJSON InstanceState where
  parseJSON = parseJSONText "InstanceState"
