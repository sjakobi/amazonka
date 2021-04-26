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
-- Module      : Network.AWS.MQ.Types.DeploymentMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.DeploymentMode
  ( DeploymentMode
      ( ..,
        DeploymentModeACTIVESTANDBYMULTIAZ,
        DeploymentModeCLUSTERMULTIAZ,
        DeploymentModeSINGLEINSTANCE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The deployment mode of the broker.
newtype DeploymentMode = DeploymentMode'
  { fromDeploymentMode ::
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

pattern DeploymentModeACTIVESTANDBYMULTIAZ :: DeploymentMode
pattern DeploymentModeACTIVESTANDBYMULTIAZ = DeploymentMode' "ACTIVE_STANDBY_MULTI_AZ"

pattern DeploymentModeCLUSTERMULTIAZ :: DeploymentMode
pattern DeploymentModeCLUSTERMULTIAZ = DeploymentMode' "CLUSTER_MULTI_AZ"

pattern DeploymentModeSINGLEINSTANCE :: DeploymentMode
pattern DeploymentModeSINGLEINSTANCE = DeploymentMode' "SINGLE_INSTANCE"

{-# COMPLETE
  DeploymentModeACTIVESTANDBYMULTIAZ,
  DeploymentModeCLUSTERMULTIAZ,
  DeploymentModeSINGLEINSTANCE,
  DeploymentMode'
  #-}

instance Prelude.FromText DeploymentMode where
  parser = DeploymentMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentMode where
  toText (DeploymentMode' x) = x

instance Prelude.Hashable DeploymentMode

instance Prelude.NFData DeploymentMode

instance Prelude.ToByteString DeploymentMode

instance Prelude.ToQuery DeploymentMode

instance Prelude.ToHeader DeploymentMode

instance Prelude.ToJSON DeploymentMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeploymentMode where
  parseJSON = Prelude.parseJSONText "DeploymentMode"
