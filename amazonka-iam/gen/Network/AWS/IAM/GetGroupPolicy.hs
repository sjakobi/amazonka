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
-- Module      : Network.AWS.IAM.GetGroupPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified inline policy document that is embedded in the specified IAM group.
--
--
-- An IAM group can also have managed policies attached to it. To retrieve a managed policy document that is attached to a group, use 'GetPolicy' to determine the policy's default version, then use 'GetPolicyVersion' to retrieve the policy document.
--
-- For more information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
module Network.AWS.IAM.GetGroupPolicy
  ( -- * Creating a Request
    getGroupPolicy,
    GetGroupPolicy,

    -- * Request Lenses
    ggpGroupName,
    ggpPolicyName,

    -- * Destructuring the Response
    getGroupPolicyResponse,
    GetGroupPolicyResponse,

    -- * Response Lenses
    ggprrsResponseStatus,
    ggprrsGroupName,
    ggprrsPolicyName,
    ggprrsPolicyDocument,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getGroupPolicy' smart constructor.
data GetGroupPolicy = GetGroupPolicy'
  { _ggpGroupName ::
      !Text,
    _ggpPolicyName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroupPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggpGroupName' - The name of the group the policy is associated with. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'ggpPolicyName' - The name of the policy document to get. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
getGroupPolicy ::
  -- | 'ggpGroupName'
  Text ->
  -- | 'ggpPolicyName'
  Text ->
  GetGroupPolicy
getGroupPolicy pGroupName_ pPolicyName_ =
  GetGroupPolicy'
    { _ggpGroupName = pGroupName_,
      _ggpPolicyName = pPolicyName_
    }

-- | The name of the group the policy is associated with. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
ggpGroupName :: Lens' GetGroupPolicy Text
ggpGroupName = lens _ggpGroupName (\s a -> s {_ggpGroupName = a})

-- | The name of the policy document to get. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
ggpPolicyName :: Lens' GetGroupPolicy Text
ggpPolicyName = lens _ggpPolicyName (\s a -> s {_ggpPolicyName = a})

instance AWSRequest GetGroupPolicy where
  type Rs GetGroupPolicy = GetGroupPolicyResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetGroupPolicyResult"
      ( \s h x ->
          GetGroupPolicyResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "GroupName")
            <*> (x .@ "PolicyName")
            <*> (x .@ "PolicyDocument")
      )

instance Hashable GetGroupPolicy

instance NFData GetGroupPolicy

instance ToHeaders GetGroupPolicy where
  toHeaders = const mempty

instance ToPath GetGroupPolicy where
  toPath = const "/"

instance ToQuery GetGroupPolicy where
  toQuery GetGroupPolicy' {..} =
    mconcat
      [ "Action" =: ("GetGroupPolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "GroupName" =: _ggpGroupName,
        "PolicyName" =: _ggpPolicyName
      ]

-- | Contains the response to a successful 'GetGroupPolicy' request.
--
--
--
-- /See:/ 'getGroupPolicyResponse' smart constructor.
data GetGroupPolicyResponse = GetGroupPolicyResponse'
  { _ggprrsResponseStatus ::
      !Int,
    _ggprrsGroupName :: !Text,
    _ggprrsPolicyName ::
      !Text,
    _ggprrsPolicyDocument ::
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

-- | Creates a value of 'GetGroupPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggprrsResponseStatus' - -- | The response status code.
--
-- * 'ggprrsGroupName' - The group the policy is associated with.
--
-- * 'ggprrsPolicyName' - The name of the policy.
--
-- * 'ggprrsPolicyDocument' - The policy document. IAM stores policies in JSON format. However, resources that were created using AWS CloudFormation templates can be formatted in YAML. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
getGroupPolicyResponse ::
  -- | 'ggprrsResponseStatus'
  Int ->
  -- | 'ggprrsGroupName'
  Text ->
  -- | 'ggprrsPolicyName'
  Text ->
  -- | 'ggprrsPolicyDocument'
  Text ->
  GetGroupPolicyResponse
getGroupPolicyResponse
  pResponseStatus_
  pGroupName_
  pPolicyName_
  pPolicyDocument_ =
    GetGroupPolicyResponse'
      { _ggprrsResponseStatus =
          pResponseStatus_,
        _ggprrsGroupName = pGroupName_,
        _ggprrsPolicyName = pPolicyName_,
        _ggprrsPolicyDocument = pPolicyDocument_
      }

-- | -- | The response status code.
ggprrsResponseStatus :: Lens' GetGroupPolicyResponse Int
ggprrsResponseStatus = lens _ggprrsResponseStatus (\s a -> s {_ggprrsResponseStatus = a})

-- | The group the policy is associated with.
ggprrsGroupName :: Lens' GetGroupPolicyResponse Text
ggprrsGroupName = lens _ggprrsGroupName (\s a -> s {_ggprrsGroupName = a})

-- | The name of the policy.
ggprrsPolicyName :: Lens' GetGroupPolicyResponse Text
ggprrsPolicyName = lens _ggprrsPolicyName (\s a -> s {_ggprrsPolicyName = a})

-- | The policy document. IAM stores policies in JSON format. However, resources that were created using AWS CloudFormation templates can be formatted in YAML. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
ggprrsPolicyDocument :: Lens' GetGroupPolicyResponse Text
ggprrsPolicyDocument = lens _ggprrsPolicyDocument (\s a -> s {_ggprrsPolicyDocument = a})

instance NFData GetGroupPolicyResponse
