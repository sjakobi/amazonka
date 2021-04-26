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
-- Module      : Network.AWS.ECS.Types.DeploymentControllerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.DeploymentControllerType
  ( DeploymentControllerType
      ( ..,
        DeploymentControllerTypeCODEDEPLOY,
        DeploymentControllerTypeECS,
        DeploymentControllerTypeEXTERNAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentControllerType = DeploymentControllerType'
  { fromDeploymentControllerType ::
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

pattern DeploymentControllerTypeCODEDEPLOY :: DeploymentControllerType
pattern DeploymentControllerTypeCODEDEPLOY = DeploymentControllerType' "CODE_DEPLOY"

pattern DeploymentControllerTypeECS :: DeploymentControllerType
pattern DeploymentControllerTypeECS = DeploymentControllerType' "ECS"

pattern DeploymentControllerTypeEXTERNAL :: DeploymentControllerType
pattern DeploymentControllerTypeEXTERNAL = DeploymentControllerType' "EXTERNAL"

{-# COMPLETE
  DeploymentControllerTypeCODEDEPLOY,
  DeploymentControllerTypeECS,
  DeploymentControllerTypeEXTERNAL,
  DeploymentControllerType'
  #-}

instance Prelude.FromText DeploymentControllerType where
  parser = DeploymentControllerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentControllerType where
  toText (DeploymentControllerType' x) = x

instance Prelude.Hashable DeploymentControllerType

instance Prelude.NFData DeploymentControllerType

instance Prelude.ToByteString DeploymentControllerType

instance Prelude.ToQuery DeploymentControllerType

instance Prelude.ToHeader DeploymentControllerType

instance Prelude.ToJSON DeploymentControllerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeploymentControllerType where
  parseJSON = Prelude.parseJSONText "DeploymentControllerType"
