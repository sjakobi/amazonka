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
-- Module      : Network.AWS.ECS.Types.DeploymentRolloutState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.DeploymentRolloutState
  ( DeploymentRolloutState
      ( ..,
        DeploymentRolloutStateCOMPLETED,
        DeploymentRolloutStateFAILED,
        DeploymentRolloutStateINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentRolloutState = DeploymentRolloutState'
  { fromDeploymentRolloutState ::
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

pattern DeploymentRolloutStateCOMPLETED :: DeploymentRolloutState
pattern DeploymentRolloutStateCOMPLETED = DeploymentRolloutState' "COMPLETED"

pattern DeploymentRolloutStateFAILED :: DeploymentRolloutState
pattern DeploymentRolloutStateFAILED = DeploymentRolloutState' "FAILED"

pattern DeploymentRolloutStateINPROGRESS :: DeploymentRolloutState
pattern DeploymentRolloutStateINPROGRESS = DeploymentRolloutState' "IN_PROGRESS"

{-# COMPLETE
  DeploymentRolloutStateCOMPLETED,
  DeploymentRolloutStateFAILED,
  DeploymentRolloutStateINPROGRESS,
  DeploymentRolloutState'
  #-}

instance Prelude.FromText DeploymentRolloutState where
  parser = DeploymentRolloutState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentRolloutState where
  toText (DeploymentRolloutState' x) = x

instance Prelude.Hashable DeploymentRolloutState

instance Prelude.NFData DeploymentRolloutState

instance Prelude.ToByteString DeploymentRolloutState

instance Prelude.ToQuery DeploymentRolloutState

instance Prelude.ToHeader DeploymentRolloutState

instance Prelude.FromJSON DeploymentRolloutState where
  parseJSON = Prelude.parseJSONText "DeploymentRolloutState"
