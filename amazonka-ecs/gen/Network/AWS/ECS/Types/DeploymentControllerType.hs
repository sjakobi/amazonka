{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.DeploymentControllerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.DeploymentControllerType
  ( DeploymentControllerType
      ( ..,
        CodeDeploy,
        Ecs,
        External
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeploymentControllerType
  = DeploymentControllerType'
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

pattern CodeDeploy :: DeploymentControllerType
pattern CodeDeploy = DeploymentControllerType' "CODE_DEPLOY"

pattern Ecs :: DeploymentControllerType
pattern Ecs = DeploymentControllerType' "ECS"

pattern External :: DeploymentControllerType
pattern External = DeploymentControllerType' "EXTERNAL"

{-# COMPLETE
  CodeDeploy,
  Ecs,
  External,
  DeploymentControllerType'
  #-}

instance FromText DeploymentControllerType where
  parser = (DeploymentControllerType' . mk) <$> takeText

instance ToText DeploymentControllerType where
  toText (DeploymentControllerType' ci) = original ci

instance Hashable DeploymentControllerType

instance NFData DeploymentControllerType

instance ToByteString DeploymentControllerType

instance ToQuery DeploymentControllerType

instance ToHeader DeploymentControllerType

instance ToJSON DeploymentControllerType where
  toJSON = toJSONText

instance FromJSON DeploymentControllerType where
  parseJSON = parseJSONText "DeploymentControllerType"
