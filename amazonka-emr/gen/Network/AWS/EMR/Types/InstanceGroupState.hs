{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceGroupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceGroupState
  ( InstanceGroupState
      ( ..,
        IGSArrested,
        IGSBootstrapping,
        IGSEnded,
        IGSProvisioning,
        IGSReconfiguring,
        IGSResizing,
        IGSRunning,
        IGSShuttingDown,
        IGSSuspended,
        IGSTerminated,
        IGSTerminating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceGroupState
  = InstanceGroupState'
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

pattern IGSArrested :: InstanceGroupState
pattern IGSArrested = InstanceGroupState' "ARRESTED"

pattern IGSBootstrapping :: InstanceGroupState
pattern IGSBootstrapping = InstanceGroupState' "BOOTSTRAPPING"

pattern IGSEnded :: InstanceGroupState
pattern IGSEnded = InstanceGroupState' "ENDED"

pattern IGSProvisioning :: InstanceGroupState
pattern IGSProvisioning = InstanceGroupState' "PROVISIONING"

pattern IGSReconfiguring :: InstanceGroupState
pattern IGSReconfiguring = InstanceGroupState' "RECONFIGURING"

pattern IGSResizing :: InstanceGroupState
pattern IGSResizing = InstanceGroupState' "RESIZING"

pattern IGSRunning :: InstanceGroupState
pattern IGSRunning = InstanceGroupState' "RUNNING"

pattern IGSShuttingDown :: InstanceGroupState
pattern IGSShuttingDown = InstanceGroupState' "SHUTTING_DOWN"

pattern IGSSuspended :: InstanceGroupState
pattern IGSSuspended = InstanceGroupState' "SUSPENDED"

pattern IGSTerminated :: InstanceGroupState
pattern IGSTerminated = InstanceGroupState' "TERMINATED"

pattern IGSTerminating :: InstanceGroupState
pattern IGSTerminating = InstanceGroupState' "TERMINATING"

{-# COMPLETE
  IGSArrested,
  IGSBootstrapping,
  IGSEnded,
  IGSProvisioning,
  IGSReconfiguring,
  IGSResizing,
  IGSRunning,
  IGSShuttingDown,
  IGSSuspended,
  IGSTerminated,
  IGSTerminating,
  InstanceGroupState'
  #-}

instance FromText InstanceGroupState where
  parser = (InstanceGroupState' . mk) <$> takeText

instance ToText InstanceGroupState where
  toText (InstanceGroupState' ci) = original ci

instance Hashable InstanceGroupState

instance NFData InstanceGroupState

instance ToByteString InstanceGroupState

instance ToQuery InstanceGroupState

instance ToHeader InstanceGroupState

instance FromJSON InstanceGroupState where
  parseJSON = parseJSONText "InstanceGroupState"
