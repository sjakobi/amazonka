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
-- Module      : Network.AWS.CodeDeploy.Types.TriggerEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TriggerEventType
  ( TriggerEventType
      ( ..,
        TriggerEventTypeDeploymentFailure,
        TriggerEventTypeDeploymentReady,
        TriggerEventTypeDeploymentRollback,
        TriggerEventTypeDeploymentStart,
        TriggerEventTypeDeploymentStop,
        TriggerEventTypeDeploymentSuccess,
        TriggerEventTypeInstanceFailure,
        TriggerEventTypeInstanceReady,
        TriggerEventTypeInstanceStart,
        TriggerEventTypeInstanceSuccess
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TriggerEventType = TriggerEventType'
  { fromTriggerEventType ::
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

pattern TriggerEventTypeDeploymentFailure :: TriggerEventType
pattern TriggerEventTypeDeploymentFailure = TriggerEventType' "DeploymentFailure"

pattern TriggerEventTypeDeploymentReady :: TriggerEventType
pattern TriggerEventTypeDeploymentReady = TriggerEventType' "DeploymentReady"

pattern TriggerEventTypeDeploymentRollback :: TriggerEventType
pattern TriggerEventTypeDeploymentRollback = TriggerEventType' "DeploymentRollback"

pattern TriggerEventTypeDeploymentStart :: TriggerEventType
pattern TriggerEventTypeDeploymentStart = TriggerEventType' "DeploymentStart"

pattern TriggerEventTypeDeploymentStop :: TriggerEventType
pattern TriggerEventTypeDeploymentStop = TriggerEventType' "DeploymentStop"

pattern TriggerEventTypeDeploymentSuccess :: TriggerEventType
pattern TriggerEventTypeDeploymentSuccess = TriggerEventType' "DeploymentSuccess"

pattern TriggerEventTypeInstanceFailure :: TriggerEventType
pattern TriggerEventTypeInstanceFailure = TriggerEventType' "InstanceFailure"

pattern TriggerEventTypeInstanceReady :: TriggerEventType
pattern TriggerEventTypeInstanceReady = TriggerEventType' "InstanceReady"

pattern TriggerEventTypeInstanceStart :: TriggerEventType
pattern TriggerEventTypeInstanceStart = TriggerEventType' "InstanceStart"

pattern TriggerEventTypeInstanceSuccess :: TriggerEventType
pattern TriggerEventTypeInstanceSuccess = TriggerEventType' "InstanceSuccess"

{-# COMPLETE
  TriggerEventTypeDeploymentFailure,
  TriggerEventTypeDeploymentReady,
  TriggerEventTypeDeploymentRollback,
  TriggerEventTypeDeploymentStart,
  TriggerEventTypeDeploymentStop,
  TriggerEventTypeDeploymentSuccess,
  TriggerEventTypeInstanceFailure,
  TriggerEventTypeInstanceReady,
  TriggerEventTypeInstanceStart,
  TriggerEventTypeInstanceSuccess,
  TriggerEventType'
  #-}

instance Prelude.FromText TriggerEventType where
  parser = TriggerEventType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TriggerEventType where
  toText (TriggerEventType' x) = x

instance Prelude.Hashable TriggerEventType

instance Prelude.NFData TriggerEventType

instance Prelude.ToByteString TriggerEventType

instance Prelude.ToQuery TriggerEventType

instance Prelude.ToHeader TriggerEventType

instance Prelude.ToJSON TriggerEventType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TriggerEventType where
  parseJSON = Prelude.parseJSONText "TriggerEventType"
