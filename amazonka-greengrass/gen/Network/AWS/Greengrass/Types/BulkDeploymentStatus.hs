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
-- Module      : Network.AWS.Greengrass.Types.BulkDeploymentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.BulkDeploymentStatus
  ( BulkDeploymentStatus
      ( ..,
        BulkDeploymentStatusCompleted,
        BulkDeploymentStatusFailed,
        BulkDeploymentStatusInitializing,
        BulkDeploymentStatusRunning,
        BulkDeploymentStatusStopped,
        BulkDeploymentStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The current status of the bulk deployment.
newtype BulkDeploymentStatus = BulkDeploymentStatus'
  { fromBulkDeploymentStatus ::
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

pattern BulkDeploymentStatusCompleted :: BulkDeploymentStatus
pattern BulkDeploymentStatusCompleted = BulkDeploymentStatus' "Completed"

pattern BulkDeploymentStatusFailed :: BulkDeploymentStatus
pattern BulkDeploymentStatusFailed = BulkDeploymentStatus' "Failed"

pattern BulkDeploymentStatusInitializing :: BulkDeploymentStatus
pattern BulkDeploymentStatusInitializing = BulkDeploymentStatus' "Initializing"

pattern BulkDeploymentStatusRunning :: BulkDeploymentStatus
pattern BulkDeploymentStatusRunning = BulkDeploymentStatus' "Running"

pattern BulkDeploymentStatusStopped :: BulkDeploymentStatus
pattern BulkDeploymentStatusStopped = BulkDeploymentStatus' "Stopped"

pattern BulkDeploymentStatusStopping :: BulkDeploymentStatus
pattern BulkDeploymentStatusStopping = BulkDeploymentStatus' "Stopping"

{-# COMPLETE
  BulkDeploymentStatusCompleted,
  BulkDeploymentStatusFailed,
  BulkDeploymentStatusInitializing,
  BulkDeploymentStatusRunning,
  BulkDeploymentStatusStopped,
  BulkDeploymentStatusStopping,
  BulkDeploymentStatus'
  #-}

instance Prelude.FromText BulkDeploymentStatus where
  parser = BulkDeploymentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText BulkDeploymentStatus where
  toText (BulkDeploymentStatus' x) = x

instance Prelude.Hashable BulkDeploymentStatus

instance Prelude.NFData BulkDeploymentStatus

instance Prelude.ToByteString BulkDeploymentStatus

instance Prelude.ToQuery BulkDeploymentStatus

instance Prelude.ToHeader BulkDeploymentStatus

instance Prelude.FromJSON BulkDeploymentStatus where
  parseJSON = Prelude.parseJSONText "BulkDeploymentStatus"
