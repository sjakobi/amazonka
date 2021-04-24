{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ManagedScalingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ManagedScalingStatus
  ( ManagedScalingStatus
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ManagedScalingStatus
  = ManagedScalingStatus'
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

pattern Disabled :: ManagedScalingStatus
pattern Disabled = ManagedScalingStatus' "DISABLED"

pattern Enabled :: ManagedScalingStatus
pattern Enabled = ManagedScalingStatus' "ENABLED"

{-# COMPLETE
  Disabled,
  Enabled,
  ManagedScalingStatus'
  #-}

instance FromText ManagedScalingStatus where
  parser = (ManagedScalingStatus' . mk) <$> takeText

instance ToText ManagedScalingStatus where
  toText (ManagedScalingStatus' ci) = original ci

instance Hashable ManagedScalingStatus

instance NFData ManagedScalingStatus

instance ToByteString ManagedScalingStatus

instance ToQuery ManagedScalingStatus

instance ToHeader ManagedScalingStatus

instance ToJSON ManagedScalingStatus where
  toJSON = toJSONText

instance FromJSON ManagedScalingStatus where
  parseJSON = parseJSONText "ManagedScalingStatus"
