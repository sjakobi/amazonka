{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Alarm,
        Certificate,
        CloudFormationStackRecord,
        ContactMethod,
        ContainerService,
        Disk,
        DiskSnapshot,
        Distribution,
        Domain,
        ExportSnapshotRecord,
        Instance,
        InstanceSnapshot,
        KeyPair,
        LoadBalancer,
        LoadBalancerTLSCertificate,
        PeeredVPC,
        RelationalDatabase,
        RelationalDatabaseSnapshot,
        StaticIP
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceType = ResourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Alarm :: ResourceType
pattern Alarm = ResourceType' "Alarm"

pattern Certificate :: ResourceType
pattern Certificate = ResourceType' "Certificate"

pattern CloudFormationStackRecord :: ResourceType
pattern CloudFormationStackRecord = ResourceType' "CloudFormationStackRecord"

pattern ContactMethod :: ResourceType
pattern ContactMethod = ResourceType' "ContactMethod"

pattern ContainerService :: ResourceType
pattern ContainerService = ResourceType' "ContainerService"

pattern Disk :: ResourceType
pattern Disk = ResourceType' "Disk"

pattern DiskSnapshot :: ResourceType
pattern DiskSnapshot = ResourceType' "DiskSnapshot"

pattern Distribution :: ResourceType
pattern Distribution = ResourceType' "Distribution"

pattern Domain :: ResourceType
pattern Domain = ResourceType' "Domain"

pattern ExportSnapshotRecord :: ResourceType
pattern ExportSnapshotRecord = ResourceType' "ExportSnapshotRecord"

pattern Instance :: ResourceType
pattern Instance = ResourceType' "Instance"

pattern InstanceSnapshot :: ResourceType
pattern InstanceSnapshot = ResourceType' "InstanceSnapshot"

pattern KeyPair :: ResourceType
pattern KeyPair = ResourceType' "KeyPair"

pattern LoadBalancer :: ResourceType
pattern LoadBalancer = ResourceType' "LoadBalancer"

pattern LoadBalancerTLSCertificate :: ResourceType
pattern LoadBalancerTLSCertificate = ResourceType' "LoadBalancerTlsCertificate"

pattern PeeredVPC :: ResourceType
pattern PeeredVPC = ResourceType' "PeeredVpc"

pattern RelationalDatabase :: ResourceType
pattern RelationalDatabase = ResourceType' "RelationalDatabase"

pattern RelationalDatabaseSnapshot :: ResourceType
pattern RelationalDatabaseSnapshot = ResourceType' "RelationalDatabaseSnapshot"

pattern StaticIP :: ResourceType
pattern StaticIP = ResourceType' "StaticIp"

{-# COMPLETE
  Alarm,
  Certificate,
  CloudFormationStackRecord,
  ContactMethod,
  ContainerService,
  Disk,
  DiskSnapshot,
  Distribution,
  Domain,
  ExportSnapshotRecord,
  Instance,
  InstanceSnapshot,
  KeyPair,
  LoadBalancer,
  LoadBalancerTLSCertificate,
  PeeredVPC,
  RelationalDatabase,
  RelationalDatabaseSnapshot,
  StaticIP,
  ResourceType'
  #-}

instance FromText ResourceType where
  parser = (ResourceType' . mk) <$> takeText

instance ToText ResourceType where
  toText (ResourceType' ci) = original ci

instance Hashable ResourceType

instance NFData ResourceType

instance ToByteString ResourceType

instance ToQuery ResourceType

instance ToHeader ResourceType

instance ToJSON ResourceType where
  toJSON = toJSONText

instance FromJSON ResourceType where
  parseJSON = parseJSONText "ResourceType"
