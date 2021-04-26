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
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentStatus
  ( DeploymentStatus
      ( ..,
        DeploymentStatusBaking,
        DeploymentStatusCreated,
        DeploymentStatusFailed,
        DeploymentStatusInProgress,
        DeploymentStatusQueued,
        DeploymentStatusReady,
        DeploymentStatusStopped,
        DeploymentStatusSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentStatus = DeploymentStatus'
  { fromDeploymentStatus ::
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

pattern DeploymentStatusBaking :: DeploymentStatus
pattern DeploymentStatusBaking = DeploymentStatus' "Baking"

pattern DeploymentStatusCreated :: DeploymentStatus
pattern DeploymentStatusCreated = DeploymentStatus' "Created"

pattern DeploymentStatusFailed :: DeploymentStatus
pattern DeploymentStatusFailed = DeploymentStatus' "Failed"

pattern DeploymentStatusInProgress :: DeploymentStatus
pattern DeploymentStatusInProgress = DeploymentStatus' "InProgress"

pattern DeploymentStatusQueued :: DeploymentStatus
pattern DeploymentStatusQueued = DeploymentStatus' "Queued"

pattern DeploymentStatusReady :: DeploymentStatus
pattern DeploymentStatusReady = DeploymentStatus' "Ready"

pattern DeploymentStatusStopped :: DeploymentStatus
pattern DeploymentStatusStopped = DeploymentStatus' "Stopped"

pattern DeploymentStatusSucceeded :: DeploymentStatus
pattern DeploymentStatusSucceeded = DeploymentStatus' "Succeeded"

{-# COMPLETE
  DeploymentStatusBaking,
  DeploymentStatusCreated,
  DeploymentStatusFailed,
  DeploymentStatusInProgress,
  DeploymentStatusQueued,
  DeploymentStatusReady,
  DeploymentStatusStopped,
  DeploymentStatusSucceeded,
  DeploymentStatus'
  #-}

instance Prelude.FromText DeploymentStatus where
  parser = DeploymentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentStatus where
  toText (DeploymentStatus' x) = x

instance Prelude.Hashable DeploymentStatus

instance Prelude.NFData DeploymentStatus

instance Prelude.ToByteString DeploymentStatus

instance Prelude.ToQuery DeploymentStatus

instance Prelude.ToHeader DeploymentStatus

instance Prelude.ToJSON DeploymentStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeploymentStatus where
  parseJSON = Prelude.parseJSONText "DeploymentStatus"
