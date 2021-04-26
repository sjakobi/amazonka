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
-- Module      : Network.AWS.OpsWorks.Types.LayerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.LayerType
  ( LayerType
      ( ..,
        LayerTypeAwsFlowRuby,
        LayerTypeCustom,
        LayerTypeDbMaster,
        LayerTypeEcsCluster,
        LayerTypeJavaApp,
        LayerTypeLB,
        LayerTypeMemcached,
        LayerTypeMonitoringMaster,
        LayerTypeNodejsApp,
        LayerTypePhpApp,
        LayerTypeRailsApp,
        LayerTypeWeb
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LayerType = LayerType'
  { fromLayerType ::
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

pattern LayerTypeAwsFlowRuby :: LayerType
pattern LayerTypeAwsFlowRuby = LayerType' "aws-flow-ruby"

pattern LayerTypeCustom :: LayerType
pattern LayerTypeCustom = LayerType' "custom"

pattern LayerTypeDbMaster :: LayerType
pattern LayerTypeDbMaster = LayerType' "db-master"

pattern LayerTypeEcsCluster :: LayerType
pattern LayerTypeEcsCluster = LayerType' "ecs-cluster"

pattern LayerTypeJavaApp :: LayerType
pattern LayerTypeJavaApp = LayerType' "java-app"

pattern LayerTypeLB :: LayerType
pattern LayerTypeLB = LayerType' "lb"

pattern LayerTypeMemcached :: LayerType
pattern LayerTypeMemcached = LayerType' "memcached"

pattern LayerTypeMonitoringMaster :: LayerType
pattern LayerTypeMonitoringMaster = LayerType' "monitoring-master"

pattern LayerTypeNodejsApp :: LayerType
pattern LayerTypeNodejsApp = LayerType' "nodejs-app"

pattern LayerTypePhpApp :: LayerType
pattern LayerTypePhpApp = LayerType' "php-app"

pattern LayerTypeRailsApp :: LayerType
pattern LayerTypeRailsApp = LayerType' "rails-app"

pattern LayerTypeWeb :: LayerType
pattern LayerTypeWeb = LayerType' "web"

{-# COMPLETE
  LayerTypeAwsFlowRuby,
  LayerTypeCustom,
  LayerTypeDbMaster,
  LayerTypeEcsCluster,
  LayerTypeJavaApp,
  LayerTypeLB,
  LayerTypeMemcached,
  LayerTypeMonitoringMaster,
  LayerTypeNodejsApp,
  LayerTypePhpApp,
  LayerTypeRailsApp,
  LayerTypeWeb,
  LayerType'
  #-}

instance Prelude.FromText LayerType where
  parser = LayerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LayerType where
  toText (LayerType' x) = x

instance Prelude.Hashable LayerType

instance Prelude.NFData LayerType

instance Prelude.ToByteString LayerType

instance Prelude.ToQuery LayerType

instance Prelude.ToHeader LayerType

instance Prelude.ToJSON LayerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LayerType where
  parseJSON = Prelude.parseJSONText "LayerType"
