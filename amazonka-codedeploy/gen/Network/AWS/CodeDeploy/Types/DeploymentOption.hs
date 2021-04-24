{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentOption
  ( DeploymentOption
      ( ..,
        WithTrafficControl,
        WithoutTrafficControl
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeploymentOption = DeploymentOption' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern WithTrafficControl :: DeploymentOption
pattern WithTrafficControl = DeploymentOption' "WITH_TRAFFIC_CONTROL"

pattern WithoutTrafficControl :: DeploymentOption
pattern WithoutTrafficControl = DeploymentOption' "WITHOUT_TRAFFIC_CONTROL"

{-# COMPLETE
  WithTrafficControl,
  WithoutTrafficControl,
  DeploymentOption'
  #-}

instance FromText DeploymentOption where
  parser = (DeploymentOption' . mk) <$> takeText

instance ToText DeploymentOption where
  toText (DeploymentOption' ci) = original ci

instance Hashable DeploymentOption

instance NFData DeploymentOption

instance ToByteString DeploymentOption

instance ToQuery DeploymentOption

instance ToHeader DeploymentOption

instance ToJSON DeploymentOption where
  toJSON = toJSONText

instance FromJSON DeploymentOption where
  parseJSON = parseJSONText "DeploymentOption"
