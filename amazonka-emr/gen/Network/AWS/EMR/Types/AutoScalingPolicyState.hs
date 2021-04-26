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
-- Module      : Network.AWS.EMR.Types.AutoScalingPolicyState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.AutoScalingPolicyState
  ( AutoScalingPolicyState
      ( ..,
        AutoScalingPolicyStateATTACHED,
        AutoScalingPolicyStateATTACHING,
        AutoScalingPolicyStateDETACHED,
        AutoScalingPolicyStateDETACHING,
        AutoScalingPolicyStateFAILED,
        AutoScalingPolicyStatePENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoScalingPolicyState = AutoScalingPolicyState'
  { fromAutoScalingPolicyState ::
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

pattern AutoScalingPolicyStateATTACHED :: AutoScalingPolicyState
pattern AutoScalingPolicyStateATTACHED = AutoScalingPolicyState' "ATTACHED"

pattern AutoScalingPolicyStateATTACHING :: AutoScalingPolicyState
pattern AutoScalingPolicyStateATTACHING = AutoScalingPolicyState' "ATTACHING"

pattern AutoScalingPolicyStateDETACHED :: AutoScalingPolicyState
pattern AutoScalingPolicyStateDETACHED = AutoScalingPolicyState' "DETACHED"

pattern AutoScalingPolicyStateDETACHING :: AutoScalingPolicyState
pattern AutoScalingPolicyStateDETACHING = AutoScalingPolicyState' "DETACHING"

pattern AutoScalingPolicyStateFAILED :: AutoScalingPolicyState
pattern AutoScalingPolicyStateFAILED = AutoScalingPolicyState' "FAILED"

pattern AutoScalingPolicyStatePENDING :: AutoScalingPolicyState
pattern AutoScalingPolicyStatePENDING = AutoScalingPolicyState' "PENDING"

{-# COMPLETE
  AutoScalingPolicyStateATTACHED,
  AutoScalingPolicyStateATTACHING,
  AutoScalingPolicyStateDETACHED,
  AutoScalingPolicyStateDETACHING,
  AutoScalingPolicyStateFAILED,
  AutoScalingPolicyStatePENDING,
  AutoScalingPolicyState'
  #-}

instance Prelude.FromText AutoScalingPolicyState where
  parser = AutoScalingPolicyState' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoScalingPolicyState where
  toText (AutoScalingPolicyState' x) = x

instance Prelude.Hashable AutoScalingPolicyState

instance Prelude.NFData AutoScalingPolicyState

instance Prelude.ToByteString AutoScalingPolicyState

instance Prelude.ToQuery AutoScalingPolicyState

instance Prelude.ToHeader AutoScalingPolicyState

instance Prelude.FromJSON AutoScalingPolicyState where
  parseJSON = Prelude.parseJSONText "AutoScalingPolicyState"
