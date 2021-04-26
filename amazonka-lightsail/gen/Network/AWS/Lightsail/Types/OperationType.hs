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
-- Module      : Network.AWS.Lightsail.Types.OperationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.OperationType
  ( OperationType
      ( ..,
        OperationTypeAllocateStaticIp,
        OperationTypeAttachCertificateToDistribution,
        OperationTypeAttachDisk,
        OperationTypeAttachInstancesToLoadBalancer,
        OperationTypeAttachLoadBalancerTlsCertificate,
        OperationTypeAttachStaticIp,
        OperationTypeCloseInstancePublicPorts,
        OperationTypeCreateCertificate,
        OperationTypeCreateContactMethod,
        OperationTypeCreateContainerService,
        OperationTypeCreateContainerServiceDeployment,
        OperationTypeCreateContainerServiceRegistryLogin,
        OperationTypeCreateDisk,
        OperationTypeCreateDiskFromSnapshot,
        OperationTypeCreateDiskSnapshot,
        OperationTypeCreateDistribution,
        OperationTypeCreateDomain,
        OperationTypeCreateInstance,
        OperationTypeCreateInstanceSnapshot,
        OperationTypeCreateInstancesFromSnapshot,
        OperationTypeCreateLoadBalancer,
        OperationTypeCreateLoadBalancerTlsCertificate,
        OperationTypeCreateRelationalDatabase,
        OperationTypeCreateRelationalDatabaseFromSnapshot,
        OperationTypeCreateRelationalDatabaseSnapshot,
        OperationTypeDeleteAlarm,
        OperationTypeDeleteCertificate,
        OperationTypeDeleteContactMethod,
        OperationTypeDeleteContainerImage,
        OperationTypeDeleteContainerService,
        OperationTypeDeleteDisk,
        OperationTypeDeleteDiskSnapshot,
        OperationTypeDeleteDistribution,
        OperationTypeDeleteDomain,
        OperationTypeDeleteDomainEntry,
        OperationTypeDeleteInstance,
        OperationTypeDeleteInstanceSnapshot,
        OperationTypeDeleteKnownHostKeys,
        OperationTypeDeleteLoadBalancer,
        OperationTypeDeleteLoadBalancerTlsCertificate,
        OperationTypeDeleteRelationalDatabase,
        OperationTypeDeleteRelationalDatabaseSnapshot,
        OperationTypeDetachCertificateFromDistribution,
        OperationTypeDetachDisk,
        OperationTypeDetachInstancesFromLoadBalancer,
        OperationTypeDetachStaticIp,
        OperationTypeDisableAddOn,
        OperationTypeEnableAddOn,
        OperationTypeGetAlarms,
        OperationTypeGetContactMethods,
        OperationTypeOpenInstancePublicPorts,
        OperationTypePutAlarm,
        OperationTypePutInstancePublicPorts,
        OperationTypeRebootInstance,
        OperationTypeRebootRelationalDatabase,
        OperationTypeRegisterContainerImage,
        OperationTypeReleaseStaticIp,
        OperationTypeResetDistributionCache,
        OperationTypeSendContactMethodVerification,
        OperationTypeSetIpAddressType,
        OperationTypeStartInstance,
        OperationTypeStartRelationalDatabase,
        OperationTypeStopInstance,
        OperationTypeStopRelationalDatabase,
        OperationTypeTestAlarm,
        OperationTypeUpdateContainerService,
        OperationTypeUpdateDistribution,
        OperationTypeUpdateDistributionBundle,
        OperationTypeUpdateDomainEntry,
        OperationTypeUpdateLoadBalancerAttribute,
        OperationTypeUpdateRelationalDatabase,
        OperationTypeUpdateRelationalDatabaseParameters
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OperationType = OperationType'
  { fromOperationType ::
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

pattern OperationTypeAllocateStaticIp :: OperationType
pattern OperationTypeAllocateStaticIp = OperationType' "AllocateStaticIp"

pattern OperationTypeAttachCertificateToDistribution :: OperationType
pattern OperationTypeAttachCertificateToDistribution = OperationType' "AttachCertificateToDistribution"

pattern OperationTypeAttachDisk :: OperationType
pattern OperationTypeAttachDisk = OperationType' "AttachDisk"

pattern OperationTypeAttachInstancesToLoadBalancer :: OperationType
pattern OperationTypeAttachInstancesToLoadBalancer = OperationType' "AttachInstancesToLoadBalancer"

pattern OperationTypeAttachLoadBalancerTlsCertificate :: OperationType
pattern OperationTypeAttachLoadBalancerTlsCertificate = OperationType' "AttachLoadBalancerTlsCertificate"

pattern OperationTypeAttachStaticIp :: OperationType
pattern OperationTypeAttachStaticIp = OperationType' "AttachStaticIp"

pattern OperationTypeCloseInstancePublicPorts :: OperationType
pattern OperationTypeCloseInstancePublicPorts = OperationType' "CloseInstancePublicPorts"

pattern OperationTypeCreateCertificate :: OperationType
pattern OperationTypeCreateCertificate = OperationType' "CreateCertificate"

pattern OperationTypeCreateContactMethod :: OperationType
pattern OperationTypeCreateContactMethod = OperationType' "CreateContactMethod"

pattern OperationTypeCreateContainerService :: OperationType
pattern OperationTypeCreateContainerService = OperationType' "CreateContainerService"

pattern OperationTypeCreateContainerServiceDeployment :: OperationType
pattern OperationTypeCreateContainerServiceDeployment = OperationType' "CreateContainerServiceDeployment"

pattern OperationTypeCreateContainerServiceRegistryLogin :: OperationType
pattern OperationTypeCreateContainerServiceRegistryLogin = OperationType' "CreateContainerServiceRegistryLogin"

pattern OperationTypeCreateDisk :: OperationType
pattern OperationTypeCreateDisk = OperationType' "CreateDisk"

pattern OperationTypeCreateDiskFromSnapshot :: OperationType
pattern OperationTypeCreateDiskFromSnapshot = OperationType' "CreateDiskFromSnapshot"

pattern OperationTypeCreateDiskSnapshot :: OperationType
pattern OperationTypeCreateDiskSnapshot = OperationType' "CreateDiskSnapshot"

pattern OperationTypeCreateDistribution :: OperationType
pattern OperationTypeCreateDistribution = OperationType' "CreateDistribution"

pattern OperationTypeCreateDomain :: OperationType
pattern OperationTypeCreateDomain = OperationType' "CreateDomain"

pattern OperationTypeCreateInstance :: OperationType
pattern OperationTypeCreateInstance = OperationType' "CreateInstance"

pattern OperationTypeCreateInstanceSnapshot :: OperationType
pattern OperationTypeCreateInstanceSnapshot = OperationType' "CreateInstanceSnapshot"

pattern OperationTypeCreateInstancesFromSnapshot :: OperationType
pattern OperationTypeCreateInstancesFromSnapshot = OperationType' "CreateInstancesFromSnapshot"

pattern OperationTypeCreateLoadBalancer :: OperationType
pattern OperationTypeCreateLoadBalancer = OperationType' "CreateLoadBalancer"

pattern OperationTypeCreateLoadBalancerTlsCertificate :: OperationType
pattern OperationTypeCreateLoadBalancerTlsCertificate = OperationType' "CreateLoadBalancerTlsCertificate"

pattern OperationTypeCreateRelationalDatabase :: OperationType
pattern OperationTypeCreateRelationalDatabase = OperationType' "CreateRelationalDatabase"

pattern OperationTypeCreateRelationalDatabaseFromSnapshot :: OperationType
pattern OperationTypeCreateRelationalDatabaseFromSnapshot = OperationType' "CreateRelationalDatabaseFromSnapshot"

pattern OperationTypeCreateRelationalDatabaseSnapshot :: OperationType
pattern OperationTypeCreateRelationalDatabaseSnapshot = OperationType' "CreateRelationalDatabaseSnapshot"

pattern OperationTypeDeleteAlarm :: OperationType
pattern OperationTypeDeleteAlarm = OperationType' "DeleteAlarm"

pattern OperationTypeDeleteCertificate :: OperationType
pattern OperationTypeDeleteCertificate = OperationType' "DeleteCertificate"

pattern OperationTypeDeleteContactMethod :: OperationType
pattern OperationTypeDeleteContactMethod = OperationType' "DeleteContactMethod"

pattern OperationTypeDeleteContainerImage :: OperationType
pattern OperationTypeDeleteContainerImage = OperationType' "DeleteContainerImage"

pattern OperationTypeDeleteContainerService :: OperationType
pattern OperationTypeDeleteContainerService = OperationType' "DeleteContainerService"

pattern OperationTypeDeleteDisk :: OperationType
pattern OperationTypeDeleteDisk = OperationType' "DeleteDisk"

pattern OperationTypeDeleteDiskSnapshot :: OperationType
pattern OperationTypeDeleteDiskSnapshot = OperationType' "DeleteDiskSnapshot"

pattern OperationTypeDeleteDistribution :: OperationType
pattern OperationTypeDeleteDistribution = OperationType' "DeleteDistribution"

pattern OperationTypeDeleteDomain :: OperationType
pattern OperationTypeDeleteDomain = OperationType' "DeleteDomain"

pattern OperationTypeDeleteDomainEntry :: OperationType
pattern OperationTypeDeleteDomainEntry = OperationType' "DeleteDomainEntry"

pattern OperationTypeDeleteInstance :: OperationType
pattern OperationTypeDeleteInstance = OperationType' "DeleteInstance"

pattern OperationTypeDeleteInstanceSnapshot :: OperationType
pattern OperationTypeDeleteInstanceSnapshot = OperationType' "DeleteInstanceSnapshot"

pattern OperationTypeDeleteKnownHostKeys :: OperationType
pattern OperationTypeDeleteKnownHostKeys = OperationType' "DeleteKnownHostKeys"

pattern OperationTypeDeleteLoadBalancer :: OperationType
pattern OperationTypeDeleteLoadBalancer = OperationType' "DeleteLoadBalancer"

pattern OperationTypeDeleteLoadBalancerTlsCertificate :: OperationType
pattern OperationTypeDeleteLoadBalancerTlsCertificate = OperationType' "DeleteLoadBalancerTlsCertificate"

pattern OperationTypeDeleteRelationalDatabase :: OperationType
pattern OperationTypeDeleteRelationalDatabase = OperationType' "DeleteRelationalDatabase"

pattern OperationTypeDeleteRelationalDatabaseSnapshot :: OperationType
pattern OperationTypeDeleteRelationalDatabaseSnapshot = OperationType' "DeleteRelationalDatabaseSnapshot"

pattern OperationTypeDetachCertificateFromDistribution :: OperationType
pattern OperationTypeDetachCertificateFromDistribution = OperationType' "DetachCertificateFromDistribution"

pattern OperationTypeDetachDisk :: OperationType
pattern OperationTypeDetachDisk = OperationType' "DetachDisk"

pattern OperationTypeDetachInstancesFromLoadBalancer :: OperationType
pattern OperationTypeDetachInstancesFromLoadBalancer = OperationType' "DetachInstancesFromLoadBalancer"

pattern OperationTypeDetachStaticIp :: OperationType
pattern OperationTypeDetachStaticIp = OperationType' "DetachStaticIp"

pattern OperationTypeDisableAddOn :: OperationType
pattern OperationTypeDisableAddOn = OperationType' "DisableAddOn"

pattern OperationTypeEnableAddOn :: OperationType
pattern OperationTypeEnableAddOn = OperationType' "EnableAddOn"

pattern OperationTypeGetAlarms :: OperationType
pattern OperationTypeGetAlarms = OperationType' "GetAlarms"

pattern OperationTypeGetContactMethods :: OperationType
pattern OperationTypeGetContactMethods = OperationType' "GetContactMethods"

pattern OperationTypeOpenInstancePublicPorts :: OperationType
pattern OperationTypeOpenInstancePublicPorts = OperationType' "OpenInstancePublicPorts"

pattern OperationTypePutAlarm :: OperationType
pattern OperationTypePutAlarm = OperationType' "PutAlarm"

pattern OperationTypePutInstancePublicPorts :: OperationType
pattern OperationTypePutInstancePublicPorts = OperationType' "PutInstancePublicPorts"

pattern OperationTypeRebootInstance :: OperationType
pattern OperationTypeRebootInstance = OperationType' "RebootInstance"

pattern OperationTypeRebootRelationalDatabase :: OperationType
pattern OperationTypeRebootRelationalDatabase = OperationType' "RebootRelationalDatabase"

pattern OperationTypeRegisterContainerImage :: OperationType
pattern OperationTypeRegisterContainerImage = OperationType' "RegisterContainerImage"

pattern OperationTypeReleaseStaticIp :: OperationType
pattern OperationTypeReleaseStaticIp = OperationType' "ReleaseStaticIp"

pattern OperationTypeResetDistributionCache :: OperationType
pattern OperationTypeResetDistributionCache = OperationType' "ResetDistributionCache"

pattern OperationTypeSendContactMethodVerification :: OperationType
pattern OperationTypeSendContactMethodVerification = OperationType' "SendContactMethodVerification"

pattern OperationTypeSetIpAddressType :: OperationType
pattern OperationTypeSetIpAddressType = OperationType' "SetIpAddressType"

pattern OperationTypeStartInstance :: OperationType
pattern OperationTypeStartInstance = OperationType' "StartInstance"

pattern OperationTypeStartRelationalDatabase :: OperationType
pattern OperationTypeStartRelationalDatabase = OperationType' "StartRelationalDatabase"

pattern OperationTypeStopInstance :: OperationType
pattern OperationTypeStopInstance = OperationType' "StopInstance"

pattern OperationTypeStopRelationalDatabase :: OperationType
pattern OperationTypeStopRelationalDatabase = OperationType' "StopRelationalDatabase"

pattern OperationTypeTestAlarm :: OperationType
pattern OperationTypeTestAlarm = OperationType' "TestAlarm"

pattern OperationTypeUpdateContainerService :: OperationType
pattern OperationTypeUpdateContainerService = OperationType' "UpdateContainerService"

pattern OperationTypeUpdateDistribution :: OperationType
pattern OperationTypeUpdateDistribution = OperationType' "UpdateDistribution"

pattern OperationTypeUpdateDistributionBundle :: OperationType
pattern OperationTypeUpdateDistributionBundle = OperationType' "UpdateDistributionBundle"

pattern OperationTypeUpdateDomainEntry :: OperationType
pattern OperationTypeUpdateDomainEntry = OperationType' "UpdateDomainEntry"

pattern OperationTypeUpdateLoadBalancerAttribute :: OperationType
pattern OperationTypeUpdateLoadBalancerAttribute = OperationType' "UpdateLoadBalancerAttribute"

pattern OperationTypeUpdateRelationalDatabase :: OperationType
pattern OperationTypeUpdateRelationalDatabase = OperationType' "UpdateRelationalDatabase"

pattern OperationTypeUpdateRelationalDatabaseParameters :: OperationType
pattern OperationTypeUpdateRelationalDatabaseParameters = OperationType' "UpdateRelationalDatabaseParameters"

{-# COMPLETE
  OperationTypeAllocateStaticIp,
  OperationTypeAttachCertificateToDistribution,
  OperationTypeAttachDisk,
  OperationTypeAttachInstancesToLoadBalancer,
  OperationTypeAttachLoadBalancerTlsCertificate,
  OperationTypeAttachStaticIp,
  OperationTypeCloseInstancePublicPorts,
  OperationTypeCreateCertificate,
  OperationTypeCreateContactMethod,
  OperationTypeCreateContainerService,
  OperationTypeCreateContainerServiceDeployment,
  OperationTypeCreateContainerServiceRegistryLogin,
  OperationTypeCreateDisk,
  OperationTypeCreateDiskFromSnapshot,
  OperationTypeCreateDiskSnapshot,
  OperationTypeCreateDistribution,
  OperationTypeCreateDomain,
  OperationTypeCreateInstance,
  OperationTypeCreateInstanceSnapshot,
  OperationTypeCreateInstancesFromSnapshot,
  OperationTypeCreateLoadBalancer,
  OperationTypeCreateLoadBalancerTlsCertificate,
  OperationTypeCreateRelationalDatabase,
  OperationTypeCreateRelationalDatabaseFromSnapshot,
  OperationTypeCreateRelationalDatabaseSnapshot,
  OperationTypeDeleteAlarm,
  OperationTypeDeleteCertificate,
  OperationTypeDeleteContactMethod,
  OperationTypeDeleteContainerImage,
  OperationTypeDeleteContainerService,
  OperationTypeDeleteDisk,
  OperationTypeDeleteDiskSnapshot,
  OperationTypeDeleteDistribution,
  OperationTypeDeleteDomain,
  OperationTypeDeleteDomainEntry,
  OperationTypeDeleteInstance,
  OperationTypeDeleteInstanceSnapshot,
  OperationTypeDeleteKnownHostKeys,
  OperationTypeDeleteLoadBalancer,
  OperationTypeDeleteLoadBalancerTlsCertificate,
  OperationTypeDeleteRelationalDatabase,
  OperationTypeDeleteRelationalDatabaseSnapshot,
  OperationTypeDetachCertificateFromDistribution,
  OperationTypeDetachDisk,
  OperationTypeDetachInstancesFromLoadBalancer,
  OperationTypeDetachStaticIp,
  OperationTypeDisableAddOn,
  OperationTypeEnableAddOn,
  OperationTypeGetAlarms,
  OperationTypeGetContactMethods,
  OperationTypeOpenInstancePublicPorts,
  OperationTypePutAlarm,
  OperationTypePutInstancePublicPorts,
  OperationTypeRebootInstance,
  OperationTypeRebootRelationalDatabase,
  OperationTypeRegisterContainerImage,
  OperationTypeReleaseStaticIp,
  OperationTypeResetDistributionCache,
  OperationTypeSendContactMethodVerification,
  OperationTypeSetIpAddressType,
  OperationTypeStartInstance,
  OperationTypeStartRelationalDatabase,
  OperationTypeStopInstance,
  OperationTypeStopRelationalDatabase,
  OperationTypeTestAlarm,
  OperationTypeUpdateContainerService,
  OperationTypeUpdateDistribution,
  OperationTypeUpdateDistributionBundle,
  OperationTypeUpdateDomainEntry,
  OperationTypeUpdateLoadBalancerAttribute,
  OperationTypeUpdateRelationalDatabase,
  OperationTypeUpdateRelationalDatabaseParameters,
  OperationType'
  #-}

instance Prelude.FromText OperationType where
  parser = OperationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperationType where
  toText (OperationType' x) = x

instance Prelude.Hashable OperationType

instance Prelude.NFData OperationType

instance Prelude.ToByteString OperationType

instance Prelude.ToQuery OperationType

instance Prelude.ToHeader OperationType

instance Prelude.FromJSON OperationType where
  parseJSON = Prelude.parseJSONText "OperationType"
