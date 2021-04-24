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
-- Module      : Network.AWS.IAM.GetPolicyVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified version of the specified managed policy, including the policy document.
--
--
-- To list the available versions for a policy, use 'ListPolicyVersions' .
--
-- This operation retrieves information about managed policies. To retrieve information about an inline policy that is embedded in a user, group, or role, use 'GetUserPolicy' , 'GetGroupPolicy' , or 'GetRolePolicy' .
--
-- For more information about the types of policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
-- For more information about managed policy versions, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html Versioning for managed policies> in the /IAM User Guide/ .
module Network.AWS.IAM.GetPolicyVersion
  ( -- * Creating a Request
    getPolicyVersion,
    GetPolicyVersion,

    -- * Request Lenses
    gpvPolicyARN,
    gpvVersionId,

    -- * Destructuring the Response
    getPolicyVersionResponse,
    GetPolicyVersionResponse,

    -- * Response Lenses
    gpvrrsPolicyVersion,
    gpvrrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getPolicyVersion' smart constructor.
data GetPolicyVersion = GetPolicyVersion'
  { _gpvPolicyARN ::
      !Text,
    _gpvVersionId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPolicyVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpvPolicyARN' - The Amazon Resource Name (ARN) of the managed policy that you want information about. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
--
-- * 'gpvVersionId' - Identifies the policy version to retrieve. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.
getPolicyVersion ::
  -- | 'gpvPolicyARN'
  Text ->
  -- | 'gpvVersionId'
  Text ->
  GetPolicyVersion
getPolicyVersion pPolicyARN_ pVersionId_ =
  GetPolicyVersion'
    { _gpvPolicyARN = pPolicyARN_,
      _gpvVersionId = pVersionId_
    }

-- | The Amazon Resource Name (ARN) of the managed policy that you want information about. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
gpvPolicyARN :: Lens' GetPolicyVersion Text
gpvPolicyARN = lens _gpvPolicyARN (\s a -> s {_gpvPolicyARN = a})

-- | Identifies the policy version to retrieve. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.
gpvVersionId :: Lens' GetPolicyVersion Text
gpvVersionId = lens _gpvVersionId (\s a -> s {_gpvVersionId = a})

instance AWSRequest GetPolicyVersion where
  type Rs GetPolicyVersion = GetPolicyVersionResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetPolicyVersionResult"
      ( \s h x ->
          GetPolicyVersionResponse'
            <$> (x .@? "PolicyVersion") <*> (pure (fromEnum s))
      )

instance Hashable GetPolicyVersion

instance NFData GetPolicyVersion

instance ToHeaders GetPolicyVersion where
  toHeaders = const mempty

instance ToPath GetPolicyVersion where
  toPath = const "/"

instance ToQuery GetPolicyVersion where
  toQuery GetPolicyVersion' {..} =
    mconcat
      [ "Action" =: ("GetPolicyVersion" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "PolicyArn" =: _gpvPolicyARN,
        "VersionId" =: _gpvVersionId
      ]

-- | Contains the response to a successful 'GetPolicyVersion' request.
--
--
--
-- /See:/ 'getPolicyVersionResponse' smart constructor.
data GetPolicyVersionResponse = GetPolicyVersionResponse'
  { _gpvrrsPolicyVersion ::
      !( Maybe
           PolicyVersion
       ),
    _gpvrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetPolicyVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpvrrsPolicyVersion' - A structure containing details about the policy version.
--
-- * 'gpvrrsResponseStatus' - -- | The response status code.
getPolicyVersionResponse ::
  -- | 'gpvrrsResponseStatus'
  Int ->
  GetPolicyVersionResponse
getPolicyVersionResponse pResponseStatus_ =
  GetPolicyVersionResponse'
    { _gpvrrsPolicyVersion =
        Nothing,
      _gpvrrsResponseStatus = pResponseStatus_
    }

-- | A structure containing details about the policy version.
gpvrrsPolicyVersion :: Lens' GetPolicyVersionResponse (Maybe PolicyVersion)
gpvrrsPolicyVersion = lens _gpvrrsPolicyVersion (\s a -> s {_gpvrrsPolicyVersion = a})

-- | -- | The response status code.
gpvrrsResponseStatus :: Lens' GetPolicyVersionResponse Int
gpvrrsResponseStatus = lens _gpvrrsResponseStatus (\s a -> s {_gpvrrsResponseStatus = a})

instance NFData GetPolicyVersionResponse
