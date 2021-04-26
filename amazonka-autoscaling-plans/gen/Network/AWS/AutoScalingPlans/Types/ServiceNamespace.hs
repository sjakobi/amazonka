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
-- Module      : Network.AWS.AutoScalingPlans.Types.ServiceNamespace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ServiceNamespace
  ( ServiceNamespace
      ( ..,
        ServiceNamespaceAutoscaling,
        ServiceNamespaceDynamodb,
        ServiceNamespaceEC2,
        ServiceNamespaceEcs,
        ServiceNamespaceRds
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceNamespace = ServiceNamespace'
  { fromServiceNamespace ::
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

pattern ServiceNamespaceAutoscaling :: ServiceNamespace
pattern ServiceNamespaceAutoscaling = ServiceNamespace' "autoscaling"

pattern ServiceNamespaceDynamodb :: ServiceNamespace
pattern ServiceNamespaceDynamodb = ServiceNamespace' "dynamodb"

pattern ServiceNamespaceEC2 :: ServiceNamespace
pattern ServiceNamespaceEC2 = ServiceNamespace' "ec2"

pattern ServiceNamespaceEcs :: ServiceNamespace
pattern ServiceNamespaceEcs = ServiceNamespace' "ecs"

pattern ServiceNamespaceRds :: ServiceNamespace
pattern ServiceNamespaceRds = ServiceNamespace' "rds"

{-# COMPLETE
  ServiceNamespaceAutoscaling,
  ServiceNamespaceDynamodb,
  ServiceNamespaceEC2,
  ServiceNamespaceEcs,
  ServiceNamespaceRds,
  ServiceNamespace'
  #-}

instance Prelude.FromText ServiceNamespace where
  parser = ServiceNamespace' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceNamespace where
  toText (ServiceNamespace' x) = x

instance Prelude.Hashable ServiceNamespace

instance Prelude.NFData ServiceNamespace

instance Prelude.ToByteString ServiceNamespace

instance Prelude.ToQuery ServiceNamespace

instance Prelude.ToHeader ServiceNamespace

instance Prelude.ToJSON ServiceNamespace where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ServiceNamespace where
  parseJSON = Prelude.parseJSONText "ServiceNamespace"
