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
-- Module      : Network.AWS.IAM.GetPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached. To retrieve the list of the specific users, groups, and roles that the policy is attached to, use 'ListEntitiesForPolicy' . This operation returns metadata about the policy. To retrieve the actual policy document for a specific version of the policy, use 'GetPolicyVersion' .
--
--
-- This operation retrieves information about managed policies. To retrieve information about an inline policy that is embedded with an IAM user, group, or role, use 'GetUserPolicy' , 'GetGroupPolicy' , or 'GetRolePolicy' .
--
-- For more information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
module Network.AWS.IAM.GetPolicy
  ( -- * Creating a Request
    getPolicy,
    GetPolicy,

    -- * Request Lenses
    gpPolicyARN,

    -- * Destructuring the Response
    getPolicyResponse,
    GetPolicyResponse,

    -- * Response Lenses
    gprrsPolicy,
    gprrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getPolicy' smart constructor.
newtype GetPolicy = GetPolicy' {_gpPolicyARN :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpPolicyARN' - The Amazon Resource Name (ARN) of the managed policy that you want information about. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
getPolicy ::
  -- | 'gpPolicyARN'
  Text ->
  GetPolicy
getPolicy pPolicyARN_ =
  GetPolicy' {_gpPolicyARN = pPolicyARN_}

-- | The Amazon Resource Name (ARN) of the managed policy that you want information about. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
gpPolicyARN :: Lens' GetPolicy Text
gpPolicyARN = lens _gpPolicyARN (\s a -> s {_gpPolicyARN = a})

instance AWSRequest GetPolicy where
  type Rs GetPolicy = GetPolicyResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetPolicyResult"
      ( \s h x ->
          GetPolicyResponse'
            <$> (x .@? "Policy") <*> (pure (fromEnum s))
      )

instance Hashable GetPolicy

instance NFData GetPolicy

instance ToHeaders GetPolicy where
  toHeaders = const mempty

instance ToPath GetPolicy where
  toPath = const "/"

instance ToQuery GetPolicy where
  toQuery GetPolicy' {..} =
    mconcat
      [ "Action" =: ("GetPolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "PolicyArn" =: _gpPolicyARN
      ]

-- | Contains the response to a successful 'GetPolicy' request.
--
--
--
-- /See:/ 'getPolicyResponse' smart constructor.
data GetPolicyResponse = GetPolicyResponse'
  { _gprrsPolicy ::
      !(Maybe Policy),
    _gprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprrsPolicy' - A structure containing details about the policy.
--
-- * 'gprrsResponseStatus' - -- | The response status code.
getPolicyResponse ::
  -- | 'gprrsResponseStatus'
  Int ->
  GetPolicyResponse
getPolicyResponse pResponseStatus_ =
  GetPolicyResponse'
    { _gprrsPolicy = Nothing,
      _gprrsResponseStatus = pResponseStatus_
    }

-- | A structure containing details about the policy.
gprrsPolicy :: Lens' GetPolicyResponse (Maybe Policy)
gprrsPolicy = lens _gprrsPolicy (\s a -> s {_gprrsPolicy = a})

-- | -- | The response status code.
gprrsResponseStatus :: Lens' GetPolicyResponse Int
gprrsResponseStatus = lens _gprrsResponseStatus (\s a -> s {_gprrsResponseStatus = a})

instance NFData GetPolicyResponse
