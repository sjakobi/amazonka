{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceFleetState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceFleetState
  ( InstanceFleetState
      ( ..,
        IFSBootstrapping,
        IFSProvisioning,
        IFSResizing,
        IFSRunning,
        IFSSuspended,
        IFSTerminated,
        IFSTerminating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceFleetState
  = InstanceFleetState'
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

pattern IFSBootstrapping :: InstanceFleetState
pattern IFSBootstrapping = InstanceFleetState' "BOOTSTRAPPING"

pattern IFSProvisioning :: InstanceFleetState
pattern IFSProvisioning = InstanceFleetState' "PROVISIONING"

pattern IFSResizing :: InstanceFleetState
pattern IFSResizing = InstanceFleetState' "RESIZING"

pattern IFSRunning :: InstanceFleetState
pattern IFSRunning = InstanceFleetState' "RUNNING"

pattern IFSSuspended :: InstanceFleetState
pattern IFSSuspended = InstanceFleetState' "SUSPENDED"

pattern IFSTerminated :: InstanceFleetState
pattern IFSTerminated = InstanceFleetState' "TERMINATED"

pattern IFSTerminating :: InstanceFleetState
pattern IFSTerminating = InstanceFleetState' "TERMINATING"

{-# COMPLETE
  IFSBootstrapping,
  IFSProvisioning,
  IFSResizing,
  IFSRunning,
  IFSSuspended,
  IFSTerminated,
  IFSTerminating,
  InstanceFleetState'
  #-}

instance FromText InstanceFleetState where
  parser = (InstanceFleetState' . mk) <$> takeText

instance ToText InstanceFleetState where
  toText (InstanceFleetState' ci) = original ci

instance Hashable InstanceFleetState

instance NFData InstanceFleetState

instance ToByteString InstanceFleetState

instance ToQuery InstanceFleetState

instance ToHeader InstanceFleetState

instance FromJSON InstanceFleetState where
  parseJSON = parseJSONText "InstanceFleetState"
