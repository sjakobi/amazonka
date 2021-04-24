{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.ManagedPolicyDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.ManagedPolicyDetail where

import Network.AWS.IAM.Types.PolicyVersion
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.
--
--
-- This data type is used as a response element in the 'GetAccountAuthorizationDetails' operation.
--
-- For more information about managed policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
--
-- /See:/ 'managedPolicyDetail' smart constructor.
data ManagedPolicyDetail = ManagedPolicyDetail'
  { _mpdPolicyName ::
      !(Maybe Text),
    _mpdPermissionsBoundaryUsageCount ::
      !(Maybe Int),
    _mpdIsAttachable ::
      !(Maybe Bool),
    _mpdCreateDate ::
      !(Maybe ISO8601),
    _mpdARN :: !(Maybe Text),
    _mpdAttachmentCount ::
      !(Maybe Int),
    _mpdDefaultVersionId ::
      !(Maybe Text),
    _mpdDescription ::
      !(Maybe Text),
    _mpdPolicyVersionList ::
      !(Maybe [PolicyVersion]),
    _mpdPath :: !(Maybe Text),
    _mpdPolicyId :: !(Maybe Text),
    _mpdUpdateDate ::
      !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedPolicyDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpdPolicyName' - The friendly name (not ARN) identifying the policy.
--
-- * 'mpdPermissionsBoundaryUsageCount' - The number of entities (users and roles) for which the policy is used as the permissions boundary.  For more information about permissions boundaries, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities > in the /IAM User Guide/ .
--
-- * 'mpdIsAttachable' - Specifies whether the policy can be attached to an IAM user, group, or role.
--
-- * 'mpdCreateDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the policy was created.
--
-- * 'mpdARN' - Undocumented member.
--
-- * 'mpdAttachmentCount' - The number of principal entities (users, groups, and roles) that the policy is attached to.
--
-- * 'mpdDefaultVersionId' - The identifier for the version of the policy that is set as the default (operative) version. For more information about policy versions, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html Versioning for managed policies> in the /IAM User Guide/ .
--
-- * 'mpdDescription' - A friendly description of the policy.
--
-- * 'mpdPolicyVersionList' - A list containing information about the versions of the policy.
--
-- * 'mpdPath' - The path to the policy. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
--
-- * 'mpdPolicyId' - The stable and unique string identifying the policy. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
--
-- * 'mpdUpdateDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the policy was last updated. When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.
managedPolicyDetail ::
  ManagedPolicyDetail
managedPolicyDetail =
  ManagedPolicyDetail'
    { _mpdPolicyName = Nothing,
      _mpdPermissionsBoundaryUsageCount = Nothing,
      _mpdIsAttachable = Nothing,
      _mpdCreateDate = Nothing,
      _mpdARN = Nothing,
      _mpdAttachmentCount = Nothing,
      _mpdDefaultVersionId = Nothing,
      _mpdDescription = Nothing,
      _mpdPolicyVersionList = Nothing,
      _mpdPath = Nothing,
      _mpdPolicyId = Nothing,
      _mpdUpdateDate = Nothing
    }

-- | The friendly name (not ARN) identifying the policy.
mpdPolicyName :: Lens' ManagedPolicyDetail (Maybe Text)
mpdPolicyName = lens _mpdPolicyName (\s a -> s {_mpdPolicyName = a})

-- | The number of entities (users and roles) for which the policy is used as the permissions boundary.  For more information about permissions boundaries, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities > in the /IAM User Guide/ .
mpdPermissionsBoundaryUsageCount :: Lens' ManagedPolicyDetail (Maybe Int)
mpdPermissionsBoundaryUsageCount = lens _mpdPermissionsBoundaryUsageCount (\s a -> s {_mpdPermissionsBoundaryUsageCount = a})

-- | Specifies whether the policy can be attached to an IAM user, group, or role.
mpdIsAttachable :: Lens' ManagedPolicyDetail (Maybe Bool)
mpdIsAttachable = lens _mpdIsAttachable (\s a -> s {_mpdIsAttachable = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the policy was created.
mpdCreateDate :: Lens' ManagedPolicyDetail (Maybe UTCTime)
mpdCreateDate = lens _mpdCreateDate (\s a -> s {_mpdCreateDate = a}) . mapping _Time

-- | Undocumented member.
mpdARN :: Lens' ManagedPolicyDetail (Maybe Text)
mpdARN = lens _mpdARN (\s a -> s {_mpdARN = a})

-- | The number of principal entities (users, groups, and roles) that the policy is attached to.
mpdAttachmentCount :: Lens' ManagedPolicyDetail (Maybe Int)
mpdAttachmentCount = lens _mpdAttachmentCount (\s a -> s {_mpdAttachmentCount = a})

-- | The identifier for the version of the policy that is set as the default (operative) version. For more information about policy versions, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html Versioning for managed policies> in the /IAM User Guide/ .
mpdDefaultVersionId :: Lens' ManagedPolicyDetail (Maybe Text)
mpdDefaultVersionId = lens _mpdDefaultVersionId (\s a -> s {_mpdDefaultVersionId = a})

-- | A friendly description of the policy.
mpdDescription :: Lens' ManagedPolicyDetail (Maybe Text)
mpdDescription = lens _mpdDescription (\s a -> s {_mpdDescription = a})

-- | A list containing information about the versions of the policy.
mpdPolicyVersionList :: Lens' ManagedPolicyDetail [PolicyVersion]
mpdPolicyVersionList = lens _mpdPolicyVersionList (\s a -> s {_mpdPolicyVersionList = a}) . _Default . _Coerce

-- | The path to the policy. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
mpdPath :: Lens' ManagedPolicyDetail (Maybe Text)
mpdPath = lens _mpdPath (\s a -> s {_mpdPath = a})

-- | The stable and unique string identifying the policy. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
mpdPolicyId :: Lens' ManagedPolicyDetail (Maybe Text)
mpdPolicyId = lens _mpdPolicyId (\s a -> s {_mpdPolicyId = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the policy was last updated. When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.
mpdUpdateDate :: Lens' ManagedPolicyDetail (Maybe UTCTime)
mpdUpdateDate = lens _mpdUpdateDate (\s a -> s {_mpdUpdateDate = a}) . mapping _Time

instance FromXML ManagedPolicyDetail where
  parseXML x =
    ManagedPolicyDetail'
      <$> (x .@? "PolicyName")
      <*> (x .@? "PermissionsBoundaryUsageCount")
      <*> (x .@? "IsAttachable")
      <*> (x .@? "CreateDate")
      <*> (x .@? "Arn")
      <*> (x .@? "AttachmentCount")
      <*> (x .@? "DefaultVersionId")
      <*> (x .@? "Description")
      <*> ( x .@? "PolicyVersionList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Path")
      <*> (x .@? "PolicyId")
      <*> (x .@? "UpdateDate")

instance Hashable ManagedPolicyDetail

instance NFData ManagedPolicyDetail
