{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.TriggerEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TriggerEventType
  ( TriggerEventType
      ( ..,
        TETDeploymentFailure,
        TETDeploymentReady,
        TETDeploymentRollback,
        TETDeploymentStart,
        TETDeploymentStop,
        TETDeploymentSuccess,
        TETInstanceFailure,
        TETInstanceReady,
        TETInstanceStart,
        TETInstanceSuccess
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TriggerEventType = TriggerEventType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TETDeploymentFailure :: TriggerEventType
pattern TETDeploymentFailure = TriggerEventType' "DeploymentFailure"

pattern TETDeploymentReady :: TriggerEventType
pattern TETDeploymentReady = TriggerEventType' "DeploymentReady"

pattern TETDeploymentRollback :: TriggerEventType
pattern TETDeploymentRollback = TriggerEventType' "DeploymentRollback"

pattern TETDeploymentStart :: TriggerEventType
pattern TETDeploymentStart = TriggerEventType' "DeploymentStart"

pattern TETDeploymentStop :: TriggerEventType
pattern TETDeploymentStop = TriggerEventType' "DeploymentStop"

pattern TETDeploymentSuccess :: TriggerEventType
pattern TETDeploymentSuccess = TriggerEventType' "DeploymentSuccess"

pattern TETInstanceFailure :: TriggerEventType
pattern TETInstanceFailure = TriggerEventType' "InstanceFailure"

pattern TETInstanceReady :: TriggerEventType
pattern TETInstanceReady = TriggerEventType' "InstanceReady"

pattern TETInstanceStart :: TriggerEventType
pattern TETInstanceStart = TriggerEventType' "InstanceStart"

pattern TETInstanceSuccess :: TriggerEventType
pattern TETInstanceSuccess = TriggerEventType' "InstanceSuccess"

{-# COMPLETE
  TETDeploymentFailure,
  TETDeploymentReady,
  TETDeploymentRollback,
  TETDeploymentStart,
  TETDeploymentStop,
  TETDeploymentSuccess,
  TETInstanceFailure,
  TETInstanceReady,
  TETInstanceStart,
  TETInstanceSuccess,
  TriggerEventType'
  #-}

instance FromText TriggerEventType where
  parser = (TriggerEventType' . mk) <$> takeText

instance ToText TriggerEventType where
  toText (TriggerEventType' ci) = original ci

instance Hashable TriggerEventType

instance NFData TriggerEventType

instance ToByteString TriggerEventType

instance ToQuery TriggerEventType

instance ToHeader TriggerEventType

instance ToJSON TriggerEventType where
  toJSON = toJSONText

instance FromJSON TriggerEventType where
  parseJSON = parseJSONText "TriggerEventType"
