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
-- Module      : Network.AWS.ELBv2.Types.LoadBalancerSchemeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.LoadBalancerSchemeEnum
  ( LoadBalancerSchemeEnum
      ( ..,
        LoadBalancerSchemeEnumInternal,
        LoadBalancerSchemeEnumInternetFacing
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerSchemeEnum = LoadBalancerSchemeEnum'
  { fromLoadBalancerSchemeEnum ::
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

pattern LoadBalancerSchemeEnumInternal :: LoadBalancerSchemeEnum
pattern LoadBalancerSchemeEnumInternal = LoadBalancerSchemeEnum' "internal"

pattern LoadBalancerSchemeEnumInternetFacing :: LoadBalancerSchemeEnum
pattern LoadBalancerSchemeEnumInternetFacing = LoadBalancerSchemeEnum' "internet-facing"

{-# COMPLETE
  LoadBalancerSchemeEnumInternal,
  LoadBalancerSchemeEnumInternetFacing,
  LoadBalancerSchemeEnum'
  #-}

instance Prelude.FromText LoadBalancerSchemeEnum where
  parser = LoadBalancerSchemeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerSchemeEnum where
  toText (LoadBalancerSchemeEnum' x) = x

instance Prelude.Hashable LoadBalancerSchemeEnum

instance Prelude.NFData LoadBalancerSchemeEnum

instance Prelude.ToByteString LoadBalancerSchemeEnum

instance Prelude.ToQuery LoadBalancerSchemeEnum

instance Prelude.ToHeader LoadBalancerSchemeEnum

instance Prelude.FromXML LoadBalancerSchemeEnum where
  parseXML = Prelude.parseXMLText "LoadBalancerSchemeEnum"
