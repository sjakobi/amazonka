{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Baking,
        Created,
        Failed,
        InProgress,
        Queued,
        Ready,
        Stopped,
        Succeeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeploymentStatus = DeploymentStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Baking :: DeploymentStatus
pattern Baking = DeploymentStatus' "Baking"

pattern Created :: DeploymentStatus
pattern Created = DeploymentStatus' "Created"

pattern Failed :: DeploymentStatus
pattern Failed = DeploymentStatus' "Failed"

pattern InProgress :: DeploymentStatus
pattern InProgress = DeploymentStatus' "InProgress"

pattern Queued :: DeploymentStatus
pattern Queued = DeploymentStatus' "Queued"

pattern Ready :: DeploymentStatus
pattern Ready = DeploymentStatus' "Ready"

pattern Stopped :: DeploymentStatus
pattern Stopped = DeploymentStatus' "Stopped"

pattern Succeeded :: DeploymentStatus
pattern Succeeded = DeploymentStatus' "Succeeded"

{-# COMPLETE
  Baking,
  Created,
  Failed,
  InProgress,
  Queued,
  Ready,
  Stopped,
  Succeeded,
  DeploymentStatus'
  #-}

instance FromText DeploymentStatus where
  parser = (DeploymentStatus' . mk) <$> takeText

instance ToText DeploymentStatus where
  toText (DeploymentStatus' ci) = original ci

instance Hashable DeploymentStatus

instance NFData DeploymentStatus

instance ToByteString DeploymentStatus

instance ToQuery DeploymentStatus

instance ToHeader DeploymentStatus

instance ToJSON DeploymentStatus where
  toJSON = toJSONText

instance FromJSON DeploymentStatus where
  parseJSON = parseJSONText "DeploymentStatus"
