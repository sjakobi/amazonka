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
-- Module      : Network.AWS.Lightsail.Types.ResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ResourceType
  ( ResourceType
      ( ..,
        ResourceTypeAlarm,
        ResourceTypeCertificate,
        ResourceTypeCloudFormationStackRecord,
        ResourceTypeContactMethod,
        ResourceTypeContainerService,
        ResourceTypeDisk,
        ResourceTypeDiskSnapshot,
        ResourceTypeDistribution,
        ResourceTypeDomain,
        ResourceTypeExportSnapshotRecord,
        ResourceTypeInstance,
        ResourceTypeInstanceSnapshot,
        ResourceTypeKeyPair,
        ResourceTypeLoadBalancer,
        ResourceTypeLoadBalancerTlsCertificate,
        ResourceTypePeeredVpc,
        ResourceTypeRelationalDatabase,
        ResourceTypeRelationalDatabaseSnapshot,
        ResourceTypeStaticIp
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceType = ResourceType'
  { fromResourceType ::
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

pattern ResourceTypeAlarm :: ResourceType
pattern ResourceTypeAlarm = ResourceType' "Alarm"

pattern ResourceTypeCertificate :: ResourceType
pattern ResourceTypeCertificate = ResourceType' "Certificate"

pattern ResourceTypeCloudFormationStackRecord :: ResourceType
pattern ResourceTypeCloudFormationStackRecord = ResourceType' "CloudFormationStackRecord"

pattern ResourceTypeContactMethod :: ResourceType
pattern ResourceTypeContactMethod = ResourceType' "ContactMethod"

pattern ResourceTypeContainerService :: ResourceType
pattern ResourceTypeContainerService = ResourceType' "ContainerService"

pattern ResourceTypeDisk :: ResourceType
pattern ResourceTypeDisk = ResourceType' "Disk"

pattern ResourceTypeDiskSnapshot :: ResourceType
pattern ResourceTypeDiskSnapshot = ResourceType' "DiskSnapshot"

pattern ResourceTypeDistribution :: ResourceType
pattern ResourceTypeDistribution = ResourceType' "Distribution"

pattern ResourceTypeDomain :: ResourceType
pattern ResourceTypeDomain = ResourceType' "Domain"

pattern ResourceTypeExportSnapshotRecord :: ResourceType
pattern ResourceTypeExportSnapshotRecord = ResourceType' "ExportSnapshotRecord"

pattern ResourceTypeInstance :: ResourceType
pattern ResourceTypeInstance = ResourceType' "Instance"

pattern ResourceTypeInstanceSnapshot :: ResourceType
pattern ResourceTypeInstanceSnapshot = ResourceType' "InstanceSnapshot"

pattern ResourceTypeKeyPair :: ResourceType
pattern ResourceTypeKeyPair = ResourceType' "KeyPair"

pattern ResourceTypeLoadBalancer :: ResourceType
pattern ResourceTypeLoadBalancer = ResourceType' "LoadBalancer"

pattern ResourceTypeLoadBalancerTlsCertificate :: ResourceType
pattern ResourceTypeLoadBalancerTlsCertificate = ResourceType' "LoadBalancerTlsCertificate"

pattern ResourceTypePeeredVpc :: ResourceType
pattern ResourceTypePeeredVpc = ResourceType' "PeeredVpc"

pattern ResourceTypeRelationalDatabase :: ResourceType
pattern ResourceTypeRelationalDatabase = ResourceType' "RelationalDatabase"

pattern ResourceTypeRelationalDatabaseSnapshot :: ResourceType
pattern ResourceTypeRelationalDatabaseSnapshot = ResourceType' "RelationalDatabaseSnapshot"

pattern ResourceTypeStaticIp :: ResourceType
pattern ResourceTypeStaticIp = ResourceType' "StaticIp"

{-# COMPLETE
  ResourceTypeAlarm,
  ResourceTypeCertificate,
  ResourceTypeCloudFormationStackRecord,
  ResourceTypeContactMethod,
  ResourceTypeContainerService,
  ResourceTypeDisk,
  ResourceTypeDiskSnapshot,
  ResourceTypeDistribution,
  ResourceTypeDomain,
  ResourceTypeExportSnapshotRecord,
  ResourceTypeInstance,
  ResourceTypeInstanceSnapshot,
  ResourceTypeKeyPair,
  ResourceTypeLoadBalancer,
  ResourceTypeLoadBalancerTlsCertificate,
  ResourceTypePeeredVpc,
  ResourceTypeRelationalDatabase,
  ResourceTypeRelationalDatabaseSnapshot,
  ResourceTypeStaticIp,
  ResourceType'
  #-}

instance Prelude.FromText ResourceType where
  parser = ResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceType where
  toText (ResourceType' x) = x

instance Prelude.Hashable ResourceType

instance Prelude.NFData ResourceType

instance Prelude.ToByteString ResourceType

instance Prelude.ToQuery ResourceType

instance Prelude.ToHeader ResourceType

instance Prelude.ToJSON ResourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ResourceType where
  parseJSON = Prelude.parseJSONText "ResourceType"
