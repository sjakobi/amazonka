{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Completed,
        Failed,
        Initializing,
        Running,
        Stopped,
        Stopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The current status of the bulk deployment.
data BulkDeploymentStatus
  = BulkDeploymentStatus'
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

pattern Completed :: BulkDeploymentStatus
pattern Completed = BulkDeploymentStatus' "Completed"

pattern Failed :: BulkDeploymentStatus
pattern Failed = BulkDeploymentStatus' "Failed"

pattern Initializing :: BulkDeploymentStatus
pattern Initializing = BulkDeploymentStatus' "Initializing"

pattern Running :: BulkDeploymentStatus
pattern Running = BulkDeploymentStatus' "Running"

pattern Stopped :: BulkDeploymentStatus
pattern Stopped = BulkDeploymentStatus' "Stopped"

pattern Stopping :: BulkDeploymentStatus
pattern Stopping = BulkDeploymentStatus' "Stopping"

{-# COMPLETE
  Completed,
  Failed,
  Initializing,
  Running,
  Stopped,
  Stopping,
  BulkDeploymentStatus'
  #-}

instance FromText BulkDeploymentStatus where
  parser = (BulkDeploymentStatus' . mk) <$> takeText

instance ToText BulkDeploymentStatus where
  toText (BulkDeploymentStatus' ci) = original ci

instance Hashable BulkDeploymentStatus

instance NFData BulkDeploymentStatus

instance ToByteString BulkDeploymentStatus

instance ToQuery BulkDeploymentStatus

instance ToHeader BulkDeploymentStatus

instance FromJSON BulkDeploymentStatus where
  parseJSON = parseJSONText "BulkDeploymentStatus"
