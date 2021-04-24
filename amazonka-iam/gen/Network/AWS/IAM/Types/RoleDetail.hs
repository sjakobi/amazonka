{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.RoleDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.RoleDetail where

import Network.AWS.IAM.Types.AttachedPermissionsBoundary
import Network.AWS.IAM.Types.AttachedPolicy
import Network.AWS.IAM.Types.InstanceProfile
import Network.AWS.IAM.Types.PolicyDetail
import Network.AWS.IAM.Types.RoleLastUsed
import Network.AWS.IAM.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an IAM role, including all of the role's policies.
--
--
-- This data type is used as a response element in the 'GetAccountAuthorizationDetails' operation.
--
--
-- /See:/ 'roleDetail' smart constructor.
data RoleDetail = RoleDetail'
  { _rdAssumeRolePolicyDocument ::
      !(Maybe Text),
    _rdRoleId :: !(Maybe Text),
    _rdRoleLastUsed :: !(Maybe RoleLastUsed),
    _rdAttachedManagedPolicies ::
      !(Maybe [AttachedPolicy]),
    _rdRolePolicyList :: !(Maybe [PolicyDetail]),
    _rdRoleName :: !(Maybe Text),
    _rdPermissionsBoundary ::
      !(Maybe AttachedPermissionsBoundary),
    _rdCreateDate :: !(Maybe ISO8601),
    _rdARN :: !(Maybe Text),
    _rdTags :: !(Maybe [Tag]),
    _rdInstanceProfileList ::
      !(Maybe [InstanceProfile]),
    _rdPath :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RoleDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdAssumeRolePolicyDocument' - The trust policy that grants permission to assume the role.
--
-- * 'rdRoleId' - The stable and unique string identifying the role. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
--
-- * 'rdRoleLastUsed' - Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period Regions where data is tracked> in the /IAM User Guide/ .
--
-- * 'rdAttachedManagedPolicies' - A list of managed policies attached to the role. These policies are the role's access (permissions) policies.
--
-- * 'rdRolePolicyList' - A list of inline policies embedded in the role. These policies are the role's access (permissions) policies.
--
-- * 'rdRoleName' - The friendly name that identifies the role.
--
-- * 'rdPermissionsBoundary' - The ARN of the policy used to set the permissions boundary for the role. For more information about permissions boundaries, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities > in the /IAM User Guide/ .
--
-- * 'rdCreateDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the role was created.
--
-- * 'rdARN' - Undocumented member.
--
-- * 'rdTags' - A list of tags that are attached to the role. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'rdInstanceProfileList' - A list of instance profiles that contain this role.
--
-- * 'rdPath' - The path to the role. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
roleDetail ::
  RoleDetail
roleDetail =
  RoleDetail'
    { _rdAssumeRolePolicyDocument = Nothing,
      _rdRoleId = Nothing,
      _rdRoleLastUsed = Nothing,
      _rdAttachedManagedPolicies = Nothing,
      _rdRolePolicyList = Nothing,
      _rdRoleName = Nothing,
      _rdPermissionsBoundary = Nothing,
      _rdCreateDate = Nothing,
      _rdARN = Nothing,
      _rdTags = Nothing,
      _rdInstanceProfileList = Nothing,
      _rdPath = Nothing
    }

-- | The trust policy that grants permission to assume the role.
rdAssumeRolePolicyDocument :: Lens' RoleDetail (Maybe Text)
rdAssumeRolePolicyDocument = lens _rdAssumeRolePolicyDocument (\s a -> s {_rdAssumeRolePolicyDocument = a})

-- | The stable and unique string identifying the role. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
rdRoleId :: Lens' RoleDetail (Maybe Text)
rdRoleId = lens _rdRoleId (\s a -> s {_rdRoleId = a})

-- | Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period Regions where data is tracked> in the /IAM User Guide/ .
rdRoleLastUsed :: Lens' RoleDetail (Maybe RoleLastUsed)
rdRoleLastUsed = lens _rdRoleLastUsed (\s a -> s {_rdRoleLastUsed = a})

-- | A list of managed policies attached to the role. These policies are the role's access (permissions) policies.
rdAttachedManagedPolicies :: Lens' RoleDetail [AttachedPolicy]
rdAttachedManagedPolicies = lens _rdAttachedManagedPolicies (\s a -> s {_rdAttachedManagedPolicies = a}) . _Default . _Coerce

-- | A list of inline policies embedded in the role. These policies are the role's access (permissions) policies.
rdRolePolicyList :: Lens' RoleDetail [PolicyDetail]
rdRolePolicyList = lens _rdRolePolicyList (\s a -> s {_rdRolePolicyList = a}) . _Default . _Coerce

-- | The friendly name that identifies the role.
rdRoleName :: Lens' RoleDetail (Maybe Text)
rdRoleName = lens _rdRoleName (\s a -> s {_rdRoleName = a})

-- | The ARN of the policy used to set the permissions boundary for the role. For more information about permissions boundaries, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities > in the /IAM User Guide/ .
rdPermissionsBoundary :: Lens' RoleDetail (Maybe AttachedPermissionsBoundary)
rdPermissionsBoundary = lens _rdPermissionsBoundary (\s a -> s {_rdPermissionsBoundary = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the role was created.
rdCreateDate :: Lens' RoleDetail (Maybe UTCTime)
rdCreateDate = lens _rdCreateDate (\s a -> s {_rdCreateDate = a}) . mapping _Time

-- | Undocumented member.
rdARN :: Lens' RoleDetail (Maybe Text)
rdARN = lens _rdARN (\s a -> s {_rdARN = a})

-- | A list of tags that are attached to the role. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
rdTags :: Lens' RoleDetail [Tag]
rdTags = lens _rdTags (\s a -> s {_rdTags = a}) . _Default . _Coerce

-- | A list of instance profiles that contain this role.
rdInstanceProfileList :: Lens' RoleDetail [InstanceProfile]
rdInstanceProfileList = lens _rdInstanceProfileList (\s a -> s {_rdInstanceProfileList = a}) . _Default . _Coerce

-- | The path to the role. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
rdPath :: Lens' RoleDetail (Maybe Text)
rdPath = lens _rdPath (\s a -> s {_rdPath = a})

instance FromXML RoleDetail where
  parseXML x =
    RoleDetail'
      <$> (x .@? "AssumeRolePolicyDocument")
      <*> (x .@? "RoleId")
      <*> (x .@? "RoleLastUsed")
      <*> ( x .@? "AttachedManagedPolicies" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> ( x .@? "RolePolicyList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "RoleName")
      <*> (x .@? "PermissionsBoundary")
      <*> (x .@? "CreateDate")
      <*> (x .@? "Arn")
      <*> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> ( x .@? "InstanceProfileList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Path")

instance Hashable RoleDetail

instance NFData RoleDetail
