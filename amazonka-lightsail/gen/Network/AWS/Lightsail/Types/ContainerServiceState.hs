{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ContainerServiceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServiceState
  ( ContainerServiceState
      ( ..,
        CSSDeleting,
        CSSDisabled,
        CSSPending,
        CSSReady,
        CSSRunning,
        CSSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContainerServiceState
  = ContainerServiceState'
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

pattern CSSDeleting :: ContainerServiceState
pattern CSSDeleting = ContainerServiceState' "DELETING"

pattern CSSDisabled :: ContainerServiceState
pattern CSSDisabled = ContainerServiceState' "DISABLED"

pattern CSSPending :: ContainerServiceState
pattern CSSPending = ContainerServiceState' "PENDING"

pattern CSSReady :: ContainerServiceState
pattern CSSReady = ContainerServiceState' "READY"

pattern CSSRunning :: ContainerServiceState
pattern CSSRunning = ContainerServiceState' "RUNNING"

pattern CSSUpdating :: ContainerServiceState
pattern CSSUpdating = ContainerServiceState' "UPDATING"

{-# COMPLETE
  CSSDeleting,
  CSSDisabled,
  CSSPending,
  CSSReady,
  CSSRunning,
  CSSUpdating,
  ContainerServiceState'
  #-}

instance FromText ContainerServiceState where
  parser = (ContainerServiceState' . mk) <$> takeText

instance ToText ContainerServiceState where
  toText (ContainerServiceState' ci) = original ci

instance Hashable ContainerServiceState

instance NFData ContainerServiceState

instance ToByteString ContainerServiceState

instance ToQuery ContainerServiceState

instance ToHeader ContainerServiceState

instance FromJSON ContainerServiceState where
  parseJSON = parseJSONText "ContainerServiceState"
