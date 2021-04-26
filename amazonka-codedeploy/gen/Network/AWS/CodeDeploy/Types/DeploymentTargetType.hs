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
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentTargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentTargetType
  ( DeploymentTargetType
      ( ..,
        DeploymentTargetTypeCloudFormationTarget,
        DeploymentTargetTypeECSTarget,
        DeploymentTargetTypeInstanceTarget,
        DeploymentTargetTypeLambdaTarget
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentTargetType = DeploymentTargetType'
  { fromDeploymentTargetType ::
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

pattern DeploymentTargetTypeCloudFormationTarget :: DeploymentTargetType
pattern DeploymentTargetTypeCloudFormationTarget = DeploymentTargetType' "CloudFormationTarget"

pattern DeploymentTargetTypeECSTarget :: DeploymentTargetType
pattern DeploymentTargetTypeECSTarget = DeploymentTargetType' "ECSTarget"

pattern DeploymentTargetTypeInstanceTarget :: DeploymentTargetType
pattern DeploymentTargetTypeInstanceTarget = DeploymentTargetType' "InstanceTarget"

pattern DeploymentTargetTypeLambdaTarget :: DeploymentTargetType
pattern DeploymentTargetTypeLambdaTarget = DeploymentTargetType' "LambdaTarget"

{-# COMPLETE
  DeploymentTargetTypeCloudFormationTarget,
  DeploymentTargetTypeECSTarget,
  DeploymentTargetTypeInstanceTarget,
  DeploymentTargetTypeLambdaTarget,
  DeploymentTargetType'
  #-}

instance Prelude.FromText DeploymentTargetType where
  parser = DeploymentTargetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentTargetType where
  toText (DeploymentTargetType' x) = x

instance Prelude.Hashable DeploymentTargetType

instance Prelude.NFData DeploymentTargetType

instance Prelude.ToByteString DeploymentTargetType

instance Prelude.ToQuery DeploymentTargetType

instance Prelude.ToHeader DeploymentTargetType

instance Prelude.FromJSON DeploymentTargetType where
  parseJSON = Prelude.parseJSONText "DeploymentTargetType"
