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
-- Module      : Network.AWS.OpsWorks.Types.LayerAttributesKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.LayerAttributesKeys
  ( LayerAttributesKeys
      ( ..,
        LayerAttributesKeysBundlerVersion,
        LayerAttributesKeysEcsClusterArn,
        LayerAttributesKeysEnableHaproxyStats,
        LayerAttributesKeysGangliaPassword,
        LayerAttributesKeysGangliaUrl,
        LayerAttributesKeysGangliaUser,
        LayerAttributesKeysHaproxyHealthCheckMethod,
        LayerAttributesKeysHaproxyHealthCheckUrl,
        LayerAttributesKeysHaproxyStatsPassword,
        LayerAttributesKeysHaproxyStatsUrl,
        LayerAttributesKeysHaproxyStatsUser,
        LayerAttributesKeysJavaAppServer,
        LayerAttributesKeysJavaAppServerVersion,
        LayerAttributesKeysJvm,
        LayerAttributesKeysJvmOptions,
        LayerAttributesKeysJvmVersion,
        LayerAttributesKeysManageBundler,
        LayerAttributesKeysMemcachedMemory,
        LayerAttributesKeysMysqlRootPassword,
        LayerAttributesKeysMysqlRootPasswordUbiquitous,
        LayerAttributesKeysNodejsVersion,
        LayerAttributesKeysPassengerVersion,
        LayerAttributesKeysRailsStack,
        LayerAttributesKeysRubyVersion,
        LayerAttributesKeysRubygemsVersion
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LayerAttributesKeys = LayerAttributesKeys'
  { fromLayerAttributesKeys ::
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

pattern LayerAttributesKeysBundlerVersion :: LayerAttributesKeys
pattern LayerAttributesKeysBundlerVersion = LayerAttributesKeys' "BundlerVersion"

pattern LayerAttributesKeysEcsClusterArn :: LayerAttributesKeys
pattern LayerAttributesKeysEcsClusterArn = LayerAttributesKeys' "EcsClusterArn"

pattern LayerAttributesKeysEnableHaproxyStats :: LayerAttributesKeys
pattern LayerAttributesKeysEnableHaproxyStats = LayerAttributesKeys' "EnableHaproxyStats"

pattern LayerAttributesKeysGangliaPassword :: LayerAttributesKeys
pattern LayerAttributesKeysGangliaPassword = LayerAttributesKeys' "GangliaPassword"

pattern LayerAttributesKeysGangliaUrl :: LayerAttributesKeys
pattern LayerAttributesKeysGangliaUrl = LayerAttributesKeys' "GangliaUrl"

pattern LayerAttributesKeysGangliaUser :: LayerAttributesKeys
pattern LayerAttributesKeysGangliaUser = LayerAttributesKeys' "GangliaUser"

pattern LayerAttributesKeysHaproxyHealthCheckMethod :: LayerAttributesKeys
pattern LayerAttributesKeysHaproxyHealthCheckMethod = LayerAttributesKeys' "HaproxyHealthCheckMethod"

pattern LayerAttributesKeysHaproxyHealthCheckUrl :: LayerAttributesKeys
pattern LayerAttributesKeysHaproxyHealthCheckUrl = LayerAttributesKeys' "HaproxyHealthCheckUrl"

pattern LayerAttributesKeysHaproxyStatsPassword :: LayerAttributesKeys
pattern LayerAttributesKeysHaproxyStatsPassword = LayerAttributesKeys' "HaproxyStatsPassword"

pattern LayerAttributesKeysHaproxyStatsUrl :: LayerAttributesKeys
pattern LayerAttributesKeysHaproxyStatsUrl = LayerAttributesKeys' "HaproxyStatsUrl"

pattern LayerAttributesKeysHaproxyStatsUser :: LayerAttributesKeys
pattern LayerAttributesKeysHaproxyStatsUser = LayerAttributesKeys' "HaproxyStatsUser"

pattern LayerAttributesKeysJavaAppServer :: LayerAttributesKeys
pattern LayerAttributesKeysJavaAppServer = LayerAttributesKeys' "JavaAppServer"

pattern LayerAttributesKeysJavaAppServerVersion :: LayerAttributesKeys
pattern LayerAttributesKeysJavaAppServerVersion = LayerAttributesKeys' "JavaAppServerVersion"

pattern LayerAttributesKeysJvm :: LayerAttributesKeys
pattern LayerAttributesKeysJvm = LayerAttributesKeys' "Jvm"

pattern LayerAttributesKeysJvmOptions :: LayerAttributesKeys
pattern LayerAttributesKeysJvmOptions = LayerAttributesKeys' "JvmOptions"

pattern LayerAttributesKeysJvmVersion :: LayerAttributesKeys
pattern LayerAttributesKeysJvmVersion = LayerAttributesKeys' "JvmVersion"

pattern LayerAttributesKeysManageBundler :: LayerAttributesKeys
pattern LayerAttributesKeysManageBundler = LayerAttributesKeys' "ManageBundler"

pattern LayerAttributesKeysMemcachedMemory :: LayerAttributesKeys
pattern LayerAttributesKeysMemcachedMemory = LayerAttributesKeys' "MemcachedMemory"

pattern LayerAttributesKeysMysqlRootPassword :: LayerAttributesKeys
pattern LayerAttributesKeysMysqlRootPassword = LayerAttributesKeys' "MysqlRootPassword"

pattern LayerAttributesKeysMysqlRootPasswordUbiquitous :: LayerAttributesKeys
pattern LayerAttributesKeysMysqlRootPasswordUbiquitous = LayerAttributesKeys' "MysqlRootPasswordUbiquitous"

pattern LayerAttributesKeysNodejsVersion :: LayerAttributesKeys
pattern LayerAttributesKeysNodejsVersion = LayerAttributesKeys' "NodejsVersion"

pattern LayerAttributesKeysPassengerVersion :: LayerAttributesKeys
pattern LayerAttributesKeysPassengerVersion = LayerAttributesKeys' "PassengerVersion"

pattern LayerAttributesKeysRailsStack :: LayerAttributesKeys
pattern LayerAttributesKeysRailsStack = LayerAttributesKeys' "RailsStack"

pattern LayerAttributesKeysRubyVersion :: LayerAttributesKeys
pattern LayerAttributesKeysRubyVersion = LayerAttributesKeys' "RubyVersion"

pattern LayerAttributesKeysRubygemsVersion :: LayerAttributesKeys
pattern LayerAttributesKeysRubygemsVersion = LayerAttributesKeys' "RubygemsVersion"

{-# COMPLETE
  LayerAttributesKeysBundlerVersion,
  LayerAttributesKeysEcsClusterArn,
  LayerAttributesKeysEnableHaproxyStats,
  LayerAttributesKeysGangliaPassword,
  LayerAttributesKeysGangliaUrl,
  LayerAttributesKeysGangliaUser,
  LayerAttributesKeysHaproxyHealthCheckMethod,
  LayerAttributesKeysHaproxyHealthCheckUrl,
  LayerAttributesKeysHaproxyStatsPassword,
  LayerAttributesKeysHaproxyStatsUrl,
  LayerAttributesKeysHaproxyStatsUser,
  LayerAttributesKeysJavaAppServer,
  LayerAttributesKeysJavaAppServerVersion,
  LayerAttributesKeysJvm,
  LayerAttributesKeysJvmOptions,
  LayerAttributesKeysJvmVersion,
  LayerAttributesKeysManageBundler,
  LayerAttributesKeysMemcachedMemory,
  LayerAttributesKeysMysqlRootPassword,
  LayerAttributesKeysMysqlRootPasswordUbiquitous,
  LayerAttributesKeysNodejsVersion,
  LayerAttributesKeysPassengerVersion,
  LayerAttributesKeysRailsStack,
  LayerAttributesKeysRubyVersion,
  LayerAttributesKeysRubygemsVersion,
  LayerAttributesKeys'
  #-}

instance Prelude.FromText LayerAttributesKeys where
  parser = LayerAttributesKeys' Prelude.<$> Prelude.takeText

instance Prelude.ToText LayerAttributesKeys where
  toText (LayerAttributesKeys' x) = x

instance Prelude.Hashable LayerAttributesKeys

instance Prelude.NFData LayerAttributesKeys

instance Prelude.ToByteString LayerAttributesKeys

instance Prelude.ToQuery LayerAttributesKeys

instance Prelude.ToHeader LayerAttributesKeys

instance Prelude.ToJSON LayerAttributesKeys where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LayerAttributesKeys where
  parseJSON = Prelude.parseJSONText "LayerAttributesKeys"
