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
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalingPolicyUpdateBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ScalingPolicyUpdateBehavior
  ( ScalingPolicyUpdateBehavior
      ( ..,
        ScalingPolicyUpdateBehaviorKeepExternalPolicies,
        ScalingPolicyUpdateBehaviorReplaceExternalPolicies
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalingPolicyUpdateBehavior = ScalingPolicyUpdateBehavior'
  { fromScalingPolicyUpdateBehavior ::
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

pattern ScalingPolicyUpdateBehaviorKeepExternalPolicies :: ScalingPolicyUpdateBehavior
pattern ScalingPolicyUpdateBehaviorKeepExternalPolicies = ScalingPolicyUpdateBehavior' "KeepExternalPolicies"

pattern ScalingPolicyUpdateBehaviorReplaceExternalPolicies :: ScalingPolicyUpdateBehavior
pattern ScalingPolicyUpdateBehaviorReplaceExternalPolicies = ScalingPolicyUpdateBehavior' "ReplaceExternalPolicies"

{-# COMPLETE
  ScalingPolicyUpdateBehaviorKeepExternalPolicies,
  ScalingPolicyUpdateBehaviorReplaceExternalPolicies,
  ScalingPolicyUpdateBehavior'
  #-}

instance Prelude.FromText ScalingPolicyUpdateBehavior where
  parser = ScalingPolicyUpdateBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalingPolicyUpdateBehavior where
  toText (ScalingPolicyUpdateBehavior' x) = x

instance Prelude.Hashable ScalingPolicyUpdateBehavior

instance Prelude.NFData ScalingPolicyUpdateBehavior

instance Prelude.ToByteString ScalingPolicyUpdateBehavior

instance Prelude.ToQuery ScalingPolicyUpdateBehavior

instance Prelude.ToHeader ScalingPolicyUpdateBehavior

instance Prelude.ToJSON ScalingPolicyUpdateBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScalingPolicyUpdateBehavior where
  parseJSON = Prelude.parseJSONText "ScalingPolicyUpdateBehavior"
