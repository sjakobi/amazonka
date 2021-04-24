{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentReadyAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentReadyAction
  ( DeploymentReadyAction
      ( ..,
        ContinueDeployment,
        StopDeployment
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeploymentReadyAction
  = DeploymentReadyAction'
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

pattern ContinueDeployment :: DeploymentReadyAction
pattern ContinueDeployment = DeploymentReadyAction' "CONTINUE_DEPLOYMENT"

pattern StopDeployment :: DeploymentReadyAction
pattern StopDeployment = DeploymentReadyAction' "STOP_DEPLOYMENT"

{-# COMPLETE
  ContinueDeployment,
  StopDeployment,
  DeploymentReadyAction'
  #-}

instance FromText DeploymentReadyAction where
  parser = (DeploymentReadyAction' . mk) <$> takeText

instance ToText DeploymentReadyAction where
  toText (DeploymentReadyAction' ci) = original ci

instance Hashable DeploymentReadyAction

instance NFData DeploymentReadyAction

instance ToByteString DeploymentReadyAction

instance ToQuery DeploymentReadyAction

instance ToHeader DeploymentReadyAction

instance ToJSON DeploymentReadyAction where
  toJSON = toJSONText

instance FromJSON DeploymentReadyAction where
  parseJSON = parseJSONText "DeploymentReadyAction"
