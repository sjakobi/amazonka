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
-- Module      : Network.AWS.IAM.GetRolePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified inline policy document that is embedded with the specified IAM role.
--
--
-- An IAM role can also have managed policies attached to it. To retrieve a managed policy document that is attached to a role, use 'GetPolicy' to determine the policy's default version, then use 'GetPolicyVersion' to retrieve the policy document.
--
-- For more information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
-- For more information about roles, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html Using roles to delegate permissions and federate identities> .
module Network.AWS.IAM.GetRolePolicy
  ( -- * Creating a Request
    getRolePolicy,
    GetRolePolicy,

    -- * Request Lenses
    grpRoleName,
    grpPolicyName,

    -- * Destructuring the Response
    getRolePolicyResponse,
    GetRolePolicyResponse,

    -- * Response Lenses
    grprrsResponseStatus,
    grprrsRoleName,
    grprrsPolicyName,
    grprrsPolicyDocument,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRolePolicy' smart constructor.
data GetRolePolicy = GetRolePolicy'
  { _grpRoleName ::
      !Text,
    _grpPolicyName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRolePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grpRoleName' - The name of the role associated with the policy. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'grpPolicyName' - The name of the policy document to get. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
getRolePolicy ::
  -- | 'grpRoleName'
  Text ->
  -- | 'grpPolicyName'
  Text ->
  GetRolePolicy
getRolePolicy pRoleName_ pPolicyName_ =
  GetRolePolicy'
    { _grpRoleName = pRoleName_,
      _grpPolicyName = pPolicyName_
    }

-- | The name of the role associated with the policy. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
grpRoleName :: Lens' GetRolePolicy Text
grpRoleName = lens _grpRoleName (\s a -> s {_grpRoleName = a})

-- | The name of the policy document to get. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
grpPolicyName :: Lens' GetRolePolicy Text
grpPolicyName = lens _grpPolicyName (\s a -> s {_grpPolicyName = a})

instance AWSRequest GetRolePolicy where
  type Rs GetRolePolicy = GetRolePolicyResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetRolePolicyResult"
      ( \s h x ->
          GetRolePolicyResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "RoleName")
            <*> (x .@ "PolicyName")
            <*> (x .@ "PolicyDocument")
      )

instance Hashable GetRolePolicy

instance NFData GetRolePolicy

instance ToHeaders GetRolePolicy where
  toHeaders = const mempty

instance ToPath GetRolePolicy where
  toPath = const "/"

instance ToQuery GetRolePolicy where
  toQuery GetRolePolicy' {..} =
    mconcat
      [ "Action" =: ("GetRolePolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "RoleName" =: _grpRoleName,
        "PolicyName" =: _grpPolicyName
      ]

-- | Contains the response to a successful 'GetRolePolicy' request.
--
--
--
-- /See:/ 'getRolePolicyResponse' smart constructor.
data GetRolePolicyResponse = GetRolePolicyResponse'
  { _grprrsResponseStatus ::
      !Int,
    _grprrsRoleName :: !Text,
    _grprrsPolicyName :: !Text,
    _grprrsPolicyDocument ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRolePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grprrsResponseStatus' - -- | The response status code.
--
-- * 'grprrsRoleName' - The role the policy is associated with.
--
-- * 'grprrsPolicyName' - The name of the policy.
--
-- * 'grprrsPolicyDocument' - The policy document. IAM stores policies in JSON format. However, resources that were created using AWS CloudFormation templates can be formatted in YAML. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
getRolePolicyResponse ::
  -- | 'grprrsResponseStatus'
  Int ->
  -- | 'grprrsRoleName'
  Text ->
  -- | 'grprrsPolicyName'
  Text ->
  -- | 'grprrsPolicyDocument'
  Text ->
  GetRolePolicyResponse
getRolePolicyResponse
  pResponseStatus_
  pRoleName_
  pPolicyName_
  pPolicyDocument_ =
    GetRolePolicyResponse'
      { _grprrsResponseStatus =
          pResponseStatus_,
        _grprrsRoleName = pRoleName_,
        _grprrsPolicyName = pPolicyName_,
        _grprrsPolicyDocument = pPolicyDocument_
      }

-- | -- | The response status code.
grprrsResponseStatus :: Lens' GetRolePolicyResponse Int
grprrsResponseStatus = lens _grprrsResponseStatus (\s a -> s {_grprrsResponseStatus = a})

-- | The role the policy is associated with.
grprrsRoleName :: Lens' GetRolePolicyResponse Text
grprrsRoleName = lens _grprrsRoleName (\s a -> s {_grprrsRoleName = a})

-- | The name of the policy.
grprrsPolicyName :: Lens' GetRolePolicyResponse Text
grprrsPolicyName = lens _grprrsPolicyName (\s a -> s {_grprrsPolicyName = a})

-- | The policy document. IAM stores policies in JSON format. However, resources that were created using AWS CloudFormation templates can be formatted in YAML. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
grprrsPolicyDocument :: Lens' GetRolePolicyResponse Text
grprrsPolicyDocument = lens _grprrsPolicyDocument (\s a -> s {_grprrsPolicyDocument = a})

instance NFData GetRolePolicyResponse
