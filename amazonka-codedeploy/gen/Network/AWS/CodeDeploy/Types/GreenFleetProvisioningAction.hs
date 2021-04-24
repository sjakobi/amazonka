{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.GreenFleetProvisioningAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.GreenFleetProvisioningAction
  ( GreenFleetProvisioningAction
      ( ..,
        CopyAutoScalingGroup,
        DiscoverExisting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GreenFleetProvisioningAction
  = GreenFleetProvisioningAction'
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

pattern CopyAutoScalingGroup :: GreenFleetProvisioningAction
pattern CopyAutoScalingGroup = GreenFleetProvisioningAction' "COPY_AUTO_SCALING_GROUP"

pattern DiscoverExisting :: GreenFleetProvisioningAction
pattern DiscoverExisting = GreenFleetProvisioningAction' "DISCOVER_EXISTING"

{-# COMPLETE
  CopyAutoScalingGroup,
  DiscoverExisting,
  GreenFleetProvisioningAction'
  #-}

instance FromText GreenFleetProvisioningAction where
  parser = (GreenFleetProvisioningAction' . mk) <$> takeText

instance ToText GreenFleetProvisioningAction where
  toText (GreenFleetProvisioningAction' ci) = original ci

instance Hashable GreenFleetProvisioningAction

instance NFData GreenFleetProvisioningAction

instance ToByteString GreenFleetProvisioningAction

instance ToQuery GreenFleetProvisioningAction

instance ToHeader GreenFleetProvisioningAction

instance ToJSON GreenFleetProvisioningAction where
  toJSON = toJSONText

instance FromJSON GreenFleetProvisioningAction where
  parseJSON = parseJSONText "GreenFleetProvisioningAction"
