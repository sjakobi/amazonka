{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ContainerServiceDeploymentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServiceDeploymentState
  ( ContainerServiceDeploymentState
      ( ..,
        CSDSActivating,
        CSDSActive,
        CSDSFailed,
        CSDSInactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContainerServiceDeploymentState
  = ContainerServiceDeploymentState'
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

pattern CSDSActivating :: ContainerServiceDeploymentState
pattern CSDSActivating = ContainerServiceDeploymentState' "ACTIVATING"

pattern CSDSActive :: ContainerServiceDeploymentState
pattern CSDSActive = ContainerServiceDeploymentState' "ACTIVE"

pattern CSDSFailed :: ContainerServiceDeploymentState
pattern CSDSFailed = ContainerServiceDeploymentState' "FAILED"

pattern CSDSInactive :: ContainerServiceDeploymentState
pattern CSDSInactive = ContainerServiceDeploymentState' "INACTIVE"

{-# COMPLETE
  CSDSActivating,
  CSDSActive,
  CSDSFailed,
  CSDSInactive,
  ContainerServiceDeploymentState'
  #-}

instance FromText ContainerServiceDeploymentState where
  parser = (ContainerServiceDeploymentState' . mk) <$> takeText

instance ToText ContainerServiceDeploymentState where
  toText (ContainerServiceDeploymentState' ci) = original ci

instance Hashable ContainerServiceDeploymentState

instance NFData ContainerServiceDeploymentState

instance ToByteString ContainerServiceDeploymentState

instance ToQuery ContainerServiceDeploymentState

instance ToHeader ContainerServiceDeploymentState

instance FromJSON ContainerServiceDeploymentState where
  parseJSON = parseJSONText "ContainerServiceDeploymentState"
