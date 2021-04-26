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
-- Module      : Network.AWS.Route53AutoNaming.Types.RoutingPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.RoutingPolicy
  ( RoutingPolicy
      ( ..,
        RoutingPolicyMULTIVALUE,
        RoutingPolicyWEIGHTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RoutingPolicy = RoutingPolicy'
  { fromRoutingPolicy ::
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

pattern RoutingPolicyMULTIVALUE :: RoutingPolicy
pattern RoutingPolicyMULTIVALUE = RoutingPolicy' "MULTIVALUE"

pattern RoutingPolicyWEIGHTED :: RoutingPolicy
pattern RoutingPolicyWEIGHTED = RoutingPolicy' "WEIGHTED"

{-# COMPLETE
  RoutingPolicyMULTIVALUE,
  RoutingPolicyWEIGHTED,
  RoutingPolicy'
  #-}

instance Prelude.FromText RoutingPolicy where
  parser = RoutingPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText RoutingPolicy where
  toText (RoutingPolicy' x) = x

instance Prelude.Hashable RoutingPolicy

instance Prelude.NFData RoutingPolicy

instance Prelude.ToByteString RoutingPolicy

instance Prelude.ToQuery RoutingPolicy

instance Prelude.ToHeader RoutingPolicy

instance Prelude.ToJSON RoutingPolicy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RoutingPolicy where
  parseJSON = Prelude.parseJSONText "RoutingPolicy"
