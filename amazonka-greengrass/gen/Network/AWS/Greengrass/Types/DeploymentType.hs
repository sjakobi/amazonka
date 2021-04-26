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
-- Module      : Network.AWS.Greengrass.Types.DeploymentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.DeploymentType
  ( DeploymentType
      ( ..,
        DeploymentTypeForceResetDeployment,
        DeploymentTypeNewDeployment,
        DeploymentTypeRedeployment,
        DeploymentTypeResetDeployment
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of deployment. When used for \'\'CreateDeployment\'\', only
-- \'\'NewDeployment\'\' and \'\'Redeployment\'\' are valid.
newtype DeploymentType = DeploymentType'
  { fromDeploymentType ::
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

pattern DeploymentTypeForceResetDeployment :: DeploymentType
pattern DeploymentTypeForceResetDeployment = DeploymentType' "ForceResetDeployment"

pattern DeploymentTypeNewDeployment :: DeploymentType
pattern DeploymentTypeNewDeployment = DeploymentType' "NewDeployment"

pattern DeploymentTypeRedeployment :: DeploymentType
pattern DeploymentTypeRedeployment = DeploymentType' "Redeployment"

pattern DeploymentTypeResetDeployment :: DeploymentType
pattern DeploymentTypeResetDeployment = DeploymentType' "ResetDeployment"

{-# COMPLETE
  DeploymentTypeForceResetDeployment,
  DeploymentTypeNewDeployment,
  DeploymentTypeRedeployment,
  DeploymentTypeResetDeployment,
  DeploymentType'
  #-}

instance Prelude.FromText DeploymentType where
  parser = DeploymentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentType where
  toText (DeploymentType' x) = x

instance Prelude.Hashable DeploymentType

instance Prelude.NFData DeploymentType

instance Prelude.ToByteString DeploymentType

instance Prelude.ToQuery DeploymentType

instance Prelude.ToHeader DeploymentType

instance Prelude.ToJSON DeploymentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeploymentType where
  parseJSON = Prelude.parseJSONText "DeploymentType"
