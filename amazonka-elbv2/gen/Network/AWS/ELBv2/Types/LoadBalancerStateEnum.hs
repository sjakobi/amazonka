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
-- Module      : Network.AWS.ELBv2.Types.LoadBalancerStateEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.LoadBalancerStateEnum
  ( LoadBalancerStateEnum
      ( ..,
        LoadBalancerStateEnumActive,
        LoadBalancerStateEnumActiveImpaired,
        LoadBalancerStateEnumFailed,
        LoadBalancerStateEnumProvisioning
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerStateEnum = LoadBalancerStateEnum'
  { fromLoadBalancerStateEnum ::
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

pattern LoadBalancerStateEnumActive :: LoadBalancerStateEnum
pattern LoadBalancerStateEnumActive = LoadBalancerStateEnum' "active"

pattern LoadBalancerStateEnumActiveImpaired :: LoadBalancerStateEnum
pattern LoadBalancerStateEnumActiveImpaired = LoadBalancerStateEnum' "active_impaired"

pattern LoadBalancerStateEnumFailed :: LoadBalancerStateEnum
pattern LoadBalancerStateEnumFailed = LoadBalancerStateEnum' "failed"

pattern LoadBalancerStateEnumProvisioning :: LoadBalancerStateEnum
pattern LoadBalancerStateEnumProvisioning = LoadBalancerStateEnum' "provisioning"

{-# COMPLETE
  LoadBalancerStateEnumActive,
  LoadBalancerStateEnumActiveImpaired,
  LoadBalancerStateEnumFailed,
  LoadBalancerStateEnumProvisioning,
  LoadBalancerStateEnum'
  #-}

instance Prelude.FromText LoadBalancerStateEnum where
  parser = LoadBalancerStateEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerStateEnum where
  toText (LoadBalancerStateEnum' x) = x

instance Prelude.Hashable LoadBalancerStateEnum

instance Prelude.NFData LoadBalancerStateEnum

instance Prelude.ToByteString LoadBalancerStateEnum

instance Prelude.ToQuery LoadBalancerStateEnum

instance Prelude.ToHeader LoadBalancerStateEnum

instance Prelude.FromXML LoadBalancerStateEnum where
  parseXML = Prelude.parseXMLText "LoadBalancerStateEnum"
