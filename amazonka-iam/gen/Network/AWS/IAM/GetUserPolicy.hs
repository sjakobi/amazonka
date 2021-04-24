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
-- Module      : Network.AWS.IAM.GetUserPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified inline policy document that is embedded in the specified IAM user.
--
--
-- An IAM user can also have managed policies attached to it. To retrieve a managed policy document that is attached to a user, use 'GetPolicy' to determine the policy's default version. Then use 'GetPolicyVersion' to retrieve the policy document.
--
-- For more information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
module Network.AWS.IAM.GetUserPolicy
  ( -- * Creating a Request
    getUserPolicy,
    GetUserPolicy,

    -- * Request Lenses
    gupUserName,
    gupPolicyName,

    -- * Destructuring the Response
    getUserPolicyResponse,
    GetUserPolicyResponse,

    -- * Response Lenses
    guprrsResponseStatus,
    guprrsUserName,
    guprrsPolicyName,
    guprrsPolicyDocument,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getUserPolicy' smart constructor.
data GetUserPolicy = GetUserPolicy'
  { _gupUserName ::
      !Text,
    _gupPolicyName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUserPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gupUserName' - The name of the user who the policy is associated with. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'gupPolicyName' - The name of the policy document to get. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
getUserPolicy ::
  -- | 'gupUserName'
  Text ->
  -- | 'gupPolicyName'
  Text ->
  GetUserPolicy
getUserPolicy pUserName_ pPolicyName_ =
  GetUserPolicy'
    { _gupUserName = pUserName_,
      _gupPolicyName = pPolicyName_
    }

-- | The name of the user who the policy is associated with. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
gupUserName :: Lens' GetUserPolicy Text
gupUserName = lens _gupUserName (\s a -> s {_gupUserName = a})

-- | The name of the policy document to get. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
gupPolicyName :: Lens' GetUserPolicy Text
gupPolicyName = lens _gupPolicyName (\s a -> s {_gupPolicyName = a})

instance AWSRequest GetUserPolicy where
  type Rs GetUserPolicy = GetUserPolicyResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetUserPolicyResult"
      ( \s h x ->
          GetUserPolicyResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "UserName")
            <*> (x .@ "PolicyName")
            <*> (x .@ "PolicyDocument")
      )

instance Hashable GetUserPolicy

instance NFData GetUserPolicy

instance ToHeaders GetUserPolicy where
  toHeaders = const mempty

instance ToPath GetUserPolicy where
  toPath = const "/"

instance ToQuery GetUserPolicy where
  toQuery GetUserPolicy' {..} =
    mconcat
      [ "Action" =: ("GetUserPolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "UserName" =: _gupUserName,
        "PolicyName" =: _gupPolicyName
      ]

-- | Contains the response to a successful 'GetUserPolicy' request.
--
--
--
-- /See:/ 'getUserPolicyResponse' smart constructor.
data GetUserPolicyResponse = GetUserPolicyResponse'
  { _guprrsResponseStatus ::
      !Int,
    _guprrsUserName :: !Text,
    _guprrsPolicyName :: !Text,
    _guprrsPolicyDocument ::
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

-- | Creates a value of 'GetUserPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guprrsResponseStatus' - -- | The response status code.
--
-- * 'guprrsUserName' - The user the policy is associated with.
--
-- * 'guprrsPolicyName' - The name of the policy.
--
-- * 'guprrsPolicyDocument' - The policy document. IAM stores policies in JSON format. However, resources that were created using AWS CloudFormation templates can be formatted in YAML. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
getUserPolicyResponse ::
  -- | 'guprrsResponseStatus'
  Int ->
  -- | 'guprrsUserName'
  Text ->
  -- | 'guprrsPolicyName'
  Text ->
  -- | 'guprrsPolicyDocument'
  Text ->
  GetUserPolicyResponse
getUserPolicyResponse
  pResponseStatus_
  pUserName_
  pPolicyName_
  pPolicyDocument_ =
    GetUserPolicyResponse'
      { _guprrsResponseStatus =
          pResponseStatus_,
        _guprrsUserName = pUserName_,
        _guprrsPolicyName = pPolicyName_,
        _guprrsPolicyDocument = pPolicyDocument_
      }

-- | -- | The response status code.
guprrsResponseStatus :: Lens' GetUserPolicyResponse Int
guprrsResponseStatus = lens _guprrsResponseStatus (\s a -> s {_guprrsResponseStatus = a})

-- | The user the policy is associated with.
guprrsUserName :: Lens' GetUserPolicyResponse Text
guprrsUserName = lens _guprrsUserName (\s a -> s {_guprrsUserName = a})

-- | The name of the policy.
guprrsPolicyName :: Lens' GetUserPolicyResponse Text
guprrsPolicyName = lens _guprrsPolicyName (\s a -> s {_guprrsPolicyName = a})

-- | The policy document. IAM stores policies in JSON format. However, resources that were created using AWS CloudFormation templates can be formatted in YAML. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
guprrsPolicyDocument :: Lens' GetUserPolicyResponse Text
guprrsPolicyDocument = lens _guprrsPolicyDocument (\s a -> s {_guprrsPolicyDocument = a})

instance NFData GetUserPolicyResponse
