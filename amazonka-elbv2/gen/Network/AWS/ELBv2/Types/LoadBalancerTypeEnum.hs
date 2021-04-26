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
-- Module      : Network.AWS.ELBv2.Types.LoadBalancerTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.LoadBalancerTypeEnum
  ( LoadBalancerTypeEnum
      ( ..,
        LoadBalancerTypeEnumApplication,
        LoadBalancerTypeEnumGateway,
        LoadBalancerTypeEnumNetwork
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerTypeEnum = LoadBalancerTypeEnum'
  { fromLoadBalancerTypeEnum ::
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

pattern LoadBalancerTypeEnumApplication :: LoadBalancerTypeEnum
pattern LoadBalancerTypeEnumApplication = LoadBalancerTypeEnum' "application"

pattern LoadBalancerTypeEnumGateway :: LoadBalancerTypeEnum
pattern LoadBalancerTypeEnumGateway = LoadBalancerTypeEnum' "gateway"

pattern LoadBalancerTypeEnumNetwork :: LoadBalancerTypeEnum
pattern LoadBalancerTypeEnumNetwork = LoadBalancerTypeEnum' "network"

{-# COMPLETE
  LoadBalancerTypeEnumApplication,
  LoadBalancerTypeEnumGateway,
  LoadBalancerTypeEnumNetwork,
  LoadBalancerTypeEnum'
  #-}

instance Prelude.FromText LoadBalancerTypeEnum where
  parser = LoadBalancerTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerTypeEnum where
  toText (LoadBalancerTypeEnum' x) = x

instance Prelude.Hashable LoadBalancerTypeEnum

instance Prelude.NFData LoadBalancerTypeEnum

instance Prelude.ToByteString LoadBalancerTypeEnum

instance Prelude.ToQuery LoadBalancerTypeEnum

instance Prelude.ToHeader LoadBalancerTypeEnum

instance Prelude.FromXML LoadBalancerTypeEnum where
  parseXML = Prelude.parseXMLText "LoadBalancerTypeEnum"
