{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.UserDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.UserDetail where

import Network.AWS.IAM.Types.AttachedPermissionsBoundary
import Network.AWS.IAM.Types.AttachedPolicy
import Network.AWS.IAM.Types.PolicyDetail
import Network.AWS.IAM.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.
--
--
-- This data type is used as a response element in the 'GetAccountAuthorizationDetails' operation.
--
--
-- /See:/ 'userDetail' smart constructor.
data UserDetail = UserDetail'
  { _udAttachedManagedPolicies ::
      !(Maybe [AttachedPolicy]),
    _udPermissionsBoundary ::
      !(Maybe AttachedPermissionsBoundary),
    _udCreateDate :: !(Maybe ISO8601),
    _udARN :: !(Maybe Text),
    _udGroupList :: !(Maybe [Text]),
    _udUserId :: !(Maybe Text),
    _udTags :: !(Maybe [Tag]),
    _udUserName :: !(Maybe Text),
    _udUserPolicyList :: !(Maybe [PolicyDetail]),
    _udPath :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udAttachedManagedPolicies' - A list of the managed policies attached to the user.
--
-- * 'udPermissionsBoundary' - The ARN of the policy used to set the permissions boundary for the user. For more information about permissions boundaries, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities > in the /IAM User Guide/ .
--
-- * 'udCreateDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the user was created.
--
-- * 'udARN' - Undocumented member.
--
-- * 'udGroupList' - A list of IAM groups that the user is in.
--
-- * 'udUserId' - The stable and unique string identifying the user. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
--
-- * 'udTags' - A list of tags that are associated with the user. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'udUserName' - The friendly name identifying the user.
--
-- * 'udUserPolicyList' - A list of the inline policies embedded in the user.
--
-- * 'udPath' - The path to the user. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
userDetail ::
  UserDetail
userDetail =
  UserDetail'
    { _udAttachedManagedPolicies = Nothing,
      _udPermissionsBoundary = Nothing,
      _udCreateDate = Nothing,
      _udARN = Nothing,
      _udGroupList = Nothing,
      _udUserId = Nothing,
      _udTags = Nothing,
      _udUserName = Nothing,
      _udUserPolicyList = Nothing,
      _udPath = Nothing
    }

-- | A list of the managed policies attached to the user.
udAttachedManagedPolicies :: Lens' UserDetail [AttachedPolicy]
udAttachedManagedPolicies = lens _udAttachedManagedPolicies (\s a -> s {_udAttachedManagedPolicies = a}) . _Default . _Coerce

-- | The ARN of the policy used to set the permissions boundary for the user. For more information about permissions boundaries, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities > in the /IAM User Guide/ .
udPermissionsBoundary :: Lens' UserDetail (Maybe AttachedPermissionsBoundary)
udPermissionsBoundary = lens _udPermissionsBoundary (\s a -> s {_udPermissionsBoundary = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the user was created.
udCreateDate :: Lens' UserDetail (Maybe UTCTime)
udCreateDate = lens _udCreateDate (\s a -> s {_udCreateDate = a}) . mapping _Time

-- | Undocumented member.
udARN :: Lens' UserDetail (Maybe Text)
udARN = lens _udARN (\s a -> s {_udARN = a})

-- | A list of IAM groups that the user is in.
udGroupList :: Lens' UserDetail [Text]
udGroupList = lens _udGroupList (\s a -> s {_udGroupList = a}) . _Default . _Coerce

-- | The stable and unique string identifying the user. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
udUserId :: Lens' UserDetail (Maybe Text)
udUserId = lens _udUserId (\s a -> s {_udUserId = a})

-- | A list of tags that are associated with the user. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
udTags :: Lens' UserDetail [Tag]
udTags = lens _udTags (\s a -> s {_udTags = a}) . _Default . _Coerce

-- | The friendly name identifying the user.
udUserName :: Lens' UserDetail (Maybe Text)
udUserName = lens _udUserName (\s a -> s {_udUserName = a})

-- | A list of the inline policies embedded in the user.
udUserPolicyList :: Lens' UserDetail [PolicyDetail]
udUserPolicyList = lens _udUserPolicyList (\s a -> s {_udUserPolicyList = a}) . _Default . _Coerce

-- | The path to the user. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ .
udPath :: Lens' UserDetail (Maybe Text)
udPath = lens _udPath (\s a -> s {_udPath = a})

instance FromXML UserDetail where
  parseXML x =
    UserDetail'
      <$> ( x .@? "AttachedManagedPolicies" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "PermissionsBoundary")
      <*> (x .@? "CreateDate")
      <*> (x .@? "Arn")
      <*> ( x .@? "GroupList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "UserId")
      <*> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "UserName")
      <*> ( x .@? "UserPolicyList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Path")

instance Hashable UserDetail

instance NFData UserDetail
