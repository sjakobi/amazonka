{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        LTAWSFlowRuby,
        LTCustom,
        LTDBMaster,
        LTEcsCluster,
        LTJavaApp,
        LTLB,
        LTMemcached,
        LTMonitoringMaster,
        LTNodejsApp,
        LTPHPApp,
        LTRailsApp,
        LTWeb
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LayerType = LayerType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LTAWSFlowRuby :: LayerType
pattern LTAWSFlowRuby = LayerType' "aws-flow-ruby"

pattern LTCustom :: LayerType
pattern LTCustom = LayerType' "custom"

pattern LTDBMaster :: LayerType
pattern LTDBMaster = LayerType' "db-master"

pattern LTEcsCluster :: LayerType
pattern LTEcsCluster = LayerType' "ecs-cluster"

pattern LTJavaApp :: LayerType
pattern LTJavaApp = LayerType' "java-app"

pattern LTLB :: LayerType
pattern LTLB = LayerType' "lb"

pattern LTMemcached :: LayerType
pattern LTMemcached = LayerType' "memcached"

pattern LTMonitoringMaster :: LayerType
pattern LTMonitoringMaster = LayerType' "monitoring-master"

pattern LTNodejsApp :: LayerType
pattern LTNodejsApp = LayerType' "nodejs-app"

pattern LTPHPApp :: LayerType
pattern LTPHPApp = LayerType' "php-app"

pattern LTRailsApp :: LayerType
pattern LTRailsApp = LayerType' "rails-app"

pattern LTWeb :: LayerType
pattern LTWeb = LayerType' "web"

{-# COMPLETE
  LTAWSFlowRuby,
  LTCustom,
  LTDBMaster,
  LTEcsCluster,
  LTJavaApp,
  LTLB,
  LTMemcached,
  LTMonitoringMaster,
  LTNodejsApp,
  LTPHPApp,
  LTRailsApp,
  LTWeb,
  LayerType'
  #-}

instance FromText LayerType where
  parser = (LayerType' . mk) <$> takeText

instance ToText LayerType where
  toText (LayerType' ci) = original ci

instance Hashable LayerType

instance NFData LayerType

instance ToByteString LayerType

instance ToQuery LayerType

instance ToHeader LayerType

instance ToJSON LayerType where
  toJSON = toJSONText

instance FromJSON LayerType where
  parseJSON = parseJSONText "LayerType"
