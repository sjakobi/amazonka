{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentCreator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentCreator
  ( DeploymentCreator
      ( ..,
        Autoscaling,
        CloudFormation,
        CloudFormationRollback,
        CodeDeploy,
        CodeDeployRollback,
        User
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeploymentCreator = DeploymentCreator' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Autoscaling :: DeploymentCreator
pattern Autoscaling = DeploymentCreator' "autoscaling"

pattern CloudFormation :: DeploymentCreator
pattern CloudFormation = DeploymentCreator' "CloudFormation"

pattern CloudFormationRollback :: DeploymentCreator
pattern CloudFormationRollback = DeploymentCreator' "CloudFormationRollback"

pattern CodeDeploy :: DeploymentCreator
pattern CodeDeploy = DeploymentCreator' "CodeDeploy"

pattern CodeDeployRollback :: DeploymentCreator
pattern CodeDeployRollback = DeploymentCreator' "codeDeployRollback"

pattern User :: DeploymentCreator
pattern User = DeploymentCreator' "user"

{-# COMPLETE
  Autoscaling,
  CloudFormation,
  CloudFormationRollback,
  CodeDeploy,
  CodeDeployRollback,
  User,
  DeploymentCreator'
  #-}

instance FromText DeploymentCreator where
  parser = (DeploymentCreator' . mk) <$> takeText

instance ToText DeploymentCreator where
  toText (DeploymentCreator' ci) = original ci

instance Hashable DeploymentCreator

instance NFData DeploymentCreator

instance ToByteString DeploymentCreator

instance ToQuery DeploymentCreator

instance ToHeader DeploymentCreator

instance FromJSON DeploymentCreator where
  parseJSON = parseJSONText "DeploymentCreator"
