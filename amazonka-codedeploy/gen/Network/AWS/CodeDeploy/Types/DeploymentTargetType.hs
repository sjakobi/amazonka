{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentTargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentTargetType
  ( DeploymentTargetType
      ( ..,
        CloudFormationTarget,
        ECSTarget,
        InstanceTarget,
        LambdaTarget
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeploymentTargetType
  = DeploymentTargetType'
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

pattern CloudFormationTarget :: DeploymentTargetType
pattern CloudFormationTarget = DeploymentTargetType' "CloudFormationTarget"

pattern ECSTarget :: DeploymentTargetType
pattern ECSTarget = DeploymentTargetType' "ECSTarget"

pattern InstanceTarget :: DeploymentTargetType
pattern InstanceTarget = DeploymentTargetType' "InstanceTarget"

pattern LambdaTarget :: DeploymentTargetType
pattern LambdaTarget = DeploymentTargetType' "LambdaTarget"

{-# COMPLETE
  CloudFormationTarget,
  ECSTarget,
  InstanceTarget,
  LambdaTarget,
  DeploymentTargetType'
  #-}

instance FromText DeploymentTargetType where
  parser = (DeploymentTargetType' . mk) <$> takeText

instance ToText DeploymentTargetType where
  toText (DeploymentTargetType' ci) = original ci

instance Hashable DeploymentTargetType

instance NFData DeploymentTargetType

instance ToByteString DeploymentTargetType

instance ToQuery DeploymentTargetType

instance ToHeader DeploymentTargetType

instance FromJSON DeploymentTargetType where
  parseJSON = parseJSONText "DeploymentTargetType"
