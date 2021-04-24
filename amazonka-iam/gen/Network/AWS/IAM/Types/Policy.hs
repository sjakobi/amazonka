{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.Policy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.Policy where

import Network.AWS.IAM.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a managed policy.
--
--
-- This data type is used as a response element in the 'CreatePolicy' , 'GetPolicy' , and 'ListPolicies' operations.
--
-- For more information about managed policies, refer to <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
--
-- /See:/ 'policy' smart constructor.
data Policy = Policy'
  { _pPolicyName :: !(Maybe Text),
    _pPermissionsBoundaryUsageCount :: !(Maybe Int),
    _pIsAttachable :: !(Maybe Bool),
    _pCreateDate :: !(Maybe ISO8601),
    _pARN :: !(Maybe Text),
    _pAttachmentCount :: !(Maybe Int),
    _pDefaultVersionId :: !(Maybe Text),
    _pTags :: !(Maybe [Tag]),
    _pDescription :: !(Maybe Text),
    _pPath :: !(Maybe Text),
    _pPolicyId :: !(Maybe Text),
    _pUpdateDate :: !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPolicyName' - The friendly name (not ARN) identifying the policy.
--
-- * 'pPermissionsBoundaryUsageCount' - The number of entities (users and roles) for which the policy is used to set the permissions boundary.  For more information about permissions boundaries, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities > in the /IAM User Guide/ .
--
-- * 'pIsAttachable' - Specifies whether the policy can be attached to an IAM user, group, or role.
--
-- * 'pCreateDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the policy was created.
--
-- * 'pARN' - Undocumented member.
--
-- * 'pAttachmentCount' - The number of entities (users, groups, and roles) that the policy is attached to.
--
-- * 'pDefaultVersionId' - The identifier for the version of the policy that is set as the default version.
--
-- * 'pTags' - A list of tags that are attached to the instance profile. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'pDescription' - A friendly description of the policy. This element is included in the response to the 'GetPolicy' operation. It is not included in the response to the 'ListPolicies' operation.
--
-- * 'pPath' - The path to the policy. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
--
-- * 'pPolicyId' - The stable and unique string identifying the policy. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
--
-- * 'pUpdateDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the policy was last updated. When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.
policy ::
  Policy
policy =
  Policy'
    { _pPolicyName = Nothing,
      _pPermissionsBoundaryUsageCount = Nothing,
      _pIsAttachable = Nothing,
      _pCreateDate = Nothing,
      _pARN = Nothing,
      _pAttachmentCount = Nothing,
      _pDefaultVersionId = Nothing,
      _pTags = Nothing,
      _pDescription = Nothing,
      _pPath = Nothing,
      _pPolicyId = Nothing,
      _pUpdateDate = Nothing
    }

-- | The friendly name (not ARN) identifying the policy.
pPolicyName :: Lens' Policy (Maybe Text)
pPolicyName = lens _pPolicyName (\s a -> s {_pPolicyName = a})

-- | The number of entities (users and roles) for which the policy is used to set the permissions boundary.  For more information about permissions boundaries, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities > in the /IAM User Guide/ .
pPermissionsBoundaryUsageCount :: Lens' Policy (Maybe Int)
pPermissionsBoundaryUsageCount = lens _pPermissionsBoundaryUsageCount (\s a -> s {_pPermissionsBoundaryUsageCount = a})

-- | Specifies whether the policy can be attached to an IAM user, group, or role.
pIsAttachable :: Lens' Policy (Maybe Bool)
pIsAttachable = lens _pIsAttachable (\s a -> s {_pIsAttachable = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the policy was created.
pCreateDate :: Lens' Policy (Maybe UTCTime)
pCreateDate = lens _pCreateDate (\s a -> s {_pCreateDate = a}) . mapping _Time

-- | Undocumented member.
pARN :: Lens' Policy (Maybe Text)
pARN = lens _pARN (\s a -> s {_pARN = a})

-- | The number of entities (users, groups, and roles) that the policy is attached to.
pAttachmentCount :: Lens' Policy (Maybe Int)
pAttachmentCount = lens _pAttachmentCount (\s a -> s {_pAttachmentCount = a})

-- | The identifier for the version of the policy that is set as the default version.
pDefaultVersionId :: Lens' Policy (Maybe Text)
pDefaultVersionId = lens _pDefaultVersionId (\s a -> s {_pDefaultVersionId = a})

-- | A list of tags that are attached to the instance profile. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
pTags :: Lens' Policy [Tag]
pTags = lens _pTags (\s a -> s {_pTags = a}) . _Default . _Coerce

-- | A friendly description of the policy. This element is included in the response to the 'GetPolicy' operation. It is not included in the response to the 'ListPolicies' operation.
pDescription :: Lens' Policy (Maybe Text)
pDescription = lens _pDescription (\s a -> s {_pDescription = a})

-- | The path to the policy. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
pPath :: Lens' Policy (Maybe Text)
pPath = lens _pPath (\s a -> s {_pPath = a})

-- | The stable and unique string identifying the policy. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
pPolicyId :: Lens' Policy (Maybe Text)
pPolicyId = lens _pPolicyId (\s a -> s {_pPolicyId = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the policy was last updated. When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.
pUpdateDate :: Lens' Policy (Maybe UTCTime)
pUpdateDate = lens _pUpdateDate (\s a -> s {_pUpdateDate = a}) . mapping _Time

instance FromXML Policy where
  parseXML x =
    Policy'
      <$> (x .@? "PolicyName")
      <*> (x .@? "PermissionsBoundaryUsageCount")
      <*> (x .@? "IsAttachable")
      <*> (x .@? "CreateDate")
      <*> (x .@? "Arn")
      <*> (x .@? "AttachmentCount")
      <*> (x .@? "DefaultVersionId")
      <*> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Description")
      <*> (x .@? "Path")
      <*> (x .@? "PolicyId")
      <*> (x .@? "UpdateDate")

instance Hashable Policy

instance NFData Policy
