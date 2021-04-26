{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        DeploymentCreatorAutoscaling,
        DeploymentCreatorCloudFormation,
        DeploymentCreatorCloudFormationRollback,
        DeploymentCreatorCodeDeploy,
        DeploymentCreatorCodeDeployRollback,
        DeploymentCreatorUser
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentCreator = DeploymentCreator'
  { fromDeploymentCreator ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern DeploymentCreatorAutoscaling :: DeploymentCreator
pattern DeploymentCreatorAutoscaling = DeploymentCreator' "autoscaling"

pattern DeploymentCreatorCloudFormation :: DeploymentCreator
pattern DeploymentCreatorCloudFormation = DeploymentCreator' "CloudFormation"

pattern DeploymentCreatorCloudFormationRollback :: DeploymentCreator
pattern DeploymentCreatorCloudFormationRollback = DeploymentCreator' "CloudFormationRollback"

pattern DeploymentCreatorCodeDeploy :: DeploymentCreator
pattern DeploymentCreatorCodeDeploy = DeploymentCreator' "CodeDeploy"

pattern DeploymentCreatorCodeDeployRollback :: DeploymentCreator
pattern DeploymentCreatorCodeDeployRollback = DeploymentCreator' "codeDeployRollback"

pattern DeploymentCreatorUser :: DeploymentCreator
pattern DeploymentCreatorUser = DeploymentCreator' "user"

{-# COMPLETE
  DeploymentCreatorAutoscaling,
  DeploymentCreatorCloudFormation,
  DeploymentCreatorCloudFormationRollback,
  DeploymentCreatorCodeDeploy,
  DeploymentCreatorCodeDeployRollback,
  DeploymentCreatorUser,
  DeploymentCreator'
  #-}

instance Prelude.FromText DeploymentCreator where
  parser = DeploymentCreator' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentCreator where
  toText (DeploymentCreator' x) = x

instance Prelude.Hashable DeploymentCreator

instance Prelude.NFData DeploymentCreator

instance Prelude.ToByteString DeploymentCreator

instance Prelude.ToQuery DeploymentCreator

instance Prelude.ToHeader DeploymentCreator

instance Prelude.FromJSON DeploymentCreator where
  parseJSON = Prelude.parseJSONText "DeploymentCreator"
