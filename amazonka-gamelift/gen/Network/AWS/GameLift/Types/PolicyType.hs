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
-- Module      : Network.AWS.GameLift.Types.PolicyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.PolicyType
  ( PolicyType
      ( ..,
        PolicyTypeRuleBased,
        PolicyTypeTargetBased
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PolicyType = PolicyType'
  { fromPolicyType ::
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

pattern PolicyTypeRuleBased :: PolicyType
pattern PolicyTypeRuleBased = PolicyType' "RuleBased"

pattern PolicyTypeTargetBased :: PolicyType
pattern PolicyTypeTargetBased = PolicyType' "TargetBased"

{-# COMPLETE
  PolicyTypeRuleBased,
  PolicyTypeTargetBased,
  PolicyType'
  #-}

instance Prelude.FromText PolicyType where
  parser = PolicyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PolicyType where
  toText (PolicyType' x) = x

instance Prelude.Hashable PolicyType

instance Prelude.NFData PolicyType

instance Prelude.ToByteString PolicyType

instance Prelude.ToQuery PolicyType

instance Prelude.ToHeader PolicyType

instance Prelude.ToJSON PolicyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PolicyType where
  parseJSON = Prelude.parseJSONText "PolicyType"
