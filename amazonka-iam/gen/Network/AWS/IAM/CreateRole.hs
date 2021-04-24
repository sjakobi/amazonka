{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.CreateRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new role for your AWS account. For more information about roles, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html IAM roles> . For information about quotas for role names and the number of roles you can create, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html IAM and STS quotas> in the /IAM User Guide/ .
module Network.AWS.IAM.CreateRole
  ( -- * Creating a Request
    createRole,
    CreateRole,

    -- * Request Lenses
    crMaxSessionDuration,
    crPermissionsBoundary,
    crTags,
    crDescription,
    crPath,
    crRoleName,
    crAssumeRolePolicyDocument,

    -- * Destructuring the Response
    createRoleResponse,
    CreateRoleResponse,

    -- * Response Lenses
    crrrsResponseStatus,
    crrrsRole,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createRole' smart constructor.
data CreateRole = CreateRole'
  { _crMaxSessionDuration ::
      !(Maybe Nat),
    _crPermissionsBoundary :: !(Maybe Text),
    _crTags :: !(Maybe [Tag]),
    _crDescription :: !(Maybe Text),
    _crPath :: !(Maybe Text),
    _crRoleName :: !Text,
    _crAssumeRolePolicyDocument :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crMaxSessionDuration' - The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours. Anyone who assumes the role from the AWS CLI or API can use the @DurationSeconds@ API parameter or the @duration-seconds@ CLI parameter to request a longer session. The @MaxSessionDuration@ setting determines the maximum duration that can be requested using the @DurationSeconds@ parameter. If users don't specify a value for the @DurationSeconds@ parameter, their security credentials are valid for one hour by default. This applies when you use the @AssumeRole*@ API operations or the @assume-role*@ CLI operations but does not apply when you use those operations to create a console URL. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html Using IAM roles> in the /IAM User Guide/ .
--
-- * 'crPermissionsBoundary' - The ARN of the policy that is used to set the permissions boundary for the role.
--
-- * 'crTags' - A list of tags that you want to attach to the new role. Each tag consists of a key name and an associated value. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'crDescription' - A description of the role.
--
-- * 'crPath' - The path to the role. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ . This parameter is optional. If it is not included, it defaults to a slash (/). This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
--
-- * 'crRoleName' - The name of the role to create. IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both "MyResource" and "myresource".
--
-- * 'crAssumeRolePolicyDocument' - The trust relationship policy document that grants an entity permission to assume the role. In IAM, you must provide a JSON policy that has been converted to a string. However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM. The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ ) Upon success, the response includes the same trust policy in JSON format.
createRole ::
  -- | 'crRoleName'
  Text ->
  -- | 'crAssumeRolePolicyDocument'
  Text ->
  CreateRole
createRole pRoleName_ pAssumeRolePolicyDocument_ =
  CreateRole'
    { _crMaxSessionDuration = Nothing,
      _crPermissionsBoundary = Nothing,
      _crTags = Nothing,
      _crDescription = Nothing,
      _crPath = Nothing,
      _crRoleName = pRoleName_,
      _crAssumeRolePolicyDocument =
        pAssumeRolePolicyDocument_
    }

-- | The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours. Anyone who assumes the role from the AWS CLI or API can use the @DurationSeconds@ API parameter or the @duration-seconds@ CLI parameter to request a longer session. The @MaxSessionDuration@ setting determines the maximum duration that can be requested using the @DurationSeconds@ parameter. If users don't specify a value for the @DurationSeconds@ parameter, their security credentials are valid for one hour by default. This applies when you use the @AssumeRole*@ API operations or the @assume-role*@ CLI operations but does not apply when you use those operations to create a console URL. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html Using IAM roles> in the /IAM User Guide/ .
crMaxSessionDuration :: Lens' CreateRole (Maybe Natural)
crMaxSessionDuration = lens _crMaxSessionDuration (\s a -> s {_crMaxSessionDuration = a}) . mapping _Nat

-- | The ARN of the policy that is used to set the permissions boundary for the role.
crPermissionsBoundary :: Lens' CreateRole (Maybe Text)
crPermissionsBoundary = lens _crPermissionsBoundary (\s a -> s {_crPermissionsBoundary = a})

-- | A list of tags that you want to attach to the new role. Each tag consists of a key name and an associated value. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
crTags :: Lens' CreateRole [Tag]
crTags = lens _crTags (\s a -> s {_crTags = a}) . _Default . _Coerce

-- | A description of the role.
crDescription :: Lens' CreateRole (Maybe Text)
crDescription = lens _crDescription (\s a -> s {_crDescription = a})

-- | The path to the role. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ . This parameter is optional. If it is not included, it defaults to a slash (/). This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
crPath :: Lens' CreateRole (Maybe Text)
crPath = lens _crPath (\s a -> s {_crPath = a})

-- | The name of the role to create. IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both "MyResource" and "myresource".
crRoleName :: Lens' CreateRole Text
crRoleName = lens _crRoleName (\s a -> s {_crRoleName = a})

-- | The trust relationship policy document that grants an entity permission to assume the role. In IAM, you must provide a JSON policy that has been converted to a string. However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM. The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ ) Upon success, the response includes the same trust policy in JSON format.
crAssumeRolePolicyDocument :: Lens' CreateRole Text
crAssumeRolePolicyDocument = lens _crAssumeRolePolicyDocument (\s a -> s {_crAssumeRolePolicyDocument = a})

instance AWSRequest CreateRole where
  type Rs CreateRole = CreateRoleResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "CreateRoleResult"
      ( \s h x ->
          CreateRoleResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "Role")
      )

instance Hashable CreateRole

instance NFData CreateRole

instance ToHeaders CreateRole where
  toHeaders = const mempty

instance ToPath CreateRole where
  toPath = const "/"

instance ToQuery CreateRole where
  toQuery CreateRole' {..} =
    mconcat
      [ "Action" =: ("CreateRole" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxSessionDuration" =: _crMaxSessionDuration,
        "PermissionsBoundary" =: _crPermissionsBoundary,
        "Tags" =: toQuery (toQueryList "member" <$> _crTags),
        "Description" =: _crDescription,
        "Path" =: _crPath,
        "RoleName" =: _crRoleName,
        "AssumeRolePolicyDocument"
          =: _crAssumeRolePolicyDocument
      ]

-- | Contains the response to a successful 'CreateRole' request.
--
--
--
-- /See:/ 'createRoleResponse' smart constructor.
data CreateRoleResponse = CreateRoleResponse'
  { _crrrsResponseStatus ::
      !Int,
    _crrrsRole :: !Role
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRoleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrrsResponseStatus' - -- | The response status code.
--
-- * 'crrrsRole' - A structure containing details about the new role.
createRoleResponse ::
  -- | 'crrrsResponseStatus'
  Int ->
  -- | 'crrrsRole'
  Role ->
  CreateRoleResponse
createRoleResponse pResponseStatus_ pRole_ =
  CreateRoleResponse'
    { _crrrsResponseStatus =
        pResponseStatus_,
      _crrrsRole = pRole_
    }

-- | -- | The response status code.
crrrsResponseStatus :: Lens' CreateRoleResponse Int
crrrsResponseStatus = lens _crrrsResponseStatus (\s a -> s {_crrrsResponseStatus = a})

-- | A structure containing details about the new role.
crrrsRole :: Lens' CreateRoleResponse Role
crrrsRole = lens _crrrsRole (\s a -> s {_crrrsRole = a})

instance NFData CreateRoleResponse
