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
-- Module      : Network.AWS.OpsWorks.Types.DeploymentCommandName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.DeploymentCommandName
  ( DeploymentCommandName
      ( ..,
        DeploymentCommandNameConfigure,
        DeploymentCommandNameDeploy,
        DeploymentCommandNameExecuteRecipes,
        DeploymentCommandNameInstallDependencies,
        DeploymentCommandNameRestart,
        DeploymentCommandNameRollback,
        DeploymentCommandNameSetup,
        DeploymentCommandNameStart,
        DeploymentCommandNameStop,
        DeploymentCommandNameUndeploy,
        DeploymentCommandNameUpdateCustomCookbooks,
        DeploymentCommandNameUpdateDependencies
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentCommandName = DeploymentCommandName'
  { fromDeploymentCommandName ::
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

pattern DeploymentCommandNameConfigure :: DeploymentCommandName
pattern DeploymentCommandNameConfigure = DeploymentCommandName' "configure"

pattern DeploymentCommandNameDeploy :: DeploymentCommandName
pattern DeploymentCommandNameDeploy = DeploymentCommandName' "deploy"

pattern DeploymentCommandNameExecuteRecipes :: DeploymentCommandName
pattern DeploymentCommandNameExecuteRecipes = DeploymentCommandName' "execute_recipes"

pattern DeploymentCommandNameInstallDependencies :: DeploymentCommandName
pattern DeploymentCommandNameInstallDependencies = DeploymentCommandName' "install_dependencies"

pattern DeploymentCommandNameRestart :: DeploymentCommandName
pattern DeploymentCommandNameRestart = DeploymentCommandName' "restart"

pattern DeploymentCommandNameRollback :: DeploymentCommandName
pattern DeploymentCommandNameRollback = DeploymentCommandName' "rollback"

pattern DeploymentCommandNameSetup :: DeploymentCommandName
pattern DeploymentCommandNameSetup = DeploymentCommandName' "setup"

pattern DeploymentCommandNameStart :: DeploymentCommandName
pattern DeploymentCommandNameStart = DeploymentCommandName' "start"

pattern DeploymentCommandNameStop :: DeploymentCommandName
pattern DeploymentCommandNameStop = DeploymentCommandName' "stop"

pattern DeploymentCommandNameUndeploy :: DeploymentCommandName
pattern DeploymentCommandNameUndeploy = DeploymentCommandName' "undeploy"

pattern DeploymentCommandNameUpdateCustomCookbooks :: DeploymentCommandName
pattern DeploymentCommandNameUpdateCustomCookbooks = DeploymentCommandName' "update_custom_cookbooks"

pattern DeploymentCommandNameUpdateDependencies :: DeploymentCommandName
pattern DeploymentCommandNameUpdateDependencies = DeploymentCommandName' "update_dependencies"

{-# COMPLETE
  DeploymentCommandNameConfigure,
  DeploymentCommandNameDeploy,
  DeploymentCommandNameExecuteRecipes,
  DeploymentCommandNameInstallDependencies,
  DeploymentCommandNameRestart,
  DeploymentCommandNameRollback,
  DeploymentCommandNameSetup,
  DeploymentCommandNameStart,
  DeploymentCommandNameStop,
  DeploymentCommandNameUndeploy,
  DeploymentCommandNameUpdateCustomCookbooks,
  DeploymentCommandNameUpdateDependencies,
  DeploymentCommandName'
  #-}

instance Prelude.FromText DeploymentCommandName where
  parser = DeploymentCommandName' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentCommandName where
  toText (DeploymentCommandName' x) = x

instance Prelude.Hashable DeploymentCommandName

instance Prelude.NFData DeploymentCommandName

instance Prelude.ToByteString DeploymentCommandName

instance Prelude.ToQuery DeploymentCommandName

instance Prelude.ToHeader DeploymentCommandName

instance Prelude.ToJSON DeploymentCommandName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeploymentCommandName where
  parseJSON = Prelude.parseJSONText "DeploymentCommandName"
