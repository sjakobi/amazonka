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
-- Module      : Network.AWS.IAM.Types.SummaryKeyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.SummaryKeyType
  ( SummaryKeyType
      ( ..,
        SummaryKeyTypeAccessKeysPerUserQuota,
        SummaryKeyTypeAccountAccessKeysPresent,
        SummaryKeyTypeAccountMFAEnabled,
        SummaryKeyTypeAccountSigningCertificatesPresent,
        SummaryKeyTypeAttachedPoliciesPerGroupQuota,
        SummaryKeyTypeAttachedPoliciesPerRoleQuota,
        SummaryKeyTypeAttachedPoliciesPerUserQuota,
        SummaryKeyTypeGlobalEndpointTokenVersion,
        SummaryKeyTypeGroupPolicySizeQuota,
        SummaryKeyTypeGroups,
        SummaryKeyTypeGroupsPerUserQuota,
        SummaryKeyTypeGroupsQuota,
        SummaryKeyTypeMFADevices,
        SummaryKeyTypeMFADevicesInUse,
        SummaryKeyTypePolicies,
        SummaryKeyTypePoliciesQuota,
        SummaryKeyTypePolicySizeQuota,
        SummaryKeyTypePolicyVersionsInUse,
        SummaryKeyTypePolicyVersionsInUseQuota,
        SummaryKeyTypeServerCertificates,
        SummaryKeyTypeServerCertificatesQuota,
        SummaryKeyTypeSigningCertificatesPerUserQuota,
        SummaryKeyTypeUserPolicySizeQuota,
        SummaryKeyTypeUsers,
        SummaryKeyTypeUsersQuota,
        SummaryKeyTypeVersionsPerPolicyQuota
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SummaryKeyType = SummaryKeyType'
  { fromSummaryKeyType ::
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

pattern SummaryKeyTypeAccessKeysPerUserQuota :: SummaryKeyType
pattern SummaryKeyTypeAccessKeysPerUserQuota = SummaryKeyType' "AccessKeysPerUserQuota"

pattern SummaryKeyTypeAccountAccessKeysPresent :: SummaryKeyType
pattern SummaryKeyTypeAccountAccessKeysPresent = SummaryKeyType' "AccountAccessKeysPresent"

pattern SummaryKeyTypeAccountMFAEnabled :: SummaryKeyType
pattern SummaryKeyTypeAccountMFAEnabled = SummaryKeyType' "AccountMFAEnabled"

pattern SummaryKeyTypeAccountSigningCertificatesPresent :: SummaryKeyType
pattern SummaryKeyTypeAccountSigningCertificatesPresent = SummaryKeyType' "AccountSigningCertificatesPresent"

pattern SummaryKeyTypeAttachedPoliciesPerGroupQuota :: SummaryKeyType
pattern SummaryKeyTypeAttachedPoliciesPerGroupQuota = SummaryKeyType' "AttachedPoliciesPerGroupQuota"

pattern SummaryKeyTypeAttachedPoliciesPerRoleQuota :: SummaryKeyType
pattern SummaryKeyTypeAttachedPoliciesPerRoleQuota = SummaryKeyType' "AttachedPoliciesPerRoleQuota"

pattern SummaryKeyTypeAttachedPoliciesPerUserQuota :: SummaryKeyType
pattern SummaryKeyTypeAttachedPoliciesPerUserQuota = SummaryKeyType' "AttachedPoliciesPerUserQuota"

pattern SummaryKeyTypeGlobalEndpointTokenVersion :: SummaryKeyType
pattern SummaryKeyTypeGlobalEndpointTokenVersion = SummaryKeyType' "GlobalEndpointTokenVersion"

pattern SummaryKeyTypeGroupPolicySizeQuota :: SummaryKeyType
pattern SummaryKeyTypeGroupPolicySizeQuota = SummaryKeyType' "GroupPolicySizeQuota"

pattern SummaryKeyTypeGroups :: SummaryKeyType
pattern SummaryKeyTypeGroups = SummaryKeyType' "Groups"

pattern SummaryKeyTypeGroupsPerUserQuota :: SummaryKeyType
pattern SummaryKeyTypeGroupsPerUserQuota = SummaryKeyType' "GroupsPerUserQuota"

pattern SummaryKeyTypeGroupsQuota :: SummaryKeyType
pattern SummaryKeyTypeGroupsQuota = SummaryKeyType' "GroupsQuota"

pattern SummaryKeyTypeMFADevices :: SummaryKeyType
pattern SummaryKeyTypeMFADevices = SummaryKeyType' "MFADevices"

pattern SummaryKeyTypeMFADevicesInUse :: SummaryKeyType
pattern SummaryKeyTypeMFADevicesInUse = SummaryKeyType' "MFADevicesInUse"

pattern SummaryKeyTypePolicies :: SummaryKeyType
pattern SummaryKeyTypePolicies = SummaryKeyType' "Policies"

pattern SummaryKeyTypePoliciesQuota :: SummaryKeyType
pattern SummaryKeyTypePoliciesQuota = SummaryKeyType' "PoliciesQuota"

pattern SummaryKeyTypePolicySizeQuota :: SummaryKeyType
pattern SummaryKeyTypePolicySizeQuota = SummaryKeyType' "PolicySizeQuota"

pattern SummaryKeyTypePolicyVersionsInUse :: SummaryKeyType
pattern SummaryKeyTypePolicyVersionsInUse = SummaryKeyType' "PolicyVersionsInUse"

pattern SummaryKeyTypePolicyVersionsInUseQuota :: SummaryKeyType
pattern SummaryKeyTypePolicyVersionsInUseQuota = SummaryKeyType' "PolicyVersionsInUseQuota"

pattern SummaryKeyTypeServerCertificates :: SummaryKeyType
pattern SummaryKeyTypeServerCertificates = SummaryKeyType' "ServerCertificates"

pattern SummaryKeyTypeServerCertificatesQuota :: SummaryKeyType
pattern SummaryKeyTypeServerCertificatesQuota = SummaryKeyType' "ServerCertificatesQuota"

pattern SummaryKeyTypeSigningCertificatesPerUserQuota :: SummaryKeyType
pattern SummaryKeyTypeSigningCertificatesPerUserQuota = SummaryKeyType' "SigningCertificatesPerUserQuota"

pattern SummaryKeyTypeUserPolicySizeQuota :: SummaryKeyType
pattern SummaryKeyTypeUserPolicySizeQuota = SummaryKeyType' "UserPolicySizeQuota"

pattern SummaryKeyTypeUsers :: SummaryKeyType
pattern SummaryKeyTypeUsers = SummaryKeyType' "Users"

pattern SummaryKeyTypeUsersQuota :: SummaryKeyType
pattern SummaryKeyTypeUsersQuota = SummaryKeyType' "UsersQuota"

pattern SummaryKeyTypeVersionsPerPolicyQuota :: SummaryKeyType
pattern SummaryKeyTypeVersionsPerPolicyQuota = SummaryKeyType' "VersionsPerPolicyQuota"

{-# COMPLETE
  SummaryKeyTypeAccessKeysPerUserQuota,
  SummaryKeyTypeAccountAccessKeysPresent,
  SummaryKeyTypeAccountMFAEnabled,
  SummaryKeyTypeAccountSigningCertificatesPresent,
  SummaryKeyTypeAttachedPoliciesPerGroupQuota,
  SummaryKeyTypeAttachedPoliciesPerRoleQuota,
  SummaryKeyTypeAttachedPoliciesPerUserQuota,
  SummaryKeyTypeGlobalEndpointTokenVersion,
  SummaryKeyTypeGroupPolicySizeQuota,
  SummaryKeyTypeGroups,
  SummaryKeyTypeGroupsPerUserQuota,
  SummaryKeyTypeGroupsQuota,
  SummaryKeyTypeMFADevices,
  SummaryKeyTypeMFADevicesInUse,
  SummaryKeyTypePolicies,
  SummaryKeyTypePoliciesQuota,
  SummaryKeyTypePolicySizeQuota,
  SummaryKeyTypePolicyVersionsInUse,
  SummaryKeyTypePolicyVersionsInUseQuota,
  SummaryKeyTypeServerCertificates,
  SummaryKeyTypeServerCertificatesQuota,
  SummaryKeyTypeSigningCertificatesPerUserQuota,
  SummaryKeyTypeUserPolicySizeQuota,
  SummaryKeyTypeUsers,
  SummaryKeyTypeUsersQuota,
  SummaryKeyTypeVersionsPerPolicyQuota,
  SummaryKeyType'
  #-}

instance Prelude.FromText SummaryKeyType where
  parser = SummaryKeyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SummaryKeyType where
  toText (SummaryKeyType' x) = x

instance Prelude.Hashable SummaryKeyType

instance Prelude.NFData SummaryKeyType

instance Prelude.ToByteString SummaryKeyType

instance Prelude.ToQuery SummaryKeyType

instance Prelude.ToHeader SummaryKeyType

instance Prelude.FromXML SummaryKeyType where
  parseXML = Prelude.parseXMLText "SummaryKeyType"
