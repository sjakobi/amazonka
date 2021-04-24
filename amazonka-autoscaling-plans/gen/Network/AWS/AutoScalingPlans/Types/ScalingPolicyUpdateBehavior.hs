{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        KeepExternalPolicies,
        ReplaceExternalPolicies
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScalingPolicyUpdateBehavior
  = ScalingPolicyUpdateBehavior'
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

pattern KeepExternalPolicies :: ScalingPolicyUpdateBehavior
pattern KeepExternalPolicies = ScalingPolicyUpdateBehavior' "KeepExternalPolicies"

pattern ReplaceExternalPolicies :: ScalingPolicyUpdateBehavior
pattern ReplaceExternalPolicies = ScalingPolicyUpdateBehavior' "ReplaceExternalPolicies"

{-# COMPLETE
  KeepExternalPolicies,
  ReplaceExternalPolicies,
  ScalingPolicyUpdateBehavior'
  #-}

instance FromText ScalingPolicyUpdateBehavior where
  parser = (ScalingPolicyUpdateBehavior' . mk) <$> takeText

instance ToText ScalingPolicyUpdateBehavior where
  toText (ScalingPolicyUpdateBehavior' ci) = original ci

instance Hashable ScalingPolicyUpdateBehavior

instance NFData ScalingPolicyUpdateBehavior

instance ToByteString ScalingPolicyUpdateBehavior

instance ToQuery ScalingPolicyUpdateBehavior

instance ToHeader ScalingPolicyUpdateBehavior

instance ToJSON ScalingPolicyUpdateBehavior where
  toJSON = toJSONText

instance FromJSON ScalingPolicyUpdateBehavior where
  parseJSON = parseJSONText "ScalingPolicyUpdateBehavior"
